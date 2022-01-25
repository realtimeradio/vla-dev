import logging
import socket
import numpy as np
import struct
import time
import datetime
import os
import casperfpga
from . import helpers
from . import __version__
from .error_levels import *
from .blocks import block
from .blocks import fpga
from .blocks import qsfp
from .blocks import dts
from .blocks import pfb
from .blocks import vacc
from .blocks import eth
from .blocks import eq
from .blocks import packetizer

FENG_UDP_SOURCE_PORT = 10000
MAC_BASE = 0x020203030400
IP_BASE = (100 << 24) + (100 << 16) + (101 << 8) + 10

class CosmicFengine():
    """
    A control class for COSMIC's F-Engine firmware.

    :param host: CasperFpga interface for host.
    :type host: casperfpga.CasperFpga

    :param logger: Logger instance to which log messages should be emitted.
    :type logger: logging.Logger

    """
    def __init__(self, host, fpgfile, pipeline_id=0, logger=None):
        self.hostname = host #: hostname of the F-Engine's host SNAP2 board
        self.pipeline_id = pipeline_id
        #: Python Logger instance
        self.logger = logger or helpers.add_default_log_handlers(logging.getLogger(__name__ + ":%s" % (host)))
        #: Underlying CasperFpga control instance
        self._cfpga = casperfpga.CasperFpga(
                        host=self.hostname,
                        transport=casperfpga.LocalPcieTransport,
                    )
        try:
            self._cfpga.get_system_information(fpgfile)
        except:
            self.logger.error("Failed to read and decode .fpg header %s" % fpgfile)
        self.blocks = {}
        try:
            self._initialize_blocks()
        except:
            self.logger.exception("Failed to inialize firmware blocks. "
                                  "Maybe the board needs programming.")

    def is_connected(self):
        """
        :return: True if there is a working connection to a SNAP2. False otherwise.
        :rtype: bool
        """
        return self._cfpga.is_connected()

    def _initialize_blocks(self):
        """
        Initialize firmware blocks, populating the ``blocks`` attribute.
        """

        # blocks
        #: Control interface to high-level FPGA functionality
        self.fpga        = fpga.Fpga(self._cfpga, "")

        #: QSFP ports
        self.qsfp_a      = qsfp.Qsfp(self._cfpga, 'qsfpa')
        self.qsfp_b      = qsfp.Qsfp(self._cfpga, 'qsfpb')
        self.qsfp_c      = qsfp.Qsfp(self._cfpga, 'qsfpc')
        self.qsfp_d      = qsfp.Qsfp(self._cfpga, 'qsfpd')

        self.dts         = dts.Dts(self._cfpga, 'pipeline%d_dts' % self.pipeline_id)

        self.pfb         = pfb.Pfb(self._cfpga, 'pipeline%d_pfb' % self.pipeline_id)
        self.vacc        = vacc.Vacc(self._cfpga, 'pipeline%d_vacc' % self.pipeline_id, n_chans=2**16)

        #: Control interface to 100GbE interface block
        self.eth         = eth.Eth(self._cfpga, 'pipeline%d_eth0' % self.pipeline_id)

        #: Control interface to Equalization block
        self.eq = eq.Eq(self._cfpga, 'pipeline%d_eq' % self.pipeline_id, n_streams=4, n_coeffs=2**7)

        #: Control interface to Packetizerblock
        # 8 signals = 4 IFs (only half are real)
        self.packetizer = packetizer.Packetizer(self._cfpga, 'pipeline%d_packetizer' % self.pipeline_id,
                            n_chans=512, n_signals=8, sample_rate_mhz=2048, sample_width=2, word_width=64,
                            line_rate_gbps=100., n_time_packet=16, granularity=32)

        # The order here can be important, blocks are initialized in the
        # order they appear here

        #: Dictionary of all control blocks in the firmware system.
        self.blocks = {
            'fpga'      : self.fpga,
            'qsfp_a'      : self.qsfp_a,
            'qsfp_b'      : self.qsfp_b,
            'qsfp_c'      : self.qsfp_c,
            'qsfp_d'      : self.qsfp_d,
            'dts'         : self.dts,
            'pfb'         : self.pfb,
            'dts'         : self.dts,
            'eth'         : self.eth,
        }

    def initialize(self, read_only=True):
        """
        Call the ```initialize`` methods of all underlying blocks, then
        optionally issue a software global reset.

        :param read_only: If True, call the underlying initialization methods
            in a read_only manner, and skip software reset.
        :type read_only: bool
        """
        for blockname, block in self.blocks.items():
            if read_only:
                self.logger.info("Initializing block (read only): %s" % blockname)
            else:
                self.logger.info("Initializing block (writable): %s" % blockname)
            block.initialize(read_only=read_only)
        if not read_only:
            self.logger.info("Performing software global reset")
            #self.sync.arm_sync()
            #self.sync.sw_sync()

    def get_status_all(self):
        """
        Call the ``get_status`` methods of all blocks in ``self.blocks``.
        If the FPGA is not programmed with F-engine firmware, will only
        return basic FPGA status.

        :return: (status_dict, flags_dict) tuple.
            Each is a dictionary, keyed by the names of the blocks in
            ``self.blocks``. These dictionaries contain, respectively, the
            status and flags returned by the ``get_status`` calls of
            each of this F-Engine's blocks.
        """
        stats = {}
        flags = {}
        if not self.blocks['fpga'].is_programmed():
            stats['fpga'], flags['fpga'] = self.blocks['fpga'].get_status()
        else:
            for blockname, block in self.blocks.items():
                stats[blockname], flags[blockname] = block.get_status()
        return stats, flags

    def print_status_all(self, use_color=True, ignore_ok=False):
        """
        Print the status returned by ``get_status`` for all blocks in the system.
        If the FPGA is not programmed with F-engine firmware, will only
        print basic FPGA status.

        :param use_color: If True, highlight values with colors based on
            error codes.
        :type use_color: bool

        :param ignore_ok: If True, only print status values which are outside the
           normal range.
        :type ignore_ok: bool

        """
        if not self.blocks['fpga'].is_programmed():
            print('FPGA stats (not programmed with F-engine image):')
            self.blocks['fpga'].print_status()
        else:
            for blockname, block in self.blocks.items():
                print('Block %s stats:' % blockname)
                block.print_status(use_color=use_color, ignore_ok=ignore_ok)

    def set_equalization(self, eq_start_chan=100, eq_stop_chan=400, 
            start_chan=50, stop_chan=450, filter_ksize=21, target_rms=0.2):
        """
        Set the equalization coefficients to realize a target RMS.

        :param eq_start_chan: Frequency channels below ``eq_start_chan`` will be given the same EQ coefficient
            as ``eq_start_chan``.
        :type eq_start_chan: int

        :param eq_stop_chan: Frequency channels above ``eq_stop_chan`` will be given the same EQ coefficient
            as ``eq_stop_chan``.
        :type eq_stop_chan: int

        :param start_chan: Frequency channels below ``start_chan`` will be given zero EQ coefficients.
        :type start_chan: int

        :param stop_chan: Frequency channels above ``stop_chan`` will be given zero EQ coefficients.
        :type stop_chan: int

        :param filter_ksize: Filter kernel size, for rudimentary RFI removal. This should be an odd value.
        :type filter_ksize: int

        :param target_rms: The target post-EQ RMS. This is normalized such that 1.0 is the saturation level.
            I.e., an RMS of 0.125 means that the RMS is one LSB of a 4-bit signed signal, or 16 LSBs of an
            8-bit signed signal
        :type target_rms: float

        """
        n_cores = self.autocorr.n_signals // self.autocorr.n_signals_per_block
        for i in range(n_cores):
            spectra = self.autocorr.get_new_spectra(i, filter_ksize=filter_ksize)
            n_signals, n_chans = spectra.shape
            coeff_repeat_factor = n_chans // self.eq.n_coeffs
            for j in range(n_signals):
                stream_id = i*n_signals + j
                self.logger.info("Trying to EQ input %d" % stream_id)
                pre_quant_rms = np.sqrt(spectra[j] / 2) # RMS of each real / imag component making up spectra
                eq_coeff, eq_bp = self.eq.get_coeffs(stream_id)
                eq_scale = eq_coeff / (2**eq_bp)
                eq_scale = eq_scale.repeat(coeff_repeat_factor)
                curr_rms = pre_quant_rms * eq_scale
                diff = target_rms / curr_rms
                new_eq = eq_scale * diff
                # stretch the edge coefficients outside the pass band to avoid them heading to infinity
                new_eq[0:eq_start_chan] = new_eq[eq_start_chan]
                new_eq[eq_stop_chan:] = new_eq[eq_stop_chan]
                new_eq[0:start_chan] = 0
                new_eq[stop_chan:] = 0
                self.eq.set_coeffs(stream_id, new_eq[::coeff_repeat_factor])

    def program(self, fpgfile):
        """
        Program an .fpg file to an F-engine FPGA.

        :param fpgfile: The .fpg file to be loaded. Should be a path to a
            valid .fpg file. If None is given, the image currently in flash
            will be loaded.
        :type fpgfile: str

        """

        if fpgfile and not isinstance(fpgfile, str):
            raise TypeError("wrong type for fpgfile")

        if fpgfile and not os.path.exists(fpgfile):
            raise RuntimeError("Path %s doesn't exist" % fpgfile)

        try:
            self.logger.info("Loading firmware %s to %s" % (fpgfile, self.hostname))
            self._cfpga.upload_to_ram_and_program(fpgfile)
        except:
            self.logger.exception("Exception when loading new firmware")
            raise RuntimeError("Error during load")
        try:
            self._initialize_blocks()
        except:
            self.logger.exception("Exception when reinitializing firmware blocks")
            raise RuntimeError("Error reinitializing blocks")

    def configure_output(self, input_ids, n_chans_per_packet, n_chans_per_xeng, chans, ips, ports=None, debug=False):
        """
        Configure channel reordering and packetizer modules to emit a selection
        of frequency channels.


        :param n_chans_per_packet: Number of channels per packet.
        :type n_chans_per_packet: int

        :param n_chans_per_xeng: Number of channels per xeng.
        :type n_chans_per_xeng: int

        :param chans: A list of channel indices to be sent, e.g. ``range(0,1024)``.
            The number of channels in this list should be an integer multiple
            of ``n_chans_per_packet``. An assertion error is raised if this
            is not the case.
        :type chans: list of int

        :param ips: A list of IP addresses to which packets should be sent. The
            order of values in ``ips`` and ``chans`` should reflect where different
            channels should be sent. The ``n`` th IP address in ``ips`` is the
            destination to which channels
            ``chans[n*n_chans_per_packet : (n+1)*n_chans_per_packet]`` should
            be sent. As such, ``ips`` should have ``len(chans) // n_chans_per_packet``
            elements. IP addresses should be provided in dotted-quad string
            representation.
        :type ips: list of str

        :param ports: The UDP destination ports to which packets should be
            transmitted. Addressing rules are the same as for ``ips``. If
            None, all packets are transmitted to UDP port 10000.
        :type ports: list of int

        :param input_ids: A list of Antenna IDs which should be written to output packet
            headers. Addressing rules are the same as for ``ips``.
        :type input_ids: list

        :param debug: Set to True to print extra diagnostic information.
        :type debug: bool

        :param n_boards: Transmit packets with headers indicating they came from
            this many different boards. For example, if n_boards=2, the board
            will transmit two streams of packets with antenna IDs ``base_ant``
            and ``base_ant+64``
        """
        chans = np.array(chans)
        assert chans.shape[0] % n_chans_per_packet == 0, \
            "Number of chans to send must be an integer number of packets"
        n_packets = chans.shape[0] // n_chans_per_packet

        assert n_chans_per_packet % self.reorder.n_parallel_chans == 0, \
            "Number of channels per packet must be an integer multiple of %d" % self.reorder.n_parallel_chans

        packet_starts, packet_payloads, channel_indices = \
            self.packetizer.get_packet_info(n_chans_per_packet, chan_block_size=self.reorder.n_parallel_chans)

        self.logger.debug("Packet starts: %s" % packet_starts)
        self.logger.debug("Packet payloads: %s" % packet_payloads)
        self.logger.debug("Channel indices: %s" % channel_indices)

        packet_starts = packet_starts[0:n_packets]
        packet_payloads = packet_payloads[0:n_packets]
        channel_indices = channel_indices[0:n_packets]
        self.logger.debug("Reduced Packet starts: %s" % packet_starts)
        self.logger.debug("Reduced Packet payloads: %s" % packet_payloads)
        self.logger.debug("Reduced Channel indices: %s" % channel_indices)
        ports = ports or [10000]*n_packets
        assert n_packets == len(packet_starts)
        assert len(ips) == n_packets
        assert len(ports) == n_packets
        assert len(input_ids) == n_packets

        # channel_indices above gives the channel IDs which will
        # be sent. Remap the ones we _want_ into these slots
        i = 0
        # initialize map to all -1
        output_order = [-1 for _ in range(self.reorder.n_chans)]
        for chan_range in channel_indices:
            for chan in chan_range:
                output_order[chan] = chans[i]
                i += 1
        # Fill gaps in the map with unused channels. All channels _must_
        # be used somewhere, since the underlying reorder is not double
        # buffered.
        # 1. Make a list of unused channels
        possible_channels = list(range(self.reorder.n_chans))
        for i, chan in enumerate(output_order):
            if chan == -1:
                continue
            if chan not in possible_channels:
                self.logger.critical("Failed to remove channel %d from order map! Your data _will_ be nonsense" % chan)
            else:
                possible_channels.remove(chan)
        # 2. Insert the unused channels in the map
        for i, chan in enumerate(output_order):
            if chan == -1:
                output_order[i] = possible_channels.pop(0)

        self.reorder.set_channel_order(output_order)
            
        self.packetizer.write_config(
            packet_starts,
            packet_payloads,
            chans[::n_chans_per_packet],
            input_ids,
            ips,
            ports,
            n_chans_per_packet,
            n_chans_per_xeng,
            self.n_signals_per_board,
            self.n_signals_per_xeng,
            print_config=debug,
        )

    def cold_start_from_config(self, config_file,
                    program=True, initialize=True, test_vectors=False,
                    sync=True, sw_sync=False, enable_eth=True):
        """
        Completely configure a SNAP2 F-engine from scratch, using a configuration
        YAML file.

        :param program: If True, start by programming the SNAP2 FPGA from
            the image currently in flash. Also train the ADC-> FPGA links
            and initialize all firmware blocks.
        :type program: bool

        :param initialize: If True, put all firmware blocks in their default
            initial state. Initialization is always performed if the FPGA
            has been reprogrammed, but can be run without reprogramming
            to (quickly) reset the firmware to a known state. Initialization
            does not include ADC->FPGA link training.
        :type initialize: bool

        :param test_vectors: If True, put the F-engine in "frequency ramp" test mode.
        :type test_vectors: bool

        :param sync: If True, synchronize (i.e., reset) the DSP pipeline.
        :type sync: bool

        :param sw_sync: If True, issue a software reset trigger, rather than waiting
            for an external reset pulse to be received over SMA.
        :type sw_sync: bool

        :param enable_eth: If True, enable F-Engine Ethernet output.
        :type enable_eth: bool

        :param config_file: Path to a configuration YAML file.
        :type config_file: str

        """
        self.logger.info("Trying to configure output with config file %s" % config_file)
        if not os.path.exists(config_file):
            self.logger.error("Output configuration file %s doesn't exist!" % config_file)
            raise RuntimeError
        try:
            with open(config_file, 'r') as fh:
                conf = yaml.load(fh, Loader=yaml.CSafeLoader)
            if 'fengines' not in conf:
                self.logger.error("No 'fengines' key in output configuration!")
                raise RuntimeError('Config file missing "fengines" key')
            if 'xengines' not in conf:
                self.logger.error("No 'xengines' key in output configuration!")
                raise RuntimeError('Config file missing "xengines" key')
            chans_per_packet = conf['fengines']['chans_per_packet']
            localboard = conf['fengines'].get(self.hostname, None)
            if localboard is None:
                self.logger.exception("No configuration for F-engine host %s" % self.hostname)
            localconf = localboard.get(self.pipeline_id, None)
            if localconf is None:
                self.logger.exception("No configuration for pipeline %d found" % self.pipeline_id)
            first_input_index = localconf['inputs'][0]
            ninput = localconf['inputs'][1] - first_input_index
            macs = conf['xengines']['arp']
            source_ip = localconf['gbe']
            source_port = localconf['source_port']

            dests = []
            for xeng, chans in conf['xengines']['chans'].items():
                dest_ip = xeng.split('-')[0]
                dest_port = int(xeng.split('-')[1])
                start_chan = chans[0]
                nchan = chans[1] - start_chan
                dests += [{'ip':dest_ip, 'port':dest_port, 'start_chan':start_chan, 'nchan':nchan}]
        except:
            self.logger.exception("Failed to parse output configuration file %s" % config_file)
            raise

        self.cold_start(
            program = program,
            initialize = initialize,
            test_vectors = test_vectors,
            sync = sync,
            sw_sync = sw_sync,
            enable_eth = enable_eth,
            chans_per_packet = chans_per_packet,
            first_input_index = first_input_index,
            ninput = ninput,
            macs = macs,
            source_ip = source_ip,
            source_port = source_port,
            dests = dests,
            )


    def cold_start(self, program=True, initialize=True, test_vectors=False,
                   sync=True, sw_sync=False, enable_eth=True,
                   chans_per_packet=96, first_input_index=0, ninput=32,
                   macs={}, source_ip='10.41.0.101', source_port=10000,
                   dests=[]):
        """
        Completely configure an F-engine from scratch.

        :param program: If True, start by programming the SNAP2 FPGA from
            the image currently in flash. Also train the ADC-> FPGA links
            and initialize all firmware blocks.
        :type program: bool

        :param initialize: If True, put all firmware blocks in their default
            initial state. Initialization is always performed if the FPGA
            has been reprogrammed, but can be run without reprogramming
            to (quickly) reset the firmware to a known state. Initialization
            does not include ADC->FPGA link training.
        :type initialize: bool

        :param test_vectors: If True, put the F-engine in "frequency ramp" test mode.
        :type test_vectors: bool

        :param sync: If True, synchronize (i.e., reset) the DSP pipeline.
        :type sync: bool

        :param sw_sync: If True, issue a software reset trigger, rather than waiting
            for an external reset pulse to be received over SMA.
        :type sw_sync: bool

        :param enable_eth: If True, enable 40G F-Engine Ethernet output.
        :type enable_eth: bool

        :param chans_per_packet: Number of frequency channels in each output F-engine
            packet
        :type chans_per_packet: int

        :param first_input_index: Zero-indexed ID of the first input connected to this
            board.
        :type first_input_index: int

        :param ninput: Number of inputs to be sent. Values of ``n*32`` may be used
            to spood F-engine packets from multiple SNAP2 boards.
        :type ninput: int

        :param start_chan: First frequency channel to send to X-engines. Should be
            an integer multiple of 16.
        :type start_chan: int

        :param macs: Dictionary, keyed by dotted-quad string IP addresses, containing
            MAC addresses for F-engine packet destinations. I.e., IP/MAC pairs for all
            X-engines.
        :type macs: dict

        :param source_ip: The IP address from which this board should send packets.
        :type source_ip: str

        :param source_port: The source UDP port from which F-engine packets should be sent.
        :type source_port: int

        :param dests: List of dictionaries describing where packets should be sent. Each
            list entry should have the following keys:

              - 'ip' : The destination IP (as a dotted-quad string) to which packets
                should be sent.
              - 'port' : The destination UDP port to which packets should be sent.
              - 'start_chan' : The first frequency channel number which should be sent
                to this IP / port. ``start_chan`` should be an integer multiple of 16.
              - 'nchans' : The number of channels which should be sent to this IP / port.
                ``nchans`` should be a multiple of ``chans_per_packet``.
        :type dests: List of dict

        """
        if program:
            self.program()
            try:
                self.adc.initialize(read_only=False)
            except RuntimeError:
                # Try once more. TODO: just make work(!)
                self.adc.initialize(read_only=False)
        
        if program or initialize:
            for blockname, block in self.blocks.items():
                if blockname == 'adc':
                    continue
                block.initialize(read_only=False)
            self.logger.warning('Updating telescope time')
            self.sync.update_telescope_time()
            self.sync.update_internal_time()

        if test_vectors:
            self.logger.info('Enabling EQ TVGs...')
            self.eqtvg.write_freq_ramp()
            self.eqtvg.tvg_enable()
        else:
            self.logger.info('Disabling EQ TVGs...')
            self.eqtvg.tvg_disable()

        if sync:
            self.logger.info("Arming sync generators")
            self.eth.disable_tx()
            self.sync.arm_sync()
            self.sync.arm_noise()
            if sw_sync:
                self.logger.info("Issuing software sync")
                self.sync.sw_sync()

        mac = MAC_BASE + int(source_ip.split('.')[-1])
        self.eth.configure_source(mac, source_ip, source_port)

        # Configure ARP cache
        for ip, mac in macs.items():
            self.eth.add_arp_entry(ip, mac)

        # Configure packetizer
        ninput_per_board = self.n_signals_per_board // 2
        assert first_input_index % ninput_per_board == 0, \
            "first_ant_index should be a multiple of %d" % ninput_per_board
        assert ninput % ninput_per_board == 0, \
            "ninput should be a multiple of %d" % ninput_per_board
        localants = range(first_input_index, first_input_index + ninput)
        chans_to_send = []
        ips = []
        ports = []
        signal_ids = []
        this_x_packets = None
        ok = True
        for dest in dests:
            try:
                for ant in localants[::(self.n_signals_per_board // 2)]:
                    dest_ip = dest['ip']
                    dest_port = dest['port']
                    if dest_ip not in macs:
                        self.logger.critical("MAC address for IP %s is not known" % dest_ip)
                    start_chan = dest['start_chan']
                    nchan = dest['nchan']
                    this_x_chans = range(start_chan, start_chan + nchan)
                    if this_x_packets is None:
                        this_x_packets = len(this_x_chans) // chans_per_packet
                    else:
                        if this_x_packets != len(this_x_chans) // chans_per_packet:
                            self.logger.error("Can't have different total numbers of channels per X-engine")
                            ok = False
                    signal_ids += [2*ant] * this_x_packets
                    ips += [dest_ip] * this_x_packets
                    ports += [dest_port] * this_x_packets
                    chans_to_send += list(this_x_chans)
            except:
                self.logger.exception("Failed to parse destination %s" % dest)
                ok = False
                raise

        if ok:
            self.configure_output(
                    signal_ids,
                    chans_per_packet,
                    chans_per_packet*this_x_packets,
                    chans_to_send,
                    ips,
                    ports
                    )
        else:
            self.logger.error("Not configuring Ethernet output because configuration builder failed")

        if enable_eth:
            self.logger.info("Enabling Ethernet output")
            self.eth.enable_tx()
        else:
            self.logger.info("Disabling Ethernet output")
            self.eth.disable_tx()

        self.logger.info("Startup of %s complete" % self.hostname)

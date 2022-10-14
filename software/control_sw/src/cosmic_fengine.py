import logging
import numpy as np
import struct
import time
import datetime
import os
import json
import casperfpga
from . import helpers
from . import __version__
from .error_levels import *
from .blocks import block
from .blocks import fpga
from .blocks import sync
from .blocks import delay
from .blocks import phaserotate
from .blocks import lo
from .blocks import input
from .blocks import noisegen
from .blocks import sinegen
from .blocks import qsfp
from .blocks import dts
from .blocks import pfb
from .blocks import vacc
from .blocks import eth
from .blocks import eq
from .blocks import eqtvg
from .blocks import corr
from .blocks import chanreorder
from .blocks import packetizer
from .blocks import autocorr

FENG_UDP_SOURCE_PORT = 10000
MAC_BASE = 0x020203030400
IP_BASE = (100 << 24) + (100 << 16) + (101 << 8) + 10
NIFS = 2
FPGA_CLOCK_RATE_HZ = 256000000
FIRMWARE_TYPE_8BIT = 2
FIRMWARE_TYPE_3BIT = 3
DEFAULT_FIRMWARE_TYPE = FIRMWARE_TYPE_8BIT
DEFAULT_DTS_LANE_MAPS = [[0,1,3,2,4,5,7,6,8,9,11,10], [0,1,3,2,8,9,11,10,4,5,7,6]]
NTIME_PACKET = 32
FPGA_CLOCKS_PER_SPECTRA = 256

class CosmicFengine():
    """
    A control class for COSMIC's F-Engine firmware.

    :param host: CasperFpga interface for host. If `host` is of the
        form `xdmaA`, then we are connecting to the FPGA card with xdma driver
        ID `xdmaA`. In this case, connection may be direct, or via a REST server.
        If a REST server is supplied at `remote_uri`, this `host` parameter will
        be interpreted on the server's side (see 
        `RemotePcieTransport.__init__()` and
        `casperfpga_rest_server:getXdmaIdFromTarget()`).
        If `host` is of the form `pcieB`, then the connection is to the PCIe
        device with enumeration 0xB
    :type host: casperfpga.CasperFpga

    :param remote_uri: REST host address, eg. `http://192.168.32.100:5000`. This 
        triggers the transport to be a RemotePcieTransport object.
    :type remote_uri: str

    :param fpgfile: .fpg file for firmware to program (or already loaded)
    :type fpgfile: str

    :param pipeline_id: Zero-indexed ID of the pipeline on this host.
    :type pipeline_id: int

    :param neths: Number of 100GbE interfaces for this pipeline.
    :type neths: int

    :param logger: Logger instance to which log messages should be emitted.
    :type logger: logging.Logger

    """

    def __init__(self, host, fpgfile, pipeline_id=0, neths=1, logger=None, remote_uri=None):
        self.hostname = host #: hostname of the F-Engine's host SNAP2 board
        self.pipeline_id = pipeline_id
        self.fpgfile = fpgfile
        self.neths = neths
        #: Python Logger instance
        self.logger = logger or helpers.add_default_log_handlers(logging.getLogger(__name__ + ":%s" % (host)))
        #: Underlying CasperFpga control instance
        if remote_uri is None:
            self._cfpga = casperfpga.CasperFpga(
                            host=self.hostname, # LocalPcieTransport determines deviceID/instanceID
                            transport=casperfpga.LocalPcieTransport,
                        )
            try:
                self._cfpga.get_system_information(fpgfile)
            except:
                self.logger.error("Failed to read and decode .fpg header %s" % fpgfile)
        else:
            self._cfpga = casperfpga.CasperFpga(
                            host=self.hostname, # server determines instance_id
                            uri=remote_uri,
                            transport=casperfpga.RemotePcieTransport,
                        )
            if fpgfile is None:
                # The remote transport will parse the remote fpg info, there is no file name
                _, fpg_info = self._cfpga.transport.get_system_information_from_transport()
                self._cfpga.get_system_information(filename=None, fpg_info=fpg_info)
            else:
                self._cfpga.upload_to_ram_and_program(fpgfile)
            

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

    def list_blocks(self):
        """
        :return: A list of block names which may be controlled
        """
        return self.blocks.keys()

    def _initialize_blocks(self):
        """
        Initialize firmware blocks, populating the ``blocks`` attribute.
        Choose initialization method based on firmware type
        """

        f = fpga.Fpga(self._cfpga, "")
        if f.is_programmed():
            firmware_type = f.get_firmware_type()
            self.logger.info("FPGA is programmed with firmware type %d" % firmware_type)
        else:
            firmware_type = DEFAULT_FIRMWARE_TYPE
            self.logger.info("FPGA is not programmed. Defaulting to firmware type %d" % firmware_type)

        if firmware_type == FIRMWARE_TYPE_8BIT:
            self.logger.info("Initializing control blocks for 8-bit mode")
            self._initialize_blocks_8bit()
        elif firmware_type == FIRMWARE_TYPE_3BIT:
            self.logger.info("Initializing control blocks for 3-bit mode")
            self._initialize_blocks_3bit()
        else:
            self.logger.error("Can't initialize firmware control blocks because "
                    "firmware version %d is not known. Using minimal control set." % firmware_type)
            self._initialize_blocks_basic()

    def _initialize_blocks_basic(self):
        """
        Initialize a minimal set of blocks, which should be valid with even
        just the template file.
        """
        self.fpga        = fpga.Fpga(self._cfpga, "")
        self.dts         = dts.Dts(self._cfpga, 'pipeline%d_dts' % self.pipeline_id,
                lane_map=DEFAULT_DTS_LANE_MAPS[self.pipeline_id])
        self.blocks = {
            'dts'         : self.dts,
            'fpga'        : self.fpga,
        }

    def _initialize_blocks_8bit(self):
        """
        Initialize firmware blocks, populating the ``blocks`` attribute.
        """
        NCHANS = 1024

        # blocks
        #: Control interface to high-level FPGA functionality
        self.fpga        = fpga.Fpga(self._cfpga, "")

        #: Control interface to timing sync block
        self.sync        = sync.Sync(self._cfpga,
                'pipeline%d_sync' % self.pipeline_id,
                clk_hz = FPGA_CLOCK_RATE_HZ,
                logger = self.logger
            )

        #: QSFP ports
        self.qsfp_a      = qsfp.Qsfp(self._cfpga, 'qsfpa')
        self.qsfp_b      = qsfp.Qsfp(self._cfpga, 'qsfpb')
        self.qsfp_c      = qsfp.Qsfp(self._cfpga, 'qsfpc')
        self.qsfp_d      = qsfp.Qsfp(self._cfpga, 'qsfpd')

        self.dts         = dts.Dts(self._cfpga, 'pipeline%d_dts' % self.pipeline_id,
                lane_map=DEFAULT_DTS_LANE_MAPS[self.pipeline_id])

        self.delay       = delay.Delay(self._cfpga,
                'pipeline%d_delay' % self.pipeline_id,
                n_streams = 4)
            
        self.phaserotate = phaserotate.PhaseRotate(self._cfpga,
                'pipeline%d_phase_rotate' % self.pipeline_id,
                n_streams = 4)

        self.lo       = lo.Lo(self._cfpga,
                'pipeline%d_lo' % self.pipeline_id,
                n_streams = 4, n_par_samples=8, samplehz=2048e6)

        self.pfb         = pfb.Pfb(self._cfpga, 'pipeline%d_pfb' % self.pipeline_id, nchan=2*NCHANS)

        #: Control interface for the Autocorrelation block
        self.autocorr = autocorr.AutoCorr(self._cfpga,
                'pipeline%d_autocorr' % self.pipeline_id,
                n_chans=NCHANS, n_signals=4, n_parallel_streams=4,
                n_cores=4, use_mux=False)

        #: Control interface to 100GbE interface blocks
        self.eths = []
        for i in range(self.neths):
            self.eths += [eth.Eth(self._cfpga, 'pipeline%d_eth%d' % (self.pipeline_id, i))]
        for ethn, ethblock in enumerate(self.eths):
            setattr(self, 'eth%d' % ethn, ethblock)

        #: Control interface to Input multiplexor / statistics
        self.input = input.Input(self._cfpga, 'pipeline%d_input' % self.pipeline_id,
                n_inputs=4, n_bits=8, n_parallel_samples=8)

        #: Control interface to noise generation block
        self.noisegen = noisegen.NoiseGen(self._cfpga, 'pipeline%d_noise' % self.pipeline_id,
                n_noise=2, n_outputs=4, n_parallel_samples=8)

        #: Control interface to sine TVG generation block
        self.sinegen = sinegen.SineGen(self._cfpga, 'pipeline%d_sine_tvg' % self.pipeline_id,
                n_sine=2, n_outputs=4, n_samples=2**13)

        #: Control interface to Equalization block
        self.eq = eq.Eq(self._cfpga, 'pipeline%d_eq' % self.pipeline_id,
                n_streams=4, n_coeffs=2**8)

        #: Control interface to post-equalization Test Vector Generator block
        self.eqtvg = eqtvg.EqTvg(self._cfpga, 'pipeline%d_post_eq_tvg' % self.pipeline_id,
                n_inputs=4, n_serial_inputs=1, n_chans=NCHANS)

        #: Control interface to post-equalization inter-IF correlation
        self.corr = corr.Corr(self._cfpga, 'pipeline%d_corr' % self.pipeline_id,
                n_signals=4, n_chans=NCHANS, n_parallel_chans=4)

        #: Control interface to channel reorder block
        self.chanreorder = chanreorder.ChanReorder(self._cfpga, 'pipeline%d_reorder' % self.pipeline_id,
                n_times=NTIME_PACKET, n_ants=4, n_chans=NCHANS, n_parallel_chans=16)

        #: Control interface to Packetizerblock
        # 8 signals = 4 IFs (only half are real)
        self.packetizer = packetizer.Packetizer(self._cfpga,
                'pipeline%d_packetizer0' % self.pipeline_id,
                n_chans=NCHANS, n_ants=4, sample_rate_mhz=2048,
                sample_width=2, word_width=64, line_rate_gbps=100.,
                n_time_packet=NTIME_PACKET, granularity=4)

        # The order here can be important, blocks are initialized in the
        # order they appear here

        #: Dictionary of all control blocks in the firmware system.
        self.blocks = {
            'dts'         : self.dts,
            'fpga'        : self.fpga,
            'sync'        : self.sync,
            'delay'       : self.delay,
            'phaserotate' : self.phaserotate,
            'lo'          : self.lo,
            'noisegen'    : self.noisegen,
            'sinegen'     : self.sinegen,
            'input'       : self.input,
            'qsfp_a'      : self.qsfp_a,
            'qsfp_b'      : self.qsfp_b,
            'qsfp_c'      : self.qsfp_c,
            'qsfp_d'      : self.qsfp_d,
            'dts'         : self.dts,
            'pfb'         : self.pfb,
            'autocorr'    : self.autocorr,
            'eq'          : self.eq,
            'eqtvg'       : self.eqtvg,
            'corr'        : self.corr,
            'chanreorder' : self.chanreorder,
        }
        for en, ethdev in enumerate(self.eths):
            self.blocks['eth%d' % en] = ethdev

    def initialize(self, read_only=True, allow_unlocked_dts=False):
        """
        Call the ```initialize`` methods of all underlying blocks, then
        optionally issue a software global reset. Raises RuntimeErrors if
        a block is not ok.

        :param read_only: If True, call the underlying initialization methods
            in a read_only manner, and skip software reset.
        :type read_only: bool
        :param allow_unlocked_dts: If True, do not initialize the dts block
        :type allow_unlocked_dts: bool
        """
        for blockname, b in self.blocks.items():
            if (blockname == 'dts' and allow_unlocked_dts):
                self.logger.info("Parameter allow_unlocked_dts = True, won't initialize %s" % blockname)
                continue
            if read_only:
                self.logger.info("Initializing block (read only): %s" % blockname)
            else:
                self.logger.info("Initializing block (writable): %s" % blockname)
            if isinstance(b, block.Block):
                b.initialize(read_only=read_only)
                if blockname == 'dts':
                    dts_status = b.get_status_dict()
                    if dts_status['state_ok']['all_ok']:
                        self.logger.info(f'DTS block properly initialized: {dts_status["state_ok"]}')
                    else:
                        raise RuntimeError(f'DTS block did not initialize properly: {dts_status["state_ok"]}')

            elif isinstance(b, list):
                for bi in b:
                    if isinstance(bi, block.Block):
                        bi.initialize(read_only=read_only)
        # if not read_only:
        #     self.logger.info("Performing software global reset")
        #     self.sync.arm_sync()
        #     self.sync.sw_sync()

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
        if not self.fpga.is_programmed():
            stats['fpga'], flags['fpga'] = self.blocks['fpga'].get_status()
        else:
            for blockname, block in self.blocks.items():
                if isinstance(block, list):
                    for i, block_i in enumerate(block):
                        stats[blockname+str(i)], flags[blockname+str(i)] = block_i.get_status()
                else:
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
        if not self.fpga.is_programmed():
            print('FPGA stats (not programmed with F-engine image):')
            self.blocks['fpga'].print_status()
        else:
            for blockname, block in self.blocks.items():
                if isinstance(block, list):
                    for i, block_i in enumerate(block):
                        print('Block %s#%d stats:' % (blockname, i))
                        block_i.print_status(use_color=use_color, ignore_ok=ignore_ok)
                else:
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
        if self.autocorr._use_mux:
            n_cores = self.autocorr.n_signals // self.autocorr.n_signals_per_block
        else:
            n_cores = 1
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

    def program(self, fpgfile=None):
        """
        Program an .fpg file to an F-engine FPGA.

        :param fpgfile: The .fpg file to be loaded. Should be a path to a
            valid .fpg file. If None is given, the .fpg path provided
            at FEngine instantiation-time will be loaded.
        :type fpgfile: str

        """
        if fpgfile is None:
            fpgfile = self.fpgfile

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
        
        self.fpgfile = fpgfile

    def cold_start_from_config(self, config_file,
                    program=True, initialize=True, test_vectors=False,
                    sync=True, sw_sync=False, enable_eth=True):
        """
        Completely configure an F-engine from scratch, using a configuration
        YAML file.

        :param program: If True, start by programming the SNAP2 FPGA from
            the image currently in flash. Also train the ADC-> FPGA links
            and initialize all firmware blocks.
        :type program: bool

        :param initialize: If True, put all firmware blocks in their default
            initial state. Initialization is always performed if the FPGA
            has been reprogrammed.
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
        import yaml
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
            default_lane_map = conf['fengines'].get('dts_lane_map', list(range(12)))
            if isinstance(default_lane_map[0], list):
                default_lane_map = default_lane_map[self.pipeline_id % len(default_lane_map)]
            localboard = conf['fengines'].get(self.hostname, None)
            if localboard is None:
                self.logger.exception("No configuration for F-engine host %s" % self.hostname)
                raise
            localconf = localboard.get(self.pipeline_id, None)
            if localconf is None:
                self.logger.exception("No configuration for pipeline %d found" % self.pipeline_id)
                raise
            feng_ids = localconf['feng_ids']
            ninput = len(feng_ids)
            macs = conf['xengines']['arp']
            source_ips = localconf['gbes']
            source_port = localconf['source_port']
            dts_lane_map = localconf.get('dts_lane_map', default_lane_map)

            dests = []
            #for xeng, chans in conf['xengines']['chans'].items():
            for xeng, v in conf['xengines']['chans'].items():
                dest_ip = xeng.split('-')[0]
                dest_port = int(xeng.split('-')[1])
                chan_range = v['chan_range']
                start_chan = chan_range[0]
                nchan = chan_range[1] - start_chan
                if 'feng_mask' in v:
                    fengs_this_dest = v['feng_mask']
                elif 'feng_range_mask' in v:
                    fr = v['feng_range_mask']
                    fengs_this_dest = list(range(*fr))
                #TODO: learn python
                fengs_to_send = []
                for f in feng_ids:
                    if f in fengs_this_dest:
                        fengs_to_send += [f]
                dests += [{'ip':dest_ip, 'port':dest_port, 'start_chan':start_chan, 'nchan':nchan, 'feng_ids':fengs_to_send}]
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
            ninput = ninput,
            macs = macs,
            source_ips = source_ips,
            source_port = source_port,
            dests = dests,
            dts_lane_map = dts_lane_map,
            )


    def cold_start(self, program=True, initialize=True, test_vectors=False,
                   sync=True, sw_sync=False, enable_eth=True,
                   chans_per_packet=32, ninput=NIFS,
                   macs={}, source_ips=['10.41.0.101'], source_port=10000,
                   dests=[], dts_lane_map=None, fpgfile=None, sync_offset_ns=0.0,
                   lo_fshift_list = None):
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

        :param ninput: Number of inputs to be sent. Values of ``n*32`` may be used
            to spoof F-engine packets from multiple SNAP2 boards.
        :type ninput: int

        :param macs: Dictionary, keyed by dotted-quad string IP addresses, containing
            MAC addresses for F-engine packet destinations. I.e., IP/MAC pairs for all
            X-engines.
        :type macs: dict

        :param source_ips: The IP addresses from which this board should send packets.
            A list with one IP entry per interface.
        :type source_ips: list of str

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
              - 'feng_ids': The identifying numbers of the antenna-streams,
                as interpreted by the destination. 1 per tuning/input.
        :type dests: List of dict

        :param dts_lane_map: If not None, override the default DTS lane mapping as part of
            initialization. This parameter does nothing if `initialize` is not True.

        :param fpgfile: The .fpg file to be loaded, if `program` is True. Should be a
            path to a valid .fpg file. If None is given, and programming, self.fpgfile
            will be loaded.
        
        :param sync_offset_ns: Nanoseconds offset to add to the time loaded into the
            internal telescope time counter.
        :type sync_offset_ns: float

        :param lo_fshift_list: If not None, a list of lo_fshifts in Hz to apply in order of streams.
        :type lo_fshift_list: List
        """
        if program:
            self.program(fpgfile)
        
        if program or initialize:
            if dts_lane_map is not None:
                self.dts.lane_map = dts_lane_map
            self.initialize(read_only=False, allow_unlocked_dts=test_vectors)
            self.logger.info('Updating telescope time')
            self.sync.update_internal_time(offset_ns = sync_offset_ns, sync_clock_factor = (NTIME_PACKET*FPGA_CLOCKS_PER_SPECTRA))

        if test_vectors:
            self.logger.info('Enabling EQ TVGs...')
            self.eqtvg.write_freq_ramp()
            self.eqtvg.tvg_enable()
        else:
            self.logger.info('Disabling EQ TVGs...')
            self.eqtvg.tvg_disable()
        
        #first, load lo_offshifts, assuming those received are in hz:
        if lo_fshift_list is not None:
            for stream, offshift in enumerate(lo_fshift_list):
                self.lo.set_lo_frequency_shift(stream, offshift)
            self.lo.force_load()

        if sync:
            self.logger.info("Arming sync generators")
            for eth in self.eths:
                eth.disable_tx()
            self.sync.arm_sync()
            self.sync.arm_noise()
            if sw_sync:
                self.logger.info("Issuing software sync")
                self.sync.sw_sync()
            else:          
                self._enforce_valid_tt_armed(rearm_noise=True)
        else:
            self.logger.warn("Absence of sync means lo offshifts will not load...")

        for sn, source_ip in enumerate(source_ips):
            if sn >= self.neths:
                self.logger.warning('Skipping setting Ethernet interface %d of %d' % (sn, self.neths))
                continue
            mac = MAC_BASE + int(source_ip.split('.')[-1])
            self.eths[sn].configure_source(mac, source_ip, source_port)

        # Configure ARP cache
        for eth in self.eths:
            for ip, mac in macs.items():
                eth.add_arp_entry(ip, mac)

        # Configure packetizer
        # FIXME: This might fail if all feng_ids for a given channel set aren't all sent.
        # Figure out how many channels we are sending, by finding the maximum number of
        # channels sent for a given feng id
        channels_to_send_by_fid = {}
        for dest in dests:
            for f in dest['feng_ids']:
                if f in channels_to_send_by_fid:
                    channels_to_send_by_fid[f] += dest['nchan']
                else:
                    channels_to_send_by_fid[f] = dest['nchan']
        channels_to_send = 0
        for fid, nchans in channels_to_send_by_fid.items():
            if nchans > channels_to_send:
                channels_to_send = nchans

        pkt_starts, pkt_payloads, word_indices, antchans = self.packetizer.get_packet_info(chans_per_packet, channels_to_send, ninput)
        n_pkts = len(pkt_starts)
        antchan_indices = np.arange(n_pkts*chans_per_packet, dtype=int)[::chans_per_packet]
        chan_indices = antchan_indices % channels_to_send
        ant_indices = antchan_indices // channels_to_send

        # Reorder channels / antennas so they fall in the places we want
        # Current map
        ant_order, chan_order = self.chanreorder.get_antchan_order(raw=False)
        # Start with whatever map is currently loaded. As long
        # as we are double buffering, entries of the map are all independent.
        # (If we are reordering in place every map entry must appear exactly once.
        ant_order = np.array(ant_order, dtype=int)
        chan_order = np.array(chan_order, dtype=int)

        ips = ['0.0.0.0' for _ in range(n_pkts)]
        feng_ids = [-1 for _ in range(n_pkts)]
        ports = [0 for _ in range(n_pkts)]
        pkt_num = 0
        ok = True
        for dn, dest in enumerate(dests):
            try:
                start_chan = dest['start_chan']
                nchan = dest['nchan']
                assert nchan % chans_per_packet == 0, "Can't send %d chans with %d-chan packets" % (nchan, chans_per_packet)
                chans = range(start_chan, start_chan + nchan)
                dest_ip = dest['ip']
                if dest_ip not in macs:
                   self.logger.critical("MAC address for IP %s is not known" % dest_ip)
                dest_port = dest['port']
                # loop over packets to this destination, antenna slowest, chan fastest
                for ant in range(ninput):
                    for cn, chan in enumerate(chans[::chans_per_packet]):
                        self.logger.debug('assigning dest %s; ant %d, chan %d' % (dest, ant, chan))
                        try:
                            feng_ids[pkt_num] = ant if 'feng_ids' not in dest else dest['feng_ids'][ant]
                        except IndexError:
                            self.logger.debug('skipping channel start %d for input %d because it isnt in the feng_ids list' % (chan, ant))
                            continue
                        ips[pkt_num] = dest_ip
                        ports[pkt_num] = dest_port
                        # Use the order maps to figure out where we should put these antchans
                        ant_id = feng_ids[pkt_num] % ninput # TODO: is this right?
                        ant_order[antchans[pkt_num]] = ant_id
                        chan_order[antchans[pkt_num]] = chans[cn*chans_per_packet:(cn+1)*chans_per_packet]
                        pkt_num += 1
            except:
                self.logger.exception("Failed to parse destination %s" % dest)
                ok = False
                raise

        if ok:
            self.chanreorder.set_antchan_order(ant_order, chan_order)
            self.packetizer.write_config(
                    pkt_starts,
                    pkt_payloads,
                    chan_indices.tolist(),
                    feng_ids,
                    ips,
                    ports,
                    [chans_per_packet]*n_pkts,
                    )
        else:
            self.logger.error("Not configuring Ethernet output because configuration builder failed")

        if enable_eth:
            self.enable_tx()
        else:
            self.disable_tx()

        self.logger.info("Startup of %s complete" % self.hostname)

    def set_delay_tracking(self, delays, delay_rates, phases, phase_rates, load_time=None, clock_rate_hz=2048000000, invert_band=False):
        """
        Set this F-engine to track a given delay curve.
        :param delays: 4-tuple of delays for X and Y polarizations for both tunings. Each value is 
            the delay, in nanoseconds, which should be applied at the appropriate time.
            Whole ADC sample delays are implemented using a coarse delay, while sub-sample
            delays are implemented as a post-FFT phase rotation.
        :type delays: float
        :param delay_rates: 4-tuple of delay rates for X and Y polarizations for both tunings. Each value is
            the delay rate, in nanoseconds per second. The incremental delay
            which should be added to the current delay each second.
            Internally, delay rate is converted from nanoseconds-per-second to
            samples-per-spectra. Firmware delays are updated every 4 spectra.
        :type delay_rates: float
        :param phases: 4-tuple of phases for X and Y polarizations for both tunings. Each value is the phase, in radians,
            which should be applied at the appropriate time.
        :type phases: float
        :param phase_rates: 4-tuple of phase rates for X and Y polarizations for both tunings. Each value is the
            phase rate, in radians per second. This is the incremental phase which should be added
            to the current phase every second.
            Internally, phase rate is converted from radians-per-second to radians-per-spectra. 
            Firmware phases are updated every 4 spectra.
        :type phase_rates: float
        :param load_time: Unix time at which delay should be applied. If None, delays are 
            force-loaded (testing purposes).
        :type load_time: float
        :param clock_rate_hz: ADC clock rate in Hz. If None, the clock rate will be computed from
            the observed PPS interval, which could fail if the PPS is unstable or not present.
        :type clock_rate_hz: int
        :param invert_band: If True, invert the gradient of the phase-vs-frequency channel. I.e.,
            apply a fractional delay which is the negative of the physical delay.
        :type invert_band: bool
        """
        force_delay_load = False
        if load_time is None:
            force_delay_load = True
        else:
            load_time=int(load_time)

        delay_samples = np.array(delays) * (1e-9 * clock_rate_hz)
        delay_samples_int = np.zeros(self.delay.n_streams, dtype=int)
        for if_id in range(self.delay.n_streams):
            # If delay rate is positive, want to make fractional delay as small as possible,
            # so round delay up
            if delay_rates[if_id] > 0:
                delay_samples_int[if_id] = int(np.ceil(delay_samples[if_id]))
            # If delay rate is negative, we want to make fractional delay as large as possible,
            # so round integer delay down
            elif delay_rates[if_id]==0:
                if delay_samples[if_id] >=0:
                    delay_samples_int[if_id] = int(np.floor(delay_samples[if_id]))
                else:
                    delay_samples_int[if_id] = int(np.ceil(delay_samples[if_id]))
            else:
                delay_samples_int[if_id] = int(np.floor(delay_samples[if_id]))

        delay_samples_frac = (delay_samples - delay_samples_int).astype(np.float)
        # Massage rates into samples-per-spectra (lots of redundant use of clock rate...)
        delay_rates_samples_per_sec = np.array(delay_rates) * 1e-9 * clock_rate_hz
        delay_rates_samples_per_spec = delay_rates_samples_per_sec * (2* self.autocorr.n_chans) / clock_rate_hz
        # Convert phases to range +/- pi and normalize
        phases = np.array(phases) / np.pi # normalize to fractions of pi
        phases = ((phases + 1) % 2) - 1   # place in range +/- 1
        # Convert phase rates to fractions of pi per spectra
        self.logger.debug("Phase rates [radians per sec]: %s" % phase_rates)
        phase_rates_per_spec = np.array(phase_rates) * (2*self.autocorr.n_chans) / clock_rate_hz
        self.logger.debug("Phase rates [radians per spectrum]: %s" % phase_rates_per_spec)
        phase_rates_per_spec = phase_rates_per_spec / np.pi # normalize to fractions of pi
        self.logger.debug("Phase rates [pis per spectrum]: %s" % phase_rates_per_spec)
        phase_rates_per_spec = ((phase_rates_per_spec + 1) % 2) - 1        # place in range +/- 1
        self.logger.debug("Wrapped Phase rates [pis per spectrum]: %s" % phase_rates_per_spec)
        self.logger.debug("Setting delays to %s ns at time %s" % (delays, time.ctime(load_time)))
        self.logger.debug("Integer sample delays: %s" % (delay_samples_int))
        self.logger.debug("Fractional sample delays: %s" % (delay_samples_frac))
        self.logger.debug("Phase being set to: %s" % phases)
        self.logger.debug("Phase rates being set to: %s" % phase_rates_per_spec)

        #Load the delays:
        self.delay.disable_load() # Disable load during configuration for delay
        self.phaserotate.disable_load() # Disable load during configuration for phaserotate
        
        for i in range(self.delay.n_streams):
            self.delay.set_delay(i, delay_samples_int[i])
            delay_frac = delay_samples_frac[i]
            delay_rate = delay_rates_samples_per_spec[i]
            if invert_band:
                delay_frac = -delay_frac
                delay_rate = -delay_rate

            self.phaserotate.set_delay(i, delay_frac)
            self.phaserotate.set_delay_rate(i, delay_rate)
            self.phaserotate.set_phase(i, phases[i])
            self.phaserotate.set_phase_rate(i, phase_rates_per_spec[i])
        if force_delay_load:
            self.delay.force_load()
            self.phaserotate.force_load()
        else:
            print("Loading delays...")
            assert load_time > time.time(), f"""Cannot set a load time that is in the past"""   
            self.delay.set_target_load_time(load_time)
            self.phaserotate.set_target_load_time(load_time)
            self.logger.debug(f"""Firmware reports that coarse delays will be loaded in: 
                                {self.delay.get_time_to_load()} FPGA clocks
                                and fine delays in:
                                {self.phaserotate.get_time_to_load()} FPGA clocks.""")
            print(f"""Firmware reports that coarse delays will be loaded in: 
                                {self.delay.get_time_to_load()} FPGA clocks
                                and fine delays in:
                                {self.phaserotate.get_time_to_load()} FPGA clocks.""")

    def enable_tx(self):
        self.logger.info("Enabling Ethernet output")
        for eth in self.eths:
            eth.enable_tx()

    def disable_tx(self):
        self.logger.info("Disabling Ethernet output")
        for eth in self.eths:
            eth.disable_tx()

    def tx_enabled(self):
        '''
        Returns `[eth.tx_enabled() for eth in self.eths]`. 
        '''
        return [eth.tx_enabled() for eth in self.eths]

    def set_lo_frequency_shift(self, lo_fshift_list, sw_sync=False):
        '''
        Sets the LO Frequency Shifts and resyncs, disabling tx for the duration of the function.
        
        :param lo_fshift_list: list of lo_fshifts in Hz to apply in order of streams.
        :type lo_fshift_list: List
        
        :param sw_sync: If True, issue a software reset trigger, rather than waiting
            for an external reset pulse to be received over SMA.
        :type sw_sync: bool

        :return:  Returns the lo_frequency_shift values from the board in Hz
        '''
        tx_enabled_mask = self.tx_enabled()
        self.disable_tx()

        for stream, offshift in enumerate(lo_fshift_list):
            self.lo.set_lo_frequency_shift(stream, offshift)
        self.lo.force_load()

        # self.logger.info("Arming sync generators")
        # self.sync.arm_sync()        
        # if sw_sync:
        #     self.logger.info("Issuing software sync")
        #     self.sync.sw_sync()
        # else:          
        self._enforce_valid_tt_armed()

        for i, eth in enumerate(self.eths):
            if tx_enabled_mask[i]:
                eth.enable_tx()

        return [
            self.lo.get_lo_frequency_shift(i, return_in_hz=True)
            for i in range(len(lo_fshift_list))
        ]

    def _enforce_valid_tt_armed(self, rearm_limit=5, rearm_noise=False):
        '''
        Awaits a sync pulse and validates the telescope-time, re-arming and repeating if it's invalid.
        '''
        while True:
            self.sync.wait_for_sync()
            if self.sync.get_tt_of_sync() % (NTIME_PACKET*FPGA_CLOCKS_PER_SPECTRA) == 0:
                self.logger.info("Validated tt_of_sync: %d" % (self.sync.get_tt_of_sync()))
                break
            if rearm_limit == 0:
                self.logger.error("Failed to rearm a valid tt_of_sync (%d). Giving up." % (self.sync.get_tt_of_sync()))
                break

            self.sync.arm_sync()
            if rearm_noise:
                self.sync.arm_noise()
            self.logger.warn("Rearming as tt_of_sync %d %% %d != 0" % (self.sync.get_tt_of_sync(), (NTIME_PACKET*FPGA_CLOCKS_PER_SPECTRA)))

            rearm_limit -= 1
            


    def set_lo_delays(self, lo_delay_list, force=False):
        '''
        Sets the LO Delays.
        
        :param lo_delay_list: list of delay in samples to apply in order of streams.
        :type lo_delay_list: List
        
        :param force: If True, call delay.force_load().
        :type sw_sync: bool

        :return:  Returns the lo_delay values from the board in samples
        '''
        for stream, delay in enumerate(lo_delay_list):
            self.delay.set_delay(stream, delay, force=force)

        return [
            self.delay.get_delay(stream)
            for stream, _ in enumerate(lo_delay_list)
        ]

    def read_chan_dest_ips_as_json(self):
        '''
        Reads the headers of the packetizer block and constructs a summative
        report of the channels' destination-IPs, as a json string.
        '''
        if not hasattr(self, 'packetizer'):
            return '[]'
        
        if not any([eth.tx_enabled() for eth in self.eths]):
            return '[]'

        headers = self.packetizer._read_headers()
        
        packet_dest_ips = []
        for header in headers:
            if not header['valid']:
                continue
            
            if header['first']:
                ip = header['dest_ip']
                feng_id = header['feng_id']
            
            if (len(packet_dest_ips) > 0 and
                (packet_dest_ips[-1]['dest'] == ip
                    and packet_dest_ips[-1]['feng_id'] == feng_id
                )
            ):
                if header['chans'] > packet_dest_ips[-1]['end_chan']:
                    packet_dest_ips[-1]['end_chan'] = header['chans']
                elif header['chans'] < packet_dest_ips[-1]['start_chan']:
                    packet_dest_ips[-1]['start_chan'] = header['chans']
            else:
                packet_dest_ips.append({
                    'dest':ip,
                    'feng_id':feng_id,
                    'start_chan':header['chans'],
                    'end_chan':header['chans'],
                    'packet_nchan':header['n_chans'],
                    'is_8bit':header['is_8_bit']}
                )

        for packet_dest_ip in packet_dest_ips:
            packet_dest_ip['end_chan'] += packet_dest_ip['packet_nchan']
            
            packet_dest_ip['n_chans'] = (
                packet_dest_ip['end_chan'] - packet_dest_ip['start_chan']
            )

            packet_dest_ip['n_strm'] = (
                packet_dest_ip['n_chans'] / packet_dest_ip['packet_nchan']
            )
            if packet_dest_ip['n_chans'] % packet_dest_ip['packet_nchan'] != 0:
                print(
                    ('Read headers from {} that indicate non-integer number of'
                    ' streams, there is probably an issue in the collation'
                    ' procedure: {} / {} = {}').format(
                        self.hostname,
                        packet_dest_ip['n_chans'],
                        packet_dest_ip['packet_nchan'],
                        packet_dest_ip['n_strm']
                    )
                )
            packet_dest_ip['n_strm'] = int(0.5 + packet_dest_ip['n_strm'])

        # print('{}[{}]: {}\n'.format(self.hostname, interface, packet_dest_ips))
        return json.dumps(packet_dest_ips)

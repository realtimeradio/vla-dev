import logging
import numpy as np
import time
import os
import traceback
import redis
import json
import casperfpga
import threading
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
DEFAULT_DTS_LANE_MAPS = [[0,1,3,7,6,8,2,4,5,9,11,10], [4,5,7,3,2,8,6,0,1,9,11,10]]
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

    :param fpgfile: .fpg file for firmware to program (or already loaded)
    :type fpgfile: str

    :param pipeline_id: Zero-indexed ID of the pipeline on this host.
    :type pipeline_id: int

    :param neths: Number of 100GbE interfaces for this pipeline.
    :type neths: int

    :param logger: Logger instance to which log messages should be emitted.
    :type logger: logging.Logger

    :param remote_uri: REST host address, eg. `http://192.168.32.100:5000`. This 
    triggers the transport to be a RemotePcieTransport object.
    :type remote_uri: str

    :param redis_host: Redis server host address
    :type redis_host: str

    :param redis_port: Redis server port address
    :type redis_port: int
    """

    def __init__(self, host, fpgfile, pipeline_id=0, neths=1, logger=None, remote_uri=None, redis_host=None, redis_port=6379):
        self.hostname = host #: hostname of the F-Engine's host SNAP2 board
        self.pipeline_id = pipeline_id
        self.fpgfile = fpgfile
        self.neths = neths
        self.eth_tx = [None for i in range(neths)]
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
            
        self.redis_obj = None
        self.redis_pubsub = None

        if redis_host is not None:
            self.redis_obj = redis.Redis(host = redis_host, port = redis_port, decode_responses=True)
            self.redis_pubsub = self.redis_obj.pubsub(ignore_subscribe_messages=True)

        #Thread init stuff
        self.delay_tracking_switch = threading.Event()
        self.delay_track = threading.Event()
        self.delay_halfoff = threading.Event()
        self.delay_halfcal = threading.Event()
        self.delay_halfphase = threading.Event()
        self.delay_halfphasecorrection = threading.Event()
        self.delay_fullphasecorrection = threading.Event()
        self.delay_tracking_thread = None

        self.dts_mon_switch = threading.Event()
        self.dts_mon_tx_disable = threading.Event()
        self.dts_mon_thread = None

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
        self._set_antname()

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
            self.eth_tx[i] = False
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

        #: Control interface to Packetizer blocks
        # 8 signals = 4 IFs (only half are real)
        self.packetizers = []
        for i in range(self.neths):
            self.packetizers += [packetizer.Packetizer(self._cfpga,
                'pipeline%d_packetizer%d' % (self.pipeline_id, i),
                n_chans=NCHANS, n_ants=4, sample_rate_mhz=2048,
                sample_width=2, word_width=64, line_rate_gbps=100.,
                n_time_packet=NTIME_PACKET, granularity=4)]
        for packetizern, packetizerblock in enumerate(self.packetizers):
            setattr(self, 'packetizer%d' % packetizern, packetizerblock)

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
        for pn, packetizerdev in enumerate(self.packetizers):
            self.blocks['packetizer%d' % pn] = packetizerdev
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
        if not read_only:
            #kill delay_tracking and DTS thread
            self.stop_delay_tracking()
            self.stop_dts_monitor()

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
        self.stop_delay_tracking()
        self.stop_dts_monitor()

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
                interface_id = v.get('ethport', 0)
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
                dests += [{'ip':dest_ip, 'port':dest_port, 'start_chan':start_chan,
                           'nchan':nchan, 'feng_ids':fengs_to_send,
                           'interface_id':interface_id}]
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
              - 'interface_id': The zero-indexed output interface ID from which these
                data should be transmitted.
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
        
        self.logger.info('Disabling TX')
        self.disable_tx()

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
            
        if sync:
            self.logger.info("Arming sync generators")
            self.sync.arm_sync()
            self.sync.arm_noise()
            if sw_sync:
                self.logger.info("Issuing software sync")
                self.sync.sw_sync()
            else:          
                self._enforce_valid_tt_armed(rearm_noise=True)
        else:
            self.logger.warn("Absence of sync means lo offshifts will not load...")
        
        #first, load lo_offshifts, assuming those received are in hz:
        if lo_fshift_list is not None:
            self.set_lo_fshift_list(lo_fshift_list)

        for sn, source_ip in enumerate(source_ips):
            if sn >= self.neths:
                self.logger.warning('Skipping setting Ethernet interface with ID %d' % (sn))
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

        self.logger.debug("Channels to send by FID: %s" % (str(channels_to_send_by_fid)))
        self.logger.debug("Largest number of chans with one destination: %d" % channels_to_send)

        self.logger.debug("Channel block size: %d" % self.chanreorder.n_parallel_chans)
        pkt_starts, pkt_payloads, word_indices, antchans = self.packetizers[0].get_packet_info(chans_per_packet, channels_to_send, ninput, chan_block_size=self.chanreorder.n_parallel_chans)
        for i in range(len(pkt_starts)):
            self.logger.debug("start %s, payload %s, word_indices %s, antchans %s" % (str(pkt_starts[i]), str(pkt_payloads[i]), str(word_indices[i]), str(antchans[i])))
        n_pkts = len(pkt_starts)
        antchan_indices = np.arange(n_pkts*chans_per_packet, dtype=int)[::chans_per_packet]
        chan_indices = antchan_indices % channels_to_send
        ant_indices = antchan_indices // channels_to_send
        self.logger.debug("Antenna-Channel indices: %s" % (str(antchan_indices)))
        self.logger.debug("Channel indices: %s" % (str(chan_indices)))
        self.logger.debug("Antenna indices: %s" % (str(ant_indices)))

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
        interface_ids = [False for _ in range(n_pkts)]
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
                interface_id = dest['interface_id']
                # loop over packets to this destination, antenna slowest, chan fastest
                for ant in range(ninput):
                    for cn, chan in enumerate(chans[::chans_per_packet]):
                        self.logger.debug('assigning dest %s (packet %d) ant %d, chan %d' % (dest, cn, ant, chan))
                        try:
                            feng_ids[pkt_num] = ant if 'feng_ids' not in dest else dest['feng_ids'][ant]
                        except IndexError:
                            self.logger.debug('skipping channel start %d for input %d because it isnt in the feng_ids list' % (chan, ant))
                            continue
                        chan_indices[pkt_num] = chan
                        ips[pkt_num] = dest_ip
                        ports[pkt_num] = dest_port
                        interface_ids[pkt_num] = interface_id
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
            for pn, packetizer in enumerate(self.packetizers):
                packetizer.write_config(
                    pkt_starts,
                    pkt_payloads,
                    chan_indices.tolist(),
                    feng_ids,
                    ips,
                    ports,
                    [chans_per_packet]*n_pkts,
                    [x==pn for x in interface_ids],
                    )
        else:
            self.logger.error("Not configuring Ethernet output because configuration builder failed")

        if enable_eth:
            self.enable_tx()

        self.logger.info("Startup of %s complete" % self.hostname)

    def _set_antname(self):
        """
        Lookup in META_antennaProperties,
        the corresponding antenna name for this fengine device server name,
        hostname and pipeline id.
        """
        if self.redis_obj is not None:
            antennaproperties = self.redis_obj.hgetall("META_antennaProperties")
            for key, value in antennaproperties.items():
                try:
                    deserialised = json.loads(value)
                    antennaproperties[key] = deserialised
                except:
                    pass
            for ant, prop in antennaproperties.items():
                if (self.fpga.server_hostname == prop["server"] 
                    and self.hostname == prop["pcie_id"] 
                    and self.pipeline_id == prop["pipeline_id"]):
                    self.fpga.set_connected_antname(ant)
        else:
            self.fpga.set_connected_antname(None)
        #set the redis channels on which this object listens for delay tracking (name dependant):
        self.delay_channel_names = [
            f"{self.fpga.get_connected_antname()}_delays",
            "update_calibration_delays", "update_calibration_phases"]

    def set_lo_fshift_list(self, lo_fshift_list, skip_if_equal=False):
        """
        Apply and load the provided list of LO FShift values, blocking until after the load.

        :param lo_fshift_list: The list of LO FShifts in Hz to apply, in order of streams.
        :type lo_fshift_list: List
        :param skip_if_equal: Whether or not to only set the values if they are different.
        :type skip_if_equal: bool
        """
        if skip_if_equal:
            equal = True
            for stream, fshift in enumerate(lo_fshift_list):
                fshift_set = self.lo.get_lo_frequency_shift(stream, return_in_hz=True)
                if fshift == fshift_set:
                    continue
                self.logger.info(f"F-Shift for stream {stream} is different: {fshift_set} != requested {fshift}.")
                equal = False
                break
            if equal:
                self.logger.info(f"F-Shift values match what is set, not setting again: {lo_fshift_list}.")
                return

        self.lo.set_reload_repeat_period(int(2048e6))

        for stream, offshift in enumerate(lo_fshift_list):
            self.lo.set_lo_frequency_shift(stream, offshift)

        lo_load_time = np.ceil(time.time()) + 1 #one second into the future
        if lo_load_time > time.time():
            self.lo.set_target_load_time(int(lo_load_time * FPGA_CLOCK_RATE_HZ), enable_trig=True)
            self.logger.info(f"F-Shift load time set to {time.ctime(lo_load_time)}")
            time.sleep(lo_load_time - (time.time()))
            fshift_time_to_load = self.lo.get_time_to_load()/FPGA_CLOCK_RATE_HZ
            assert (np.isclose(fshift_time_to_load, 0.0, atol=1e-2),
                    f"After sleeping, time to load from the F-Engine {fshift_time_to_load}s is not near zero.")
        else:
            raise RuntimeError("Cannot set F-shift load time for time in the past.")

    def get_lo_fshift_list(self, return_in_hz = True):
        """
        Get a list of the LO Frequency-shifts applied for all streams.
        
        :param return_in_hz: return the frequency shift in Hz if True. Else
            return a tuple (phase_step, scale), indicating that the underlying
            phase is being incremented by phase_step*2pi radians every 2**scale
            ADC samples.
        :type return_in_hz: bool
        """
        return [
            self.lo.get_lo_frequency_shift(stream, return_in_hz=return_in_hz)
            for stream in range(self.lo.n_streams)
        ]

    def set_delays(self, delay_to_load, delay_rate_to_load, phase_to_load, phase_rate_to_load,
                    sideband, clock_rate_hz=2048000000):
        """
        Transform the argument delays, delay rates, phases and phase rates before uploading them to the F-Engine.
        After sufficient testing, this function will be absorbed into delay_tracking to reduce complexity.
        :param delay_to_load: 4-tuple of delays for X and Y polarizations for both tunings. Each value is 
            the delay, in nanoseconds, which should be applied at the appropriate time.
            Whole ADC sample delays are implemented using a coarse delay, while sub-sample
            delays are implemented as a post-FFT phase rotation.
        :type delay_to_load: ndarray{float}
        :param delay_rate_to_load: 4-tuple of delay rates for X and Y polarizations for both tunings. Each value is
            the delay rate, in nanoseconds per second. This is the incremental delay
            which should be added to the current delay each second.
            Internally, delay rate is converted from nanoseconds-per-second to
            samples-per-spectra. Firmware delays are updated every 4 spectra.
        :type delay_rate_to_load: ndarray{float}
        :param phase_to_load: 4-tuple of phases for X and Y polarizations for both tunings. Each value is
            the phase, in radians. 
        :type phase_to_load: ndarray{float}
        :param phase_rate_to_load: 4-tuple of phase_rates for X and Y polarizations for both tunings. Each value is
            the rate of change of phase, in radians per second. This is the incremental phase
            which should be added to the current phase each second.
        :type phase_rate_to_load: ndarray{float}
        :param sideband: 2-long list of integers which are the VLA prescribed sideband factors.
        :type sideband: list{int}
        :param clock_rate_hz: ADC clock rate in Hz. If None, the clock rate will be computed from
            the observed PPS interval, which could fail if the PPS is unstable or not present.
        :type clock_rate_hz: int

        Returns:
            fshifts: ndarray{floats} the fshift values in Hz used in the phase correction.
        """
        delay_samples = delay_to_load * (1e-9 * clock_rate_hz)
        delay_samples_int = np.zeros(self.delay.n_streams, dtype=int)
        fshifts = np.zeros(self.delay.n_streams, dtype=float)
        for if_id in range(self.delay.n_streams):
            # If delay rate is positive, want to make fractional delay as small as possible,
            # so round delay up
            if delay_rate_to_load[if_id] > 0:
                delay_samples_int[if_id] = (np.ceil(delay_samples[if_id])).astype(int)
            # If delay rate is negative, we want to make fractional delay as large as possible,
            # so round integer delay down
            elif delay_rate_to_load[if_id] < 0:
                delay_samples_int[if_id] = (np.floor(delay_samples[if_id])).astype(int)
            # If delay rate is zero, we want to keep put as much fractionally into the fractional part
            elif delay_rate_to_load[if_id]==0:
                if delay_samples[if_id] >=0:
                    delay_samples_int[if_id] = (np.floor(delay_samples[if_id])).astype(int)
                else:
                    delay_samples_int[if_id] = (np.ceil(delay_samples[if_id])).astype(int)
            
            #collect fshift
            fshifts[if_id] = self.lo.get_lo_frequency_shift(if_id, return_in_hz = True)

        delay_samples_frac = (delay_samples - delay_samples_int).astype(np.float)

        phase_correction_factor = np.concatenate(((2*np.pi) * sideband[0] * fshifts[0:2],                           #tuning 0
                                                            (2*np.pi) * sideband[1] * fshifts[2:4]),axis=0)         #tuning 1    

        #if applying the fshift phase correction to the phase
        if self.delay_halfphasecorrection.is_set():
            phase_to_load[2:4] -= phase_correction_factor[2:4] * (delay_samples_int[2:4] / clock_rate_hz)
        if self.delay_fullphasecorrection.is_set():
            phase_to_load -= phase_correction_factor * (delay_samples_int / clock_rate_hz)

        # Massage rates into samples-per-spectra (lots of redundant use of clock rate...)
        delay_rates_samples_per_spec = delay_rate_to_load * 1e-9 * (2* self.autocorr.n_chans)
        # Convert phases to range +/- pi and normalize
        phases = phase_to_load / np.pi # normalize to fractions of pi
        phases = ((phases + 1) % 2) - 1   # place in range +/- 1

        # Convert phase rates to fractions of pi per spectra
        phase_rates_per_spec = phase_rate_to_load * (2*self.autocorr.n_chans) / clock_rate_hz
        phase_rates_per_spec = phase_rates_per_spec / np.pi # normalize to fractions of pi
        phase_rates_per_spec = ((phase_rates_per_spec + 1) % 2) - 1        # place in range +/- 1

        #Load the delays:
        self.delay.disable_load() # Disable load during configuration for delay
        self.phaserotate.disable_load() # Disable load during configuration for phaserotate
        
        # Invert slope of post-fft delay if necessary
        delay_samples_frac[0:2] *= sideband[0]
        delay_rates_samples_per_spec[0:2] *= sideband[0]
        delay_samples_frac[2:4] *= sideband[1]
        delay_rates_samples_per_spec[2:4] *= sideband[1]

        for i in range(self.delay.n_streams):
            try:
                self.delay.set_delay(i, delay_samples_int[i])
                self.phaserotate.set_delay(i, delay_samples_frac[i])
                self.phaserotate.set_delay_rate(i, delay_rates_samples_per_spec[i])
                self.phaserotate.set_phase(i, phases[i])
                self.phaserotate.set_phase_rate(i, phase_rates_per_spec[i])
            except BaseException as err:
                self.logger.error(f"Error encountered in settting delays and phases: {err}")
                return
        return fshifts

    def check_delay_tracking(self, delay_to_load, delay_rate_to_load, phase_to_load, phase_rate_to_load, loadtime, fshifts,
                            sslo, sideband, clock_rate_hz=2048000000):
        """
        From the delay and delay rate values for this fengine instance, calculate an expected delay
        slope value for a given time. 
        For that time interval, assert that the firmware reported delay slope matches the
        expected.
        This function is spawned asynchronously and it checks the firmware
        reported slope/phase against the argument delay, delay rate, phase and phase rate.
        Finally, it publishes an informative dictionary to FENG_delayStatus for logging purposes.

        :param delay_to_load: The n_streams ns delays that the delay loading thread believes was loaded.
        :type delay_to_load: ndarray{float}
        :param delay_rate_to_load: The n_streams ns/s delay rates that the delay loading thread believes was loaded.
        :type delay_to_rate_load: ndarray{float}
        :param phase_to_load: The n_streams phases (radians) that the delay loading thread believes was loaded.
        :type phase_to_load: ndarray{float}
        :param phase_rate_to_load: The n_streams phase rates (radians/s) that the delay loading thread believes was loaded.
        :type phase_rate_to_load: ndarray{float}
        :param loadtime: The time in seconds at which the delays were loaded.
        :type loadtime: float
        :param fshifts: The fshift values in use from the phase correction in Hz
        :type fshifts: ndarray{float}
        :param sslo: The sslo values in use from the delay model in mhz
        :type sslo: list
        :param sideband: The sideband values in use from the delay model
        :type sideband: list
        :param clock_rate_hz: ADC clock rate in Hz. If None, the clock rate will be computed from
            the observed PPS interval, which could fail if the PPS is unstable or not present.
        :type clock_rate_hz: int
        """
        #initialisation:
        firm_delay = np.zeros(self.delay.n_streams, dtype=float)
        firm_phase = np.zeros(self.delay.n_streams, dtype=float)

        #here we can be sure the time is in the past (negative)
        time_since_load = -1.0 * self.phaserotate.get_time_to_load() / FPGA_CLOCK_RATE_HZ # fpga_clks -> s
        for stream in range(self.phaserotate.n_streams):
            
            #fetch the firmware reported slope and delay (samples):
            slope, slope_scale = self.phaserotate.get_firmware_slope(stream)
            firm_frac_delay = slope/slope_scale
            # interpret slope gradient direction dependent on sideband
            if stream < 2:
                firm_frac_delay *= sideband[0]
            else:
                firm_frac_delay *= sideband[1]
            phase, phase_scale = self.phaserotate.get_firmware_phase(stream)
            firm_phase[stream] = (phase/phase_scale)
            firm_int_delay = self.delay.get_delay(stream)
            firm_delay[stream] = (firm_int_delay + firm_frac_delay) / (1e-9 * clock_rate_hz)
            
        exp_delay = (delay_to_load + (delay_rate_to_load * time_since_load))
        exp_phase = ((phase_to_load + (phase_rate_to_load * time_since_load)) /np.pi + 1)%2 - 1

        try:
            self.redis_obj.hset(
                "FENG_delayStatus",
                f"{self.fpga.get_connected_antname()}",
                json.dumps({
                    "expected_delay_ns" : np.round(exp_delay,decimals=4).tolist(),
                    "firmware_delay_ns" : np.round(firm_delay,decimals=4).tolist(),
                    "delay_correct"  : np.isclose(exp_delay,firm_delay,atol=1e-3).tolist(),
                    "firmware_phase_rad" : np.round(firm_phase,decimals=4).tolist(),
                    "expected_phase_rad" : np.round(exp_phase,decimals=4).tolist(),
                    "phase_correct"  : np.isclose(exp_phase,firm_phase,atol=1e-3).tolist(),
                    "time_since_load_sec" : round(time_since_load,8),
                    "delays_loaded_at" : loadtime,
                    "loadtime_accurate" : bool(np.isclose((time.time() - time_since_load),loadtime,atol=1e-6)),
                    "loaded_fshift_hz" : fshifts.tolist(),
                    "current_sslo": sslo,
                    "current_sideband": sideband
                    })
                )
        except:
            self.logger.error("Delay monitor unable to post to redis hash FENG_delayStatus.")
        return

    def stop_dts_monitor(self, timeout_s=5):
        """
        End the thread running `monitor_dts` if the thread is alive. Otherwise ignore.
        """
        if self.dts_mon_thread is None:
            self.logger.warning(f"DTS monitor thread has never been instantiated. Ignoring request.")
            return

        if not self.dts_mon_thread.is_alive():
            if not self.dts_mon_switch.is_set():
                self.logger.warning(f"DTS monitor thread is stopped already. Ignoring request.")
                return
            else:
                self.logger.warning(f"DTS monitor thread is stopped already, albeit unexpectedly. Cleaning up.")

        self.dts_mon_switch.clear()
        if self.dts_mon_thread.is_alive():
            self.logger.info(f"Stopping DTS monitor thread with a timeout of {timeout_s} second(s)...")
            self.dts_mon_thread.join(timeout_s)

            if self.dts_mon_thread.is_alive():
                message = f"DTS monitor thread did not join in {timeout_s} second(s)."
                self.logger.error(message)
                raise RuntimeError(message)

    def start_dts_monitor(self):
        """
        Start the thread running `monitor_dts` if the thread is dead. Otherwise ignore.
        """

        if self.dts_mon_thread is not None and self.dts_mon_thread.is_alive():
            if self.dts_mon_switch.is_set():
                self.logger.error(f"DTS monitor thread is already running. Ignoring request.")
                return

            message = f"DTS monitor thread is already running even though the switch is cleared."
            self.logger.error(message)
            raise RuntimeError(message)

        self.dts_mon_switch.set()

        self.dts_mon_thread = threading.Thread(
            target=self.monitor_dts, args=(), daemon=False
        )
        self.logger.info("Starting DTS monitor thread...")
        self.dts_mon_thread.start()

    def get_status_dts_monitor(self):
        """
        Get a dictionary describing the state of the DTS monitor thread.

        Returns:
            dict: {
                'is_alive': bool|None (the thread is alive or None if the thread has never been instantiated),
                'switch_set': bool (the thread's switch is set),
                'ok': bool (is_alive == switch_set)
            }
        """
        status = {
            "switch_set": self.dts_mon_switch.is_set(),
            "tx_disable": self.dts_mon_tx_disable.is_set(),
        }
        if self.dts_mon_thread is None:
            status["is_alive"] = None
            status["ok"] = not status["switch_set"]
        else:
            status["is_alive"] = self.dts_mon_thread.is_alive()
            status["ok"] = status["is_alive"] == status["switch_set"]

        return status

    def monitor_dts(self, poll_time_s=0.05):
        """
        Monitor the DTS timing state, and disable Ethernet output if
        it looks broken.

        :param poll_time_s: How often to poll the DTS state registers, in seconds
        :type poll_time_s: float
        """
        disabled = self.dts_mon_tx_disable.is_set()

        consecutive_bad_limit = 2 # Two consecutive bads => disable
        consecutive_bad_count = 0 if not disabled else consecutive_bad_limit

        rc = "FENG_dtsMonitor"
        antname = self.fpga.get_connected_antname()
        message = f"DTS monitor @ {antname}: Starting."
        self.logger.info(f"Alerting to {rc} and {rc}_{antname}_alive.")
        self.logger.info(message)
        if self.redis_obj is not None:
            self.redis_obj.publish(rc, message)
        test = False
        try:
            while self.dts_mon_switch.is_set():
                if self.redis_obj is not None:
                    # Record the fact the thread is alive with an expiring key
                    self.redis_obj.set(f"{rc}_{antname}_alive", 1, ex=3)

                try:
                    ok = self.sync.check_timekeeping(verbose=not disabled and consecutive_bad_count > 0) #log errors only if they are new
                except BaseException as err:
                    ok = False

                    message = f"Encountered {repr(err)} while checking timekeeping. ({traceback.format_exc()})"
                    self.logger.error(message)
                    if self.redis_obj is not None:
                        message = message.replace('\n', '\t')
                        self.redis_obj.publish(rc, f"DTS monitor @ {antname}: {message}")

                if not ok and not disabled:
                    # increment
                    consecutive_bad_count += 1
                if not ok and disabled:
                    # reset decrements
                    consecutive_bad_count = consecutive_bad_limit
                if ok and not disabled:
                    # reset consecutive streak
                    consecutive_bad_count = 0
                if ok and disabled:
                    # decrement until re-enabled
                    consecutive_bad_count -= 1

                if test or (not ok and not disabled):
                    message = f"Timekeeping error. ({consecutive_bad_count}/{consecutive_bad_limit})"
                    self.logger.warning(message)
                    if self.redis_obj is not None:
                        self.redis_obj.publish(rc, f"DTS monitor @ {antname}: {message}")

                    if consecutive_bad_count == consecutive_bad_limit:
                        message = f"Disabling ethernet: {self.eth_tx}."
                        self.logger.warning(message)
                        disabled = True
                        self.dts_mon_tx_disable.set()

                        # manually disable, leaving self.eth_tx intact
                        for eth in self.eths:
                            eth.disable_tx()
                            #eth.core.fabric_disable()
                        if self.redis_obj is not None:
                            self.redis_obj.publish(rc, f"DTS monitor @ {antname}: Timekeeping error. {message}")

                if test or (ok and (disabled or consecutive_bad_count > 0)):
                    message = f"Timekeeping recovery. ({consecutive_bad_limit-consecutive_bad_count}/{consecutive_bad_limit})"
                    self.logger.warning(message)
                    if self.redis_obj is not None:
                        self.redis_obj.publish(rc, f"DTS monitor @ {antname}: {message}")
                    
                    if consecutive_bad_count == 0:
                        message = f"Enabling ethernet: {self.eth_tx}."
                        self.logger.warning(message)
                        disabled = False
                        self.dts_mon_tx_disable.clear()
                        
                        # manually enable, respecting self.eth_tx
                        for i, eth in enumerate(self.eths):
                            if self.eth_tx[i]:
                                eth.enable_tx()
                        if self.redis_obj is not None:
                            self.redis_obj.publish(rc, f"DTS monitor @ {antname}: Timekeeping recovery. {message}")

                time.sleep(poll_time_s)
        except BaseException as err:
            message = f"Encountered {repr(err)}. ({traceback.format_exc()})"
            self.logger.error(message)
            if self.redis_obj is not None:
                message = message.replace('\n', '\t')
                self.redis_obj.publish(rc, f"DTS monitor @ {antname}: {message}")
        
        # self.dts_mon_tx_disable.clear()
        message = f"DTS monitor @ {antname}: Returning. DTS was last {'Bad' if disabled else 'Ok'}, leaving it as such. TX enabled: {self.tx_enabled()}"
        self.logger.info(message)
        if self.redis_obj is not None:
            self.redis_obj.publish(rc, message)

    def stop_delay_tracking(self, timeout_s=5):
        """
        End the thread running `delay_tracking` if the thread is alive. Otherwise ignore.
        In addition to just ending the thread, this function unsubscribes from the 
        redis channels that are listened to for delays when the thread
        is running. Furthermore, the `delay` and `phaserotate` blocks are re-initialised.
        """
        if self.delay_tracking_thread is None:
            self.logger.warning(f"Delay tracking thread has never been instantiated. Ignoring request.")
            return

        if not self.delay_tracking_thread.is_alive():
            if not self.delay_tracking_switch.is_set():
                self.logger.warning(f"Delay tracking thread is stopped already. Ignoring request.")
                return
            else:
                self.logger.warning(f"Delay tracking thread is stopped already, albeit unexpectedly. Cleaning up.")

        self.delay_tracking_switch.clear()
        if self.delay_tracking_thread.is_alive():
            self.logger.info("Stopping delay tracking thread...")
            self.delay_tracking_thread.join(timeout_s)

            if self.delay_tracking_thread.is_alive():
                message = f"Delay tracking thread did not join in {timeout_s} second(s)."
                self.logger.error(message)
                raise RuntimeError(message)

        #Unsubscribe to the required redis channels
        if self.redis_obj is not None:
            for channel in self.delay_channel_names:
                try:
                    self.redis_pubsub.unsubscribe(channel) 
                except redis.RedisError:
                    self.logger.warn(f'Unsubscription from `{channel}` unsuccessful.')    
        else:
            self.logger.warn("""Cosmic Fengine has no redis object instance. No subscribed channels
            to unsubscribe from.""")

        self.delay.initialize()
        self.phaserotate.initialize()

        #initialise the delay and delay rate numpy arrays:
        self.delay_to_load = np.zeros(self.phaserotate.n_streams, dtype=float)
        self.delay_rate_to_load = np.zeros(self.phaserotate.n_streams, dtype=float)
        self.phase_to_load = np.zeros(self.phaserotate.n_streams, dtype=float)
        self.phase_rate_to_load = np.zeros(self.phaserotate.n_streams, dtype=float)

    def start_delay_tracking(self):
        """
        Start the thread running `delay_tracking` if the thread is dead. Otherwise ignore.
        In addition to just starting the thread, this function subscribes to the redis 
        channels on which the geometric delays are broadcast and on which the thread is notified
        of calibration delay updates in META_calibrationDelays hash.
        """
        if self.delay_tracking_thread is not None and self.delay_tracking_thread.is_alive():
            if self.delay_tracking_switch.is_set():
                self.logger.error(f"Delay tracking thread is already running. Ignoring request.")
                return

            message = f"Delay tracking thread is already running even though the switch is cleared."
            self.logger.error(message)
            raise RuntimeError(message)

        self.delay_tracking_switch.set()

        #Subscribe to the required redis channels
        if self.redis_obj is not None:
            for channel in self.delay_channel_names:
                try:
                    self.redis_pubsub.subscribe(channel) 
                except redis.RedisError:
                    self.logger.error(f'Subscription to `{channel}` unsuccessful.')
        else:
            self.logger.warn("""Cosmic Fengine has no redis object instance. Cannot load delays
            for delay tracking.""")
            return

        self.delay_tracking_thread = threading.Thread(
            target=self.delay_tracking, args=(), daemon=False
        )
        self.logger.info("Starting delay tracking thread...")
        self.delay_tracking_thread.start()

    def get_status_delay_tracking(self):
        """
        Get a dictionary describing the state of the delay tracking thread.

        Returns:
            dict: {
                'is_alive': bool|None (the thread is alive or None if the thread has never been instantiated),
                'switch_set': bool (the thread's switch is set),
                'ok': bool (is_alive == switch_set)
            }
        """
        status = {
            "switch_set": self.delay_tracking_switch.is_set(),
        }
        if self.delay_tracking_thread is None:
            status["is_alive"] = None
            status["ok"] = not status["switch_set"]
        else:
            status["is_alive"] = self.delay_tracking_thread.is_alive()
            status["ok"] = status["is_alive"] == status["switch_set"]

        return status

    def check_delay_time(self, tolerance=1e-1):
        """
        A handy function to be called often in the runing of the delay_tracking thread.
        Checks the time registered by the delay block against the NTP time of the server
        and asserts that the difference is within the tolerance specified in the
        argument.

        Args:
            tolerance: float
        
        Returns:
            boolean: True - time is within tolerance.
                     False- time is not within tolerance.
        """
        self.logger.info("Checking FPGA time...")
        if not np.isclose(self.delay.timer.get_fpga_time()/FPGA_CLOCK_RATE_HZ,time.time(),atol=tolerance):
            self.logger.error(f"""
            Checking FPGA time...
            FPGA is reporting telescope time: 
            {time.ctime(self.delay.timer.get_fpga_time()/FPGA_CLOCK_RATE_HZ)} = {self.delay.timer.get_fpga_time()/FPGA_CLOCK_RATE_HZ}s 
            which is not close to current NTP time:
            {time.ctime(time.time())} = {time.time()}s.""")
            return False
        return True

    def load_received_phase_calibration_values(self, phase_cal_to_load):
        """
        To avoid repeated code, function to load phase calibration values to the F-Engine.

        :param phase_cal_to_load: an n_streams by n_chans list of phase calibration values in radians.
        :type phase_cal_to_load: ndarray{float}
        """
        for stream in range(self.phaserotate.n_streams):
            self.phaserotate.set_phase_cal(stream, phase_cal_to_load[stream, :].tolist())

    def delay_tracking(self):
        """
        Started in a thread, this function calls on `set_delays` to update the F-Engine coefficients for 
        delay tracking. 
        This function listens for delay, delay_rate and delay_rate_rate coefficient updates 
        on the channels subscribed to in `start_delay_tracking` and initialises calibration delays from META_calibrationDelays hash.
        In between receiving coefficient updates, when delay_track is set this function will interpolate new delay, delay_rate,
        phase and phase_rate values to upload to the F-Engine. When delay_track is cleared, this function will continuously 
        load the calibration delays to the F-Engine.
        """
        #Initialisation:
        try:
            delay_calib = np.fromiter(json.loads(self.redis_obj.hget
                                ("META_calibrationDelays", f"{self.fpga.get_connected_antname()}"
                                )).values(),dtype=float)
            phase_calib = np.array(json.loads(self.redis_obj.hget
                                ("META_calibrationPhases", f"{self.fpga.get_connected_antname()}"
                                )),dtype=float) # (nstreams by nchans list)
            self.load_received_phase_calibration_values(phase_calib)
            delay_coeffs = json.loads(self.redis_obj.hget
                                ("META_modelDelays", f"{self.fpga.get_connected_antname()}"
                                ))
            #update values
            delay_ns = delay_coeffs["delay_ns"]
            delay_rate_nsps = delay_coeffs["delay_rate_nsps"]
            delay_raterate_nsps2 = delay_coeffs["delay_raterate_nsps2"]
            sideband = [delay_coeffs["sideband_0"], delay_coeffs["sideband_1"]]
            sslo_0 = delay_coeffs["effective_lo_0_mhz"]
            sslo_1 = delay_coeffs["effective_lo_1_mhz"]
            coeff_time_value = delay_coeffs["time_value"]

        except:
            self.logger.error("""Unable to load calibration or geometric delays from 
            'META_calibrationDelays' and 'META_modelDelays', aborting thread...""")
            return

        #check that telescope time is correct:
        if not self.check_delay_time(tolerance= 1e-1):
            self.logger.error("""Delay time does not checkout, aborting thread.""")
            return

        #Open the outer while loop for the redis channel listener:
        while self.delay_tracking_switch.is_set():
            #Fetch message from subscribed channels
            message = self.redis_pubsub.get_message(timeout=0.1)

            if message and "message" == message["type"]:
                try:
                    message_data = json.loads(message.get('data'))
                except:
                    self.logger.error(f"Unable to json parse the triggered channel data. Continuing...")
                    continue
                if self.delay_channel_names[0] == message['channel']:
                    #This is a set of geometric delay coefficients
                    delay_coeffs = message_data

                if self.delay_channel_names[1] == message['channel']:
                    #Alert to update delay calibration values
                    if message_data:
                        try:
                            delay_calib = np.fromiter(json.loads(self.redis_obj.hget
                            ("META_calibrationDelays", f"{self.fpga.get_connected_antname()}"
                            )).values(),dtype=float)
                            self.logger.debug("Received trigger to load new calibration delays from 'META_calibrationDelays'.")
                        except BaseException:
                            self.logger.error("Unable to load calibration delays from 'META_calibrationDelays', Continuing...")
                            continue

                if self.delay_channel_names[2] == message['channel']:
                    #Alert to update phase calibration values
                    if message_data:
                        try:
                            phase_calib = np.array(json.loads(self.redis_obj.hget
                                ("META_calibrationPhases", f"{self.fpga.get_connected_antname()}"
                                )),dtype=float) # (nstreams by nchans list)
                            self.load_received_phase_calibration_values(phase_calib)
                            self.logger.debug("Received trigger to load new calibration phases from 'META_calibrationPhases'.")
                        except BaseException:
                            self.logger.error("Unable to load calibration phases from 'META_calibrationPhases', Continuing...")
                            continue

            else:
                #No messages received, load values on hand
                t = time.time() * 1e6 # received loadtime is in microseconds so compare against time now in microseconds
                if (delay_coeffs['loadtime_us'] < (t + 10e5)
                    or 
                    delay_coeffs['loadtime_us'] > (t + 20e5)):
                    #if the provided loadtime is not at least 1s into the future or more than 2s into the future
                    #interpolate half a second into the future on the old delay coefficients
                    required_loadtime_us = t + 5e5 
                else:
                    #the provided loadtime is within the window 1s -> 2s, update delay coefficients
                    self.logger.debug("Delay coefficients received have a target loadtime within range. Updating delay coefficients...")
                    #update values
                    required_loadtime_us = int(delay_coeffs['loadtime_us'])
                    delay_ns = delay_coeffs["delay_ns"]
                    delay_rate_nsps = delay_coeffs["delay_rate_nsps"]
                    delay_raterate_nsps2 = delay_coeffs["delay_raterate_nsps2"]
                    sideband = [delay_coeffs["sideband_0"], delay_coeffs["sideband_1"]]
                    sslo_0 = delay_coeffs["effective_lo_0_mhz"]
                    sslo_1 = delay_coeffs["effective_lo_1_mhz"]
                    coeff_time_value = delay_coeffs["time_value"]

                required_loadtime_s = required_loadtime_us * 1e-6
                required_loadtime_fpga_clks = int((required_loadtime_us * FPGA_CLOCK_RATE_HZ) // 1000000) #should give us fpga_clks in microsecond precision

                if self.delay_track.is_set():
                    #interpolate to the required loadtime, given the time at which the coefficients were calculated
                    loadtime_diff_modeltime = (required_loadtime_s - coeff_time_value) #value in seconds
                    # T = 1/2*ax^2 + bx + c + delay_calibrations
                    delay_to_load = (np.array([0.5*delay_raterate_nsps2*(loadtime_diff_modeltime**2) + 
                                        delay_rate_nsps*loadtime_diff_modeltime + 
                                        delay_ns]*self.delay.n_streams,dtype=float) +
                                        delay_calib)
                    # dT/dt = ax + b
                    delay_rate_to_load = np.array([delay_raterate_nsps2*loadtime_diff_modeltime + 
                                            delay_rate_nsps]*self.delay.n_streams,dtype=float)

                    phase_to_load = -1.0 * np.concatenate(((2*np.pi) * sideband[0] * delay_to_load[0:2]
                                                            * sslo_0 * 1e-3,                                        #tuning 0
                                                            (2*np.pi) * sideband[1] * delay_to_load[2:4] 
                                                            * sslo_1 * 1e-3),axis=0)                                #tuning 1
                    phase_rate_to_load = -1.0 * np.concatenate(((2*np.pi) * sideband[0] * delay_rate_to_load[0:2] 
                                                            * sslo_0 * 1e-3,                                        #tuning 0
                                                            (2*np.pi) * sideband[1] * delay_rate_to_load[2:4] 
                                                            * sslo_1 * 1e-3),axis=0)                                #tuning 1

                    #half delay off state 
                    if self.delay_halfoff.is_set():
                        delay_to_load[0:2] = 0.0
                        delay_rate_to_load[0:2] = 0.0 
                    #half calibration delay state
                    elif self.delay_halfcal.is_set():
                        delay_to_load[0:2] = delay_calib[0:2]
                        delay_rate_to_load[0:2] = 0.0
                    #half phase state
                    if self.delay_halfphase.is_set():
                        phase_to_load[0:2] = 0.0
                        phase_rate_to_load[0:2] = 0.0
                else:
                    #Zero array
                    delay_to_load = delay_calib
                    delay_rate_to_load = np.zeros(self.phaserotate.n_streams)
                    phase_to_load = np.zeros(self.phaserotate.n_streams)
                    phase_rate_to_load = np.zeros(self.phaserotate.n_streams)

                #Load delays:
                fshifts = self.set_delays(delay_to_load, delay_rate_to_load, phase_to_load, phase_rate_to_load, sideband,
                                clock_rate_hz=2048000000)
                
                if(required_loadtime_s > (time.time_ns()*1e-9 + 1e-1)):
                    #give 100ms of room for the loading of the loadtime
                    self.delay.set_target_load_time(required_loadtime_fpga_clks)
                    self.phaserotate.set_target_load_time(required_loadtime_fpga_clks)
                else:
                    self.logger.warn(
                    f"""Delays calculated for time {time.ctime(required_loadtime_s)} is not sufficiently far into the future.
                    Time now: {time.ctime()}""")
                    if not self.check_delay_time(tolerance= 1e-1): 
                        self.logger.error(f"Aborting thread.")
                        return
                    continue
                try:
                    # sleep till time to load == 0 (to allow for loading)
                    expected_sleep_duration = required_loadtime_s - time.time_ns()*1e-9
                    feng_time_to_load = self.phaserotate.get_time_to_load()/FPGA_CLOCK_RATE_HZ
                    assert (np.isclose(feng_time_to_load, expected_sleep_duration, atol=1e-4),
                            f"Time to load from the F-Engine {feng_time_to_load}s is not within 0.1ms of the expected time to load {expected_sleep_duration}s.")
                    assert (feng_time_to_load > 0, f"F-Engine time to load is not positive = {feng_time_to_load}. This means the load will likely be unsuccessful.")
                    time.sleep(expected_sleep_duration)  
                    feng_time_to_load = self.phaserotate.get_time_to_load()/FPGA_CLOCK_RATE_HZ
                    assert (np.isclose(feng_time_to_load, 0.0, atol=1e-2),
                            f"After sleeping, time to load from the F-Engine {feng_time_to_load}s is not near zero.")
                except ValueError:
                    self.logger.warn(f"""Tried to sleep for negative time.""")
                    if not self.check_delay_time(tolerance= 1e-1): 
                        self.logger.error(f"Aborting thread.")
                        return
                    continue
                self.check_delay_tracking(delay_to_load, delay_rate_to_load, phase_to_load, phase_rate_to_load, required_loadtime_s, fshifts,
                                        [sslo_0, sslo_1], sideband, clock_rate_hz=2048000000)
    
        self.logger.info("Delay switch is cleared, returning.")


    def set_delay_tracking_mode(self, delay_mode):
        """
        Sets up internal delay tracking mode according to the provided mode.

        :param delay_mode: The delay tracking mode, one of the following with
            False being the fallback:
            True, "fixed-only", "half-off", "half-cal", "half-phase",
            "half-corrected-phase", "full-corrected-phase", False
        :type delay_mode: string or boolean
        """

        if delay_mode == True:
            self.delay_halfoff.clear()
            self.delay_halfcal.clear()
            self.delay_halfphase.clear()
            self.delay_halfphasecorrection.clear()
            self.delay_fullphasecorrection.clear()
            self.delay_track.set()
            self.start_delay_tracking()
            return
        elif delay_mode == "fixed-only":
            self.delay_halfoff.clear()
            self.delay_halfcal.clear()
            self.delay_halfphase.clear()
            self.delay_halfphasecorrection.clear()
            self.delay_track.clear()
            self.start_delay_tracking()
            return
        elif delay_mode == "half-off":
            self.delay_track.set()
            self.delay_halfcal.clear()
            self.delay_halfphase.clear()
            self.delay_halfphasecorrection.clear()
            self.delay_halfoff.set()
            self.start_delay_tracking()
            return
        elif delay_mode == "half-cal":
            self.delay_track.set()
            self.delay_halfoff.clear()
            self.delay_halfphase.clear()
            self.delay_halfphasecorrection.clear()
            self.delay_halfcal.set()
            self.start_delay_tracking()
            return
        elif delay_mode == "half-phase":
            self.delay_track.set()
            self.delay_halfoff.clear()
            self.delay_halfcal.clear()
            self.delay_halfphasecorrection.clear()
            self.delay_halfphase.set()
            self.start_delay_tracking()
            return
        elif delay_mode == "half-corrected-phase":
            self.delay_track.set()
            self.delay_halfoff.clear()
            self.delay_halfcal.clear()
            self.delay_halfphase.clear()
            self.delay_halfphasecorrection.set()
            self.start_delay_tracking()
            return
        elif delay_mode == "full-corrected-phase":
            self.delay_track.set()
            self.delay_halfoff.clear()
            self.delay_halfcal.clear()
            self.delay_halfphase.clear()
            self.delay_halfphasecorrection.clear()
            self.delay_fullphasecorrection.set()
            self.start_delay_tracking()
            return
        
        # delay_mode == False or unknown, disable delay_tracking
        self.stop_delay_tracking()
        self.delay_track.clear()
        self.delay_halfphase.clear()
        self.delay_halfphasecorrection.clear()
        self.delay_halfoff.clear()
        self.delay_halfcal.clear()

    def get_delay_tracking_mode(self):
        """
        Fetches internal delay tracking mode.

        Returns:
            delay_mode: str: string indicating current delay tracking mode
        """
        if self.delay_tracking_switch.is_set():
            if self.delay_track.is_set():
                if self.delay_halfoff.is_set():
                    return "half-off"
                elif self.delay_halfcal.is_set():
                    return "half-cal"
                elif self.delay_halfphase.is_set():
                    return "half-phase"
                elif self.delay_halfphasecorrection.is_set():
                    return "half-corrected-phase"
                elif self.delay_fullphasecorrection.is_set():
                    return "full-corrected-phase"
                else:
                    return "true"
            else:
                return "fixed-only"
        else:
            return "false"

    #FOR TESTING ONLY
    def set_delay_tracking(self, delays, delay_rates, phases, phase_rates, sideband, fshifts,
                             load_time=None, clock_rate_hz=2048000000):
        """
        Set the delays for this F-Engine once. If no load_time is provided, delays are uploaded to the
        F-Engine immediately.
        :param delays: 4-tuple of delays for X and Y polarizations for both tunings. Each value is 
            the delay, in nanoseconds, which should be applied at the appropriate time.
            Whole ADC sample delays are implemented using a coarse delay, while sub-sample
            delays are implemented as a post-FFT phase rotation.
        :type delays: list{float}
        :param delay_rates: 4-tuple of delay rates for X and Y polarizations for both tunings. Each value is
            the delay rate, in nanoseconds per second. This is the incremental delay
            which should be added to the current delay each second.
            Internally, delay rate is converted from nanoseconds-per-second to
            samples-per-spectra. Firmware delays are updated every 4 spectra.
        :type delay_rates: list{float}
        :param phases: 4-tuple of phases for X and Y polarizations for both tunings. Each value is
            the phase, in radians. 
        :type phases: list{float}
        :param phase_rates: 4-tuple of phase_rates for X and Y polarizations for both tunings. Each value is
            the rate of change of phase, in radians per second. This is the incremental phase
            which should be added to the current phase each second.
        :type phase_rates: list{float}
        :param sideband: 2-length ndarray of the sideband value applied to each tuning.
        :type sideband: ndarray{int}
        :param fshifts: 4-length ndarray of the lo frequency shifts in Hz applied to each stream in the `lo` block.
        :type fshifts: ndarray{float}
        :param load_time: a unix time in seconds at which to load the delay values provided to the 
        F-Engine. 
        :type load_time: float
        :param clock_rate_hz: ADC clock rate in Hz. If None, the clock rate will be computed from
            the observed PPS interval, which could fail if the PPS is unstable or not present.
        :type clock_rate_hz: int
        """
        force_delay_load = False
        if load_time is None:
            force_delay_load = True
        else:
            load_time=int(load_time)

        phase_correction_factor = np.concatenate(((2*np.pi) * sideband[0] * fshifts[0:2],             #tuning 0
                                                    (2*np.pi) * sideband[1] * fshifts[2:4]),axis=0)   #tuning 1
        self.logger.debug("Setting delays at time %s" % (time.ctime(load_time)))
        delay_to_load = np.array(delays,dtype=float)
        delay_rate_to_load = np.array(delay_rates,dtype=float)
        phase_to_load = np.array(phases,dtype=float)
        phase_rate_to_load = np.array(phase_rates,dtype=float)
        self.set_delays(delay_to_load, delay_rate_to_load, phase_to_load, phase_rate_to_load, 
                        phase_correction_factor, clock_rate_hz)
       
        #Handle the loading time/force loading of the delays
        if force_delay_load:
            self.delay.force_load()
            self.phaserotate.force_load()
        else:
            assert load_time > time.time(), f"""Cannot set a load time that is in the past"""   
            self.delay.set_target_load_time(int(load_time * FPGA_CLOCK_RATE_HZ))
            self.phaserotate.set_target_load_time(int(load_time * FPGA_CLOCK_RATE_HZ))
            self.logger.debug(f"""Firmware reports that coarse delays will be loaded in: 
                                {self.delay.get_time_to_load()} FPGA clocks
                                and fine delays in:
                                {self.phaserotate.get_time_to_load()} FPGA clocks.""")

    def enable_tx(self, enable_state=None):
        """
        Optional enable_state is a list mask of bool for each eth.
        """

        if enable_state is None or not isinstance(enable_state, list):
            enable_state = [True for i in range(self.neths)]
        elif len(enable_state) < self.neths:
            enable_state.extend([True for i in range(len(enable_state), self.neths)])

        self.logger.info(f"Enabling Ethernet output: {enable_state}")
        dts_mon_tx_disabled = self.dts_mon_tx_disable.is_set()
        for i, eth in enumerate(self.eths):
            if not enable_state[i]:
                # leave in whatever state it is
                continue

            self.eth_tx[i] = True # should be enabled
            if not dts_mon_tx_disabled:
                eth.enable_tx()

    def disable_tx(self):
        """
        Returns the tx_enabled() state before the disablement.
        """
        self.logger.info("Disabling Ethernet output")
        ret = []
        for i, eth in enumerate(self.eths):
            ret.append(eth.tx_enabled())
            #eth.core.fabric_disable()
            eth.disable_tx()
            self.eth_tx[i] = False
        return ret

    def tx_enabled(self):
        '''
        Returns `[eth.tx_enabled() for eth in self.eths]`. 
        '''
        if not hasattr(self, "eths"):
            return []
        return [eth.tx_enabled() for eth in self.eths]
    
    def get_status_tx(self):
        """
        Returns a status dictionary of whether each eth is transmitting
        as it is supposed to be.
        """
        ok = True
        ret = {}
        for i, eth in enumerate(self.eths):
            eth_ok = self.eth_tx[i] == eth.tx_enabled()
            ret[f"eth_{i}_ok"] = eth_ok
            ok = ok and eth_ok
        ret["ok"] = ok
        return ret

    def tx_packet_rate(self):
        '''
        Returns `[eth.get_packet_rate() for eth in self.eths]`. 
        '''
        return [eth.get_packet_rate() for eth in self.eths]

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

    def update_packet_header_destination_ports(self, ipport_map):
        '''
        Iterates through the packet headers of all packetizers,
        updating the destination port value of any headers that have
        an IP value in the given map.

        :param ipport_map: dotted-quad string IP adress keyed integer ports
        :type ipport_map: dict

        :return: a list of booleans indicating if the corresponding
            packetizer had its headers re-populated
        :rtype: list
        '''
        changes_made = []
        for packetizer in self.packetizers:
            headers = packetizer._read_headers()
            changes_made.append(False)
            for header in headers:
                if header['dest_ip'] in ipport_map:
                    header['dest_port'] = ipport_map[header['dest_ip']]
                    changes_made[-1] = True
                header['chan'] = header['chans']

            if changes_made[-1]:
                packetizer._populate_headers(headers)
            
        return changes_made

    def read_chan_dest_ips_as_json(self, portnum):
        '''
        Reads the headers of the packetizer block and constructs a summative
        report of the channels' destination-IPs, as a json string.

        :param portnum: Which zero-indexed output interface to query.
        :type portnum: int
        '''
        if not hasattr(self, 'packetizers'):
            return '[]'
        
        if not any([eth.tx_enabled() for eth in self.eths]):
            return '[]'

        headers = self.packetizers[portnum]._read_headers()
        
        packet_dest_ips = []
        for header in headers:
            if not header['valid']:
                continue
            
            if header['first']:
                ip = header['dest_ip']
                port = header['dest_port']
                feng_id = header['feng_id']
            
            if (len(packet_dest_ips) > 0 and
                (packet_dest_ips[-1]['dest'] == ip
                    and packet_dest_ips[-1]['dest_port'] == port
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
                    'dest_port':port,
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

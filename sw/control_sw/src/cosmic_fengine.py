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

class CosmicFengine():
    """
    A control class for COSMIC's F-Engine firmware.

    :param host: CasperFpga interface for host.
    :type host: casperfpga.CasperFpga

    :param logger: Logger instance to which log messages should be emitted.
    :type logger: logging.Logger

    """
    def __init__(self, host, fpgfile, logger=None):
        self.hostname = host #: hostname of the F-Engine's host SNAP2 board
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

        self.dts         = dts.Dts(self._cfpga, 'pipeline0_dts')

        self.pfb         = pfb.Pfb(self._cfpga, 'pipeline0_pfb')
        self.vacc        = vacc.Vacc(self._cfpga, 'pipeline0_vacc', n_chans=2**16)

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

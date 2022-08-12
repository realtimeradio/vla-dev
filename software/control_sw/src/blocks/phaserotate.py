from .block import Block
import numpy as np
from cosmic_f.error_levels import *
import time

class PhaseRotate(Block):
    """
    Instantiate a control interface for a phase rotate block.

    :param host: CasperFpga interface for host.
    :type host: casperfpga.CasperFpga

    :param name: Name of block in Simulink hierarchy.
    :type name: str

    :param logger: Logger instance to which log messages should be emitted.
    :type logger: logging.Logger

    :param n_streams: Number of independent streams which may be shifted
    :type n_streams: int

    :param n_par_samples: Number of parallel ADC samples processed by the block.
    :type n_par_samples: int

    :param samplehz: The ADC sample rate in MHz
    :type samplehz: float

    """
    _BP = 0
    _BW = 32
    MAX_DELAY = 2**(2*_BW) 
    MAX_DELAY_RATE = 2**_BW 
    MAX_PHASE = 2**_BW 
    MAX_PHASE_RATE = 2**_BW 
    MIN_DELAY = 0 
    MIN_DELAY_RATE = 0 
    MIN_PHASE = 0 
    MIN_PHASE_RATE = 0 

    def __init__(self, host, name, n_streams=4, n_par_samples=8, samplehz=2048, logger=None):
        super(PhaseRotate, self).__init__(host, name, logger)
        self.n_streams = n_streams
        self.n_par_samples = n_par_samples
        self.samplehz = samplehz

    def set_delay(self, stream, delay):
        """
        Set the delay for a given stream. Break the delay provided into 
        two 32bit integers so as to correctly load the delay.

        :param stream: ADC stream index to which the delay should be applied.
        :type stream: int

        :param delay: delay to load
        :type delay: float
        """
        if delay >= self.MAX_DELAY: 
            message = f"""User requested a delay of {delay}, 
            maximum allowed is {self.MAX_DELAY}"""
            self._error(message)
            raise RuntimeError(message)
        if delay < self.MIN_DELAY:
            message = f"""User requested a delay msb of {delay}, 
            minimum allowed is {self.MIN_DELAY}"""
            self._error(message)
            raise RuntimeError(message)
        if stream > self.n_streams:
            self._error(f"""Tried to set fractional delay for stream {stream} > n_streams ({self.n_streams})""")
        
        int64_delay = round(delay * 2**self.MAX_DELAY)
        delay_lsb_reg = f"""params{stream}_delay_lsb"""
        delay_msb_reg = f"""params{stream}_delay_msb"""
        int32_delay_lsb = int(int64_delay & (2**32 - 1))
        int32_delay_msb = int(int64_delay >> 32)
        self._debug(f"""Setting fractional lsb delay of stream {stream} to {int32_delay_lsb}""")
        self.write_int(delay_lsb_reg, int32_delay_lsb)
        self._debug(f"""Setting fractional msb delay of stream {stream} to {int32_delay_msb}""")
        self.write_int(delay_msb_reg, int32_delay_msb)
    
    def get_delay(self, stream):
        """
        Retrieve the programmed fractional delay for a given stream.

        :param stream: ADC stream index from which the fractional delay should be retrieved.
        :type stream: int
        """
        if stream > self.n_streams:
            self._error(f"""Tried to fetch fractional delay for stream {stream} > n_streams ({self.n_streams})""")
        
        delay_lsb_reg = f"""params{stream}_delay_lsb"""
        delay_msb_reg = f"""params{stream}_delay_msb"""
        int32_delay_lsb = self.read_int(delay_lsb_reg)
        int32_delay_msb = self.read_int(delay_msb_reg)

        return float((int32_delay_msb << 32) + int32_delay_lsb) / (2**self.MAX_DELAY)
    
    def set_delay_rate(self, stream, delay_rate):
        """
        Set the delay rate for a given stream.

        :param stream: ADC stream index to which the phase should be applied.
        :type stream: int

        :param delay_rate: delay_rate to load
        :type delay_rate: float
        """
        if delay_rate >= self.MAX_DELAY_RATE:
            message = f"""User requested a delay rate of {delay_rate}, 
            maximum allowed is {self.MAX_DELAY_RATE}"""
            self._error(message)
            raise RuntimeError(message)
        if delay_rate < self.MIN_DELAY_RATE:
            message = f"""User requested a delay rate of {delay_rate}, 
            minimum allowed is {self.MIN_DELAY_RATE}"""
            self._error(message)
            raise RuntimeError(message)
        if stream > self.n_streams:
            self._error(f"""Tried to set delay rate for stream {stream} > n_streams ({self.n_streams})""")
        
        delay_rate_reg = f"""params{stream}_delay_rate"""
        delay_rate *= 2**self._BP
        self._debug(f"""Setting delay rate of stream {stream} to {delay_rate}""")
        self.write_int(delay_rate_reg, int(delay_rate))

    def get_delay_rate(self, stream):
        """
        Retrieve the programmed delay rate for a given stream.

        :param stream: ADC stream index from which the delay rate should be retrieved.
        :type stream: int
        """
        if stream > self.n_streams:
            self._error(f"""Tried to fetch fractional delay for stream {stream} > n_streams ({self.n_streams})""")
        
        delay_rate_reg = f"""params{stream}_delay_rate"""
        return self.read_int(delay_rate_reg)

    def set_phase(self, stream, phase):
        """
        Set the delay rate for a given stream.

        :param stream: ADC stream index to which the phase should be applied.
        :type stream: int

        :param phase: phase to load
        :type phase: float
        """
        if phase >= self.MAX_PHASE:
            message = f"""User requested a delay rate of {phase}, 
            maximum allowed is {self.MAX_PHASE}"""
            self._error(message)
            raise RuntimeError(message)
        if phase < self.MIN_PHASE:
            message = f"""User requested a delay rate of {phase}, 
            minimum allowed is {self.MIN_PHASE}"""
            self._error(message)
            raise RuntimeError(message)
        if stream > self.n_streams:
            self._error(f"""Tried to set delay rate for stream {stream} > n_streams ({self.n_streams})""")
        self._debug(f"""Setting delay rate of stream {stream} to {phase}""")
        phase_reg = f"""params{stream}_phase"""
        phase *= 2**self._BP
        self.write_int(phase_reg, int(phase))

    def get_phase(self, stream):
        """
        Retrieve the programmed delay phase for a given stream.

        :param stream: ADC stream index from which the delay phase should be retrieved.
        :type stream: int
        """
        if stream > self.n_streams:
            self._error(f"""Tried to fetch fractional delay for stream {stream} > n_streams ({self.n_streams})""")
        
        phase_reg = f"""params{stream}_phase"""
        return self.read_int(phase_reg)

    def set_phase_rate(self, stream, phase_rate):
        """
        Set the phase rate for a given stream.

        :param stream: ADC stream index to which the phase_rate should be applied.
        :type stream: int

        :param phase_rate: phase_rate to load
        :type phase_rate: float
        """
        if phase_rate >= self.MAX_PHASE_RATE:
            message = f"""User requested a delay rate of {phase_rate}, 
            maximum allowed is {self.MAX_PHASE_RATE}"""
            self._error(message)
            raise RuntimeError(message)
        if phase_rate < self.MIN_PHASE_RATE:
            message = f"""User requested a delay rate of {phase_rate}, 
            minimum allowed is {self.MIN_PHASE_RATE}"""
            self._error(message)
            raise RuntimeError(message)
        if stream > self.n_streams:
            self._error(f"""Tried to set delay rate for stream {stream} > n_streams ({self.n_streams})""")
        self._debug(f"""Setting delay rate of stream {stream} to {phase_rate}""")
        phase_reg_rate = f"""params{stream}_phase_rate"""
        phase_rate *= 2**self._BP
        self.write_int(phase_reg_rate, int(phase_rate))
    
    def get_phase_rate(self, stream):
        """
        Retrieve the programmed delay phase rate for a given stream.

        :param stream: ADC stream index from which the delay phase rate should be retrieved.
        :type stream: int
        """
        if stream > self.n_streams:
            self._error(f"""Tried to fetch fractional delay for stream {stream} > n_streams ({self.n_streams})""")
        
        phase_reg_rate = f"""params{stream}_phase_rate"""
        return self.read_int(phase_reg_rate)
    
    def initialize(self, read_only=False):
        """
        Initialize the phase, phase rate, delay and delay rate for all streams.

        :param read_only: If True, do nothing. If False, initialize all
            phase steps and offsets to the minimum allowed value.
        :type read_only: bool

        """
        if not read_only:
            for i in range(self.n_streams):
                self.set_phase_rate(i, 0.0)
                self.set_phase(i, 0.0)
                self.set_delay(i, 0.0)
                self.set_delay_rate(i, 0.0)
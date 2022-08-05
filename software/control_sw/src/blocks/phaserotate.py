from .block import Block
import numpy as np
from cosmic_f.error_levels import *

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
    MAX_DELAY_MSB = 2**_BW 
    MAX_DELAY_LSB = 2**_BW 
    MAX_DELAY_RATE = 2**_BW 
    MAX_PHASE = 2**_BW 
    MAX_PHASE_RATE = 2**_BW 
    MIN_DELAY_MSB = 0 
    MIN_DELAY_LSB = 0 
    MIN_DELAY_RATE = 0 
    MIN_PHASE = 0 
    MIN_PHASE_RATE = 0 

    def __init__(self, host, name, n_streams=4, n_par_samples=8, samplehz=2048, logger=None):
        super(PhaseRotate, self).__init__(host, name, logger)
        self.n_streams = n_streams
        self.n_par_samples = n_par_samples
        self.samplehz = samplehz
    
    def set_delay_msb(self, stream, delay_msb):
        """
        Set the delay msb for a given stream.

        :param stream: ADC stream index to which the phase should be applied.
        :type stream: int

        :param delay_msb: delay_msb to load
        :type delay_msb: float
        """
        if delay_msb >= self.MAX_DELAY_MSB:
            message = f"""User requested a delay msb of {delay_msb}, 
            maximum allowed is {self.MAX_DELAY_MSB}"""
            self._error(message)
            raise RuntimeError(message)
        if delay_msb < self.MIN_DELAY_MSB:
            message = f"""User requested a delay msb of {delay_msb}, 
            minimum allowed is {self.MIN_DELAY_MSB}"""
            self._error(message)
            raise RuntimeError(message)
        if stream > self.n_streams:
            self._error(f"""Tried to set delay msb for stream {stream} > n_streams ({self.n_streams})""")
        self._debug(f"""Setting delay msb of stream {stream} to {delay_msb}""")
        delay_msb_reg = f"""params{stream}_delay_msb"""
        delay_msb *= 2**self._BP
        self.write_int(delay_msb_reg, int(delay_msb))

    def set_delay_msb(self, stream, delay_lsb):
        """
        Set the delay msb for a given stream.

        :param stream: ADC stream index to which the phase should be applied.
        :type stream: int

        :param delay_lsb: delay_lsb to load
        :type delay_lsb: float
        """
        if delay_lsb >= self.MAX_DELAY_LSB:
            message = f"""User requested a delay msb of {delay_lsb}, 
            maximum allowed is {self.MAX_DELAY_LSB}"""
            self._error(message)
            raise RuntimeError(message)
        if delay_lsb < self.MIN_DELAY_LSB:
            message = f"""User requested a delay msb of {delay_lsb}, 
            minimum allowed is {self.MIN_DELAY_LSB}"""
            self._error(message)
            raise RuntimeError(message)
        if stream > self.n_streams:
            self._error(f"""Tried to set delay msb for stream {stream} > n_streams ({self.n_streams})""")
        self._debug(f"""Setting delay msb of stream {stream} to {delay_lsb}""")
        delay_lsb_reg = f"""params{stream}_delay_lsb"""
        delay_lsb *= 2**self._BP
        self.write_int(delay_lsb_reg, int(delay_lsb))
    
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
        self._debug(f"""Setting delay rate of stream {stream} to {delay_rate}""")
        delay_rate_reg = f"""params{stream}_delay_rate"""
        delay_rate *= 2**self._BP
        self.write_int(delay_rate_reg, int(delay_rate))

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

    def set_phase_rate(self, stream, phase_rate):
        """
        Set the delay rate for a given stream.

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
        phase_reg = f"""params{stream}_phase_rate"""
        phase_rate *= 2**self._BP
        self.write_int(phase_reg, int(phase_rate))
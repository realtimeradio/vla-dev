from .block import Block
from .timed_pulse import TimedPulse
import numpy as np
from cosmic_f.error_levels import *

class Lo(Block):
    """
    Instantiate a control interface for a Lo block.

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

    :param samplehz: The ADC sample rate in Hz
    :type samplehz: float

    """
    _BP = 29
    _BW = 32
    MAX_PHASE_STEP = (2**_BW)//2 -1 
    MAX_PHASE_OFFSET = (2**_BW)//2 -1 
    MIN_PHASE_STEP = -(2**_BW)//2
    MIN_PHASE_OFFSET = -(2**_BW)//2

    def __init__(self, host, name, n_streams=4, n_par_samples=8, samplehz=2048e6, logger=None):
        super(Lo, self).__init__(host, name, logger)
        self.timer = TimedPulse(host, name+"_timing", logger)
        self.n_streams = n_streams
        self.n_par_samples = n_par_samples
        self.samplehz = samplehz

    def set_phase_step(self, stream, phase_step):
        """
        Set the phase step for a given stream.

        :param stream: ADC stream index to which the phase should be applied.
        :type stream: int

        :param phase_step: LO phase step to load
        :type phase_step: float
        
        """
        if phase_step >= self.MAX_PHASE_STEP:
            message = f"""User requested a phase step of {phase_step}, 
            maximum allowed is {self.MAX_PHASE_STEP}"""
            self._error(message)
            raise RuntimeError(message)
        if phase_step < self.MIN_PHASE_STEP:
            message = f"""User requested a phase step of {phase_step}, 
            minimum allowed is {self.MIN_PHASE_STEP}"""
            self._error(message)
            raise RuntimeError(message)
        if stream > self.n_streams:
            self._error(f"""Tried to set phase step for stream {stream} > n_streams ({self.n_streams})""")
        phase_step_reg = f"""{stream}_phase_step"""
        phase_step *= 2**self._BP
        self._debug(f"""Setting lo phase step of stream {stream} to {phase_step}""")
        self.write_int(phase_step_reg, int(phase_step))

    def force_load(self):
        """
        Force immediate load of all phase/delay parameters.
        """
        self.timer.force_pulse()

    def get_phase_step(self, stream):
        """
        Retrieve the programmed phase step for a given stream.

        :param stream: ADC stream index to which the phase should be applied.
        :type stream: int
        """
        phase_step_reg = f"""{stream}_phase_step"""
        return self.read_int(phase_step_reg)

    def set_phase_offset(self, stream, phase_offset):
        """
        Set the phase offset for a given stream.

        :param stream: ADC stream index to which the phase should should be applied.
        :type stream: int

        :param phase_offset: LO phase offset to load
        :type delay: float
        
        """
        if phase_offset >= self.MAX_PHASE_OFFSET:
            message = f"""User requested a phase offset of {phase_offset}, 
            maximum allowed is {self.MAX_PHASE_OFFSET}"""
            self._error(message)
            raise RuntimeError(message)
        if phase_offset < self.MIN_PHASE_OFFSET:
            message = f"""User requested a phase offset of {phase_offset}, 
            minimum allowed is {self.MIN_PHASE_OFFSET}"""
            self._error(message)
            raise RuntimeError(message)
        if stream > self.n_streams:
            self._error(f"""Tried to set phase offset for stream {stream} > n_streams ({self.n_streams})""")
        phase_offset_reg = f"""{stream}_phase_offset"""
        phase_offset *= 2**self._BP
        self._debug(f"""Setting lo phase offset of stream {stream} to {phase_offset}""")
        self.write_int(phase_offset_reg, int(phase_offset))

    def get_phase_offset(self, stream):
        """
        Retrieve the programmed phase offset for a given stream.

        :param stream: ADC stream index to which the phase should be applied.
        :type stream: int
        """
        phase_offset_reg = f"""{stream}_phase_offset"""
        return self.read_int(phase_offset_reg)

    def set_phase(self, stream, phase_offset):
        """
        Here we account for the number of streams being processed in parallel by the LO block.
        Hence, phase_step = n_par_samples * phase_offset
        
        :param stream: ADC stream index to which the phase should be applied.
        :type stream: int

        :param phase_offset: LO phase offset to load
        :type phase_offset: float
        """
        phase_step = phase_offset * self.n_par_samples
        assert phase_step < self.MAX_PHASE_STEP, f"""The supplied phase offset corresponds to a phase_step = {phase_step} > {self.MAX_PHASE_STEP}"""
        self.set_phase_offset(stream, phase_offset)
        self.set_phase_step(stream, phase_step)

    def set_lo_frequency_shift(self, stream, frequency_shift):
        """
        This function performs the translation from a frequency shift specified in Hz to 
        the required phase_offset and phase_step values.

        :param stream: ADC stream index to which the phase should be applied.
        :type stream: int

        :param frequency_shift: The frequency shift to apply in Hz.
        :type frequency_shift: float
        """
        assert frequency_shift <= self.get_max_shift(), f"""Specified frequency_shift {frequency_shift}Hz is larger than the maximum shift allowed {self.get_max_shift()}Hz."""
        assert frequency_shift >= self.get_min_shift(), f"""Specified frequency_shift {frequency_shift}Hz is smaller than the minimum shift allowed {self.get_min_shift()}Hz."""
        phase_offset = (2**(self._BW-self._BP))*(frequency_shift/(self.samplehz))
        self.set_phase(stream, phase_offset)

    def get_lo_frequency_shift(self, stream, return_in_hz = True):
        """
        This function retrieves the phase offset value 
        and returns a tuple containing it and the scaling factor to multiply with
        to turn it to a Hz frequency.

        :param stream: ADC stream index to which the phase should be applied.
        :type stream: int

        :param return_in_hz: return the frequency shift in Hz if True otherwise return integer offset per ADC clock with it's bitwidth.
        :type return_in_hz: bool
        """
        offset = self.get_phase_offset(stream)

        return  offset * (self.samplehz)/(2**self._BW) if return_in_hz else (offset , self._BW)

    def get_max_shift(self):
        """
        Calculate the maximum allowed frequency shift.
        """
        return self.MAX_PHASE_OFFSET * (self.samplehz)/(2**self._BW)

    def get_min_shift(self):
        """
        Calculate the minimum allowed frequency shift.
        """
        return self.MIN_PHASE_OFFSET * (self.samplehz)/(2**self._BW)

    def get_status(self):
        """
        Get status and error flag dictionaries.

        Status keys:

            - shifthz<``n``>: Currently loaded lo frequency shift for ADC input index ``n``.
              in units of ADC samples.
            - max_shift: The maximum lo offshift supported by the firmware.
            - min_shift: The minimum lo offshift supported by the firmware.

        :return: (status_dict, flags_dict) tuple. `status_dict` is a dictionary of
            status key-value pairs. flags_dict is
            a dictionary with all, or a sub-set, of the keys in `status_dict`. The values
            held in this dictionary are as defined in `error_levels.py` and indicate
            that values in the status dictionary are outside normal ranges.
        """
        stats, flags = self.timer.get_status()
        for stream in range(self.n_streams):
            stats[f"shifthz{stream}"] = self.get_lo_frequency_shift(stream)
        stats['max_shifthz'] = self.get_max_shift()
        stats['min_shifthz'] = self.get_min_shift()
        return stats,flags

    def initialize(self, read_only=False):
        """
        Initialize the phase steps and offsets for all streams.

        :param read_only: If True, do nothing. If False, initialize all
            phase steps and offsets to the minimum allowed value.
        :type read_only: bool

        """
        self.timer.initialize(read_only=read_only)
        if not read_only:
            for i in range(self.n_streams):
                self.set_lo_frequency_shift(i, 0.0)

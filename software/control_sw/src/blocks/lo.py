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
    :type samplehz: int

    """
    _BW = 45 # bitwidth of phase increment register
    _BP = 44 # binary point position of phase increment register
    MAX_PHASE_STEP = (2**_BW)//2 -1 
    MIN_PHASE_STEP = -(2**_BW)//2

    def __init__(self, host, name, n_streams=4, n_par_samples=8, samplehz=2048000000, logger=None):
        super(Lo, self).__init__(host, name, logger)
        self.timer = TimedPulse(host, name+"_timing", logger)
        self.n_streams = n_streams
        self.n_par_samples = n_par_samples
        self.samplehz = samplehz

    def set_reload_repeat_period(self, period):
        """
        After an initial load via the internal timer, repeat resetting / loading
        of the phase accumulators every ``period`` ADC samples.
        Use period=0 to disable periodic reloads.

        :param period: Phase accumulator reset period, in ADC samples.
        :type period: int
        """
        assert period % self.n_par_samples == 0, "Period not a multiple of FPGA period"
        self.write_int("reset_repeat_rate", period // self.n_par_samples)

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
        phase_step *= 2**(self._BP)
        self._debug(f"""Setting lo phase step of stream {stream} to {phase_step}""")
        if phase_step < 0:
            phase_step += 2**self._BW
        self.write_int(f"""{stream}_phase_offset_lsb""", int(phase_step) & 0xffffffff)
        self.write_int(f"""{stream}_phase_offset_msb""", (int(phase_step) >> 32) & 0xffffffff)
        
    def force_load(self):
        """
        Force immediate load of all phase/delay parameters.
        """
        self.timer.force_pulse()

    def enable_load(self):
        """
        Enable the loading of values when target TT is reached
        """
        self.timer.enable_tt_pulse()

    def disable_load(self):
        """
        Disable the loading of values when target TT is reached
        """
        self.timer.disable_tt_pulse()

    def set_target_load_time(self, value, enable_trig=True):
        """
        Load a new target TT

        :param value: Telescope time to load
        :type value: int

        :param enable_trig: If True, enable the triggering of a sync pulse
            at this time. Else, set the load_time registers but don't
            enable the triggering system.
        :type enable_trig: bool

        """
        self.timer.set_target_tt(value, enable_trig=enable_trig)
    
    def get_target_load_time(self):
        """
        Get currently set target load time.
        
        :return: target_tt
        :rtype: int
        """
        return self.timer.get_target_tt()
    
    def get_time_to_load(self):
        """
        Get number of FPGA clocks until load trigger.
        The returned value will be negative if the trigger time
        is in the past.
        
        :return: time_to_load
        :rtype: int
        """
        return self.timer.get_time_to_load()

    def get_phase_step(self, stream):
        """
        Retrieve the programmed phase step for a given stream.

        :param stream: ADC stream index to which the phase should be applied.
        :type stream: int
        """
        lsb = self.read_uint(f"""{stream}_phase_offset_lsb""")
        msb = self.read_uint(f"""{stream}_phase_offset_msb""")
        v = (msb << 32) + lsb
        if v > self.MAX_PHASE_STEP:
            v -= 2**self._BW
        return v

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
        phase_step = (frequency_shift/self.samplehz)
        self.set_phase_step(stream, phase_step)

    def get_lo_frequency_shift(self, stream, return_in_hz = True):
        """
        This function retrieves the phase offset value 
        and returns a tuple containing it and the scaling factor to multiply with
        to turn it to a Hz frequency.

        :param stream: ADC stream index to which the phase should be applied.
        :type stream: int

        :param return_in_hz: return the frequency shift in Hz if True. Else
            return a tuple (phase_step, scale), indicating that the underlying
            phase is being incremented by phase_step*2pi radians every 2**scale
            ADC samples.
        :type return_in_hz: bool
        """
        step = self.get_phase_step(stream)
        if return_in_hz:
            return step * self.samplehz / 2**self._BP
        else:
            return (step, self._BP)

    def get_max_shift(self):
        """
        Calculate the maximum allowed frequency shift, in Hz
        """
        return self.MAX_PHASE_STEP * self.samplehz / 2**self._BP

    def get_min_shift(self):
        """
        Calculate the minimum allowed frequency shift, in Hz
        """
        return self.MIN_PHASE_STEP * self.samplehz / 2**self._BP

    def get_shift_resolution(self):
        """
        Calculate the resolution of the internal LO.

        :return: LO frequency resolution, in Hz
        :rtype: float
        """
        return self.samplehz / 2**self._BP

    def get_status(self):
        """
        Get status and error flag dictionaries.

        Status keys:

            - shifthz<``n``>: Currently loaded lo frequency shift for ADC input index ``n``.
              in units of ADC samples.
            - max_shifthz: The maximum lo offshift supported by the firmware, in Hz
            - min_shifthz: The minimum lo offshift supported by the firmware, in Hz
            - shift_reshz: The resolution of the LO shift, in Hz, supported by the firmware

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
        stats['shift_reshz'] = self.get_shift_resolution()
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
            self.set_reload_repeat_period(0) # Disable periodic loading
            self.force_load()

from .block import Block
from .timed_pulse import TimedPulse
import time
from cosmic_f.error_levels import *

class Delay(Block):
    """
    Instantiate a control interface for a Delay block.

    :param host: CasperFpga interface for host.
    :type host: casperfpga.CasperFpga

    :param name: Name of block in Simulink hierarchy.
    :type name: str

    :param logger: Logger instance to which log messages should be emitted.
    :type logger: logging.Logger

    :param n_streams: Number of independent streams which may be delayed
    :type n_streams: int

    """
    MIN_DELAY = 0 #: minimum delay allowed
    _BP = 18
    DEFAULT_MAX_DELAY = 2**_BP - 1
    def __init__(self, host, name, n_streams=64, logger=None):
        super(Delay, self).__init__(host, name, logger)
        self.timer = TimedPulse(host, name+"_timing", logger)
        self.n_streams = n_streams
        self.max_delay = None

    def get_max_delay(self):
        """
        Query the firmware to get the maximum delay it
        supports.

        :return: Maximum supported delay, in ADC samples
        :rtype: int

        """
        try:
            self.max_delay = self.read_uint('max_delay')
        except:
            self._warning("Couldn't real maximum delay. Defaulting to %d" % self.DEFAULT_MAX_DELAY)
            self.max_delay = self.DEFAULT_MAX_DELAY
        return self.max_delay

    def set_delay(self, stream, delay, force=False):
        """
        Set the delay for a given input stream.

        :param stream: ADC stream index to which delay should be applied.
        :type stream: int

        :param delay: Number of ADC clock cycles delay to load.
        :type delay: int

        """
        if delay < 0:
            message = "User requested a negative delay %d" % (delay)
            self._error(message)
            raise RuntimeError(message)
        if delay < self.MIN_DELAY:
            self._warning("User requested delay of %d, but choosing %d because this is the minimum" % (delay, self.MIN_DELAY))
        if stream > self.n_streams:
            self._error('Tried to set delay for stream %d > n_streams (%d)' % (stream, self.n_streams))
        if self.max_delay is None:
            self.get_max_delay()
        if delay >= self.max_delay:
            self._error('Tried to set delay to %d which is > the allowed maximum (%d)' % (delay, self.max_delay))
            delay = self.max_delay-1
        self._debug('Setting delay of stream %d to %d' % (stream, delay))
        delay_reg  = 'delay%d_delay' % (stream)
        self.write_int(delay_reg, delay)
        if force:
            self.force_load()

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

    def force_load(self):
        """
        Force immediate load of all delays.
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

    def get_delay(self, stream):
        """
        Get the current delay for a given input.

        :param stream: Which ADC input index to query
        :type stream: int

        :return: Currently loaded delay, in ADC samples
        :rtype: int, scale

        """
        if stream > self.n_streams:
            self._error('Tried to get delay for stream %d > n_streams (%d)' % (stream, self.n_streams))
        delay_reg = 'delay%d_loaded' % stream
        return self.read_uint(delay_reg), 2**self._BP

    def initialize(self, read_only=False):
        """
        Initialize all delays.

        :param read_only: If True, do nothing. If False, initialize all
            delays to the minimum allowed value.
        :type read_only: bool

        """
        self.timer.initialize(read_only=read_only)
        self.max_delay = self.get_max_delay()
        if not read_only:
            for i in range(self.n_streams):
                self.set_delay(i, self.MIN_DELAY)
        self.force_load()

    def get_status(self):
        """
        Get status and error flag dictionaries.

        Status keys:

            - delay<``n``>: Currently loaded delay for ADC input index ``n``.
              in units of ADC samples.
            - max_delay: The maximum delay supported by the firmware.
            - min_delay: The minimum delay supported by the firmware.

        :return: (status_dict, flags_dict) tuple. `status_dict` is a dictionary of
            status key-value pairs. flags_dict is
            a dictionary with all, or a sub-set, of the keys in `status_dict`. The values
            held in this dictionary are as defined in `error_levels.py` and indicate
            that values in the status dictionary are outside normal ranges.

        """
        stats, flags = self.timer.get_status()
        for i in range(self.n_streams):
            stats['delay%.2d' % i] = self.get_delay(i)
        stats['max_delay'] = self.get_max_delay()-1
        stats['min_delay'] = self.MIN_DELAY
        return stats, flags

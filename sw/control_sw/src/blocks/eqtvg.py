import numpy as np
import struct
from .block import Block
from cosmic_f.error_levels import *

class EqTvg(Block):
    """
    Instantiate a control interface for a post-equalization test vector
    generator block.

    :param host: CasperFpga interface for host.
    :type host: casperfpga.CasperFpga

    :param name: Name of block in Simulink hierarchy.
    :type name: str

    :param logger: Logger instance to which log messages should be emitted.
    :type logger: logging.Logger

    :param n_inputs: Number of independent inputs which may be emulated
    :type n_inputs: int

    :param n_serial_inputs: Number of independent inputs sharing a data bus
    :type n_serial_inputs: int

    :param n_chans: Number of frequency channels.
    :type n_chans: int

    """
    _FORMAT = 'H'
    def __init__(self, host, name, n_inputs=64, n_chans=2**12, n_serial_inputs=16, logger=None):
        super(EqTvg, self).__init__(host, name, logger)
        self.n_inputs = n_inputs
        self.n_serial_inputs = n_serial_inputs
        self.n_chans = n_chans
        self._input_size = struct.calcsize(self._FORMAT)*self.n_chans

    def tvg_enable(self):
        """
        Enable the test vector generator.
        """
        self.write_int('tvg_en', 1)

    def tvg_disable(self):
        """
        Disable the test vector generator
        """
        self.write_int('tvg_en', 0)

    def tvg_is_enabled(self):
        """
        Query the current test vector generator state.

        :return: True if the test vector generator is enabled, else False.
        :rtype: bool

        """
        return bool(self.read_int('tvg_en'))
    
    def write_input_tvg(self, input, test_vector):
        """
        Write a test vector pattern to a single signal input.
        
        :param input: Index of input to which test vectors should be loaded.
        :type input: int

        :param test_vector: `self.n_chans`-element test vector. Values should
            be representable in 8-bit unsigned integer format. Data are loaded
            such that the most-significant 4 bits of the test_vectors are
            interpretted as the 2's complement 4-bit real sample data.
            The least-significant 4 bits of the test vectors are interpretted as
            the 2's complement 4-bit imaginary sample data.
        :type test_vector: list or numpy.ndarray

        """
        tv = np.array(test_vector, dtype='>%s'%self._FORMAT)
        assert (tv.shape[0] == self.n_chans), "Test vector should have self.n_chans elements!"
        core_name = 'core%d_tv' % (input // self.n_serial_inputs)
        sub_index = input % self.n_serial_inputs
        self.write(core_name, tv.tostring(), offset=sub_index*self._input_size)

    def write_const_per_input(self):
        """
        Write a constant to all the channels of a input,
        with input `i` taking the value `i`.
        """
        for input in range(self.n_inputs):
            self.write_input_tvg(input, np.ones(self.n_chans)*input)

    def write_freq_ramp(self):
        """
        Write a frequency ramp to the test vector 
        that is repeated for all ADC inputs. Data are wrapped to fit into
        8 bits. I.e., the test vector value for channel 257 takes the value ``1``.
        """
        ramp = np.arange(self.n_chans)
        ramp = np.array(ramp, dtype='>%s' %self._FORMAT)
        for input in range(self.n_inputs):
            self.write_input_tvg(input, ramp)

    def read_input_tvg(self, input, makecomplex=False, return_list=False):
        """
        Read the test vector loaded to an ADC input.
        
        :param input: Index of input from which test vectors should be read.
        :type input: int

        :param makecomplex: If True, return an array of 4+4 bit complex numbers,
           as interpretted by the correlator. If False, return the raw unsigned 8-bit
           values loaded in FPGA memory.
        :type makecomplex: Bool

        :return: Test vector array
        :rtype: numpy.ndarray

        """
        core_name = 'core%d_tv' % (input // self.n_serial_inputs)
        sub_index = input % self.n_serial_inputs
        s = self.read(core_name, self._input_size, offset=sub_index*self._input_size)
        dtype = '>%s' % self._FORMAT
        ri_width = struct.calcsize(self._FORMAT) * 8 // 2
        tvg = np.fromstring(s, dtype=dtype)

        if makecomplex:
            tvg_r = tvg.view(dtype=dtype.lower()) // (2**ri_width)
            tvg_r[tvg_r > (2**(ri_width-1))] -= (2**ri_width)
            tvg_i = tvg.view(dtype=dtype.lower()) % (2**ri_width)
            tvg_i[tvg_i > (2**(ri_width-1))] -= (2**ri_width)
            tvg = tvg_r + 1j*tvg_i
        return tvg if not return_list else list(map(int, tvg))

    def get_status(self):
        """
        Get status and error flag dictionaries.

        Status keys:

            - tvg_enabled: Currently state of test vector generator. ``True`` if
              the generator is enabled, else ``False``.

        :return: (status_dict, flags_dict) tuple. `status_dict` is a dictionary of
            status key-value pairs. flags_dict is
            a dictionary with all, or a sub-set, of the keys in `status_dict`. The values
            held in this dictionary are as defined in `error_levels.py` and indicate
            that values in the status dictionary are outside normal ranges.
        """
        stats = {}
        flags = {}
        stats['tvg_enabled'] = self.tvg_is_enabled()
        if stats['tvg_enabled']:
            flags['tvg_enabled'] = FENG_NOTIFY
        return stats, flags

    def initialize(self, read_only=False):
        """
        Initialize the block.

        :param read_only: If True, do nothing. If False, load frequency-ramp
            test vectors, but disable the test vector generator.
        :type read_only: bool

        """
        if read_only:
            pass
        else:
            self.tvg_disable()
            self.write_freq_ramp()

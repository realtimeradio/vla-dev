import struct
import numpy as np
from .block import Block

class SineGen(Block):
    """
    Sine Generator controller

    This block controls a digital TVG,
    which can generate programmable ADC data

    :param host: CasperFpga interface for host.
    :type host: casperfpga.CasperFpga

    :param name: Name of block in Simulink hierarchy.
    :type name: str

    :param logger: Logger instance to which log messages should be emitted.
    :type logger: logging.Logger

    :param n_sine: The number of independent test vector brams.
    :type n_sine: int

    :param n_outputs: The number of output channels from the block.
    :type n_outputs: int

    :param n_samples: The number of samples in the test vector buffer.
    :type n_samples: int

    """
    _format = 'b'
    def __init__(self, host, name, n_sine=2, n_outputs=4, n_samples=2**13, logger=None):
        super(SineGen, self).__init__(host, name, logger)
        self.n_sine = n_sine
        self.n_outputs = n_outputs
        self.n_samples = n_samples
        self._bp = 8*struct.calcsize(self._format) - 1

    def write_sine(self, n, period, amp=0.1, cos=False):
        """
        Write a sine wave.

        :param n: Which sine wave generator to write to.
        :type n: int

        :param period: Sine period in ADC samples
        :type period: int

        :param cos: If True, use a cosine, rather than a sine.
        :type cos: bool

        :param amp: Sine wave amplitude. 1 will saturate the logic.
        :type amp: float

        """
        assert n < self.n_sine, "Tried to assign sine source >= self.n_sine"
        if cos:
            v = np.cos(2*np.pi / period * np.arange(self.n_samples)) * amp
        else:
            v = np.sin(2*np.pi / period * np.arange(self.n_samples)) * amp
        v = np.array(v * 2**(self._bp), dtype=int)
        v[v>=(2**self._bp)] = 2**self._bp - 1
        v[v<-(2**self._bp)] = -2**self._bp
        v = np.array(v, dtype=self._format)
        self.write('sine%d' % n, v.tobytes())

    def assign_output(self, output, n):
        """
        Assign an output channel to a given data stream.
        
        :param output: The index of the output stream to be assigned.
        :type output: int

        :param n: The index of the sine stream to assign to `output`.
            Use `None` to turn off test vector insertion.
        :type n: int
        """
        if n is not None:
            assert n < self.n_sine, "Tried to assign sine source >= self.n_sine"
        assert output < self.n_outputs
        ctrl_reg = "octal_mux_sine0_sel"
        if n is None:
            v = 0
        else:
            v = n+1
        self.change_reg_bits(ctrl_reg, v, 2*output, 2)

    def get_output_assignment(self, output):
        """
        Get the index of the sine stream assigned to an output.

        :param output: The index of the output stream to query.
        :type output: int

        :return: The index of the sine stream to assign to `output`.
            Or, `None` if no test vector is being inserted
        :rtype: int
        """
        assert (output < self.n_outputs), "Tried to read an output >= self.n_outputs"
        ctrl_reg = "octal_mux_sine0_sel"
        v = self.get_reg_bits(ctrl_reg, 2*output, 2)
        if v == 0:
            return None
        else:
            return v - 1
        return noise

    def initialize(self, read_only=False):
        """
        Initialize the block

        :param read_only: If False, turn off test vector insertion
            If True, do nothing.
        :type read_only: bool
        """
        if read_only:
            return
        for n in range(self.n_outputs):
            self.assign_output(n, None)

    def get_status(self):
        """
        Get status and error flag dictionaries.

        Status keys:

            - output_assignment<n> (int): The sine generator ID currently
              assigned to output stream ``n``, where ``n`` is a two-digit
              integer starting at 00. None, if the generators are not being used.

        :return: (status_dict, flags_dict) tuple. `status_dict` is a dictionary of
            status key-value pairs. flags_dict is
            a dictionary with all, or a sub-set, of the keys in `status_dict`. The values
            held in this dictionary are as defined in `error_levels.py` and indicate
            that values in the status dictionary are outside normal ranges.

        """
        stats = {}
        flags = {}
        for o in range(self.n_outputs):
            stats['output_assignment%.2d' % o] = self.get_output_assignment(o)
        return stats, flags

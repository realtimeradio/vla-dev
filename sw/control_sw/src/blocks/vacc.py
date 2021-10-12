import time
import struct
import numpy as np
from scipy.signal import medfilt

from .block import Block
from cosmic_f.error_levels import *

class Vacc(Block):
    """
    Instantiate a control interface for an Auto-Correlation block. This
    provides auto-correlation spectra of post-FFT data.

    :param host: CasperFpga interface for host.
    :type host: casperfpga.CasperFpga

    :param name: Name of block in Simulink hierarchy.
    :type name: str

    :param logger: Logger instance to which log messages should be emitted.
    :type logger: logging.Logger

    :param acc_len: Accumulation length initialization value, in spectra.
    :type acc_len: int

    :param n_chans: Number of frequency channels.
    :type n_chans: int

    """
    def __init__(self, host, name,
                 acc_len=2**15,
                 logger=None,
                 n_chans=4096,
                ):
        super(Vacc, self).__init__(host, name, logger)
        self.n_chans = n_chans
        self._acc_len = acc_len

    def get_acc_cnt(self):
        """
        Get the current accumulation count.

        :return count: Current accumulation count
        :rtype count: int
        """
        return self.read_uint('int_count')
   
    def _wait_for_acc(self):
        """
        Block until a new accumulation completes, then return
        the count index.

        :return count: Current accumulation count
        :rtype count: int
        """
        cnt0 = self.get_acc_cnt()
        cnt1 = self.get_acc_cnt()
        # Counter overflow protection
        if cnt1 < cnt0:
            cnt1 += 2**32
        while cnt1 < ((cnt0+1) % (2**32)):
            time.sleep(0.1)
            cnt1 = self.get_acc_cnt()
        return cnt1

    def _read_bram(self):
        """ 
        Read RAM containing autocorrelation spectra for all signals in a core.

        :return: Array of autocorrelation data, in float32 format. Array
            dimensions are [POLARIZATIONS, FREQUENCY CHANNEL].
        :rtype: numpy.array
        """
        if self._use_mux:
            dout = np.zeros([self.n_signals_per_block, self.n_chans], dtype=np.float32)
            read_loop_range = range(1)
        else:
            dout = np.zeros([self.n_signals, self.n_chans], dtype=np.float32)
            read_loop_range = range(self._n_cores)
        n_words_per_stream = self.n_signals_per_block * self.n_chans // self._n_parallel_streams
        n_chans_per_stream = self.n_chans // self._n_parallel_streams
        for core in read_loop_range:
            for stream in range(self._n_parallel_streams):
                if self._use_mux:
                    ramname = 'common_dout%d_bram' % (stream) # Why call it "common" rather than 0?!
                else:
                    ramname = '%d_dout%d_bram' % (core, stream)
                raw = self.read(ramname, 4*n_words_per_stream)
                x = struct.unpack('>%df' % n_words_per_stream, raw)
                for subsignal in range(self.n_signals_per_block):
                    dout[core*self.n_signals_per_block + subsignal, stream::self._n_parallel_streams] = \
                        x[subsignal*n_chans_per_stream:(subsignal+1)*n_chans_per_stream]
        return dout

    def get_new_spectra(self):
        """
        Get a new average power spectra.

        :return: Float32 array of dimensions [POLARIZATION, FREQUENCY CHANNEL]
            containing autocorrelations with accumulation length divided out.
        :rtype: numpy.array

        """
        d, t = self.host.snapshots[self.prefix + 'ss0'].read_raw()
        x = struct.unpack('>%dQ' % (d['length'] // 8), d['data'])
        return [np.array(x)]

    def plot_spectra(self, db=True, show=True):
        """
        Plot the spectra of all signals in a single signal_block,
        with accumulation length divided out
        
        :param signal_block: If using multiplexing, plot data for this signal
            block. If not using multiplexing, this parameter does nothing, and
            data from all inputs will be plotted.
            When multiplexing, Each call will plot data for inputs
            ``self.n_signals_per_block x signal_block`` to
            ``self.n_signals_per_block x (signal_block+1) - 1``.

        :param db: If True, plot 10log10(power). Else, plot linear.
        :type db: bool

        :param show: If True, call matplotlib's `show` after plotting
        :type show: bool

        :return: matplotlib.Figure

        """
        from matplotlib import pyplot as plt
        specs = self.get_new_spectra()
        f, ax = plt.subplots(1,1)
        if db:
            ax.set_ylabel('Power [dB]')
            specs = 10*np.log10(specs)
        else:
            ax.set_ylabel('Power [linear]')
        ax.set_xlabel('Frequency Channel')
        for speci, spec in enumerate(specs):
            ax.plot(spec, label="signal_%d" % (speci))
        ax.legend()
        if show:
            plt.show()
        return f

    def get_acc_len(self):
        """
        Get the currently loaded accumulation length in units of spectra.

        :return: Current accumulation length
        :rtype: int
        """
        self._acc_len = self.read_int('acc_len_fpga_clks') // self.n_chans * 2
        return self._acc_len

    def set_acc_len(self, acc_len):
        """
        Set the number of spectra to accumulate.

        :param acc_len: Number of spectra to accumulate
        :type acc_len: int
        """
        assert isinstance(acc_len, int), "Cannot set accumulation length to type %r" % type(acc_len)
        self._acc_len = acc_len
        self.write_int('acc_len_fpga_clks', acc_len * self.n_chans // 2)

    def get_status(self):
        """
        Get status and error flag dictionaries.

        Status keys:

            - acc_len (int) : Currently loaded accumulation length in number of spectra.

        :return: (status_dict, flags_dict) tuple. `status_dict` is a dictionary of
            status key-value pairs. flags_dict is
            a dictionary with all, or a sub-set, of the keys in `status_dict`. The values
            held in this dictionary are as defined in `error_levels.py` and indicate
            that values in the status dictionary are outside normal ranges.
        """
        stats = {
            'acc_len': self.get_acc_len(),
        }
        flags = {}
        return stats, flags

    def initialize(self, read_only=False):
        """
        Initialize the block, setting (or reading) the accumulation length.

        :param read_only: If False, set the accumulation length to the value provided
            when this block was instantiated. If True, use whatever accumulation length
            is currently loaded.
        :type read_only: bool
        """
        if read_only:
            self.get_acc_len()
        else:
            self.set_acc_len(self._acc_len)

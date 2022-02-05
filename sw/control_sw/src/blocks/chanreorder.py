import struct
import numpy as np
from .block import Block

class ChanReorder(Block):
    """
    Instantiate a control interface for a Channel Reorder block.

    :param host: CasperFpga interface for host.
    :type host: casperfpga.CasperFpga

    :param name: Name of block in Simulink hierarchy.
    :type name: str

    :param logger: Logger instance to which log messages should be emitted.
    :type logger: logging.Logger

    :param n_ants: Number of dual-pol signals handled by this block.
    :type n_ants: int

    :param n_times: Number of times handled by this block.
    :type n_times: int

    :param n_chans: Number of channels in the system.
    :type n_chans: int

    :param n_parallel_chans: Number of channels reordered in parallel.
    :type n_parallel_chans: int
    """
    _map_format = 'I'
    _map_register = 'dynamic_reorder_map1'
    def __init__(self, host, name,
            n_ants=4,
            n_times=64,
            n_chans=2**10,
            n_parallel_chans=4,
            logger=None):
        super(ChanReorder, self).__init__(host, name, logger)
        self.n_signals = n_ants
        self.n_times = n_times
        assert n_chans % n_parallel_chans == 0
        self.n_chans = n_chans
        self.n_parallel_chans = n_parallel_chans
        self.n_serial_chans = n_chans // n_parallel_chans

    def set_channel_order(self, order):
        """
        Reorder the channels such that the channel order[i]
        emerges out of the reorder in position i.

        There are various requirements of the order map which must be met.

            - Every integer multiple of `self.n_parallel_chans` of the map must
              start on an integer multiple of `n_parallel_chans`.
              Eg., for `n_parallel_chans = 8` `order[0] = 16` is acceptable.
              `order[0] = 4` is not.
            - Blocks of `n_parallel_channels` must be consecutive. Eg., if
              `n_parallel_chans=8`, `order[16:24] = [0,1,2,3,4,5,6,7]` is
              acceptable. `order[16:24] = [0,1,2,3,8,9,10,11]` is not.
            - The provided map must be `self.n_chans` elements long.

        Input data order is assumed to be:
        time x serial_channel x signal x [parallel channel x dual-pol sample]
        i.e. time x serial_channel x signal x <parallel dimensions>

        Output data order is:
        signal x serial_channel x time x <parallel_dimensions>

        :param order: The order to which data should be mapped. I.e., if
            `order[0] = 16`, then the first channel out of the F-engine
            will be channel 16. The order map should meet the above criteria.
            A ValueError exception will be raised if it does not.
        :type order: list of int


        """
        out_array = np.zeros([self.n_signals * self.n_times * self.n_serial_chans], dtype='>%s' % self._map_format)
        # Check input
        order = np.array(order)
        # We must load the reorder map in one go, so it should be for all chans
        assert order.shape[0] == self.n_chans
        # We can only reorder blocks of n_parallel_chans, so make sure that the
        # user-provided order respects this limitation
        for i in range(self.n_serial_chans):
            block_start = self.n_parallel_chans * i
            block_stop  = self.n_parallel_chans * (i + 1)
            start_chan = order[block_start]
            assert start_chan < self.n_chans
            req_stop_chan = start_chan + self.n_parallel_chans
            if not np.all(order[block_start : block_stop] == list(range(start_chan, req_stop_chan))):
                self._info("order[block_start]: %d" % order[block_start])
                self._info("order[block_stop]: %d" % order[block_stop])
                self._info("start_chan: %d" % start_chan)
                self._info("req_stop_chan: %d" % req_stop_chan)
                self._error('Can only reorder channels in blocks of 8')
                raise ValueError

        for xn, x in enumerate(order[::self.n_parallel_chans]//self.n_parallel_chans):
            for s in range(self.n_signals):
                for t in range(self.n_times):
                    input_idx = t*self.n_serial_chans*self.n_signals + x*self.n_signals + s
                    output_idx = s*self.n_serial_chans*self.n_times + xn*self.n_times + t
                    out_array[output_idx] = input_idx
        
        self.write(self._map_register, out_array.tobytes()) # Be sure out_array is big endian!

    def read_reorder(self, raw=False):
        """
        Read the currently loaded reorder map.

        :param raw: If True, return the map as loaded onto the FPGA. If False,
            return the resulting channel map -- i.e., the channel ordering
            being output by this F-engine.
        :type raw: bool

        :return: The reorder map currently loaded.
        :rtype: list
        """
        map_words = self.n_serial_chans * self.n_signals * self.n_times
        map_bytes = struct.calcsize(self._map_format) * map_words
        reorder_bytes = self.read(self._map_register, map_bytes)
        reorder_map = struct.unpack('>%d%s' % (map_words, self._map_format), reorder_bytes)

        if raw:
            # Return the actual contents of the underlying map
            return reorder_map
        else:
            # Expand the order to obtain actual channel numbers
            # irrespective of the underlying number of parallel channels.
            # Pick a single input / time and assume the map is consistent.
            # input has dimensions n_times * n_serial_chans * n_signals
            # output has dimensions n_signals * n_serial_chans * n_times
            expanded_order = []
            for c in range(self.n_serial_chans):
                start_chan = reorder_map[self.n_times * c] // self.n_signals * self.n_parallel_chans
                end_chan = start_chan + self.n_parallel_chans
                expanded_order += list(range(start_chan, end_chan))
            return expanded_order

    def initialize(self, read_only=False):
        """
        Initialize the block.

        :param read_only: If True, this method is a no-op. If False,
            initialize the block with the identity map. I.e., map channel
            `n` to channel `n`.
        :type read_only: bool
        """
        if read_only:
            pass
        else:
            self.set_channel_order(np.arange(self.n_chans))

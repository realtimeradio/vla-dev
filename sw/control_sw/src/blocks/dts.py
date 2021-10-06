import struct
import numpy as np

from .block import Block
from cosmic_f.error_levels import *

LANE_MAP = [0, 4, 5, 1, 2, 3, 6, 7, 8, 9, 10, 11]

class Dts(Block):
    REG_ADDRESS_CR = 0x0 # Control Register
    REG_ADDRESS_PC = 0x1 # Parity count
    REG_ADDRESS_SC = 0x2 # Scramble Code
    REG_ADDRESS_MD = 0x3 # Meta Data
    REG_ADDRESS_TM = 0x4 # Timing Register
    NREG = 5
    def __init__(self, fpga, name, nlanes=12, logger=None):
        super(Dts, self).__init__(fpga, name, logger)
        self.fpga = fpga
        self.nlanes = nlanes
        self.regval = [None for i in range(self.NREG)]
        for i in range(self.NREG): self._write_reg(0, i)

    def _read_reg(self, regoffset=0):
        return self.read_uint('dts', word_offset=regoffset)

    def _write_reg(self, val, regoffset):
        self.regval[regoffset] = val
        self.write_int('dts', val, word_offset=regoffset, blindwrite=True)

    def _change_reg_bits(self, val, offset, nbits, regoffset=0):
        orig = self.regval[regoffset]
        #print('reg was 0x%.8x' % orig)
        masked = orig & (0xffffffff - ((2**nbits - 1)<<offset))
        if val >= 2**nbits:
            print('ERROR: cant write %d to a %d bit register field' % (val, nbits))
            exit()
        new = masked + (val << offset)
        #print('now 0x%.8x' % new)
        self._write_reg(new, regoffset)

    def _change_ctrl_reg_bits(self, val, offset, nbits):
        self._change_reg_bits(val, offset, nbits, regoffset=0)

    def set_addr(self, addr):
        self._change_ctrl_reg_bits(addr, 8, 8)

    def set_data(self, data):
        self._change_ctrl_reg_bits(data, 0, 8)

    def set_read_strobe(self, v):
        self._change_ctrl_reg_bits(v, 17, 1)

    def set_write_strobe(self, v):
        self._change_ctrl_reg_bits(v, 16, 1)

    def toggle_write_strobe(self):
        self.set_write_strobe(0)
        self.set_write_strobe(1)
        self.set_write_strobe(0)

    def toggle_read_strobe(self):
        self.set_read_strobe(0)
        self.set_read_strobe(1)
        self.set_read_strobe(0)

    def mute(self):
        self._change_ctrl_reg_bits(0, 18, 1)

    def unmute(self):
        self._change_ctrl_reg_bits(1, 18, 1)

    def set_cs(self, chip):
        if chip is None:
            self._change_ctrl_reg_bits(0, 19, 12)
        else:
            self._change_ctrl_reg_bits(1<<chip, 19, 12)

    def read_data(self):
        return self._read_reg(0) & 0xff

    def get_lock_state(self):
        return (self._read_reg(0) >> 8) & (2**self.nlanes - 1)

    def get_gty_lock_state(self):
        return (self._read_reg(0) >> (8+self.nlanes)) & (2**self.nlanes - 1)

    def advance_stream(self, stream):
        v = (1<<stream)
        self._write_reg(0, 1)
        self._write_reg(v, 1)
        print(self._read_reg(1))
        self._write_reg(0, 1)

    def delay_stream(self, stream):
        v = (1<<stream)<<12
        self._write_reg(0, 1)
        self._write_reg(v, 1)
        print(self._read_reg(1))
        self._write_reg(0, 1)

    def reset_delays(self):
        self._write_reg(0, 1)
        self._write_reg(1<<31, 1)
        self._write_reg(0, 1)

    def set_lane_map(self, lanemap):
        x = 0
        for i in range(self.nlanes):
            x += (lanemap[i] << (4*i))
        self._write_reg(x & 0xffffffff, 2)
        print(hex(x & 0xffffffff))
        self._write_reg(x >> 32, 3)
        print(hex(x >> 32))

    def latch_parity_errs(self):
        for i in range(self.nlanes):
            self.set_cs(None)
            self.set_read_strobe(1)
            self.set_addr(0)
            self.set_data(1<<4)
            self.set_cs(i)
            self.toggle_write_strobe()
        self.set_cs(None)

    def get_parity_errs(self):
        #self.latch_parity_errs() 
        dout = []
        for i in range(self.nlanes):
            dts_dict = {}
            self.set_cs(None)
            self.set_read_strobe(0)
            self.set_addr(self.REG_ADDRESS_PC)
            self.set_cs(i) # causes edge on drb
            dts_dict = {
                'time': 0,
                'acc': 0,
                'count': 0,
            }
            for j in range(3):
                dts_dict['time'] += (self.read_data() << (8*(2-j)))
                self.toggle_read_strobe()
            for j in range(4):
                dts_dict['acc'] += (self.read_data() << (8*(3-j)))
                self.toggle_read_strobe()
            for j in range(2):
                dts_dict['count'] += (self.read_data() << (8*(1-j)))
                self.toggle_read_strobe()
            dout += [dts_dict]
        self.set_cs(None)
        return dout

    def get_meta_data2(self):
        for i in range(self.nlanes):
            print("meta %d:" % i)
            self.set_cs(None)
            self.set_read_strobe(0)
            self.set_addr(self.REG_ADDRESS_MD)
            self.set_cs(i) # causes edge on drb
            dts_dict = {
                'antnum': None,
                'ifnum': None,
                'chipnum': None,
                'is3bit': None,
                'pll_lock0': None,
                'pll_lock1': None,
                'unused': None,
            }
            d = 0
            for j in range(4):
                x = self.read_data()
                self.toggle_read_strobe()
                d += (x << (8*(3-j)))
            print("0x%.8x" %d)
        self.set_cs(None)

    def get_meta_data(self):
        dout = []
        for i in range(self.nlanes):
            self.set_cs(None)
            self.set_read_strobe(0)
            self.set_addr(self.REG_ADDRESS_MD)
            self.set_cs(i) # causes edge on drb
            dts_dict = {
                'antnum': None,
                'ifnum': None,
                'chipnum': None,
                'is3bit': None,
                'pll_lock0': None,
                'pll_lock1': None,
                'unused': None,
            }
            x = self.read_data()
            self.toggle_read_strobe()
            dts_dict['antnum'] = x
            x = self.read_data()
            self.toggle_read_strobe()
            dts_dict['ifnum'] = x >> 4
            dts_dict['chipnum'] = x & 0xf
            x = self.read_data()
            self.toggle_read_strobe()
            dts_dict['is3bit'] = x >> 4
            dts_dict['pll_lock0'] = x & 0xf
            x = self.read_data()
            self.toggle_read_strobe()
            dts_dict['pll_lock1'] = x >> 4
            dts_dict['unused'] = x & 0xf
            dout += [dts_dict]
        self.set_cs(None)
        return dout

    def get_status(self, lanes='all'):
        if lanes == 'all':
            lanes = range(self.nlanes)
        x = self.get_meta_data()
        gty_lock = self.get_gty_lock_state()
        dts_lock = self.get_lock_state()
        stats = {}
        flags = {}
        for i in lanes:
            for k, v in x[i].items():
                lk = "lane%d:%s" % (i,k)
                stats[lk] = v
                if k == "pll_lock0" and v != 0b11:
                    flags[lk] = FENG_ERROR
            lk = "lane%d:gty_lock" % (i)
            stats[lk] = (gty_lock >> i) & 1
            if not stats[lk]:
                flags[lk] = FENG_ERROR
            lk = "lane%d:dts_lock" % (i)
            stats[lk] = (dts_lock >> i) & 1
            if not stats[lk]:
                flags[lk] = FENG_ERROR

        return stats, flags

    def initialize(self, read_only=False):
        if read_only:
            return
        self.set_lane_map(LANE_MAP)

    def get_snapshot_sync(self):
        x = self.fpga.snapshots[self.prefix + 'stats_sync_snapshot'].read(man_trig=True, man_valid=True)
        return x['data']

    def get_snapshot_pps(self):
        x = self.fpga.snapshots[self.prefix + 'stats_pps_snapshot'].read(man_trig=True, man_valid=True)
        return x['data']

    def get_pps_oos_count(self):
        return self.read_uint('stats_pps_out_of_sync_count')

    def get_ten_sec_oos_count(self):
        return self.read_uint('stats_ten_sec_out_of_sync_count')

    def print_sync(self, locked=0xfff):
        x = self.get_snapshot_sync()
        for dn, d in enumerate(x['data'][0::4][0:64]):
           print("%.4d" % dn, np.binary_repr(d & locked, width=12))

    def get_snapshot_data(self, band):
        ss = self.fpga.snapshots[self.prefix + 'stats_data_ss_snapshot%d' % band]
        x, t = ss.read_raw(man_trig=True, man_valid=True)
        nwords = x['length'] // 2
        # 8-bit DTS data are cast to 12-bits by the interface, and then cast to 16-bits
        # by the snapshot. So shift out 8 unused bits
        d = np.array(struct.unpack('>%dH' % nwords, x['data'])) >> 8
        # Convert offset binary to 2's complement
        d = (d + 128) % 256
        d[d>=128] -= 256
        return d

    def get_bit_stats(self, band):
        d = self.get_snapshot_data(band)
        mean = np.mean(d)
        var = np.var(d)
        return mean, var, np.sqrt(var)

    def get_histogram(self, band):
        from matplotlib import pyplot as plt
        plt.hist(self.get_snapshot_data(band), bins=range(-128,129))
        plt.show()

#def get_data(fpga, chan):
#    chan = 4-1-chan
#    dout = [0 for _ in range(4096)]
#    for i in range(2):
#        ss = fpga.snapshots['data_ss_snapshot%d' % (2*chan+i)]
#        x, t = ss.read_raw(man_trig=True, man_valid=True)
#        nwords = x['length'] // 2
#        d = struct.unpack('>%dh'  % nwords, x['data'])
#        # Reorder to account for ordering within 2 brams
#        for j in range(nwords//4):
#            for k in range(4):
#                dout[8*j + 4*i + k] = (d[4*j + k] >> 4)
#    return dout

def get_data(fpga, chan):
    ss = fpga.snapshots['data_ss_snapshot%d' % chan]
    x, t = ss.read_raw(man_trig=True, man_valid=True)
    nwords = x['length'] // 2
    d_flipped = np.array(struct.unpack('>%dH'  % nwords, x['data'])) >> 8
    d = d_flipped#np.zeros_like(d_flipped)
    #for i in range(4):
    #    for j in range(4):
    #        # Flip in chunks of 4 words and within 4 words
    #        #d[4*i+j::16] = d_flipped[4*(3-i) +3-j::16]
    #        # Flip in chunks of 4 words
    #        #d[4*i+j::16] = d_flipped[4*(3-i) + j::16]
    #        # Flip every 4 words
    #        #d[4*i+j::16] = d_flipped[4*i + (3-j)::16]
    #        # Do nothing
    #        d[4*i+j::16] = d_flipped[4*i+j::16]
    d = (d + 128) % 256
    d[d>=128] -= 256
    return d#[0:16]
    #data = np.zeros_like(d)
    #for i in range(nwords):
    #    if (i % 8) == 0:
    #        continue
    #    if ((i+1) % 8) == 0:
    #        continue
    #    data += [d[i]]
    #return data

def get_fft_data(fpga, chan, oversample_factor=1, use_window=True):
    x = get_data(fpga, chan)
    if use_window:
        window = np.sinc(np.linspace(-2*np.pi, 2*np.pi, x.shape[0]))
        x = x*window
    X = np.fft.rfft(x, x.shape[0]*oversample_factor)
    p = np.abs(X)**2
    return p

def get_complex_fft_data(x, index=0, step_size=16):
    X = np.fft.rfft(x[index::step_size], x.shape[0] // step_size)
    max_pow_bin = np.abs(X).argmax()
    print("Index %2d, chan %d: Pow: %.3f; Phase %.3f" % (index, max_pow_bin, np.abs(X[max_pow_bin])**2, np.angle(X[max_pow_bin])))
    return np.angle(X[max_pow_bin])

def acc_fft(fpga, chan, N):
    p = get_fft_data(fpga, chan)
    for i in range(1,N):
        p += get_fft_data(fpga, chan)
    return p

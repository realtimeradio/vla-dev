import sys
import numpy as np

import casperfpga
from casperfpga import i2c, i2c_sfp

class Dts():
    REG_ADDRESS_CR = 0x0 # Control Register
    REG_ADDRESS_PC = 0x1 # Parity count
    REG_ADDRESS_SC = 0x2 # Scramble Code
    REG_ADDRESS_MD = 0x3 # Meta Data
    REG_ADDRESS_TM = 0x4 # Timing Register
    NREG = 2
    def __init__(self, fpga, regname, nlanes=12):
        self.fpga = fpga
        self.reg = regname
        self.nlanes = nlanes
        self.regval = [None for i in range(self.NREG)]
        for i in range(self.NREG): self._write_reg(0, i)

    def _read_reg(self, regoffset=0):
        return self.fpga.read_uint(self.reg, word_offset=regoffset)

    def _write_reg(self, val, regoffset):
        self.regval[regoffset] = val
        self.fpga.write_int(self.reg, val, word_offset=regoffset, blindwrite=True)

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

def get_sync(fpga):
    x = fpga.snapshots.sync_snapshot.read(man_trig=True, man_valid=True)
    return x['data']

def print_sync(fpga, locked=0xfff):
    x = get_sync(fpga)
    for dn, d in enumerate(x['data'][::8]):
       print("%.4d" % dn, np.binary_repr(d & locked, width=12))

if __name__ == "__main__":
    fpga = casperfpga.CasperFpga('local', transport=casperfpga.LocalPcieTransport)
    
    fpga.get_system_information(sys.argv[1])

    dts = Dts(fpga, 'vla_dts')
    dts.reset_delays()
    print('Locked:')
    locked = fpga.read_uint('locked')
    print(np.binary_repr(locked, width=12))
    print('Locked (Internal Flag):')
    print(np.binary_repr(dts.get_lock_state(), width=12))
    print('Parity Errors')
    x = dts.get_parity_errs()
    for y in x: print(y)
    print('Metadata')
    x= dts.get_meta_data()
    for y in x: print(y)
    #print('Sync:')
    #print_sync(fpga, locked=locked)

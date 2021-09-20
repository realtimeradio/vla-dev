from .block import Block
from casperfpga import i2c, i2c_sfp

class Qsfp(Block):
    def __init__(self, host, name, logger=None):
        super(Qsfp, self).__init__(host, name, logger)
        self._i2c = i2c.I2C(host, name)
        self._qsfp = i2c_sfp.Sfp(self._i2c)

    def get_status(self):
        stats = self._qsfp.get_status()
        flags = {}
        return stats, flags

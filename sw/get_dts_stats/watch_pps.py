import sys
import time
import numpy as np

import casperfpga
from casperfpga import i2c, i2c_sfp

if __name__ == "__main__":
    fpga = casperfpga.CasperFpga('local', transport=casperfpga.LocalPcieTransport)
    
    fpga.get_system_information(sys.argv[1])

    while(True):
        print(time.time(), fpga.read_int('pps_count') // 8)
        time.sleep(0.05)


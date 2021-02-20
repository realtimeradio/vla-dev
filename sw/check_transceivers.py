import sys

import casperfpga
from casperfpga import i2c, i2c_sfp

fpga = casperfpga.CasperFpga('local', transport=casperfpga.LocalPcieTransport)

fpga.get_system_information(sys.argv[1])

qsfp_names = ['qsfpa', 'qsfpb', 'qsfpc', 'qsfpd']

qsfps = []
for qsfp_name in qsfp_names:
    qsfps += [i2c_sfp.Sfp(i2c.I2C(fpga, qsfp_name))]

for qsfp in qsfps:
    try:
        stat = qsfp.get_status()
        print('%s status:' % qsfp.itf.controller_name)
        for k, v in stat.items():
            print('    %s: %s' % (k, v))
    except OSError:
        print('Error getting status from %s' % qsfp.itf.controller_name)

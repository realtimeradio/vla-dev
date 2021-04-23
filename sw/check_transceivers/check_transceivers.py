import sys

import casperfpga
from casperfpga import i2c, i2c_sfp, i2c_mux

fpga = casperfpga.CasperFpga('local', transport=casperfpga.LocalPcieTransport)

fpga.get_system_information(sys.argv[1])

#qsfp_names = ['qsfpa', 'qsfpb', 'qsfpc', 'qsfpd'] + ['i2c_ff%d' % i for i in range(8)]
qsfp_names = ['qsfpa', 'qsfpb', 'qsfpc', 'qsfpd']
mux_qsfp_names = ['i2c_ff0']

devices = fpga.listdev()
qsfps = []
mux_qsfps = []
for qsfp_name in qsfp_names:
    if qsfp_name in devices:
        qsfps += [i2c_sfp.Sfp(i2c.I2C(fpga, qsfp_name))]
    else:
        print("Skipping %s, because that register doesn't exist" % qsfp_name)

for qsfp_name in mux_qsfp_names:
    if qsfp_name in devices:
        mux_qsfps += [[i2c_mux.PCA9548A(i2c.I2C(fpga, qsfp_name), 0), i2c_sfp.Sfp(i2c.I2C(fpga, qsfp_name))]]
    else:
        print("Skipping %s, because that register doesn't exist" % qsfp_name)

for qsfp in qsfps:
    try:
        stat = qsfp.get_status()
        print('%s status:' % qsfp.itf.controller_name)
        for k, v in stat.items():
            print('    %s: %s' % (k, v))
    except OSError:
        print('Error getting status from %s' % qsfp.itf.controller_name)

for mux, qsfp in mux_qsfps:
    for i in range(4):
        mux.set_output(1<<i) 
        try:
            stat = qsfp.get_status()
            print('%s status (mux %d):' % (qsfp.itf.controller_name, i))
            for k, v in stat.items():
                print('    %s: %s' % (k, v))
        except OSError:
            print('Error getting status from %s (mux %d)' % (qsfp.itf.controller_name, i))

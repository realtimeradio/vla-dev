import time
from cosmic_f import CosmicFengine

FPGFILE = "/home/jackh/src/vla-dev/adm_pcie_9h7_dts_dual_4x100g_dsp_8b/outputs/adm_pcie_9h7_dts_dual_4x100g_dsp_8b_2022-05-19_1816.fpg"

DELAYFILE = "/home/jackh/src/vla-dev/sw/control_sw/config/fiberdelay.txt"

ant_to_pl = {
         1: {'pad': 'W56', 'fhost': 'cosmic-fpga-0', 'pci': '3e', 'pipeline': 0},
         2: {'pad': 'N56', 'fhost': 'cosmic-fpga-0', 'pci': '3e', 'pipeline': 1},
         3: {'pad': 'W16', 'fhost': 'cosmic-fpga-0', 'pci': '43', 'pipeline': 0},
         4: {'pad': 'E32', 'fhost': 'cosmic-fpga-0', 'pci': '43', 'pipeline': 1},
         5: {'pad': 'W40', 'fhost': 'cosmic-fpga-0', 'pci': '3d', 'pipeline': 0},
         6: {'pad': 'N32', 'fhost': 'cosmic-fpga-0', 'pci': '3d', 'pipeline': 1},
         7: {'pad': 'E72', 'fhost': 'cosmic-fpga-0', 'pci': '65', 'pipeline': 0},
         8: {'pad':    '', 'fhost': 'cosmic-fpga-0', 'pci': '65', 'pipeline': 1},
         9: {'pad': 'W64', 'fhost': 'cosmic-fpga-0', 'pci': '64', 'pipeline': 0},
        10: {'pad': 'E08', 'fhost': 'cosmic-fpga-0', 'pci': '64', 'pipeline': 1},
        11: {'pad': 'W24', 'fhost': 'cosmic-fpga-1', 'pci': '3e', 'pipeline': 0},
        12: {'pad': 'N16', 'fhost': 'cosmic-fpga-1', 'pci': '3e', 'pipeline': 1},
        13: {'pad': 'W48', 'fhost': 'cosmic-fpga-1', 'pci': '43', 'pipeline': 0},
        14: {'pad': 'E16', 'fhost': 'cosmic-fpga-1', 'pci': '43', 'pipeline': 1},
        15: {'pad': 'N48', 'fhost': 'cosmic-fpga-1', 'pci': '3d', 'pipeline': 0},
        16: {'pad': 'E64', 'fhost': 'cosmic-fpga-1', 'pci': '3d', 'pipeline': 1},
        17: {'pad': 'N72', 'fhost': 'cosmic-fpga-1', 'pci': '65', 'pipeline': 0},
        18: {'pad': 'N64', 'fhost': 'cosmic-fpga-1', 'pci': '65', 'pipeline': 1},
        19: {'pad': 'E48', 'fhost': 'cosmic-fpga-1', 'pci': '64', 'pipeline': 0},
        20: {'pad': 'N40', 'fhost': 'cosmic-fpga-1', 'pci': '64', 'pipeline': 1},
        21: {'pad': 'E56', 'fhost': 'cosmic-fpga-2', 'pci': '3e', 'pipeline': 0},
        22: {'pad': 'N24', 'fhost': 'cosmic-fpga-2', 'pci': '3e', 'pipeline': 1},
        23: {'pad': 'N08', 'fhost': 'cosmic-fpga-2', 'pci': '43', 'pipeline': 0},
        24: {'pad': 'W72', 'fhost': 'cosmic-fpga-2', 'pci': '43', 'pipeline': 1},
        25: {'pad': 'E24', 'fhost': 'cosmic-fpga-2', 'pci': '3d', 'pipeline': 0},
        26: {'pad': 'W32', 'fhost': 'cosmic-fpga-2', 'pci': '3d', 'pipeline': 1},
        27: {'pad': 'E40', 'fhost': 'cosmic-fpga-2', 'pci': '65', 'pipeline': 0},
        28: {'pad': 'W08', 'fhost': 'cosmic-fpga-2', 'pci': '65', 'pipeline': 1},
        }


pad_delays = {}

with open(DELAYFILE, 'r') as fh:
    for line in fh.readlines():
        fields = line.split()
        pad = fields[6]
        delay = float(fields[8])
        pad_delays[pad] = delay


fpga_hosts = ["cosmic-fpga-%d" % i for i in range(3)]
pci_addrs  = ["3e", "43", "3d", "65", "64"]
fpga_hosts = ["cosmic-fpga-1", "cosmic-fpga-2"]

pl_to_ant = {}

for fpga in fpga_hosts:
    pl_to_ant[fpga] = {}
    for pci in pci_addrs:
        pl_to_ant[fpga][pci] = ['','']
        for p in range(2):
            for ant, d in ant_to_pl.items():
                if d['fhost'] == fpga:
                    if d['pci'] == pci:
                        if d['pipeline'] == p:
                            pl_to_ant[fpga][pci][p] = d['pad']

delays = {}
for fpga in fpga_hosts:
    delays[fpga] = {}
    for pci in pci_addrs:
        delays[fpga][pci] = {}
        f0 = CosmicFengine("pcie%s" % pci, remoteobject_uri="http://%s:6000" % fpga, pipeline_id=0)
        f0.program(FPGFILE)
        f0 = CosmicFengine("pcie%s" % pci, remoteobject_uri="http://%s:6000" % fpga, pipeline_id=0)
        f1 = CosmicFengine("pcie%s" % pci, remoteobject_uri="http://%s:6000" % fpga, pipeline_id=1)
        try:
            f0.initialize(read_only=False)
            f1.initialize(read_only=False)
        except:
            continue
        f0.sync.update_internal_time()
        f1.sync.update_internal_time()
        try:
            pad0, pad1 = pl_to_ant[fpga][pci]
            delay0 = pad_delays[pad0]
            delay1 = pad_delays[pad1]
            expected_dt = (delay1 - delay0) * 1e-9
        except:
            expected_dt = None
        time.sleep(0.06)
        dt = f0.fpga.read_int('pipeline_tt_offset') * 8 * 0.5e-9
        delays[fpga][pci] = {'expected': expected_dt, 'measured': dt}
        print("DELAYS:", fpga, pci, dt, expected_dt)

for fpga in fpga_hosts:
    for pci in pci_addrs:
        try:
            dtf = delays[fpga][pci]['expected']
            dtt = delays[fpga][pci]['measured']
            pad0 = pl_to_ant[fpga][pci][0]
            pad1 = pl_to_ant[fpga][pci][1]
            print("FPGA: %s:%s (pads %s-%s): dt_fiber: %10.2e; 2xdt_fiber: %10.2e; dt_timestamp: %10.2e" % (fpga, pci, pad0, pad1, dtf, 2*dtf, dtt))
        except:
            pass

import time
from cosmic_f import CosmicFengine

FPGFILE = "/home/jackh/src/vla-dev/firmware/adm_pcie_9h7_dts_dual_4x100g_dsp_8b/outputs/adm_pcie_9h7_dts_dual_4x100g_dsp_8b_2022-11-28_1402.fpg"
HOSTCARD = 'pcie43'

fpga = CosmicFengine(HOSTCARD, FPGFILE, 0)
poll_period = 0.05

disabled = False
while(True):
    ok = fpga.sync.check_timekeeping()
    if not ok:
        fpga.logger.error("Timekeeping error! Disabling Ethernet")
        disabled = True
        for eth in fpga.eths:
            eth.disable_tx()
    if ok and disabled:
        fpga.logger.warning("Timekeeping recovery! Enabling Ethernet")
        disabled = False
        for eth in fpga.eths:
            eth.enable_tx()
    time.sleep(poll_period)




# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator. 
#


namespace eval ::xilinx::dsp::planaheaddriver {
	set Compilation {IP Catalog}
	set CompilationFlow {IP}
	set CreateInterfaceDocument {off}
	set DSPDevice {xcvu9p}
	set DSPFamily {virtexuplus}
	set DSPPackage {flga2104}
	set DSPSpeed {-1-e}
	set FPGAClockPeriod 5
	set GenerateTestBench 0
	set HDLLanguage {vhdl}
	set IPOOCCacheRootPath {/home/jackh/.Xilinx/Sysgen/SysgenVivado/lnx64.o/ip}
	set IP_Auto_Infer {1}
	set IP_Categories_Text {System_Generator_for_DSP}
	set IP_Common_Repos {0}
	set IP_Description {}
	set IP_Dir {}
	set IP_Library_Text {SysGen}
	set IP_LifeCycle_Menu {2}
	set IP_Logo {sysgen_icon_100.png}
	set IP_Name {}
	set IP_Revision {274991111}
	set IP_Socket_IP {0}
	set IP_Socket_IP_Proj_Path {}
	set IP_Vendor_Text {User_Company}
	set IP_Version_Text {1.0}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
	set Project {uram_dp_32kx64_latency3_core}
	set ProjectFiles {
		{{conv_pkg.vhd} -lib {xil_defaultlib}}
		{{synth_reg.vhd} -lib {xil_defaultlib}}
		{{synth_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{srl17e.vhd} -lib {xil_defaultlib}}
		{{srl33e.vhd} -lib {xil_defaultlib}}
		{{synth_reg_reg.vhd} -lib {xil_defaultlib}}
		{{single_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{xlclockdriver_rd.vhd} -lib {xil_defaultlib}}
		{{xpm_e148db_dpram.mem}}
		{{uram_dp_32kx64_latency3_core_entity_declarations.vhd} -lib {xil_defaultlib}}
		{{uram_dp_32kx64_latency3_core.vhd} -lib {xil_defaultlib}}
		{{uram_dp_32kx64_latency3_core_clock.xdc}}
		{{uram_dp_32kx64_latency3_core.xdc}}
	}
	set SimPeriod 1
	set SimTime 10
	set SimulationTime {255.00000000 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {/home/jackh/src/vla-dev/dsp/uram_dp_32kx64_latency3_core}
	set TopLevelModule {uram_dp_32kx64_latency3_core}
	set TopLevelSimulinkHandle 403823
	set VHDLLib {xil_defaultlib}
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface web Name {web}
	dict set TopLevelPortInterface web Type UFix_1_0
	dict set TopLevelPortInterface web ArithmeticType xlUnsigned
	dict set TopLevelPortInterface web BinaryPoint 0
	dict set TopLevelPortInterface web Width 1
	dict set TopLevelPortInterface web DatFile {uram_dp_32kx64_latency3_core_web.dat}
	dict set TopLevelPortInterface web IconText {web}
	dict set TopLevelPortInterface web Direction in
	dict set TopLevelPortInterface web Period 1
	dict set TopLevelPortInterface web Interface 0
	dict set TopLevelPortInterface web InterfaceName {}
	dict set TopLevelPortInterface web InterfaceString {DATA}
	dict set TopLevelPortInterface web ClockDomain {uram_dp_32kx64_latency3_core}
	dict set TopLevelPortInterface web Locs {}
	dict set TopLevelPortInterface web IOStandard {}
	dict set TopLevelPortInterface dinb Name {dinb}
	dict set TopLevelPortInterface dinb Type UFix_64_0
	dict set TopLevelPortInterface dinb ArithmeticType xlUnsigned
	dict set TopLevelPortInterface dinb BinaryPoint 0
	dict set TopLevelPortInterface dinb Width 64
	dict set TopLevelPortInterface dinb DatFile {uram_dp_32kx64_latency3_core_dinb.dat}
	dict set TopLevelPortInterface dinb IconText {dinb}
	dict set TopLevelPortInterface dinb Direction in
	dict set TopLevelPortInterface dinb Period 1
	dict set TopLevelPortInterface dinb Interface 0
	dict set TopLevelPortInterface dinb InterfaceName {}
	dict set TopLevelPortInterface dinb InterfaceString {DATA}
	dict set TopLevelPortInterface dinb ClockDomain {uram_dp_32kx64_latency3_core}
	dict set TopLevelPortInterface dinb Locs {}
	dict set TopLevelPortInterface dinb IOStandard {}
	dict set TopLevelPortInterface addrb Name {addrb}
	dict set TopLevelPortInterface addrb Type UFix_15_0
	dict set TopLevelPortInterface addrb ArithmeticType xlUnsigned
	dict set TopLevelPortInterface addrb BinaryPoint 0
	dict set TopLevelPortInterface addrb Width 15
	dict set TopLevelPortInterface addrb DatFile {uram_dp_32kx64_latency3_core_addrb.dat}
	dict set TopLevelPortInterface addrb IconText {addrb}
	dict set TopLevelPortInterface addrb Direction in
	dict set TopLevelPortInterface addrb Period 1
	dict set TopLevelPortInterface addrb Interface 0
	dict set TopLevelPortInterface addrb InterfaceName {}
	dict set TopLevelPortInterface addrb InterfaceString {DATA}
	dict set TopLevelPortInterface addrb ClockDomain {uram_dp_32kx64_latency3_core}
	dict set TopLevelPortInterface addrb Locs {}
	dict set TopLevelPortInterface addrb IOStandard {}
	dict set TopLevelPortInterface wea Name {wea}
	dict set TopLevelPortInterface wea Type UFix_1_0
	dict set TopLevelPortInterface wea ArithmeticType xlUnsigned
	dict set TopLevelPortInterface wea BinaryPoint 0
	dict set TopLevelPortInterface wea Width 1
	dict set TopLevelPortInterface wea DatFile {uram_dp_32kx64_latency3_core_wea.dat}
	dict set TopLevelPortInterface wea IconText {wea}
	dict set TopLevelPortInterface wea Direction in
	dict set TopLevelPortInterface wea Period 1
	dict set TopLevelPortInterface wea Interface 0
	dict set TopLevelPortInterface wea InterfaceName {}
	dict set TopLevelPortInterface wea InterfaceString {DATA}
	dict set TopLevelPortInterface wea ClockDomain {uram_dp_32kx64_latency3_core}
	dict set TopLevelPortInterface wea Locs {}
	dict set TopLevelPortInterface wea IOStandard {}
	dict set TopLevelPortInterface dina Name {dina}
	dict set TopLevelPortInterface dina Type UFix_64_0
	dict set TopLevelPortInterface dina ArithmeticType xlUnsigned
	dict set TopLevelPortInterface dina BinaryPoint 0
	dict set TopLevelPortInterface dina Width 64
	dict set TopLevelPortInterface dina DatFile {uram_dp_32kx64_latency3_core_dina.dat}
	dict set TopLevelPortInterface dina IconText {dina}
	dict set TopLevelPortInterface dina Direction in
	dict set TopLevelPortInterface dina Period 1
	dict set TopLevelPortInterface dina Interface 0
	dict set TopLevelPortInterface dina InterfaceName {}
	dict set TopLevelPortInterface dina InterfaceString {DATA}
	dict set TopLevelPortInterface dina ClockDomain {uram_dp_32kx64_latency3_core}
	dict set TopLevelPortInterface dina Locs {}
	dict set TopLevelPortInterface dina IOStandard {}
	dict set TopLevelPortInterface addra Name {addra}
	dict set TopLevelPortInterface addra Type UFix_15_0
	dict set TopLevelPortInterface addra ArithmeticType xlUnsigned
	dict set TopLevelPortInterface addra BinaryPoint 0
	dict set TopLevelPortInterface addra Width 15
	dict set TopLevelPortInterface addra DatFile {uram_dp_32kx64_latency3_core_addra.dat}
	dict set TopLevelPortInterface addra IconText {addra}
	dict set TopLevelPortInterface addra Direction in
	dict set TopLevelPortInterface addra Period 1
	dict set TopLevelPortInterface addra Interface 0
	dict set TopLevelPortInterface addra InterfaceName {}
	dict set TopLevelPortInterface addra InterfaceString {DATA}
	dict set TopLevelPortInterface addra ClockDomain {uram_dp_32kx64_latency3_core}
	dict set TopLevelPortInterface addra Locs {}
	dict set TopLevelPortInterface addra IOStandard {}
	dict set TopLevelPortInterface douta Name {douta}
	dict set TopLevelPortInterface douta Type UFix_64_0
	dict set TopLevelPortInterface douta ArithmeticType xlUnsigned
	dict set TopLevelPortInterface douta BinaryPoint 0
	dict set TopLevelPortInterface douta Width 64
	dict set TopLevelPortInterface douta DatFile {uram_dp_32kx64_latency3_core_douta.dat}
	dict set TopLevelPortInterface douta IconText {douta}
	dict set TopLevelPortInterface douta Direction out
	dict set TopLevelPortInterface douta Period 1
	dict set TopLevelPortInterface douta Interface 0
	dict set TopLevelPortInterface douta InterfaceName {}
	dict set TopLevelPortInterface douta InterfaceString {DATA}
	dict set TopLevelPortInterface douta ClockDomain {uram_dp_32kx64_latency3_core}
	dict set TopLevelPortInterface douta Locs {}
	dict set TopLevelPortInterface douta IOStandard {}
	dict set TopLevelPortInterface doutb Name {doutb}
	dict set TopLevelPortInterface doutb Type UFix_64_0
	dict set TopLevelPortInterface doutb ArithmeticType xlUnsigned
	dict set TopLevelPortInterface doutb BinaryPoint 0
	dict set TopLevelPortInterface doutb Width 64
	dict set TopLevelPortInterface doutb DatFile {uram_dp_32kx64_latency3_core_doutb.dat}
	dict set TopLevelPortInterface doutb IconText {doutb}
	dict set TopLevelPortInterface doutb Direction out
	dict set TopLevelPortInterface doutb Period 1
	dict set TopLevelPortInterface doutb Interface 0
	dict set TopLevelPortInterface doutb InterfaceName {}
	dict set TopLevelPortInterface doutb InterfaceString {DATA}
	dict set TopLevelPortInterface doutb ClockDomain {uram_dp_32kx64_latency3_core}
	dict set TopLevelPortInterface doutb Locs {}
	dict set TopLevelPortInterface doutb IOStandard {}
	dict set TopLevelPortInterface clk Name {clk}
	dict set TopLevelPortInterface clk Type -
	dict set TopLevelPortInterface clk ArithmeticType xlUnsigned
	dict set TopLevelPortInterface clk BinaryPoint 0
	dict set TopLevelPortInterface clk Width 1
	dict set TopLevelPortInterface clk DatFile {}
	dict set TopLevelPortInterface clk Direction in
	dict set TopLevelPortInterface clk Period 1
	dict set TopLevelPortInterface clk Interface 6
	dict set TopLevelPortInterface clk InterfaceName {}
	dict set TopLevelPortInterface clk InterfaceString {CLOCK}
	dict set TopLevelPortInterface clk ClockDomain {uram_dp_32kx64_latency3_core}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {}
	dict set TopLevelPortInterface clk AssociatedResets {}
	set MemoryMappedPort {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project
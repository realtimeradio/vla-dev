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
	set IP_Revision {274989497}
	set IP_Socket_IP {0}
	set IP_Socket_IP_Proj_Path {}
	set IP_Vendor_Text {User_Company}
	set IP_Version_Text {1.0}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
	set Project {uram_8192x512_latency3_core}
	set ProjectFiles {
		{{conv_pkg.vhd} -lib {xil_defaultlib}}
		{{synth_reg.vhd} -lib {xil_defaultlib}}
		{{synth_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{srl17e.vhd} -lib {xil_defaultlib}}
		{{srl33e.vhd} -lib {xil_defaultlib}}
		{{synth_reg_reg.vhd} -lib {xil_defaultlib}}
		{{single_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{xlclockdriver_rd.vhd} -lib {xil_defaultlib}}
		{{xpm_24d74b_vivado.mem}}
		{{uram_8192x512_latency3_core_entity_declarations.vhd} -lib {xil_defaultlib}}
		{{uram_8192x512_latency3_core.vhd} -lib {xil_defaultlib}}
		{{uram_8192x512_latency3_core_clock.xdc}}
		{{uram_8192x512_latency3_core.xdc}}
	}
	set SimPeriod 1
	set SimTime 10
	set SimulationTime {255.00000000 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {/home/jackh/src/vla-dev/dsp/uram_8192x512_latency3_core}
	set TopLevelModule {uram_8192x512_latency3_core}
	set TopLevelSimulinkHandle 165462
	set VHDLLib {xil_defaultlib}
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface we Name {we}
	dict set TopLevelPortInterface we Type UFix_1_0
	dict set TopLevelPortInterface we ArithmeticType xlUnsigned
	dict set TopLevelPortInterface we BinaryPoint 0
	dict set TopLevelPortInterface we Width 1
	dict set TopLevelPortInterface we DatFile {uram_8192x512_latency3_core_we.dat}
	dict set TopLevelPortInterface we IconText {we}
	dict set TopLevelPortInterface we Direction in
	dict set TopLevelPortInterface we Period 1
	dict set TopLevelPortInterface we Interface 0
	dict set TopLevelPortInterface we InterfaceName {}
	dict set TopLevelPortInterface we InterfaceString {DATA}
	dict set TopLevelPortInterface we ClockDomain {uram_8192x512_latency3_core}
	dict set TopLevelPortInterface we Locs {}
	dict set TopLevelPortInterface we IOStandard {}
	dict set TopLevelPortInterface addr Name {addr}
	dict set TopLevelPortInterface addr Type UFix_13_0
	dict set TopLevelPortInterface addr ArithmeticType xlUnsigned
	dict set TopLevelPortInterface addr BinaryPoint 0
	dict set TopLevelPortInterface addr Width 13
	dict set TopLevelPortInterface addr DatFile {uram_8192x512_latency3_core_addr.dat}
	dict set TopLevelPortInterface addr IconText {addr}
	dict set TopLevelPortInterface addr Direction in
	dict set TopLevelPortInterface addr Period 1
	dict set TopLevelPortInterface addr Interface 0
	dict set TopLevelPortInterface addr InterfaceName {}
	dict set TopLevelPortInterface addr InterfaceString {DATA}
	dict set TopLevelPortInterface addr ClockDomain {uram_8192x512_latency3_core}
	dict set TopLevelPortInterface addr Locs {}
	dict set TopLevelPortInterface addr IOStandard {}
	dict set TopLevelPortInterface data Name {data}
	dict set TopLevelPortInterface data Type UFix_512_0
	dict set TopLevelPortInterface data ArithmeticType xlUnsigned
	dict set TopLevelPortInterface data BinaryPoint 0
	dict set TopLevelPortInterface data Width 512
	dict set TopLevelPortInterface data DatFile {uram_8192x512_latency3_core_data.dat}
	dict set TopLevelPortInterface data IconText {data}
	dict set TopLevelPortInterface data Direction in
	dict set TopLevelPortInterface data Period 1
	dict set TopLevelPortInterface data Interface 0
	dict set TopLevelPortInterface data InterfaceName {}
	dict set TopLevelPortInterface data InterfaceString {DATA}
	dict set TopLevelPortInterface data ClockDomain {uram_8192x512_latency3_core}
	dict set TopLevelPortInterface data Locs {}
	dict set TopLevelPortInterface data IOStandard {}
	dict set TopLevelPortInterface dout Name {dout}
	dict set TopLevelPortInterface dout Type UFix_512_0
	dict set TopLevelPortInterface dout ArithmeticType xlUnsigned
	dict set TopLevelPortInterface dout BinaryPoint 0
	dict set TopLevelPortInterface dout Width 512
	dict set TopLevelPortInterface dout DatFile {uram_8192x512_latency3_core_dout.dat}
	dict set TopLevelPortInterface dout IconText {dout}
	dict set TopLevelPortInterface dout Direction out
	dict set TopLevelPortInterface dout Period 1
	dict set TopLevelPortInterface dout Interface 0
	dict set TopLevelPortInterface dout InterfaceName {}
	dict set TopLevelPortInterface dout InterfaceString {DATA}
	dict set TopLevelPortInterface dout ClockDomain {uram_8192x512_latency3_core}
	dict set TopLevelPortInterface dout Locs {}
	dict set TopLevelPortInterface dout IOStandard {}
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
	dict set TopLevelPortInterface clk ClockDomain {uram_8192x512_latency3_core}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {}
	dict set TopLevelPortInterface clk AssociatedResets {}
	set MemoryMappedPort {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project
--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1.3 (lin64) Build 2644227 Wed Sep  4 09:44:18 MDT 2019
--Date        : Sat Feb  5 18:25:37 2022
--Host        : rtr-dev1 running 64-bit Ubuntu 18.04.4 LTS
--Command     : generate_target uram_dp_32kx64_latency3_core_bd.bd
--Design      : uram_dp_32kx64_latency3_core_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uram_dp_32kx64_latency3_core_bd is
  port (
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 14 downto 0 );
    clk : in STD_LOGIC;
    dina : in STD_LOGIC_VECTOR ( 63 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 63 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of uram_dp_32kx64_latency3_core_bd : entity is "uram_dp_32kx64_latency3_core_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=uram_dp_32kx64_latency3_core_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=1,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SYSGEN,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of uram_dp_32kx64_latency3_core_bd : entity is "uram_dp_32kx64_latency3_core_bd.hwdef";
end uram_dp_32kx64_latency3_core_bd;

architecture STRUCTURE of uram_dp_32kx64_latency3_core_bd is
  component uram_dp_32kx64_latency3_core_bd_uram_dp_32kx64_latency3_core_1_0 is
  port (
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 63 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 14 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 63 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  end component uram_dp_32kx64_latency3_core_bd_uram_dp_32kx64_latency3_core_1_0;
  signal addra_1 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal addrb_1 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal clk_1 : STD_LOGIC;
  signal dina_1 : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal dinb_1 : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal uram_dp_32kx64_latency3_core_1_douta : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal uram_dp_32kx64_latency3_core_1_doutb : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal wea_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal web_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN uram_dp_32kx64_latency3_core_bd_clk, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of addra : signal is "xilinx.com:signal:data:1.0 DATA.ADDRA DATA";
  attribute X_INTERFACE_PARAMETER of addra : signal is "XIL_INTERFACENAME DATA.ADDRA, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of addrb : signal is "xilinx.com:signal:data:1.0 DATA.ADDRB DATA";
  attribute X_INTERFACE_PARAMETER of addrb : signal is "XIL_INTERFACENAME DATA.ADDRB, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of dina : signal is "xilinx.com:signal:data:1.0 DATA.DINA DATA";
  attribute X_INTERFACE_PARAMETER of dina : signal is "XIL_INTERFACENAME DATA.DINA, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of dinb : signal is "xilinx.com:signal:data:1.0 DATA.DINB DATA";
  attribute X_INTERFACE_PARAMETER of dinb : signal is "XIL_INTERFACENAME DATA.DINB, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of douta : signal is "xilinx.com:signal:data:1.0 DATA.DOUTA DATA";
  attribute X_INTERFACE_PARAMETER of douta : signal is "XIL_INTERFACENAME DATA.DOUTA, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of doutb : signal is "xilinx.com:signal:data:1.0 DATA.DOUTB DATA";
  attribute X_INTERFACE_PARAMETER of doutb : signal is "XIL_INTERFACENAME DATA.DOUTB, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of wea : signal is "xilinx.com:signal:data:1.0 DATA.WEA DATA";
  attribute X_INTERFACE_PARAMETER of wea : signal is "XIL_INTERFACENAME DATA.WEA, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of web : signal is "xilinx.com:signal:data:1.0 DATA.WEB DATA";
  attribute X_INTERFACE_PARAMETER of web : signal is "XIL_INTERFACENAME DATA.WEB, LAYERED_METADATA undef";
begin
  addra_1(14 downto 0) <= addra(14 downto 0);
  addrb_1(14 downto 0) <= addrb(14 downto 0);
  clk_1 <= clk;
  dina_1(63 downto 0) <= dina(63 downto 0);
  dinb_1(63 downto 0) <= dinb(63 downto 0);
  douta(63 downto 0) <= uram_dp_32kx64_latency3_core_1_douta(63 downto 0);
  doutb(63 downto 0) <= uram_dp_32kx64_latency3_core_1_doutb(63 downto 0);
  wea_1(0) <= wea(0);
  web_1(0) <= web(0);
uram_dp_32kx64_latency3_core_1: component uram_dp_32kx64_latency3_core_bd_uram_dp_32kx64_latency3_core_1_0
     port map (
      addra(14 downto 0) => addra_1(14 downto 0),
      addrb(14 downto 0) => addrb_1(14 downto 0),
      clk => clk_1,
      dina(63 downto 0) => dina_1(63 downto 0),
      dinb(63 downto 0) => dinb_1(63 downto 0),
      douta(63 downto 0) => uram_dp_32kx64_latency3_core_1_douta(63 downto 0),
      doutb(63 downto 0) => uram_dp_32kx64_latency3_core_1_doutb(63 downto 0),
      wea(0) => wea_1(0),
      web(0) => web_1(0)
    );
end STRUCTURE;

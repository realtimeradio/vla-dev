--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1.3 (lin64) Build 2644227 Wed Sep  4 09:44:18 MDT 2019
--Date        : Sat Feb  5 17:58:43 2022
--Host        : rtr-dev1 running 64-bit Ubuntu 18.04.4 LTS
--Command     : generate_target uram_8192x512_latency3_core_bd.bd
--Design      : uram_8192x512_latency3_core_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uram_8192x512_latency3_core_bd is
  port (
    addr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    clk : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 511 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 511 downto 0 );
    we : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of uram_8192x512_latency3_core_bd : entity is "uram_8192x512_latency3_core_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=uram_8192x512_latency3_core_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=1,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SYSGEN,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of uram_8192x512_latency3_core_bd : entity is "uram_8192x512_latency3_core_bd.hwdef";
end uram_8192x512_latency3_core_bd;

architecture STRUCTURE of uram_8192x512_latency3_core_bd is
  component uram_8192x512_latency3_core_bd_uram_8192x512_latency3_core_1_0 is
  port (
    data : in STD_LOGIC_VECTOR ( 511 downto 0 );
    addr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    we : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 511 downto 0 )
  );
  end component uram_8192x512_latency3_core_bd_uram_8192x512_latency3_core_1_0;
  signal addr_1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal clk_1 : STD_LOGIC;
  signal data_1 : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal uram_8192x512_latency3_core_1_dout : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal we_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN uram_8192x512_latency3_core_bd_clk, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of addr : signal is "xilinx.com:signal:data:1.0 DATA.ADDR DATA";
  attribute X_INTERFACE_PARAMETER of addr : signal is "XIL_INTERFACENAME DATA.ADDR, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of data : signal is "xilinx.com:signal:data:1.0 DATA.DATA DATA";
  attribute X_INTERFACE_PARAMETER of data : signal is "XIL_INTERFACENAME DATA.DATA, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of dout : signal is "xilinx.com:signal:data:1.0 DATA.DOUT DATA";
  attribute X_INTERFACE_PARAMETER of dout : signal is "XIL_INTERFACENAME DATA.DOUT, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 512} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of we : signal is "xilinx.com:signal:data:1.0 DATA.WE DATA";
  attribute X_INTERFACE_PARAMETER of we : signal is "XIL_INTERFACENAME DATA.WE, LAYERED_METADATA undef";
begin
  addr_1(12 downto 0) <= addr(12 downto 0);
  clk_1 <= clk;
  data_1(511 downto 0) <= data(511 downto 0);
  dout(511 downto 0) <= uram_8192x512_latency3_core_1_dout(511 downto 0);
  we_1(0) <= we(0);
uram_8192x512_latency3_core_1: component uram_8192x512_latency3_core_bd_uram_8192x512_latency3_core_1_0
     port map (
      addr(12 downto 0) => addr_1(12 downto 0),
      clk => clk_1,
      data(511 downto 0) => data_1(511 downto 0),
      dout(511 downto 0) => uram_8192x512_latency3_core_1_dout(511 downto 0),
      we(0) => we_1(0)
    );
end STRUCTURE;

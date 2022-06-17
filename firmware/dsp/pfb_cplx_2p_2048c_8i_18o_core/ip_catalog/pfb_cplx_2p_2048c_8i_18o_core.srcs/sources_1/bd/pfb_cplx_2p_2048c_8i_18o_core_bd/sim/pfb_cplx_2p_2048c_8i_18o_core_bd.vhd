--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1.3 (lin64) Build 2644227 Wed Sep  4 09:44:18 MDT 2019
--Date        : Fri Mar 18 16:40:49 2022
--Host        : rtr-dev1 running 64-bit Ubuntu 18.04.4 LTS
--Command     : generate_target pfb_cplx_2p_2048c_8i_18o_core_bd.bd
--Design      : pfb_cplx_2p_2048c_8i_18o_core_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pfb_cplx_2p_2048c_8i_18o_core_bd is
  port (
    clk : in STD_LOGIC;
    overflow : out STD_LOGIC_VECTOR ( 0 to 0 );
    pol_in0 : in STD_LOGIC_VECTOR ( 255 downto 0 );
    pol_in1 : in STD_LOGIC_VECTOR ( 255 downto 0 );
    pol_out0 : out STD_LOGIC_VECTOR ( 575 downto 0 );
    pol_out1 : out STD_LOGIC_VECTOR ( 575 downto 0 );
    sync : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sync_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of pfb_cplx_2p_2048c_8i_18o_core_bd : entity is "pfb_cplx_2p_2048c_8i_18o_core_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=pfb_cplx_2p_2048c_8i_18o_core_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=1,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SYSGEN,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of pfb_cplx_2p_2048c_8i_18o_core_bd : entity is "pfb_cplx_2p_2048c_8i_18o_core_bd.hwdef";
end pfb_cplx_2p_2048c_8i_18o_core_bd;

architecture STRUCTURE of pfb_cplx_2p_2048c_8i_18o_core_bd is
  component pfb_cplx_2p_2048c_8i_18o_core_bd_pfb_cplx_2p_2048c_8i_18o_core_1_0 is
  port (
    pol_in0 : in STD_LOGIC_VECTOR ( 255 downto 0 );
    pol_in1 : in STD_LOGIC_VECTOR ( 255 downto 0 );
    sync : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    overflow : out STD_LOGIC_VECTOR ( 0 to 0 );
    pol_out0 : out STD_LOGIC_VECTOR ( 575 downto 0 );
    pol_out1 : out STD_LOGIC_VECTOR ( 575 downto 0 );
    sync_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component pfb_cplx_2p_2048c_8i_18o_core_bd_pfb_cplx_2p_2048c_8i_18o_core_1_0;
  signal clk_1 : STD_LOGIC;
  signal pfb_cplx_2p_2048c_8i_18o_core_1_overflow : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pfb_cplx_2p_2048c_8i_18o_core_1_pol_out0 : STD_LOGIC_VECTOR ( 575 downto 0 );
  signal pfb_cplx_2p_2048c_8i_18o_core_1_pol_out1 : STD_LOGIC_VECTOR ( 575 downto 0 );
  signal pfb_cplx_2p_2048c_8i_18o_core_1_sync_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pol_in0_1 : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal pol_in1_1 : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal sync_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN pfb_cplx_2p_2048c_8i_18o_core_bd_clk, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of overflow : signal is "xilinx.com:signal:data:1.0 DATA.OVERFLOW DATA";
  attribute X_INTERFACE_PARAMETER of overflow : signal is "XIL_INTERFACENAME DATA.OVERFLOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of pol_in0 : signal is "xilinx.com:signal:data:1.0 DATA.POL_IN0 DATA";
  attribute X_INTERFACE_PARAMETER of pol_in0 : signal is "XIL_INTERFACENAME DATA.POL_IN0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of pol_in1 : signal is "xilinx.com:signal:data:1.0 DATA.POL_IN1 DATA";
  attribute X_INTERFACE_PARAMETER of pol_in1 : signal is "XIL_INTERFACENAME DATA.POL_IN1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of pol_out0 : signal is "xilinx.com:signal:data:1.0 DATA.POL_OUT0 DATA";
  attribute X_INTERFACE_PARAMETER of pol_out0 : signal is "XIL_INTERFACENAME DATA.POL_OUT0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 576} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of pol_out1 : signal is "xilinx.com:signal:data:1.0 DATA.POL_OUT1 DATA";
  attribute X_INTERFACE_PARAMETER of pol_out1 : signal is "XIL_INTERFACENAME DATA.POL_OUT1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 576} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of sync : signal is "xilinx.com:signal:data:1.0 DATA.SYNC DATA";
  attribute X_INTERFACE_PARAMETER of sync : signal is "XIL_INTERFACENAME DATA.SYNC, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of sync_out : signal is "xilinx.com:signal:data:1.0 DATA.SYNC_OUT DATA";
  attribute X_INTERFACE_PARAMETER of sync_out : signal is "XIL_INTERFACENAME DATA.SYNC_OUT, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
begin
  clk_1 <= clk;
  overflow(0) <= pfb_cplx_2p_2048c_8i_18o_core_1_overflow(0);
  pol_in0_1(255 downto 0) <= pol_in0(255 downto 0);
  pol_in1_1(255 downto 0) <= pol_in1(255 downto 0);
  pol_out0(575 downto 0) <= pfb_cplx_2p_2048c_8i_18o_core_1_pol_out0(575 downto 0);
  pol_out1(575 downto 0) <= pfb_cplx_2p_2048c_8i_18o_core_1_pol_out1(575 downto 0);
  sync_1(31 downto 0) <= sync(31 downto 0);
  sync_out(0) <= pfb_cplx_2p_2048c_8i_18o_core_1_sync_out(0);
pfb_cplx_2p_2048c_8i_18o_core_1: component pfb_cplx_2p_2048c_8i_18o_core_bd_pfb_cplx_2p_2048c_8i_18o_core_1_0
     port map (
      clk => clk_1,
      overflow(0) => pfb_cplx_2p_2048c_8i_18o_core_1_overflow(0),
      pol_in0(255 downto 0) => pol_in0_1(255 downto 0),
      pol_in1(255 downto 0) => pol_in1_1(255 downto 0),
      pol_out0(575 downto 0) => pfb_cplx_2p_2048c_8i_18o_core_1_pol_out0(575 downto 0),
      pol_out1(575 downto 0) => pfb_cplx_2p_2048c_8i_18o_core_1_pol_out1(575 downto 0),
      sync(31 downto 0) => sync_1(31 downto 0),
      sync_out(0) => pfb_cplx_2p_2048c_8i_18o_core_1_sync_out(0)
    );
end STRUCTURE;

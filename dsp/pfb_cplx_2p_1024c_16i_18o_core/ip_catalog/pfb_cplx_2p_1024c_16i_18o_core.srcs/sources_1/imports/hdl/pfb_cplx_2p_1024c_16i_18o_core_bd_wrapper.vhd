--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1.3 (lin64) Build 2644227 Wed Sep  4 09:44:18 MDT 2019
--Date        : Tue Mar  1 14:40:27 2022
--Host        : rtr-dev1 running 64-bit Ubuntu 18.04.4 LTS
--Command     : generate_target pfb_cplx_2p_1024c_16i_18o_core_bd_wrapper.bd
--Design      : pfb_cplx_2p_1024c_16i_18o_core_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pfb_cplx_2p_1024c_16i_18o_core_bd_wrapper is
  port (
    clk : in STD_LOGIC;
    overflow : out STD_LOGIC_VECTOR ( 0 to 0 );
    pol_in0 : in STD_LOGIC_VECTOR ( 255 downto 0 );
    pol_in1 : in STD_LOGIC_VECTOR ( 255 downto 0 );
    pol_out0 : out STD_LOGIC_VECTOR ( 287 downto 0 );
    pol_out1 : out STD_LOGIC_VECTOR ( 287 downto 0 );
    sync : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sync_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end pfb_cplx_2p_1024c_16i_18o_core_bd_wrapper;

architecture STRUCTURE of pfb_cplx_2p_1024c_16i_18o_core_bd_wrapper is
  component pfb_cplx_2p_1024c_16i_18o_core_bd is
  port (
    clk : in STD_LOGIC;
    overflow : out STD_LOGIC_VECTOR ( 0 to 0 );
    pol_in0 : in STD_LOGIC_VECTOR ( 255 downto 0 );
    pol_in1 : in STD_LOGIC_VECTOR ( 255 downto 0 );
    pol_out0 : out STD_LOGIC_VECTOR ( 287 downto 0 );
    pol_out1 : out STD_LOGIC_VECTOR ( 287 downto 0 );
    sync : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sync_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component pfb_cplx_2p_1024c_16i_18o_core_bd;
begin
pfb_cplx_2p_1024c_16i_18o_core_bd_i: component pfb_cplx_2p_1024c_16i_18o_core_bd
     port map (
      clk => clk,
      overflow(0) => overflow(0),
      pol_in0(255 downto 0) => pol_in0(255 downto 0),
      pol_in1(255 downto 0) => pol_in1(255 downto 0),
      pol_out0(287 downto 0) => pol_out0(287 downto 0),
      pol_out1(287 downto 0) => pol_out1(287 downto 0),
      sync(31 downto 0) => sync(31 downto 0),
      sync_out(0) => sync_out(0)
    );
end STRUCTURE;

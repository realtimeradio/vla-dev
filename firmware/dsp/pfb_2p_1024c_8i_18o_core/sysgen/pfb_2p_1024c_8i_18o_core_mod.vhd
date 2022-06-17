-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity pfb_2p_1024c_8i_18o_core_stub is
  port (
    pol_in0 : in std_logic_vector( 128-1 downto 0 );
    pol_in1 : in std_logic_vector( 128-1 downto 0 );
    sync : in std_logic_vector( 32-1 downto 0 );
    clk : in std_logic;
    overflow : out std_logic_vector( 1-1 downto 0 );
    pol_out0 : out std_logic_vector( 288-1 downto 0 );
    pol_out1 : out std_logic_vector( 288-1 downto 0 );
    sync_out : out std_logic_vector( 1-1 downto 0 )
  );
end pfb_2p_1024c_8i_18o_core_stub;
architecture structural of pfb_2p_1024c_8i_18o_core_stub is 
begin
  sysgen_dut : entity xil_defaultlib.pfb_2p_1024c_8i_18o_core_0 
  port map (
    pol_in0 => pol_in0,
    pol_in1 => pol_in1,
    sync => sync,
    clk => clk,
    overflow => overflow,
    pol_out0 => pol_out0,
    pol_out1 => pol_out1,
    sync_out => sync_out
  );
end structural;

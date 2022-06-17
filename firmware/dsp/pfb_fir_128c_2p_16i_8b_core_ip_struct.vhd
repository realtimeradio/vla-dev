-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_128c_2p_16i_8b_core_ip_struct is
  port (
    pol_in0 : in std_logic_vector( 128-1 downto 0 );
    pol_out0 : out std_logic_vector( 288-1 downto 0 );
    pol_in1 : in std_logic_vector( 128-1 downto 0 );
    pol_out1 : out std_logic_vector( 288-1 downto 0 );
    sync : in std_logic_vector( 32-1 downto 0 );
    sync_out : out std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic
  );
end pfb_fir_128c_2p_16i_8b_core_ip_struct;

architecture structural of pfb_fir_128c_2p_16i_8b_core_ip_struct is
  component pfb_fir_128c_2p_16i_8b_core_ip
    port ( 
      pol_in0 : in std_logic_vector( 128-1 downto 0 );
      pol_out0 : out std_logic_vector( 288-1 downto 0 );
      pol_in1 : in std_logic_vector( 128-1 downto 0 );
      pol_out1 : out std_logic_vector( 288-1 downto 0 );
      sync : in std_logic_vector( 32-1 downto 0 );
      sync_out : out std_logic_vector( 1-1 downto 0 );
      clk : in std_logic
    );
  end component;
begin
  pfb_fir_128c_2p_16i_8b_core_ip_inst : pfb_fir_128c_2p_16i_8b_core_ip
  port map (
    pol_in0 => pol_in0,
    pol_out0 => pol_out0,
    pol_in1 => pol_in1,
    pol_out1 => pol_out1,
    sync     => sync,      
    sync_out  => sync_out,  
    clk      => clk_1
  );
end structural;

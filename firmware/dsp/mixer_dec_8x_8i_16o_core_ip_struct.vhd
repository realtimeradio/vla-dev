-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity mixer_dec_8x_8i_16o_core_ip_struct is
  port (
    pol_in0 : in std_logic_vector( 64-1 downto 0 );
    theta : in std_logic_vector( 96-1 downto 0 );
    sync : in std_logic_vector( 32-1 downto 0 );
    rst : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    pol_out0 : out std_logic_vector( 128-1 downto 0 );
    sync_out : out std_logic_vector( 1-1 downto 0 )
  );
end mixer_dec_8x_8i_16o_core_ip_struct;

architecture structural of mixer_dec_8x_8i_16o_core_ip_struct is
  component mixer_dec_8x_8i_16o_core_ip
    port (
      pol_in0 : in std_logic_vector( 64-1 downto 0 );
      theta : in std_logic_vector( 96-1 downto 0 );
      sync : in std_logic_vector( 32-1 downto 0 );
      rst : in std_logic_vector( 32-1 downto 0 );
      clk : in std_logic;
      pol_out0 : out std_logic_vector( 128-1 downto 0 );
      sync_out : out std_logic_vector( 1-1 downto 0 )
    );
  end component;
begin
  mixer_dec_8x_8i_16o_core_ip_inst : mixer_dec_8x_8i_16o_core_ip
  port map (
    pol_in0  => pol_in0,
    theta    => theta,
    sync     => sync,
    rst      => rst,
    clk      => clk_1,
    pol_out0 => pol_out0,
    sync_out => sync_out 
  );
end structural; 

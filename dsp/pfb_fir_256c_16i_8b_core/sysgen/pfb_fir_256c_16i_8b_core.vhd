-- Generated from Simulink block pfb_fir_256c_16i_8b_core/bus_create
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_bus_create is
  port (
    in1 : in std_logic_vector( 18-1 downto 0 );
    in2 : in std_logic_vector( 18-1 downto 0 );
    in3 : in std_logic_vector( 18-1 downto 0 );
    in4 : in std_logic_vector( 18-1 downto 0 );
    in5 : in std_logic_vector( 18-1 downto 0 );
    in6 : in std_logic_vector( 18-1 downto 0 );
    in7 : in std_logic_vector( 18-1 downto 0 );
    in8 : in std_logic_vector( 18-1 downto 0 );
    in9 : in std_logic_vector( 18-1 downto 0 );
    in10 : in std_logic_vector( 18-1 downto 0 );
    in11 : in std_logic_vector( 18-1 downto 0 );
    in12 : in std_logic_vector( 18-1 downto 0 );
    in13 : in std_logic_vector( 18-1 downto 0 );
    in14 : in std_logic_vector( 18-1 downto 0 );
    in15 : in std_logic_vector( 18-1 downto 0 );
    in16 : in std_logic_vector( 18-1 downto 0 );
    bus_out : out std_logic_vector( 288-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_bus_create;
architecture structural of pfb_fir_256c_16i_8b_core_bus_create is 
  signal concatenate_y_net : std_logic_vector( 288-1 downto 0 );
  signal convert_1_2_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_3_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_4_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_5_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_6_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_7_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_1_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_8_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_9_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_10_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_11_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_12_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_13_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_14_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_15_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_16_dout_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret5_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret6_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret7_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret8_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret9_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret10_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret11_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret12_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret13_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret14_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret15_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret16_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  bus_out <= concatenate_y_net;
  convert_1_1_dout_net <= in1;
  convert_1_2_dout_net <= in2;
  convert_1_3_dout_net <= in3;
  convert_1_4_dout_net <= in4;
  convert_1_5_dout_net <= in5;
  convert_1_6_dout_net <= in6;
  convert_1_7_dout_net <= in7;
  convert_1_8_dout_net <= in8;
  convert_1_9_dout_net <= in9;
  convert_1_10_dout_net <= in10;
  convert_1_11_dout_net <= in11;
  convert_1_12_dout_net <= in12;
  convert_1_13_dout_net <= in13;
  convert_1_14_dout_net <= in14;
  convert_1_15_dout_net <= in15;
  convert_1_16_dout_net <= in16;
  concatenate : entity xil_defaultlib.sysgen_concat_c5edf04f19 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    in4 => reinterpret5_output_port_net,
    in5 => reinterpret6_output_port_net,
    in6 => reinterpret7_output_port_net,
    in7 => reinterpret8_output_port_net,
    in8 => reinterpret9_output_port_net,
    in9 => reinterpret10_output_port_net,
    in10 => reinterpret11_output_port_net,
    in11 => reinterpret12_output_port_net,
    in12 => reinterpret13_output_port_net,
    in13 => reinterpret14_output_port_net,
    in14 => reinterpret15_output_port_net,
    in15 => reinterpret16_output_port_net,
    y => concatenate_y_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => convert_1_1_dout_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret10 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => convert_1_10_dout_net,
    output_port => reinterpret10_output_port_net
  );
  reinterpret11 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => convert_1_11_dout_net,
    output_port => reinterpret11_output_port_net
  );
  reinterpret12 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => convert_1_12_dout_net,
    output_port => reinterpret12_output_port_net
  );
  reinterpret13 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => convert_1_13_dout_net,
    output_port => reinterpret13_output_port_net
  );
  reinterpret14 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => convert_1_14_dout_net,
    output_port => reinterpret14_output_port_net
  );
  reinterpret15 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => convert_1_15_dout_net,
    output_port => reinterpret15_output_port_net
  );
  reinterpret16 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => convert_1_16_dout_net,
    output_port => reinterpret16_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => convert_1_2_dout_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => convert_1_3_dout_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => convert_1_4_dout_net,
    output_port => reinterpret4_output_port_net
  );
  reinterpret5 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => convert_1_5_dout_net,
    output_port => reinterpret5_output_port_net
  );
  reinterpret6 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => convert_1_6_dout_net,
    output_port => reinterpret6_output_port_net
  );
  reinterpret7 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => convert_1_7_dout_net,
    output_port => reinterpret7_output_port_net
  );
  reinterpret8 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => convert_1_8_dout_net,
    output_port => reinterpret8_output_port_net
  );
  reinterpret9 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => convert_1_9_dout_net,
    output_port => reinterpret9_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/bus_expand
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_bus_expand is
  port (
    bus_in : in std_logic_vector( 128-1 downto 0 );
    msb_out16 : out std_logic_vector( 8-1 downto 0 );
    out15 : out std_logic_vector( 8-1 downto 0 );
    out14 : out std_logic_vector( 8-1 downto 0 );
    out13 : out std_logic_vector( 8-1 downto 0 );
    out12 : out std_logic_vector( 8-1 downto 0 );
    out11 : out std_logic_vector( 8-1 downto 0 );
    out10 : out std_logic_vector( 8-1 downto 0 );
    out9 : out std_logic_vector( 8-1 downto 0 );
    out8 : out std_logic_vector( 8-1 downto 0 );
    out7 : out std_logic_vector( 8-1 downto 0 );
    out6 : out std_logic_vector( 8-1 downto 0 );
    out5 : out std_logic_vector( 8-1 downto 0 );
    out4 : out std_logic_vector( 8-1 downto 0 );
    out3 : out std_logic_vector( 8-1 downto 0 );
    out2 : out std_logic_vector( 8-1 downto 0 );
    lsb_out1 : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_bus_expand;
architecture structural of pfb_fir_256c_16i_8b_core_bus_expand is 
  signal reinterpret10_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret9_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret8_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret7_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret5_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret16_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret15_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret14_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret13_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret12_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret11_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret6_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal pol_in_net : std_logic_vector( 128-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice10_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice11_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice12_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice13_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice14_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice15_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice16_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice5_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice6_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice7_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice8_y_net : std_logic_vector( 8-1 downto 0 );
  signal slice9_y_net : std_logic_vector( 8-1 downto 0 );
begin
  msb_out16 <= reinterpret16_output_port_net;
  out15 <= reinterpret15_output_port_net;
  out14 <= reinterpret14_output_port_net;
  out13 <= reinterpret13_output_port_net;
  out12 <= reinterpret12_output_port_net;
  out11 <= reinterpret11_output_port_net;
  out10 <= reinterpret10_output_port_net;
  out9 <= reinterpret9_output_port_net;
  out8 <= reinterpret8_output_port_net;
  out7 <= reinterpret7_output_port_net;
  out6 <= reinterpret6_output_port_net;
  out5 <= reinterpret5_output_port_net;
  out4 <= reinterpret4_output_port_net;
  out3 <= reinterpret3_output_port_net;
  out2 <= reinterpret2_output_port_net;
  lsb_out1 <= reinterpret1_output_port_net;
  pol_in_net <= bus_in;
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_9f0cf83708 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret10 : entity xil_defaultlib.sysgen_reinterpret_9f0cf83708 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice10_y_net,
    output_port => reinterpret10_output_port_net
  );
  reinterpret11 : entity xil_defaultlib.sysgen_reinterpret_9f0cf83708 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice11_y_net,
    output_port => reinterpret11_output_port_net
  );
  reinterpret12 : entity xil_defaultlib.sysgen_reinterpret_9f0cf83708 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice12_y_net,
    output_port => reinterpret12_output_port_net
  );
  reinterpret13 : entity xil_defaultlib.sysgen_reinterpret_9f0cf83708 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice13_y_net,
    output_port => reinterpret13_output_port_net
  );
  reinterpret14 : entity xil_defaultlib.sysgen_reinterpret_9f0cf83708 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice14_y_net,
    output_port => reinterpret14_output_port_net
  );
  reinterpret15 : entity xil_defaultlib.sysgen_reinterpret_9f0cf83708 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice15_y_net,
    output_port => reinterpret15_output_port_net
  );
  reinterpret16 : entity xil_defaultlib.sysgen_reinterpret_9f0cf83708 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice16_y_net,
    output_port => reinterpret16_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_9f0cf83708 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice2_y_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_9f0cf83708 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice3_y_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_9f0cf83708 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice4_y_net,
    output_port => reinterpret4_output_port_net
  );
  reinterpret5 : entity xil_defaultlib.sysgen_reinterpret_9f0cf83708 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice5_y_net,
    output_port => reinterpret5_output_port_net
  );
  reinterpret6 : entity xil_defaultlib.sysgen_reinterpret_9f0cf83708 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice6_y_net,
    output_port => reinterpret6_output_port_net
  );
  reinterpret7 : entity xil_defaultlib.sysgen_reinterpret_9f0cf83708 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice7_y_net,
    output_port => reinterpret7_output_port_net
  );
  reinterpret8 : entity xil_defaultlib.sysgen_reinterpret_9f0cf83708 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice8_y_net,
    output_port => reinterpret8_output_port_net
  );
  reinterpret9 : entity xil_defaultlib.sysgen_reinterpret_9f0cf83708 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice9_y_net,
    output_port => reinterpret9_output_port_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 7,
    x_width => 128,
    y_width => 8
  )
  port map (
    x => pol_in_net,
    y => slice1_y_net
  );
  slice10 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 72,
    new_msb => 79,
    x_width => 128,
    y_width => 8
  )
  port map (
    x => pol_in_net,
    y => slice10_y_net
  );
  slice11 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 80,
    new_msb => 87,
    x_width => 128,
    y_width => 8
  )
  port map (
    x => pol_in_net,
    y => slice11_y_net
  );
  slice12 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 88,
    new_msb => 95,
    x_width => 128,
    y_width => 8
  )
  port map (
    x => pol_in_net,
    y => slice12_y_net
  );
  slice13 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 96,
    new_msb => 103,
    x_width => 128,
    y_width => 8
  )
  port map (
    x => pol_in_net,
    y => slice13_y_net
  );
  slice14 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 104,
    new_msb => 111,
    x_width => 128,
    y_width => 8
  )
  port map (
    x => pol_in_net,
    y => slice14_y_net
  );
  slice15 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 112,
    new_msb => 119,
    x_width => 128,
    y_width => 8
  )
  port map (
    x => pol_in_net,
    y => slice15_y_net
  );
  slice16 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 120,
    new_msb => 127,
    x_width => 128,
    y_width => 8
  )
  port map (
    x => pol_in_net,
    y => slice16_y_net
  );
  slice2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 8,
    new_msb => 15,
    x_width => 128,
    y_width => 8
  )
  port map (
    x => pol_in_net,
    y => slice2_y_net
  );
  slice3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 16,
    new_msb => 23,
    x_width => 128,
    y_width => 8
  )
  port map (
    x => pol_in_net,
    y => slice3_y_net
  );
  slice4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 24,
    new_msb => 31,
    x_width => 128,
    y_width => 8
  )
  port map (
    x => pol_in_net,
    y => slice4_y_net
  );
  slice5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 32,
    new_msb => 39,
    x_width => 128,
    y_width => 8
  )
  port map (
    x => pol_in_net,
    y => slice5_y_net
  );
  slice6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 40,
    new_msb => 47,
    x_width => 128,
    y_width => 8
  )
  port map (
    x => pol_in_net,
    y => slice6_y_net
  );
  slice7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 48,
    new_msb => 55,
    x_width => 128,
    y_width => 8
  )
  port map (
    x => pol_in_net,
    y => slice7_y_net
  );
  slice8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 56,
    new_msb => 63,
    x_width => 128,
    y_width => 8
  )
  port map (
    x => pol_in_net,
    y => slice8_y_net
  );
  slice9 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 64,
    new_msb => 71,
    x_width => 128,
    y_width => 8
  )
  port map (
    x => pol_in_net,
    y => slice9_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/adder_1_1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_adder_1_1 is
  port (
    sync : in std_logic_vector( 1-1 downto 0 );
    din1 : in std_logic_vector( 26-1 downto 0 );
    din2 : in std_logic_vector( 26-1 downto 0 );
    din3 : in std_logic_vector( 26-1 downto 0 );
    din4 : in std_logic_vector( 26-1 downto 0 );
    din5 : in std_logic_vector( 26-1 downto 0 );
    din6 : in std_logic_vector( 26-1 downto 0 );
    din7 : in std_logic_vector( 26-1 downto 0 );
    din8 : in std_logic_vector( 26-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    sync_out : out std_logic_vector( 1-1 downto 0 );
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_adder_1_1;
architecture structural of pfb_fir_256c_16i_8b_core_adder_1_1 is 
  signal sync_delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal addr7_s_net : std_logic_vector( 26-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x3 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x4 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x5 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x6 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addr1_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr2_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr4_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr5_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr6_s_net : std_logic_vector( 26-1 downto 0 );
begin
  sync_out <= sync_delay_q_net;
  dout <= addr7_s_net;
  delay_q_net <= sync;
  mult_p_net <= din1;
  mult_p_net_x1 <= din2;
  mult_p_net_x2 <= din3;
  mult_p_net_x3 <= din4;
  mult_p_net_x4 <= din5;
  mult_p_net_x5 <= din6;
  mult_p_net_x6 <= din7;
  mult_p_net_x0 <= din8;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addr1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net,
    b => mult_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addr1_s_net
  );
  addr2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x2,
    b => mult_p_net_x3,
    clk => clk_net,
    ce => ce_net,
    s => addr2_s_net
  );
  addr3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x4,
    b => mult_p_net_x5,
    clk => clk_net,
    ce => ce_net,
    s => addr3_s_net
  );
  addr4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x6,
    b => mult_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addr4_s_net
  );
  addr5 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr1_s_net,
    b => addr2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr5_s_net
  );
  addr6 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr3_s_net,
    b => addr4_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr6_s_net
  );
  addr7 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr5_s_net,
    b => addr6_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr7_s_net
  );
  sync_delay_x104 : entity xil_defaultlib.sysgen_delay_8e3d68c88c 
  port map (
    clr => '0',
    d => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    q => sync_delay_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/adder_1_10
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_adder_1_10 is
  port (
    din1 : in std_logic_vector( 26-1 downto 0 );
    din2 : in std_logic_vector( 26-1 downto 0 );
    din3 : in std_logic_vector( 26-1 downto 0 );
    din4 : in std_logic_vector( 26-1 downto 0 );
    din5 : in std_logic_vector( 26-1 downto 0 );
    din6 : in std_logic_vector( 26-1 downto 0 );
    din7 : in std_logic_vector( 26-1 downto 0 );
    din8 : in std_logic_vector( 26-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_adder_1_10;
architecture structural of pfb_fir_256c_16i_8b_core_adder_1_10 is 
  signal addr2_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr7_s_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x3 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x4 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x5 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x6 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addr1_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr4_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr5_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr6_s_net : std_logic_vector( 26-1 downto 0 );
begin
  dout <= addr7_s_net;
  mult_p_net <= din1;
  mult_p_net_x1 <= din2;
  mult_p_net_x2 <= din3;
  mult_p_net_x3 <= din4;
  mult_p_net_x4 <= din5;
  mult_p_net_x5 <= din6;
  mult_p_net_x6 <= din7;
  mult_p_net_x0 <= din8;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addr1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net,
    b => mult_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addr1_s_net
  );
  addr2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x2,
    b => mult_p_net_x3,
    clk => clk_net,
    ce => ce_net,
    s => addr2_s_net
  );
  addr3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x4,
    b => mult_p_net_x5,
    clk => clk_net,
    ce => ce_net,
    s => addr3_s_net
  );
  addr4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x6,
    b => mult_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addr4_s_net
  );
  addr5 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr1_s_net,
    b => addr2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr5_s_net
  );
  addr6 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr3_s_net,
    b => addr4_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr6_s_net
  );
  addr7 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr5_s_net,
    b => addr6_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr7_s_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/adder_1_11
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_adder_1_11 is
  port (
    din1 : in std_logic_vector( 26-1 downto 0 );
    din2 : in std_logic_vector( 26-1 downto 0 );
    din3 : in std_logic_vector( 26-1 downto 0 );
    din4 : in std_logic_vector( 26-1 downto 0 );
    din5 : in std_logic_vector( 26-1 downto 0 );
    din6 : in std_logic_vector( 26-1 downto 0 );
    din7 : in std_logic_vector( 26-1 downto 0 );
    din8 : in std_logic_vector( 26-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_adder_1_11;
architecture structural of pfb_fir_256c_16i_8b_core_adder_1_11 is 
  signal addr2_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr7_s_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x3 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x4 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x5 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x6 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addr1_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr4_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr5_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr6_s_net : std_logic_vector( 26-1 downto 0 );
begin
  dout <= addr7_s_net;
  mult_p_net <= din1;
  mult_p_net_x1 <= din2;
  mult_p_net_x2 <= din3;
  mult_p_net_x3 <= din4;
  mult_p_net_x4 <= din5;
  mult_p_net_x5 <= din6;
  mult_p_net_x6 <= din7;
  mult_p_net_x0 <= din8;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addr1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net,
    b => mult_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addr1_s_net
  );
  addr2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x2,
    b => mult_p_net_x3,
    clk => clk_net,
    ce => ce_net,
    s => addr2_s_net
  );
  addr3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x4,
    b => mult_p_net_x5,
    clk => clk_net,
    ce => ce_net,
    s => addr3_s_net
  );
  addr4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x6,
    b => mult_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addr4_s_net
  );
  addr5 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr1_s_net,
    b => addr2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr5_s_net
  );
  addr6 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr3_s_net,
    b => addr4_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr6_s_net
  );
  addr7 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr5_s_net,
    b => addr6_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr7_s_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/adder_1_12
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_adder_1_12 is
  port (
    din1 : in std_logic_vector( 26-1 downto 0 );
    din2 : in std_logic_vector( 26-1 downto 0 );
    din3 : in std_logic_vector( 26-1 downto 0 );
    din4 : in std_logic_vector( 26-1 downto 0 );
    din5 : in std_logic_vector( 26-1 downto 0 );
    din6 : in std_logic_vector( 26-1 downto 0 );
    din7 : in std_logic_vector( 26-1 downto 0 );
    din8 : in std_logic_vector( 26-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_adder_1_12;
architecture structural of pfb_fir_256c_16i_8b_core_adder_1_12 is 
  signal addr7_s_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x3 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x4 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x5 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x6 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addr1_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr2_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr4_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr5_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr6_s_net : std_logic_vector( 26-1 downto 0 );
begin
  dout <= addr7_s_net;
  mult_p_net <= din1;
  mult_p_net_x1 <= din2;
  mult_p_net_x2 <= din3;
  mult_p_net_x3 <= din4;
  mult_p_net_x4 <= din5;
  mult_p_net_x5 <= din6;
  mult_p_net_x6 <= din7;
  mult_p_net_x0 <= din8;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addr1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net,
    b => mult_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addr1_s_net
  );
  addr2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x2,
    b => mult_p_net_x3,
    clk => clk_net,
    ce => ce_net,
    s => addr2_s_net
  );
  addr3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x4,
    b => mult_p_net_x5,
    clk => clk_net,
    ce => ce_net,
    s => addr3_s_net
  );
  addr4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x6,
    b => mult_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addr4_s_net
  );
  addr5 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr1_s_net,
    b => addr2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr5_s_net
  );
  addr6 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr3_s_net,
    b => addr4_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr6_s_net
  );
  addr7 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr5_s_net,
    b => addr6_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr7_s_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/adder_1_13
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_adder_1_13 is
  port (
    din1 : in std_logic_vector( 26-1 downto 0 );
    din2 : in std_logic_vector( 26-1 downto 0 );
    din3 : in std_logic_vector( 26-1 downto 0 );
    din4 : in std_logic_vector( 26-1 downto 0 );
    din5 : in std_logic_vector( 26-1 downto 0 );
    din6 : in std_logic_vector( 26-1 downto 0 );
    din7 : in std_logic_vector( 26-1 downto 0 );
    din8 : in std_logic_vector( 26-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_adder_1_13;
architecture structural of pfb_fir_256c_16i_8b_core_adder_1_13 is 
  signal addr7_s_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x3 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x4 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x5 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x6 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addr1_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr2_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr4_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr5_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr6_s_net : std_logic_vector( 26-1 downto 0 );
begin
  dout <= addr7_s_net;
  mult_p_net <= din1;
  mult_p_net_x1 <= din2;
  mult_p_net_x2 <= din3;
  mult_p_net_x3 <= din4;
  mult_p_net_x4 <= din5;
  mult_p_net_x5 <= din6;
  mult_p_net_x6 <= din7;
  mult_p_net_x0 <= din8;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addr1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net,
    b => mult_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addr1_s_net
  );
  addr2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x2,
    b => mult_p_net_x3,
    clk => clk_net,
    ce => ce_net,
    s => addr2_s_net
  );
  addr3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x4,
    b => mult_p_net_x5,
    clk => clk_net,
    ce => ce_net,
    s => addr3_s_net
  );
  addr4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x6,
    b => mult_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addr4_s_net
  );
  addr5 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr1_s_net,
    b => addr2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr5_s_net
  );
  addr6 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr3_s_net,
    b => addr4_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr6_s_net
  );
  addr7 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr5_s_net,
    b => addr6_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr7_s_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/adder_1_14
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_adder_1_14 is
  port (
    din1 : in std_logic_vector( 26-1 downto 0 );
    din2 : in std_logic_vector( 26-1 downto 0 );
    din3 : in std_logic_vector( 26-1 downto 0 );
    din4 : in std_logic_vector( 26-1 downto 0 );
    din5 : in std_logic_vector( 26-1 downto 0 );
    din6 : in std_logic_vector( 26-1 downto 0 );
    din7 : in std_logic_vector( 26-1 downto 0 );
    din8 : in std_logic_vector( 26-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_adder_1_14;
architecture structural of pfb_fir_256c_16i_8b_core_adder_1_14 is 
  signal addr2_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr7_s_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x3 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x4 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x5 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x6 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addr1_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr4_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr5_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr6_s_net : std_logic_vector( 26-1 downto 0 );
begin
  dout <= addr7_s_net;
  mult_p_net <= din1;
  mult_p_net_x1 <= din2;
  mult_p_net_x2 <= din3;
  mult_p_net_x3 <= din4;
  mult_p_net_x4 <= din5;
  mult_p_net_x5 <= din6;
  mult_p_net_x6 <= din7;
  mult_p_net_x0 <= din8;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addr1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net,
    b => mult_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addr1_s_net
  );
  addr2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x2,
    b => mult_p_net_x3,
    clk => clk_net,
    ce => ce_net,
    s => addr2_s_net
  );
  addr3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x4,
    b => mult_p_net_x5,
    clk => clk_net,
    ce => ce_net,
    s => addr3_s_net
  );
  addr4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x6,
    b => mult_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addr4_s_net
  );
  addr5 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr1_s_net,
    b => addr2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr5_s_net
  );
  addr6 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr3_s_net,
    b => addr4_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr6_s_net
  );
  addr7 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr5_s_net,
    b => addr6_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr7_s_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/adder_1_15
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_adder_1_15 is
  port (
    din1 : in std_logic_vector( 26-1 downto 0 );
    din2 : in std_logic_vector( 26-1 downto 0 );
    din3 : in std_logic_vector( 26-1 downto 0 );
    din4 : in std_logic_vector( 26-1 downto 0 );
    din5 : in std_logic_vector( 26-1 downto 0 );
    din6 : in std_logic_vector( 26-1 downto 0 );
    din7 : in std_logic_vector( 26-1 downto 0 );
    din8 : in std_logic_vector( 26-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_adder_1_15;
architecture structural of pfb_fir_256c_16i_8b_core_adder_1_15 is 
  signal addr7_s_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x3 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x4 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x5 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x6 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addr1_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr2_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr4_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr5_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr6_s_net : std_logic_vector( 26-1 downto 0 );
begin
  dout <= addr7_s_net;
  mult_p_net <= din1;
  mult_p_net_x1 <= din2;
  mult_p_net_x2 <= din3;
  mult_p_net_x3 <= din4;
  mult_p_net_x4 <= din5;
  mult_p_net_x5 <= din6;
  mult_p_net_x6 <= din7;
  mult_p_net_x0 <= din8;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addr1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net,
    b => mult_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addr1_s_net
  );
  addr2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x2,
    b => mult_p_net_x3,
    clk => clk_net,
    ce => ce_net,
    s => addr2_s_net
  );
  addr3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x4,
    b => mult_p_net_x5,
    clk => clk_net,
    ce => ce_net,
    s => addr3_s_net
  );
  addr4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x6,
    b => mult_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addr4_s_net
  );
  addr5 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr1_s_net,
    b => addr2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr5_s_net
  );
  addr6 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr3_s_net,
    b => addr4_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr6_s_net
  );
  addr7 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr5_s_net,
    b => addr6_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr7_s_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/adder_1_16
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_adder_1_16 is
  port (
    din1 : in std_logic_vector( 26-1 downto 0 );
    din2 : in std_logic_vector( 26-1 downto 0 );
    din3 : in std_logic_vector( 26-1 downto 0 );
    din4 : in std_logic_vector( 26-1 downto 0 );
    din5 : in std_logic_vector( 26-1 downto 0 );
    din6 : in std_logic_vector( 26-1 downto 0 );
    din7 : in std_logic_vector( 26-1 downto 0 );
    din8 : in std_logic_vector( 26-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_adder_1_16;
architecture structural of pfb_fir_256c_16i_8b_core_adder_1_16 is 
  signal addr7_s_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x3 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x4 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x5 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x6 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addr1_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr2_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr4_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr5_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr6_s_net : std_logic_vector( 26-1 downto 0 );
begin
  dout <= addr7_s_net;
  mult_p_net <= din1;
  mult_p_net_x1 <= din2;
  mult_p_net_x2 <= din3;
  mult_p_net_x3 <= din4;
  mult_p_net_x4 <= din5;
  mult_p_net_x5 <= din6;
  mult_p_net_x6 <= din7;
  mult_p_net_x0 <= din8;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addr1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net,
    b => mult_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addr1_s_net
  );
  addr2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x2,
    b => mult_p_net_x3,
    clk => clk_net,
    ce => ce_net,
    s => addr2_s_net
  );
  addr3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x4,
    b => mult_p_net_x5,
    clk => clk_net,
    ce => ce_net,
    s => addr3_s_net
  );
  addr4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x6,
    b => mult_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addr4_s_net
  );
  addr5 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr1_s_net,
    b => addr2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr5_s_net
  );
  addr6 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr3_s_net,
    b => addr4_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr6_s_net
  );
  addr7 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr5_s_net,
    b => addr6_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr7_s_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/adder_1_2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_adder_1_2 is
  port (
    din1 : in std_logic_vector( 26-1 downto 0 );
    din2 : in std_logic_vector( 26-1 downto 0 );
    din3 : in std_logic_vector( 26-1 downto 0 );
    din4 : in std_logic_vector( 26-1 downto 0 );
    din5 : in std_logic_vector( 26-1 downto 0 );
    din6 : in std_logic_vector( 26-1 downto 0 );
    din7 : in std_logic_vector( 26-1 downto 0 );
    din8 : in std_logic_vector( 26-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_adder_1_2;
architecture structural of pfb_fir_256c_16i_8b_core_adder_1_2 is 
  signal addr1_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr2_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr7_s_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x3 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x4 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x5 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x6 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr4_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr5_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr6_s_net : std_logic_vector( 26-1 downto 0 );
begin
  dout <= addr7_s_net;
  mult_p_net <= din1;
  mult_p_net_x1 <= din2;
  mult_p_net_x2 <= din3;
  mult_p_net_x3 <= din4;
  mult_p_net_x4 <= din5;
  mult_p_net_x5 <= din6;
  mult_p_net_x6 <= din7;
  mult_p_net_x0 <= din8;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addr1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net,
    b => mult_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addr1_s_net
  );
  addr2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x2,
    b => mult_p_net_x3,
    clk => clk_net,
    ce => ce_net,
    s => addr2_s_net
  );
  addr3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x4,
    b => mult_p_net_x5,
    clk => clk_net,
    ce => ce_net,
    s => addr3_s_net
  );
  addr4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x6,
    b => mult_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addr4_s_net
  );
  addr5 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr1_s_net,
    b => addr2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr5_s_net
  );
  addr6 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr3_s_net,
    b => addr4_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr6_s_net
  );
  addr7 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr5_s_net,
    b => addr6_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr7_s_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/adder_1_3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_adder_1_3 is
  port (
    din1 : in std_logic_vector( 26-1 downto 0 );
    din2 : in std_logic_vector( 26-1 downto 0 );
    din3 : in std_logic_vector( 26-1 downto 0 );
    din4 : in std_logic_vector( 26-1 downto 0 );
    din5 : in std_logic_vector( 26-1 downto 0 );
    din6 : in std_logic_vector( 26-1 downto 0 );
    din7 : in std_logic_vector( 26-1 downto 0 );
    din8 : in std_logic_vector( 26-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_adder_1_3;
architecture structural of pfb_fir_256c_16i_8b_core_adder_1_3 is 
  signal addr7_s_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x3 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x4 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x5 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x6 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addr1_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr2_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr4_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr5_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr6_s_net : std_logic_vector( 26-1 downto 0 );
begin
  dout <= addr7_s_net;
  mult_p_net <= din1;
  mult_p_net_x1 <= din2;
  mult_p_net_x2 <= din3;
  mult_p_net_x3 <= din4;
  mult_p_net_x4 <= din5;
  mult_p_net_x5 <= din6;
  mult_p_net_x6 <= din7;
  mult_p_net_x0 <= din8;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addr1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net,
    b => mult_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addr1_s_net
  );
  addr2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x2,
    b => mult_p_net_x3,
    clk => clk_net,
    ce => ce_net,
    s => addr2_s_net
  );
  addr3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x4,
    b => mult_p_net_x5,
    clk => clk_net,
    ce => ce_net,
    s => addr3_s_net
  );
  addr4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x6,
    b => mult_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addr4_s_net
  );
  addr5 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr1_s_net,
    b => addr2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr5_s_net
  );
  addr6 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr3_s_net,
    b => addr4_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr6_s_net
  );
  addr7 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr5_s_net,
    b => addr6_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr7_s_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/adder_1_4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_adder_1_4 is
  port (
    din1 : in std_logic_vector( 26-1 downto 0 );
    din2 : in std_logic_vector( 26-1 downto 0 );
    din3 : in std_logic_vector( 26-1 downto 0 );
    din4 : in std_logic_vector( 26-1 downto 0 );
    din5 : in std_logic_vector( 26-1 downto 0 );
    din6 : in std_logic_vector( 26-1 downto 0 );
    din7 : in std_logic_vector( 26-1 downto 0 );
    din8 : in std_logic_vector( 26-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_adder_1_4;
architecture structural of pfb_fir_256c_16i_8b_core_adder_1_4 is 
  signal addr7_s_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x3 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x4 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x5 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x6 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addr1_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr2_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr4_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr5_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr6_s_net : std_logic_vector( 26-1 downto 0 );
begin
  dout <= addr7_s_net;
  mult_p_net <= din1;
  mult_p_net_x1 <= din2;
  mult_p_net_x2 <= din3;
  mult_p_net_x3 <= din4;
  mult_p_net_x4 <= din5;
  mult_p_net_x5 <= din6;
  mult_p_net_x6 <= din7;
  mult_p_net_x0 <= din8;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addr1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net,
    b => mult_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addr1_s_net
  );
  addr2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x2,
    b => mult_p_net_x3,
    clk => clk_net,
    ce => ce_net,
    s => addr2_s_net
  );
  addr3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x4,
    b => mult_p_net_x5,
    clk => clk_net,
    ce => ce_net,
    s => addr3_s_net
  );
  addr4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x6,
    b => mult_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addr4_s_net
  );
  addr5 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr1_s_net,
    b => addr2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr5_s_net
  );
  addr6 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr3_s_net,
    b => addr4_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr6_s_net
  );
  addr7 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr5_s_net,
    b => addr6_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr7_s_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/adder_1_5
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_adder_1_5 is
  port (
    din1 : in std_logic_vector( 26-1 downto 0 );
    din2 : in std_logic_vector( 26-1 downto 0 );
    din3 : in std_logic_vector( 26-1 downto 0 );
    din4 : in std_logic_vector( 26-1 downto 0 );
    din5 : in std_logic_vector( 26-1 downto 0 );
    din6 : in std_logic_vector( 26-1 downto 0 );
    din7 : in std_logic_vector( 26-1 downto 0 );
    din8 : in std_logic_vector( 26-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_adder_1_5;
architecture structural of pfb_fir_256c_16i_8b_core_adder_1_5 is 
  signal addr7_s_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x3 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x4 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x5 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x6 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addr1_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr2_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr4_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr5_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr6_s_net : std_logic_vector( 26-1 downto 0 );
begin
  dout <= addr7_s_net;
  mult_p_net <= din1;
  mult_p_net_x1 <= din2;
  mult_p_net_x2 <= din3;
  mult_p_net_x3 <= din4;
  mult_p_net_x4 <= din5;
  mult_p_net_x5 <= din6;
  mult_p_net_x6 <= din7;
  mult_p_net_x0 <= din8;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addr1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net,
    b => mult_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addr1_s_net
  );
  addr2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x2,
    b => mult_p_net_x3,
    clk => clk_net,
    ce => ce_net,
    s => addr2_s_net
  );
  addr3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x4,
    b => mult_p_net_x5,
    clk => clk_net,
    ce => ce_net,
    s => addr3_s_net
  );
  addr4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x6,
    b => mult_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addr4_s_net
  );
  addr5 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr1_s_net,
    b => addr2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr5_s_net
  );
  addr6 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr3_s_net,
    b => addr4_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr6_s_net
  );
  addr7 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr5_s_net,
    b => addr6_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr7_s_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/adder_1_6
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_adder_1_6 is
  port (
    din1 : in std_logic_vector( 26-1 downto 0 );
    din2 : in std_logic_vector( 26-1 downto 0 );
    din3 : in std_logic_vector( 26-1 downto 0 );
    din4 : in std_logic_vector( 26-1 downto 0 );
    din5 : in std_logic_vector( 26-1 downto 0 );
    din6 : in std_logic_vector( 26-1 downto 0 );
    din7 : in std_logic_vector( 26-1 downto 0 );
    din8 : in std_logic_vector( 26-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_adder_1_6;
architecture structural of pfb_fir_256c_16i_8b_core_adder_1_6 is 
  signal addr7_s_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x3 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x4 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x5 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x6 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addr1_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr2_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr4_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr5_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr6_s_net : std_logic_vector( 26-1 downto 0 );
begin
  dout <= addr7_s_net;
  mult_p_net <= din1;
  mult_p_net_x1 <= din2;
  mult_p_net_x2 <= din3;
  mult_p_net_x3 <= din4;
  mult_p_net_x4 <= din5;
  mult_p_net_x5 <= din6;
  mult_p_net_x6 <= din7;
  mult_p_net_x0 <= din8;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addr1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net,
    b => mult_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addr1_s_net
  );
  addr2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x2,
    b => mult_p_net_x3,
    clk => clk_net,
    ce => ce_net,
    s => addr2_s_net
  );
  addr3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x4,
    b => mult_p_net_x5,
    clk => clk_net,
    ce => ce_net,
    s => addr3_s_net
  );
  addr4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x6,
    b => mult_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addr4_s_net
  );
  addr5 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr1_s_net,
    b => addr2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr5_s_net
  );
  addr6 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr3_s_net,
    b => addr4_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr6_s_net
  );
  addr7 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr5_s_net,
    b => addr6_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr7_s_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/adder_1_7
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_adder_1_7 is
  port (
    din1 : in std_logic_vector( 26-1 downto 0 );
    din2 : in std_logic_vector( 26-1 downto 0 );
    din3 : in std_logic_vector( 26-1 downto 0 );
    din4 : in std_logic_vector( 26-1 downto 0 );
    din5 : in std_logic_vector( 26-1 downto 0 );
    din6 : in std_logic_vector( 26-1 downto 0 );
    din7 : in std_logic_vector( 26-1 downto 0 );
    din8 : in std_logic_vector( 26-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_adder_1_7;
architecture structural of pfb_fir_256c_16i_8b_core_adder_1_7 is 
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x3 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x4 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x5 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x6 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addr1_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr7_s_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal addr2_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr4_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr5_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr6_s_net : std_logic_vector( 26-1 downto 0 );
begin
  dout <= addr7_s_net;
  mult_p_net <= din1;
  mult_p_net_x1 <= din2;
  mult_p_net_x2 <= din3;
  mult_p_net_x3 <= din4;
  mult_p_net_x4 <= din5;
  mult_p_net_x5 <= din6;
  mult_p_net_x6 <= din7;
  mult_p_net_x0 <= din8;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addr1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net,
    b => mult_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addr1_s_net
  );
  addr2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x2,
    b => mult_p_net_x3,
    clk => clk_net,
    ce => ce_net,
    s => addr2_s_net
  );
  addr3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x4,
    b => mult_p_net_x5,
    clk => clk_net,
    ce => ce_net,
    s => addr3_s_net
  );
  addr4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x6,
    b => mult_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addr4_s_net
  );
  addr5 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr1_s_net,
    b => addr2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr5_s_net
  );
  addr6 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr3_s_net,
    b => addr4_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr6_s_net
  );
  addr7 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr5_s_net,
    b => addr6_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr7_s_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/adder_1_8
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_adder_1_8 is
  port (
    din1 : in std_logic_vector( 26-1 downto 0 );
    din2 : in std_logic_vector( 26-1 downto 0 );
    din3 : in std_logic_vector( 26-1 downto 0 );
    din4 : in std_logic_vector( 26-1 downto 0 );
    din5 : in std_logic_vector( 26-1 downto 0 );
    din6 : in std_logic_vector( 26-1 downto 0 );
    din7 : in std_logic_vector( 26-1 downto 0 );
    din8 : in std_logic_vector( 26-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_adder_1_8;
architecture structural of pfb_fir_256c_16i_8b_core_adder_1_8 is 
  signal addr7_s_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x3 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x4 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x5 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x6 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addr1_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr2_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr4_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr5_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr6_s_net : std_logic_vector( 26-1 downto 0 );
begin
  dout <= addr7_s_net;
  mult_p_net <= din1;
  mult_p_net_x1 <= din2;
  mult_p_net_x2 <= din3;
  mult_p_net_x3 <= din4;
  mult_p_net_x4 <= din5;
  mult_p_net_x5 <= din6;
  mult_p_net_x6 <= din7;
  mult_p_net_x0 <= din8;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addr1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net,
    b => mult_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addr1_s_net
  );
  addr2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x2,
    b => mult_p_net_x3,
    clk => clk_net,
    ce => ce_net,
    s => addr2_s_net
  );
  addr3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x4,
    b => mult_p_net_x5,
    clk => clk_net,
    ce => ce_net,
    s => addr3_s_net
  );
  addr4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x6,
    b => mult_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addr4_s_net
  );
  addr5 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr1_s_net,
    b => addr2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr5_s_net
  );
  addr6 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr3_s_net,
    b => addr4_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr6_s_net
  );
  addr7 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr5_s_net,
    b => addr6_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr7_s_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/adder_1_9
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_adder_1_9 is
  port (
    din1 : in std_logic_vector( 26-1 downto 0 );
    din2 : in std_logic_vector( 26-1 downto 0 );
    din3 : in std_logic_vector( 26-1 downto 0 );
    din4 : in std_logic_vector( 26-1 downto 0 );
    din5 : in std_logic_vector( 26-1 downto 0 );
    din6 : in std_logic_vector( 26-1 downto 0 );
    din7 : in std_logic_vector( 26-1 downto 0 );
    din8 : in std_logic_vector( 26-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_adder_1_9;
architecture structural of pfb_fir_256c_16i_8b_core_adder_1_9 is 
  signal addr7_s_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x3 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x4 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x5 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x6 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addr1_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr2_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr4_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr5_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr6_s_net : std_logic_vector( 26-1 downto 0 );
begin
  dout <= addr7_s_net;
  mult_p_net <= din1;
  mult_p_net_x1 <= din2;
  mult_p_net_x2 <= din3;
  mult_p_net_x3 <= din4;
  mult_p_net_x4 <= din5;
  mult_p_net_x5 <= din6;
  mult_p_net_x6 <= din7;
  mult_p_net_x0 <= din8;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addr1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net,
    b => mult_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addr1_s_net
  );
  addr2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x2,
    b => mult_p_net_x3,
    clk => clk_net,
    ce => ce_net,
    s => addr2_s_net
  );
  addr3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x4,
    b => mult_p_net_x5,
    clk => clk_net,
    ce => ce_net,
    s => addr3_s_net
  );
  addr4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_256c_16i_8b_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => mult_p_net_x6,
    b => mult_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addr4_s_net
  );
  addr5 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr1_s_net,
    b => addr2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr5_s_net
  );
  addr6 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr3_s_net,
    b => addr4_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr6_s_net
  );
  addr7 : entity xil_defaultlib.sysgen_addsub_a8172809b4 
  port map (
    clr => '0',
    a => addr5_s_net,
    b => addr6_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr7_s_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in10_coeffs
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in10_coeffs is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff : out std_logic_vector( 144-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in10_coeffs;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in10_coeffs is 
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal reinterpret7_output_port_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 144-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret5_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret6_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret7_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret8_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal rom1_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay1_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom2_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay2_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom3_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay3_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom4_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay4_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom5_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay5_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom6_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay6_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom7_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay7_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom8_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay8_q_net : std_logic_vector( 5-1 downto 0 );
begin
  dout <= delay1_q_net;
  coeff <= register_q_net;
  reinterpret7_output_port_net_x0 <= din;
  slice_y_net <= sync;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_3b7fef6a01 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    in4 => reinterpret5_output_port_net,
    in5 => reinterpret6_output_port_net,
    in6 => reinterpret7_output_port_net,
    in7 => reinterpret8_output_port_net,
    y => concat_y_net
  );
  counter : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_256c_16i_8b_core_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 5
  )
  port map (
    en => "1",
    clr => '0',
    rst => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => reinterpret7_output_port_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  rom1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_b1c84a_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
  rom2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_1b5413_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom2_data_net
  );
  rom3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_8d3422_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom3_data_net
  );
  rom4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_383e96_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom4_data_net
  );
  rom5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_32569e_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom5_data_net
  );
  rom6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_5cec4f_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom6_data_net
  );
  rom7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_0ddc3d_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay7_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom7_data_net
  );
  rom8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_fd341c_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay8_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom8_data_net
  );
  register_x0 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlregister 
  generic map (
    d_width => 144,
    init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom1_data_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom2_data_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom3_data_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom4_data_net,
    output_port => reinterpret4_output_port_net
  );
  reinterpret5 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom5_data_net,
    output_port => reinterpret5_output_port_net
  );
  reinterpret6 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom6_data_net,
    output_port => reinterpret6_output_port_net
  );
  reinterpret7 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom7_data_net,
    output_port => reinterpret7_output_port_net
  );
  reinterpret8 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom8_data_net,
    output_port => reinterpret8_output_port_net
  );
  fan_delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay1_q_net
  );
  fan_delay2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay2_q_net
  );
  fan_delay3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay3_q_net
  );
  fan_delay4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay4_q_net
  );
  fan_delay5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay5_q_net
  );
  fan_delay6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay6_q_net
  );
  fan_delay7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay7_q_net
  );
  fan_delay8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay8_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in10_first_tap/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x52 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x52;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x52 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  delay1_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => delay1_q_net,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in10_first_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in10_first_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeffs : in std_logic_vector( 144-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 126-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in10_first_tap;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in10_first_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 126-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net;
  coeff_out <= slice1_y_net;
  taps_out <= mult_p_net;
  delay1_q_net <= din;
  delay_q_net <= sync;
  register_q_net <= coeffs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x52 
  port map (
    din => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret2_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 144,
    y_width => 18
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 143,
    x_width => 144,
    y_width => 126
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in10_last_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in10_last_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tap_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in10_last_tap;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in10_last_tap is 
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  tap_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in10_tap2/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x46 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x46;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x46 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in10_tap2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in10_tap2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 126-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 108-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in10_tap2;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in10_tap2 is 
  signal slice1_y_net : std_logic_vector( 126-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 108-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x46 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 126,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 125,
    x_width => 126,
    y_width => 108
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in10_tap3/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x47 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x47;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x47 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in10_tap3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in10_tap3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 108-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 90-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in10_tap3;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in10_tap3 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 90-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 108-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x47 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 108,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 107,
    x_width => 108,
    y_width => 90
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in10_tap4/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x48 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x48;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x48 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in10_tap4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in10_tap4 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 90-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 72-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in10_tap4;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in10_tap4 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 72-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 90-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x48 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 90,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 89,
    x_width => 90,
    y_width => 72
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in10_tap5/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x49 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x49;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x49 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in10_tap5
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in10_tap5 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 72-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 54-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in10_tap5;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in10_tap5 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 54-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 72-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x49 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 72,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 71,
    x_width => 72,
    y_width => 54
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in10_tap6/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x50 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x50;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x50 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in10_tap6
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in10_tap6 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 54-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 36-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in10_tap6;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in10_tap6 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x50 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 54,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 53,
    x_width => 54,
    y_width => 36
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in10_tap7/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x51 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x51;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x51 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in10_tap7
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in10_tap7 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 36-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 18-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in10_tap7;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in10_tap7 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 36-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x51 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 35,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in11_coeffs
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in11_coeffs is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff : out std_logic_vector( 144-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in11_coeffs;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in11_coeffs is 
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal reinterpret6_output_port_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 144-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret5_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret6_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret7_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret8_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal rom1_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay1_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom2_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay2_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom3_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay3_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom4_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay4_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom5_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay5_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom6_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay6_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom7_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay7_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom8_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay8_q_net : std_logic_vector( 5-1 downto 0 );
begin
  dout <= delay1_q_net;
  coeff <= register_q_net;
  reinterpret6_output_port_net_x0 <= din;
  slice_y_net <= sync;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_3b7fef6a01 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    in4 => reinterpret5_output_port_net,
    in5 => reinterpret6_output_port_net,
    in6 => reinterpret7_output_port_net,
    in7 => reinterpret8_output_port_net,
    y => concat_y_net
  );
  counter : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_256c_16i_8b_core_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 5
  )
  port map (
    en => "1",
    clr => '0',
    rst => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => reinterpret6_output_port_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  rom1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_2d9e2a_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
  rom2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_09f55d_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom2_data_net
  );
  rom3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_b04824_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom3_data_net
  );
  rom4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_08bfe5_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom4_data_net
  );
  rom5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_36944f_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom5_data_net
  );
  rom6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_30b71b_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom6_data_net
  );
  rom7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_11ce05_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay7_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom7_data_net
  );
  rom8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_55c69a_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay8_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom8_data_net
  );
  register_x0 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlregister 
  generic map (
    d_width => 144,
    init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom1_data_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom2_data_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom3_data_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom4_data_net,
    output_port => reinterpret4_output_port_net
  );
  reinterpret5 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom5_data_net,
    output_port => reinterpret5_output_port_net
  );
  reinterpret6 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom6_data_net,
    output_port => reinterpret6_output_port_net
  );
  reinterpret7 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom7_data_net,
    output_port => reinterpret7_output_port_net
  );
  reinterpret8 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom8_data_net,
    output_port => reinterpret8_output_port_net
  );
  fan_delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay1_q_net
  );
  fan_delay2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay2_q_net
  );
  fan_delay3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay3_q_net
  );
  fan_delay4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay4_q_net
  );
  fan_delay5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay5_q_net
  );
  fan_delay6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay6_q_net
  );
  fan_delay7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay7_q_net
  );
  fan_delay8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay8_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in11_first_tap/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x58 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x58;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x58 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  delay1_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => delay1_q_net,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in11_first_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in11_first_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeffs : in std_logic_vector( 144-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 126-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in11_first_tap;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in11_first_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 126-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net;
  coeff_out <= slice1_y_net;
  taps_out <= mult_p_net;
  delay1_q_net <= din;
  delay_q_net <= sync;
  register_q_net <= coeffs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x58 
  port map (
    din => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret2_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 144,
    y_width => 18
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 143,
    x_width => 144,
    y_width => 126
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in11_last_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in11_last_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tap_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in11_last_tap;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in11_last_tap is 
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  tap_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in11_tap2/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x59 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x59;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x59 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in11_tap2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in11_tap2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 126-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 108-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in11_tap2;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in11_tap2 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 108-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 126-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x59 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 126,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 125,
    x_width => 126,
    y_width => 108
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in11_tap3/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x60 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x60;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x60 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in11_tap3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in11_tap3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 108-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 90-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in11_tap3;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in11_tap3 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 90-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 108-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x60 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 108,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 107,
    x_width => 108,
    y_width => 90
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in11_tap4/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x62 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x62;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x62 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in11_tap4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in11_tap4 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 90-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 72-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in11_tap4;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in11_tap4 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 72-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 90-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x62 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 90,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 89,
    x_width => 90,
    y_width => 72
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in11_tap5/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x63 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x63;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x63 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in11_tap5
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in11_tap5 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 72-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 54-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in11_tap5;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in11_tap5 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 54-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 72-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x63 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 72,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 71,
    x_width => 72,
    y_width => 54
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in11_tap6/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x64 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x64;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x64 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in11_tap6
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in11_tap6 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 54-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 36-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in11_tap6;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in11_tap6 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x64 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 54,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 53,
    x_width => 54,
    y_width => 36
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in11_tap7/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x54 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x54;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x54 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in11_tap7
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in11_tap7 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 36-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 18-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in11_tap7;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in11_tap7 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 36-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x54 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 35,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in12_coeffs
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in12_coeffs is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff : out std_logic_vector( 144-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in12_coeffs;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in12_coeffs is 
  signal rom4_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay4_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom5_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay5_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom6_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay6_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom7_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay7_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom8_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay8_q_net : std_logic_vector( 5-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal reinterpret5_output_port_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 144-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret5_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret6_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret7_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret8_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal rom1_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay1_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom2_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay2_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom3_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay3_q_net : std_logic_vector( 5-1 downto 0 );
begin
  dout <= delay1_q_net;
  coeff <= register_q_net;
  reinterpret5_output_port_net_x0 <= din;
  slice_y_net <= sync;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_3b7fef6a01 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    in4 => reinterpret5_output_port_net,
    in5 => reinterpret6_output_port_net,
    in6 => reinterpret7_output_port_net,
    in7 => reinterpret8_output_port_net,
    y => concat_y_net
  );
  counter : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_256c_16i_8b_core_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 5
  )
  port map (
    en => "1",
    clr => '0',
    rst => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => reinterpret5_output_port_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  rom1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_a89eaa_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
  rom2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_80f6f1_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom2_data_net
  );
  rom3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_a6c7db_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom3_data_net
  );
  rom4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_2963ac_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom4_data_net
  );
  rom5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_9451c5_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom5_data_net
  );
  rom6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_603a89_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom6_data_net
  );
  rom7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_170408_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay7_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom7_data_net
  );
  rom8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_42173a_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay8_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom8_data_net
  );
  register_x0 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlregister 
  generic map (
    d_width => 144,
    init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom1_data_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom2_data_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom3_data_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom4_data_net,
    output_port => reinterpret4_output_port_net
  );
  reinterpret5 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom5_data_net,
    output_port => reinterpret5_output_port_net
  );
  reinterpret6 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom6_data_net,
    output_port => reinterpret6_output_port_net
  );
  reinterpret7 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom7_data_net,
    output_port => reinterpret7_output_port_net
  );
  reinterpret8 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom8_data_net,
    output_port => reinterpret8_output_port_net
  );
  fan_delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay1_q_net
  );
  fan_delay2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay2_q_net
  );
  fan_delay3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay3_q_net
  );
  fan_delay4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay4_q_net
  );
  fan_delay5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay5_q_net
  );
  fan_delay6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay6_q_net
  );
  fan_delay7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay7_q_net
  );
  fan_delay8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay8_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in12_first_tap/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x55 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x55;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x55 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  delay1_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => delay1_q_net,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in12_first_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in12_first_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeffs : in std_logic_vector( 144-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 126-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in12_first_tap;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in12_first_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 126-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net;
  coeff_out <= slice1_y_net;
  taps_out <= mult_p_net;
  delay1_q_net <= din;
  delay_q_net <= sync;
  register_q_net <= coeffs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x55 
  port map (
    din => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret2_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 144,
    y_width => 18
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 143,
    x_width => 144,
    y_width => 126
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in12_last_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in12_last_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tap_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in12_last_tap;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in12_last_tap is 
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  tap_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in12_tap2/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x53 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x53;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x53 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in12_tap2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in12_tap2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 126-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 108-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in12_tap2;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in12_tap2 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 108-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 126-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x53 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 126,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 125,
    x_width => 126,
    y_width => 108
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in12_tap3/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x56 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x56;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x56 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in12_tap3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in12_tap3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 108-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 90-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in12_tap3;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in12_tap3 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 90-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 108-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x56 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 108,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 107,
    x_width => 108,
    y_width => 90
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in12_tap4/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x57 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x57;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x57 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in12_tap4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in12_tap4 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 90-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 72-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in12_tap4;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in12_tap4 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 72-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 90-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x57 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 90,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 89,
    x_width => 90,
    y_width => 72
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in12_tap5/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x43 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x43;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x43 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in12_tap5
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in12_tap5 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 72-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 54-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in12_tap5;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in12_tap5 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 54-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 72-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x43 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 72,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 71,
    x_width => 72,
    y_width => 54
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in12_tap6/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x29 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x29;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x29 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in12_tap6
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in12_tap6 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 54-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 36-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in12_tap6;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in12_tap6 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x29 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 54,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 53,
    x_width => 54,
    y_width => 36
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in12_tap7/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x30 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x30;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x30 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in12_tap7
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in12_tap7 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 36-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 18-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in12_tap7;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in12_tap7 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 36-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x30 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 35,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in13_coeffs
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in13_coeffs is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff : out std_logic_vector( 144-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in13_coeffs;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in13_coeffs is 
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 144-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret4_output_port_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal reinterpret5_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret6_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret7_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret8_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal rom1_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay1_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom2_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay2_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom3_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay3_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom4_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay4_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom5_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay5_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom6_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay6_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom7_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay7_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom8_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay8_q_net : std_logic_vector( 5-1 downto 0 );
begin
  dout <= delay1_q_net;
  coeff <= register_q_net;
  reinterpret4_output_port_net <= din;
  slice_y_net <= sync;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_3b7fef6a01 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net_x0,
    in4 => reinterpret5_output_port_net,
    in5 => reinterpret6_output_port_net,
    in6 => reinterpret7_output_port_net,
    in7 => reinterpret8_output_port_net,
    y => concat_y_net
  );
  counter : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_256c_16i_8b_core_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 5
  )
  port map (
    en => "1",
    clr => '0',
    rst => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => reinterpret4_output_port_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  rom1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_63cd24_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
  rom2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_bae2d2_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom2_data_net
  );
  rom3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_124a7a_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom3_data_net
  );
  rom4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_05c091_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom4_data_net
  );
  rom5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_df3891_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom5_data_net
  );
  rom6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_19d739_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom6_data_net
  );
  rom7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_4d48c2_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay7_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom7_data_net
  );
  rom8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_4051df_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay8_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom8_data_net
  );
  register_x0 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlregister 
  generic map (
    d_width => 144,
    init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom1_data_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom2_data_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom3_data_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom4_data_net,
    output_port => reinterpret4_output_port_net_x0
  );
  reinterpret5 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom5_data_net,
    output_port => reinterpret5_output_port_net
  );
  reinterpret6 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom6_data_net,
    output_port => reinterpret6_output_port_net
  );
  reinterpret7 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom7_data_net,
    output_port => reinterpret7_output_port_net
  );
  reinterpret8 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom8_data_net,
    output_port => reinterpret8_output_port_net
  );
  fan_delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay1_q_net
  );
  fan_delay2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay2_q_net
  );
  fan_delay3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay3_q_net
  );
  fan_delay4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay4_q_net
  );
  fan_delay5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay5_q_net
  );
  fan_delay6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay6_q_net
  );
  fan_delay7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay7_q_net
  );
  fan_delay8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay8_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in13_first_tap/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x28 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x28;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x28 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  delay1_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => delay1_q_net,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in13_first_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in13_first_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeffs : in std_logic_vector( 144-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 126-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in13_first_tap;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in13_first_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 126-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net;
  coeff_out <= slice1_y_net;
  taps_out <= mult_p_net;
  delay1_q_net <= din;
  delay_q_net <= sync;
  register_q_net <= coeffs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x28 
  port map (
    din => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret2_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 144,
    y_width => 18
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 143,
    x_width => 144,
    y_width => 126
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in13_last_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in13_last_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tap_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in13_last_tap;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in13_last_tap is 
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  tap_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in13_tap2/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x31 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x31;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x31 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in13_tap2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in13_tap2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 126-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 108-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in13_tap2;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in13_tap2 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 108-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 126-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x31 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 126,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 125,
    x_width => 126,
    y_width => 108
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in13_tap3/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x32 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x32;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x32 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in13_tap3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in13_tap3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 108-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 90-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in13_tap3;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in13_tap3 is 
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 90-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 108-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x32 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 108,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 107,
    x_width => 108,
    y_width => 90
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in13_tap4/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x23 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x23;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x23 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in13_tap4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in13_tap4 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 90-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 72-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in13_tap4;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in13_tap4 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 72-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 90-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x23 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 90,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 89,
    x_width => 90,
    y_width => 72
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in13_tap5/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x24 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x24;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x24 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in13_tap5
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in13_tap5 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 72-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 54-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in13_tap5;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in13_tap5 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 54-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 72-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x24 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 72,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 71,
    x_width => 72,
    y_width => 54
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in13_tap6/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x25 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x25;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x25 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in13_tap6
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in13_tap6 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 54-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 36-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in13_tap6;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in13_tap6 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x25 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 54,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 53,
    x_width => 54,
    y_width => 36
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in13_tap7/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x22 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x22;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x22 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in13_tap7
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in13_tap7 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 36-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 18-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in13_tap7;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in13_tap7 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 36-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x22 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 35,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in14_coeffs
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in14_coeffs is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff : out std_logic_vector( 144-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in14_coeffs;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in14_coeffs is 
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 144-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret5_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret6_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret7_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret8_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal rom1_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay1_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom2_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay2_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom3_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay3_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom4_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay4_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom5_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay5_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom6_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay6_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom7_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay7_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom8_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay8_q_net : std_logic_vector( 5-1 downto 0 );
begin
  dout <= delay1_q_net;
  coeff <= register_q_net;
  reinterpret3_output_port_net <= din;
  slice_y_net <= sync;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_3b7fef6a01 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net_x0,
    in3 => reinterpret4_output_port_net,
    in4 => reinterpret5_output_port_net,
    in5 => reinterpret6_output_port_net,
    in6 => reinterpret7_output_port_net,
    in7 => reinterpret8_output_port_net,
    y => concat_y_net
  );
  counter : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_256c_16i_8b_core_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 5
  )
  port map (
    en => "1",
    clr => '0',
    rst => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => reinterpret3_output_port_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  rom1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_a04393_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
  rom2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_0a7b32_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom2_data_net
  );
  rom3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_9d16b2_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom3_data_net
  );
  rom4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_479fc0_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom4_data_net
  );
  rom5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_7dc93d_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom5_data_net
  );
  rom6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_d1fb8f_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom6_data_net
  );
  rom7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_1995e4_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay7_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom7_data_net
  );
  rom8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_28f8fc_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay8_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom8_data_net
  );
  register_x0 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlregister 
  generic map (
    d_width => 144,
    init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom1_data_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom2_data_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom3_data_net,
    output_port => reinterpret3_output_port_net_x0
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom4_data_net,
    output_port => reinterpret4_output_port_net
  );
  reinterpret5 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom5_data_net,
    output_port => reinterpret5_output_port_net
  );
  reinterpret6 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom6_data_net,
    output_port => reinterpret6_output_port_net
  );
  reinterpret7 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom7_data_net,
    output_port => reinterpret7_output_port_net
  );
  reinterpret8 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom8_data_net,
    output_port => reinterpret8_output_port_net
  );
  fan_delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay1_q_net
  );
  fan_delay2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay2_q_net
  );
  fan_delay3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay3_q_net
  );
  fan_delay4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay4_q_net
  );
  fan_delay5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay5_q_net
  );
  fan_delay6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay6_q_net
  );
  fan_delay7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay7_q_net
  );
  fan_delay8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay8_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in14_first_tap/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x26 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x26;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x26 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  delay1_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => delay1_q_net,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in14_first_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in14_first_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeffs : in std_logic_vector( 144-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 126-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in14_first_tap;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in14_first_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 126-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net;
  coeff_out <= slice1_y_net;
  taps_out <= mult_p_net;
  delay1_q_net <= din;
  delay_q_net <= sync;
  register_q_net <= coeffs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x26 
  port map (
    din => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret2_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 144,
    y_width => 18
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 143,
    x_width => 144,
    y_width => 126
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in14_last_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in14_last_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tap_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in14_last_tap;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in14_last_tap is 
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  tap_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in14_tap2/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x27 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x27;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x27 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in14_tap2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in14_tap2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 126-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 108-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in14_tap2;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in14_tap2 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 108-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 126-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x27 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 126,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 125,
    x_width => 126,
    y_width => 108
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in14_tap3/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x40 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x40;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x40 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in14_tap3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in14_tap3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 108-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 90-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in14_tap3;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in14_tap3 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 90-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 108-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x40 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 108,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 107,
    x_width => 108,
    y_width => 90
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in14_tap4/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x41 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x41;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x41 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in14_tap4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in14_tap4 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 90-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 72-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in14_tap4;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in14_tap4 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 72-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 90-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x41 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 90,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 89,
    x_width => 90,
    y_width => 72
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in14_tap5/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x42 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x42;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x42 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in14_tap5
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in14_tap5 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 72-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 54-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in14_tap5;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in14_tap5 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 54-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 72-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x42 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 72,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 71,
    x_width => 72,
    y_width => 54
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in14_tap6/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x39 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x39;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x39 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in14_tap6
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in14_tap6 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 54-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 36-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in14_tap6;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in14_tap6 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x39 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 54,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 53,
    x_width => 54,
    y_width => 36
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in14_tap7/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x44 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x44;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x44 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in14_tap7
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in14_tap7 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 36-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 18-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in14_tap7;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in14_tap7 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 36-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x44 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 35,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in15_coeffs
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in15_coeffs is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff : out std_logic_vector( 144-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in15_coeffs;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in15_coeffs is 
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 144-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret5_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret6_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret7_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret8_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal rom1_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay1_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom2_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay2_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom3_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay3_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom4_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay4_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom5_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay5_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom6_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay6_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom7_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay7_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom8_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay8_q_net : std_logic_vector( 5-1 downto 0 );
begin
  dout <= delay1_q_net;
  coeff <= register_q_net;
  reinterpret2_output_port_net <= din;
  slice_y_net <= sync;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_3b7fef6a01 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net_x0,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    in4 => reinterpret5_output_port_net,
    in5 => reinterpret6_output_port_net,
    in6 => reinterpret7_output_port_net,
    in7 => reinterpret8_output_port_net,
    y => concat_y_net
  );
  counter : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_256c_16i_8b_core_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 5
  )
  port map (
    en => "1",
    clr => '0',
    rst => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => reinterpret2_output_port_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  rom1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_b5d988_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
  rom2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_867d31_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom2_data_net
  );
  rom3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_0b6aa0_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom3_data_net
  );
  rom4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_c0e043_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom4_data_net
  );
  rom5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_520a7c_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom5_data_net
  );
  rom6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_82dc70_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom6_data_net
  );
  rom7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_9c4a48_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay7_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom7_data_net
  );
  rom8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_efa7c8_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay8_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom8_data_net
  );
  register_x0 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlregister 
  generic map (
    d_width => 144,
    init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom1_data_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom2_data_net,
    output_port => reinterpret2_output_port_net_x0
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom3_data_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom4_data_net,
    output_port => reinterpret4_output_port_net
  );
  reinterpret5 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom5_data_net,
    output_port => reinterpret5_output_port_net
  );
  reinterpret6 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom6_data_net,
    output_port => reinterpret6_output_port_net
  );
  reinterpret7 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom7_data_net,
    output_port => reinterpret7_output_port_net
  );
  reinterpret8 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom8_data_net,
    output_port => reinterpret8_output_port_net
  );
  fan_delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay1_q_net
  );
  fan_delay2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay2_q_net
  );
  fan_delay3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay3_q_net
  );
  fan_delay4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay4_q_net
  );
  fan_delay5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay5_q_net
  );
  fan_delay6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay6_q_net
  );
  fan_delay7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay7_q_net
  );
  fan_delay8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay8_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in15_first_tap/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x45 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x45;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x45 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  delay1_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => delay1_q_net,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in15_first_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in15_first_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeffs : in std_logic_vector( 144-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 126-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in15_first_tap;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in15_first_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 126-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net;
  coeff_out <= slice1_y_net;
  taps_out <= mult_p_net;
  delay1_q_net <= din;
  delay_q_net <= sync;
  register_q_net <= coeffs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x45 
  port map (
    din => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret2_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 144,
    y_width => 18
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 143,
    x_width => 144,
    y_width => 126
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in15_last_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in15_last_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tap_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in15_last_tap;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in15_last_tap is 
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  tap_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in15_tap2/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x33 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x33;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x33 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in15_tap2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in15_tap2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 126-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 108-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in15_tap2;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in15_tap2 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 108-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 126-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x33 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 126,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 125,
    x_width => 126,
    y_width => 108
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in15_tap3/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x34 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x34;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x34 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in15_tap3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in15_tap3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 108-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 90-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in15_tap3;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in15_tap3 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 90-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 108-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x34 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 108,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 107,
    x_width => 108,
    y_width => 90
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in15_tap4/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x35 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x35;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x35 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in15_tap4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in15_tap4 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 90-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 72-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in15_tap4;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in15_tap4 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 72-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 90-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x35 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 90,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 89,
    x_width => 90,
    y_width => 72
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in15_tap5/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x36 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x36;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x36 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in15_tap5
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in15_tap5 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 72-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 54-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in15_tap5;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in15_tap5 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 54-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 72-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x36 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 72,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 71,
    x_width => 72,
    y_width => 54
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in15_tap6/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x37 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x37;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x37 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in15_tap6
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in15_tap6 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 54-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 36-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in15_tap6;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in15_tap6 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x37 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 54,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 53,
    x_width => 54,
    y_width => 36
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in15_tap7/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x38 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x38;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x38 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in15_tap7
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in15_tap7 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 36-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 18-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in15_tap7;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in15_tap7 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 36-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x38 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 35,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in16_coeffs
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in16_coeffs is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff : out std_logic_vector( 144-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in16_coeffs;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in16_coeffs is 
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 144-1 downto 0 );
  signal reinterpret1_output_port_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret5_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret6_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret7_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret8_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal rom1_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay1_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom2_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay2_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom3_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay3_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom4_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay4_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom5_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay5_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom6_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay6_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom7_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay7_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom8_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay8_q_net : std_logic_vector( 5-1 downto 0 );
begin
  dout <= delay1_q_net;
  coeff <= register_q_net;
  reinterpret1_output_port_net <= din;
  slice_y_net <= sync;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_3b7fef6a01 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net_x0,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    in4 => reinterpret5_output_port_net,
    in5 => reinterpret6_output_port_net,
    in6 => reinterpret7_output_port_net,
    in7 => reinterpret8_output_port_net,
    y => concat_y_net
  );
  counter : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_256c_16i_8b_core_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 5
  )
  port map (
    en => "1",
    clr => '0',
    rst => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => reinterpret1_output_port_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  rom1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_e0bca9_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
  rom2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_e01bfb_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom2_data_net
  );
  rom3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_7c96c0_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom3_data_net
  );
  rom4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_8cd560_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom4_data_net
  );
  rom5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_58060f_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom5_data_net
  );
  rom6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_3af334_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom6_data_net
  );
  rom7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_65df9d_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay7_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom7_data_net
  );
  rom8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_ab316a_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay8_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom8_data_net
  );
  register_x0 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlregister 
  generic map (
    d_width => 144,
    init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom1_data_net,
    output_port => reinterpret1_output_port_net_x0
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom2_data_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom3_data_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom4_data_net,
    output_port => reinterpret4_output_port_net
  );
  reinterpret5 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom5_data_net,
    output_port => reinterpret5_output_port_net
  );
  reinterpret6 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom6_data_net,
    output_port => reinterpret6_output_port_net
  );
  reinterpret7 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom7_data_net,
    output_port => reinterpret7_output_port_net
  );
  reinterpret8 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom8_data_net,
    output_port => reinterpret8_output_port_net
  );
  fan_delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay1_q_net
  );
  fan_delay2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay2_q_net
  );
  fan_delay3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay3_q_net
  );
  fan_delay4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay4_q_net
  );
  fan_delay5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay5_q_net
  );
  fan_delay6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay6_q_net
  );
  fan_delay7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay7_q_net
  );
  fan_delay8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay8_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in16_first_tap/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x94 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x94;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x94 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  delay1_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => delay1_q_net,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in16_first_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in16_first_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeffs : in std_logic_vector( 144-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 126-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in16_first_tap;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in16_first_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 126-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net;
  coeff_out <= slice1_y_net;
  taps_out <= mult_p_net;
  delay1_q_net <= din;
  delay_q_net <= sync;
  register_q_net <= coeffs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x94 
  port map (
    din => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret2_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 144,
    y_width => 18
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 143,
    x_width => 144,
    y_width => 126
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in16_last_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in16_last_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tap_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in16_last_tap;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in16_last_tap is 
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  tap_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in16_tap2/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x95 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x95;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x95 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in16_tap2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in16_tap2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 126-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 108-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in16_tap2;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in16_tap2 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 108-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 126-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x95 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 126,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 125,
    x_width => 126,
    y_width => 108
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in16_tap3/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x96 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x96;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x96 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in16_tap3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in16_tap3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 108-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 90-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in16_tap3;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in16_tap3 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 90-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 108-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x96 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 108,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 107,
    x_width => 108,
    y_width => 90
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in16_tap4/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x97 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x97;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x97 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in16_tap4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in16_tap4 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 90-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 72-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in16_tap4;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in16_tap4 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 72-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 90-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x97 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 90,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 89,
    x_width => 90,
    y_width => 72
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in16_tap5/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x98 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x98;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x98 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in16_tap5
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in16_tap5 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 72-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 54-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in16_tap5;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in16_tap5 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 54-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 72-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x98 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 72,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 71,
    x_width => 72,
    y_width => 54
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in16_tap6/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x99 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x99;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x99 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in16_tap6
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in16_tap6 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 54-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 36-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in16_tap6;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in16_tap6 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x99 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 54,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 53,
    x_width => 54,
    y_width => 36
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in16_tap7/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x89 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x89;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x89 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in16_tap7
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in16_tap7 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 36-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 18-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in16_tap7;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in16_tap7 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 36-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x89 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 35,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in1_coeffs
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in1_coeffs is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    sync_out : out std_logic_vector( 1-1 downto 0 );
    coeff : out std_logic_vector( 144-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in1_coeffs;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in1_coeffs is 
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal reinterpret16_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 144-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret5_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret6_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret7_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret8_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal rom1_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay1_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom2_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay2_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom3_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay3_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom4_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay4_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom5_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay5_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom6_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay6_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom7_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay7_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom8_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay8_q_net : std_logic_vector( 5-1 downto 0 );
begin
  dout <= delay1_q_net;
  sync_out <= delay_q_net;
  coeff <= register_q_net;
  reinterpret16_output_port_net <= din;
  slice_y_net <= sync;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_3b7fef6a01 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    in4 => reinterpret5_output_port_net,
    in5 => reinterpret6_output_port_net,
    in6 => reinterpret7_output_port_net,
    in7 => reinterpret8_output_port_net,
    y => concat_y_net
  );
  counter : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_256c_16i_8b_core_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 5
  )
  port map (
    en => "1",
    clr => '0',
    rst => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => reinterpret16_output_port_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  rom1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_6ba35a_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
  rom2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_8c5c9e_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom2_data_net
  );
  rom3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_ddcca3_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom3_data_net
  );
  rom4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_e0253f_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom4_data_net
  );
  rom5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_77a0b4_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom5_data_net
  );
  rom6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_2d9591_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom6_data_net
  );
  rom7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_132106_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay7_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom7_data_net
  );
  rom8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_71161b_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay8_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom8_data_net
  );
  register_x0 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlregister 
  generic map (
    d_width => 144,
    init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom1_data_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom2_data_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom3_data_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom4_data_net,
    output_port => reinterpret4_output_port_net
  );
  reinterpret5 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom5_data_net,
    output_port => reinterpret5_output_port_net
  );
  reinterpret6 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom6_data_net,
    output_port => reinterpret6_output_port_net
  );
  reinterpret7 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom7_data_net,
    output_port => reinterpret7_output_port_net
  );
  reinterpret8 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom8_data_net,
    output_port => reinterpret8_output_port_net
  );
  fan_delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay1_q_net
  );
  fan_delay2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay2_q_net
  );
  fan_delay3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay3_q_net
  );
  fan_delay4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay4_q_net
  );
  fan_delay5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay5_q_net
  );
  fan_delay6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay6_q_net
  );
  fan_delay7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay7_q_net
  );
  fan_delay8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay8_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in1_first_tap/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x90 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x90;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x90 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  delay1_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => delay1_q_net,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in1_first_tap/sync_delay
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_sync_delay is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_sync_delay;
architecture structural of pfb_fir_256c_16i_8b_core_sync_delay is 
  signal mux_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 6-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 6-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 6-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 6-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out_x0 <= mux_y_net;
  delay_q_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_96be2585a2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_8d85da1be7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_ddc440565a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  counter : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_256c_16i_8b_core_c_counter_binary_v12_0_i1",
    op_arith => xlUnsigned,
    op_width => 6
  )
  port map (
    rst => "0",
    clr => '0',
    load => delay_q_net,
    din => constant2_op_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_bb62791411 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => delay_q_net,
    d1 => relational1_op_net,
    y => logical_y_net
  );
  mux : entity xil_defaultlib.sysgen_mux_9725989954 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => constant3_op_net,
    d0 => delay_q_net,
    d1 => relational_op_net,
    y => mux_y_net
  );
  relational : entity xil_defaultlib.sysgen_relational_843337a7df 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => constant_op_net,
    b => counter_op_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_0c58fc802a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => counter_op_net,
    b => constant1_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in1_first_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in1_first_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeffs : in std_logic_vector( 144-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    sync_out : out std_logic_vector( 1-1 downto 0 );
    coeff_out : out std_logic_vector( 126-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in1_first_tap;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in1_first_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 126-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net;
  sync_out <= mux_y_net;
  coeff_out <= slice1_y_net;
  taps_out <= mult_p_net;
  delay1_q_net <= din;
  delay_q_net <= sync;
  register_q_net <= coeffs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x90 
  port map (
    din => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net
  );
  sync_delay_x104 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_sync_delay 
  port map (
    in_x0 => delay_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => mux_y_net
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret2_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 144,
    y_width => 18
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 143,
    x_width => 144,
    y_width => 126
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in1_last_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in1_last_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeff : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tap_out : out std_logic_vector( 26-1 downto 0 );
    sync_out : out std_logic_vector( 1-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in1_last_tap;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in1_last_tap is 
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  tap_out <= mult_p_net;
  sync_out <= delay_q_net;
  d1_q_net <= din;
  mux_y_net <= sync;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => mux_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in1_tap2/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x88 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x88;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x88 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in1_tap2/sync_delay
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_sync_delay_x0 is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_sync_delay_x0;
architecture structural of pfb_fir_256c_16i_8b_core_sync_delay_x0 is 
  signal mux_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal mux_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 6-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 6-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 6-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 6-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out_x0 <= mux_y_net_x0;
  mux_y_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_96be2585a2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_8d85da1be7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_ddc440565a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  counter : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_256c_16i_8b_core_c_counter_binary_v12_0_i1",
    op_arith => xlUnsigned,
    op_width => 6
  )
  port map (
    rst => "0",
    clr => '0',
    load => mux_y_net,
    din => constant2_op_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_bb62791411 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => mux_y_net,
    d1 => relational1_op_net,
    y => logical_y_net
  );
  mux : entity xil_defaultlib.sysgen_mux_9725989954 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => constant3_op_net,
    d0 => mux_y_net,
    d1 => relational_op_net,
    y => mux_y_net_x0
  );
  relational : entity xil_defaultlib.sysgen_relational_843337a7df 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => constant_op_net,
    b => counter_op_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_0c58fc802a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => counter_op_net,
    b => constant1_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in1_tap2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in1_tap2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeff : in std_logic_vector( 126-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    sync_out : out std_logic_vector( 1-1 downto 0 );
    coeff_out : out std_logic_vector( 108-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in1_tap2;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in1_tap2 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 108-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 126-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  sync_out <= mux_y_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  mux_y_net <= sync;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x88 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  sync_delay_x104 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_sync_delay_x0 
  port map (
    in_x0 => mux_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => mux_y_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 126,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 125,
    x_width => 126,
    y_width => 108
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in1_tap3/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x91 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x91;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x91 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in1_tap3/sync_delay
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_sync_delay_x1 is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_sync_delay_x1;
architecture structural of pfb_fir_256c_16i_8b_core_sync_delay_x1 is 
  signal mux_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal mux_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 6-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 6-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 6-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 6-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out_x0 <= mux_y_net_x0;
  mux_y_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_96be2585a2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_8d85da1be7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_ddc440565a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  counter : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_256c_16i_8b_core_c_counter_binary_v12_0_i1",
    op_arith => xlUnsigned,
    op_width => 6
  )
  port map (
    rst => "0",
    clr => '0',
    load => mux_y_net,
    din => constant2_op_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_bb62791411 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => mux_y_net,
    d1 => relational1_op_net,
    y => logical_y_net
  );
  mux : entity xil_defaultlib.sysgen_mux_9725989954 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => constant3_op_net,
    d0 => mux_y_net,
    d1 => relational_op_net,
    y => mux_y_net_x0
  );
  relational : entity xil_defaultlib.sysgen_relational_843337a7df 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => constant_op_net,
    b => counter_op_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_0c58fc802a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => counter_op_net,
    b => constant1_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in1_tap3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in1_tap3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeff : in std_logic_vector( 108-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    sync_out : out std_logic_vector( 1-1 downto 0 );
    coeff_out : out std_logic_vector( 90-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in1_tap3;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in1_tap3 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 90-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 108-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  sync_out <= mux_y_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  mux_y_net <= sync;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x91 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  sync_delay_x104 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_sync_delay_x1 
  port map (
    in_x0 => mux_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => mux_y_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 108,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 107,
    x_width => 108,
    y_width => 90
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in1_tap4/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x92 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x92;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x92 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in1_tap4/sync_delay
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_sync_delay_x2 is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_sync_delay_x2;
architecture structural of pfb_fir_256c_16i_8b_core_sync_delay_x2 is 
  signal mux_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal mux_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 6-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 6-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 6-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 6-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out_x0 <= mux_y_net_x0;
  mux_y_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_96be2585a2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_8d85da1be7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_ddc440565a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  counter : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_256c_16i_8b_core_c_counter_binary_v12_0_i1",
    op_arith => xlUnsigned,
    op_width => 6
  )
  port map (
    rst => "0",
    clr => '0',
    load => mux_y_net,
    din => constant2_op_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_bb62791411 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => mux_y_net,
    d1 => relational1_op_net,
    y => logical_y_net
  );
  mux : entity xil_defaultlib.sysgen_mux_9725989954 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => constant3_op_net,
    d0 => mux_y_net,
    d1 => relational_op_net,
    y => mux_y_net_x0
  );
  relational : entity xil_defaultlib.sysgen_relational_843337a7df 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => constant_op_net,
    b => counter_op_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_0c58fc802a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => counter_op_net,
    b => constant1_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in1_tap4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in1_tap4 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeff : in std_logic_vector( 90-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    sync_out : out std_logic_vector( 1-1 downto 0 );
    coeff_out : out std_logic_vector( 72-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in1_tap4;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in1_tap4 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 72-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 90-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  sync_out <= mux_y_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  mux_y_net <= sync;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x92 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  sync_delay_x104 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_sync_delay_x2 
  port map (
    in_x0 => mux_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => mux_y_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 90,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 89,
    x_width => 90,
    y_width => 72
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in1_tap5/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x93 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x93;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x93 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in1_tap5/sync_delay
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_sync_delay_x3 is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_sync_delay_x3;
architecture structural of pfb_fir_256c_16i_8b_core_sync_delay_x3 is 
  signal mux_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal mux_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 6-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 6-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 6-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 6-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out_x0 <= mux_y_net_x0;
  mux_y_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_96be2585a2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_8d85da1be7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_ddc440565a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  counter : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_256c_16i_8b_core_c_counter_binary_v12_0_i1",
    op_arith => xlUnsigned,
    op_width => 6
  )
  port map (
    rst => "0",
    clr => '0',
    load => mux_y_net,
    din => constant2_op_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_bb62791411 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => mux_y_net,
    d1 => relational1_op_net,
    y => logical_y_net
  );
  mux : entity xil_defaultlib.sysgen_mux_9725989954 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => constant3_op_net,
    d0 => mux_y_net,
    d1 => relational_op_net,
    y => mux_y_net_x0
  );
  relational : entity xil_defaultlib.sysgen_relational_843337a7df 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => constant_op_net,
    b => counter_op_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_0c58fc802a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => counter_op_net,
    b => constant1_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in1_tap5
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in1_tap5 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeff : in std_logic_vector( 72-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    sync_out : out std_logic_vector( 1-1 downto 0 );
    coeff_out : out std_logic_vector( 54-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in1_tap5;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in1_tap5 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 54-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 72-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  sync_out <= mux_y_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  mux_y_net <= sync;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x93 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  sync_delay_x104 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_sync_delay_x3 
  port map (
    in_x0 => mux_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => mux_y_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 72,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 71,
    x_width => 72,
    y_width => 54
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in1_tap6/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x105 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x105;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x105 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in1_tap6/sync_delay
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_sync_delay_x4 is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_sync_delay_x4;
architecture structural of pfb_fir_256c_16i_8b_core_sync_delay_x4 is 
  signal mux_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal mux_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 6-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 6-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 6-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 6-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out_x0 <= mux_y_net_x0;
  mux_y_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_96be2585a2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_8d85da1be7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_ddc440565a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  counter : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_256c_16i_8b_core_c_counter_binary_v12_0_i1",
    op_arith => xlUnsigned,
    op_width => 6
  )
  port map (
    rst => "0",
    clr => '0',
    load => mux_y_net,
    din => constant2_op_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_bb62791411 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => mux_y_net,
    d1 => relational1_op_net,
    y => logical_y_net
  );
  mux : entity xil_defaultlib.sysgen_mux_9725989954 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => constant3_op_net,
    d0 => mux_y_net,
    d1 => relational_op_net,
    y => mux_y_net_x0
  );
  relational : entity xil_defaultlib.sysgen_relational_843337a7df 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => constant_op_net,
    b => counter_op_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_0c58fc802a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => counter_op_net,
    b => constant1_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in1_tap6
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in1_tap6 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeff : in std_logic_vector( 54-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    sync_out : out std_logic_vector( 1-1 downto 0 );
    coeff_out : out std_logic_vector( 36-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in1_tap6;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in1_tap6 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  sync_out <= mux_y_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  mux_y_net <= sync;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x105 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  sync_delay_x104 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_sync_delay_x4 
  port map (
    in_x0 => mux_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => mux_y_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 54,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 53,
    x_width => 54,
    y_width => 36
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in1_tap7/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x106 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x106;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x106 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in1_tap7/sync_delay
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_sync_delay_x5 is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_sync_delay_x5;
architecture structural of pfb_fir_256c_16i_8b_core_sync_delay_x5 is 
  signal mux_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal mux_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 6-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 6-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 6-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 6-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out_x0 <= mux_y_net_x0;
  mux_y_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_96be2585a2 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_8d85da1be7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_ddc440565a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  counter : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_256c_16i_8b_core_c_counter_binary_v12_0_i1",
    op_arith => xlUnsigned,
    op_width => 6
  )
  port map (
    rst => "0",
    clr => '0',
    load => mux_y_net,
    din => constant2_op_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_bb62791411 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => mux_y_net,
    d1 => relational1_op_net,
    y => logical_y_net
  );
  mux : entity xil_defaultlib.sysgen_mux_9725989954 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => constant3_op_net,
    d0 => mux_y_net,
    d1 => relational_op_net,
    y => mux_y_net_x0
  );
  relational : entity xil_defaultlib.sysgen_relational_843337a7df 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => constant_op_net,
    b => counter_op_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_0c58fc802a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => counter_op_net,
    b => constant1_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in1_tap7
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in1_tap7 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeff : in std_logic_vector( 36-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    sync_out : out std_logic_vector( 1-1 downto 0 );
    coeff_out : out std_logic_vector( 18-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in1_tap7;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in1_tap7 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 36-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  sync_out <= mux_y_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  mux_y_net <= sync;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x106 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  sync_delay_x104 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_sync_delay_x5 
  port map (
    in_x0 => mux_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => mux_y_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 35,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in2_coeffs
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in2_coeffs is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff : out std_logic_vector( 144-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in2_coeffs;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in2_coeffs is 
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal reinterpret15_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 144-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret5_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret6_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret7_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret8_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal rom1_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay1_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom2_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay2_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom3_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay3_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom4_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay4_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom5_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay5_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom6_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay6_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom7_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay7_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom8_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay8_q_net : std_logic_vector( 5-1 downto 0 );
begin
  dout <= delay1_q_net;
  coeff <= register_q_net;
  reinterpret15_output_port_net <= din;
  slice_y_net <= sync;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_3b7fef6a01 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    in4 => reinterpret5_output_port_net,
    in5 => reinterpret6_output_port_net,
    in6 => reinterpret7_output_port_net,
    in7 => reinterpret8_output_port_net,
    y => concat_y_net
  );
  counter : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_256c_16i_8b_core_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 5
  )
  port map (
    en => "1",
    clr => '0',
    rst => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => reinterpret15_output_port_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  rom1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_ca6d92_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
  rom2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_1c8d65_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom2_data_net
  );
  rom3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_bc9d58_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom3_data_net
  );
  rom4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_730828_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom4_data_net
  );
  rom5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_da6d4a_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom5_data_net
  );
  rom6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_1a1bd1_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom6_data_net
  );
  rom7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_41ae99_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay7_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom7_data_net
  );
  rom8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_cfb61b_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay8_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom8_data_net
  );
  register_x0 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlregister 
  generic map (
    d_width => 144,
    init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom1_data_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom2_data_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom3_data_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom4_data_net,
    output_port => reinterpret4_output_port_net
  );
  reinterpret5 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom5_data_net,
    output_port => reinterpret5_output_port_net
  );
  reinterpret6 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom6_data_net,
    output_port => reinterpret6_output_port_net
  );
  reinterpret7 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom7_data_net,
    output_port => reinterpret7_output_port_net
  );
  reinterpret8 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom8_data_net,
    output_port => reinterpret8_output_port_net
  );
  fan_delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay1_q_net
  );
  fan_delay2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay2_q_net
  );
  fan_delay3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay3_q_net
  );
  fan_delay4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay4_q_net
  );
  fan_delay5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay5_q_net
  );
  fan_delay6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay6_q_net
  );
  fan_delay7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay7_q_net
  );
  fan_delay8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay8_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in2_first_tap/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x107 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x107;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x107 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  delay1_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => delay1_q_net,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in2_first_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in2_first_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeffs : in std_logic_vector( 144-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 126-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in2_first_tap;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in2_first_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 126-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net;
  coeff_out <= slice1_y_net;
  taps_out <= mult_p_net;
  delay1_q_net <= din;
  delay_q_net <= sync;
  register_q_net <= coeffs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x107 
  port map (
    din => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret2_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 144,
    y_width => 18
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 143,
    x_width => 144,
    y_width => 126
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in2_last_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in2_last_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tap_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in2_last_tap;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in2_last_tap is 
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  tap_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in2_tap2/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x108 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x108;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x108 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in2_tap2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in2_tap2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 126-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 108-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in2_tap2;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in2_tap2 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 108-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 126-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x108 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 126,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 125,
    x_width => 126,
    y_width => 108
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in2_tap3/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x109 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x109;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x109 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in2_tap3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in2_tap3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 108-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 90-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in2_tap3;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in2_tap3 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 90-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 108-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x109 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 108,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 107,
    x_width => 108,
    y_width => 90
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in2_tap4/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x110 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x110;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x110 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in2_tap4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in2_tap4 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 90-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 72-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in2_tap4;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in2_tap4 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 72-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 90-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x110 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 90,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 89,
    x_width => 90,
    y_width => 72
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in2_tap5/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x100 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x100;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x100 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in2_tap5
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in2_tap5 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 72-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 54-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in2_tap5;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in2_tap5 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 54-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 72-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x100 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 72,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 71,
    x_width => 72,
    y_width => 54
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in2_tap6/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x101 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x101;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x101 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in2_tap6
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in2_tap6 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 54-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 36-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in2_tap6;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in2_tap6 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x101 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 54,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 53,
    x_width => 54,
    y_width => 36
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in2_tap7/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x102 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x102;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x102 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in2_tap7
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in2_tap7 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 36-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 18-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in2_tap7;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in2_tap7 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 36-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x102 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 35,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in3_coeffs
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in3_coeffs is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff : out std_logic_vector( 144-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in3_coeffs;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in3_coeffs is 
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal reinterpret14_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 144-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret5_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret6_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret7_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret8_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal rom1_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay1_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom2_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay2_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom3_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay3_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom4_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay4_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom5_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay5_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom6_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay6_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom7_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay7_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom8_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay8_q_net : std_logic_vector( 5-1 downto 0 );
begin
  dout <= delay1_q_net;
  coeff <= register_q_net;
  reinterpret14_output_port_net <= din;
  slice_y_net <= sync;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_3b7fef6a01 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    in4 => reinterpret5_output_port_net,
    in5 => reinterpret6_output_port_net,
    in6 => reinterpret7_output_port_net,
    in7 => reinterpret8_output_port_net,
    y => concat_y_net
  );
  counter : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_256c_16i_8b_core_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 5
  )
  port map (
    en => "1",
    clr => '0',
    rst => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => reinterpret14_output_port_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  rom1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_42951f_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
  rom2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_43595c_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom2_data_net
  );
  rom3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_7d07e5_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom3_data_net
  );
  rom4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_8376e0_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom4_data_net
  );
  rom5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_23df68_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom5_data_net
  );
  rom6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_bc22ed_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom6_data_net
  );
  rom7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_a9e075_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay7_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom7_data_net
  );
  rom8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_762a18_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay8_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom8_data_net
  );
  register_x0 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlregister 
  generic map (
    d_width => 144,
    init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom1_data_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom2_data_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom3_data_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom4_data_net,
    output_port => reinterpret4_output_port_net
  );
  reinterpret5 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom5_data_net,
    output_port => reinterpret5_output_port_net
  );
  reinterpret6 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom6_data_net,
    output_port => reinterpret6_output_port_net
  );
  reinterpret7 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom7_data_net,
    output_port => reinterpret7_output_port_net
  );
  reinterpret8 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom8_data_net,
    output_port => reinterpret8_output_port_net
  );
  fan_delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay1_q_net
  );
  fan_delay2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay2_q_net
  );
  fan_delay3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay3_q_net
  );
  fan_delay4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay4_q_net
  );
  fan_delay5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay5_q_net
  );
  fan_delay6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay6_q_net
  );
  fan_delay7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay7_q_net
  );
  fan_delay8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay8_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in3_first_tap/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x103 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x103;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x103 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  delay1_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => delay1_q_net,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in3_first_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in3_first_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeffs : in std_logic_vector( 144-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 126-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in3_first_tap;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in3_first_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 126-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net;
  coeff_out <= slice1_y_net;
  taps_out <= mult_p_net;
  delay1_q_net <= din;
  delay_q_net <= sync;
  register_q_net <= coeffs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x103 
  port map (
    din => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret2_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 144,
    y_width => 18
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 143,
    x_width => 144,
    y_width => 126
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in3_last_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in3_last_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tap_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in3_last_tap;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in3_last_tap is 
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  tap_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in3_tap2/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x104 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x104;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x104 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in3_tap2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in3_tap2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 126-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 108-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in3_tap2;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in3_tap2 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 108-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 126-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x104 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 126,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 125,
    x_width => 126,
    y_width => 108
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in3_tap3/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x72 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x72;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x72 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in3_tap3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in3_tap3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 108-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 90-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in3_tap3;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in3_tap3 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 90-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 108-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x72 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 108,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 107,
    x_width => 108,
    y_width => 90
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in3_tap4/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x73 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x73;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x73 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in3_tap4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in3_tap4 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 90-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 72-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in3_tap4;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in3_tap4 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 72-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 90-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x73 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 90,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 89,
    x_width => 90,
    y_width => 72
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in3_tap5/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x74 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x74;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x74 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in3_tap5
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in3_tap5 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 72-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 54-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in3_tap5;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in3_tap5 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 54-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 72-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x74 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 72,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 71,
    x_width => 72,
    y_width => 54
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in3_tap6/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x71 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x71;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x71 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in3_tap6
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in3_tap6 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 54-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 36-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in3_tap6;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in3_tap6 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x71 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 54,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 53,
    x_width => 54,
    y_width => 36
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in3_tap7/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x75 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x75;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x75 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in3_tap7
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in3_tap7 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 36-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 18-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in3_tap7;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in3_tap7 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 36-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x75 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 35,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in4_coeffs
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in4_coeffs is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff : out std_logic_vector( 144-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in4_coeffs;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in4_coeffs is 
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal reinterpret13_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 144-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret5_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret6_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret7_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret8_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal rom1_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay1_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom2_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay2_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom3_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay3_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom4_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay4_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom5_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay5_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom6_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay6_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom7_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay7_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom8_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay8_q_net : std_logic_vector( 5-1 downto 0 );
begin
  dout <= delay1_q_net;
  coeff <= register_q_net;
  reinterpret13_output_port_net <= din;
  slice_y_net <= sync;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_3b7fef6a01 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    in4 => reinterpret5_output_port_net,
    in5 => reinterpret6_output_port_net,
    in6 => reinterpret7_output_port_net,
    in7 => reinterpret8_output_port_net,
    y => concat_y_net
  );
  counter : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_256c_16i_8b_core_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 5
  )
  port map (
    en => "1",
    clr => '0',
    rst => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => reinterpret13_output_port_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  rom1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_eda9ac_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
  rom2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_42af70_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom2_data_net
  );
  rom3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_bcaa2f_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom3_data_net
  );
  rom4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_b815dc_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom4_data_net
  );
  rom5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_0ae16a_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom5_data_net
  );
  rom6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_1f3733_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom6_data_net
  );
  rom7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_fc6714_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay7_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom7_data_net
  );
  rom8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_00368c_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay8_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom8_data_net
  );
  register_x0 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlregister 
  generic map (
    d_width => 144,
    init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom1_data_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom2_data_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom3_data_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom4_data_net,
    output_port => reinterpret4_output_port_net
  );
  reinterpret5 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom5_data_net,
    output_port => reinterpret5_output_port_net
  );
  reinterpret6 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom6_data_net,
    output_port => reinterpret6_output_port_net
  );
  reinterpret7 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom7_data_net,
    output_port => reinterpret7_output_port_net
  );
  reinterpret8 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom8_data_net,
    output_port => reinterpret8_output_port_net
  );
  fan_delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay1_q_net
  );
  fan_delay2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay2_q_net
  );
  fan_delay3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay3_q_net
  );
  fan_delay4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay4_q_net
  );
  fan_delay5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay5_q_net
  );
  fan_delay6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay6_q_net
  );
  fan_delay7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay7_q_net
  );
  fan_delay8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay8_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in4_first_tap/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x76 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x76;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x76 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  delay1_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => delay1_q_net,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in4_first_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in4_first_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeffs : in std_logic_vector( 144-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 126-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in4_first_tap;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in4_first_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 126-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net;
  coeff_out <= slice1_y_net;
  taps_out <= mult_p_net;
  delay1_q_net <= din;
  delay_q_net <= sync;
  register_q_net <= coeffs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x76 
  port map (
    din => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret2_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 144,
    y_width => 18
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 143,
    x_width => 144,
    y_width => 126
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in4_last_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in4_last_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tap_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in4_last_tap;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in4_last_tap is 
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  tap_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in4_tap2/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x65 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x65;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x65 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in4_tap2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in4_tap2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 126-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 108-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in4_tap2;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in4_tap2 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 108-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 126-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x65 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 126,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 125,
    x_width => 126,
    y_width => 108
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in4_tap3/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x66 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x66;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x66 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in4_tap3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in4_tap3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 108-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 90-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in4_tap3;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in4_tap3 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 90-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 108-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x66 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 108,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 107,
    x_width => 108,
    y_width => 90
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in4_tap4/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x67 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x67;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x67 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in4_tap4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in4_tap4 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 90-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 72-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in4_tap4;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in4_tap4 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 72-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 90-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x67 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 90,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 89,
    x_width => 90,
    y_width => 72
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in4_tap5/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x68 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x68;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x68 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in4_tap5
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in4_tap5 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 72-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 54-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in4_tap5;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in4_tap5 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 54-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 72-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x68 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 72,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 71,
    x_width => 72,
    y_width => 54
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in4_tap6/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x69 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x69;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x69 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in4_tap6
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in4_tap6 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 54-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 36-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in4_tap6;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in4_tap6 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x69 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 54,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 53,
    x_width => 54,
    y_width => 36
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in4_tap7/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x70 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x70;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x70 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in4_tap7
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in4_tap7 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 36-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 18-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in4_tap7;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in4_tap7 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 36-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x70 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 35,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in5_coeffs
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in5_coeffs is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff : out std_logic_vector( 144-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in5_coeffs;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in5_coeffs is 
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal reinterpret12_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 144-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret5_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret6_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret7_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret8_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal rom1_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay1_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom2_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay2_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom3_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay3_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom4_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay4_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom5_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay5_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom6_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay6_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom7_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay7_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom8_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay8_q_net : std_logic_vector( 5-1 downto 0 );
begin
  dout <= delay1_q_net;
  coeff <= register_q_net;
  reinterpret12_output_port_net <= din;
  slice_y_net <= sync;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_3b7fef6a01 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    in4 => reinterpret5_output_port_net,
    in5 => reinterpret6_output_port_net,
    in6 => reinterpret7_output_port_net,
    in7 => reinterpret8_output_port_net,
    y => concat_y_net
  );
  counter : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_256c_16i_8b_core_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 5
  )
  port map (
    en => "1",
    clr => '0',
    rst => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => reinterpret12_output_port_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  rom1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_cc25d1_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
  rom2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_abff86_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom2_data_net
  );
  rom3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_08529b_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom3_data_net
  );
  rom4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_a74ab8_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom4_data_net
  );
  rom5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_b37ba5_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom5_data_net
  );
  rom6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_80e896_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom6_data_net
  );
  rom7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_c8a695_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay7_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom7_data_net
  );
  rom8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_0e252e_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay8_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom8_data_net
  );
  register_x0 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlregister 
  generic map (
    d_width => 144,
    init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom1_data_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom2_data_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom3_data_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom4_data_net,
    output_port => reinterpret4_output_port_net
  );
  reinterpret5 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom5_data_net,
    output_port => reinterpret5_output_port_net
  );
  reinterpret6 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom6_data_net,
    output_port => reinterpret6_output_port_net
  );
  reinterpret7 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom7_data_net,
    output_port => reinterpret7_output_port_net
  );
  reinterpret8 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom8_data_net,
    output_port => reinterpret8_output_port_net
  );
  fan_delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay1_q_net
  );
  fan_delay2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay2_q_net
  );
  fan_delay3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay3_q_net
  );
  fan_delay4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay4_q_net
  );
  fan_delay5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay5_q_net
  );
  fan_delay6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay6_q_net
  );
  fan_delay7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay7_q_net
  );
  fan_delay8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay8_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in5_first_tap/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x82 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x82;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x82 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  delay1_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => delay1_q_net,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in5_first_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in5_first_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeffs : in std_logic_vector( 144-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 126-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in5_first_tap;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in5_first_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 126-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net;
  coeff_out <= slice1_y_net;
  taps_out <= mult_p_net;
  delay1_q_net <= din;
  delay_q_net <= sync;
  register_q_net <= coeffs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x82 
  port map (
    din => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret2_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 144,
    y_width => 18
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 143,
    x_width => 144,
    y_width => 126
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in5_last_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in5_last_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tap_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in5_last_tap;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in5_last_tap is 
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  tap_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in5_tap2/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x83 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x83;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x83 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in5_tap2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in5_tap2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 126-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 108-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in5_tap2;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in5_tap2 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 108-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 126-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x83 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 126,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 125,
    x_width => 126,
    y_width => 108
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in5_tap3/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x84 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x84;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x84 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in5_tap3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in5_tap3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 108-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 90-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in5_tap3;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in5_tap3 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 90-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 108-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x84 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 108,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 107,
    x_width => 108,
    y_width => 90
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in5_tap4/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x85 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x85;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x85 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in5_tap4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in5_tap4 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 90-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 72-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in5_tap4;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in5_tap4 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 72-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 90-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x85 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 90,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 89,
    x_width => 90,
    y_width => 72
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in5_tap5/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x86 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x86;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x86 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in5_tap5
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in5_tap5 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 72-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 54-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in5_tap5;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in5_tap5 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 54-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 72-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x86 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 72,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 71,
    x_width => 72,
    y_width => 54
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in5_tap6/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x87 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x87;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x87 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in5_tap6
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in5_tap6 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 54-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 36-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in5_tap6;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in5_tap6 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x87 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 54,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 53,
    x_width => 54,
    y_width => 36
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in5_tap7/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x77 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x77;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x77 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in5_tap7
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in5_tap7 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 36-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 18-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in5_tap7;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in5_tap7 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 36-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x77 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 35,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in6_coeffs
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in6_coeffs is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff : out std_logic_vector( 144-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in6_coeffs;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in6_coeffs is 
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal reinterpret11_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 144-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret5_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret6_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret7_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret8_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal rom1_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay1_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom2_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay2_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom3_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay3_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom4_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay4_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom5_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay5_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom6_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay6_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom7_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay7_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom8_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay8_q_net : std_logic_vector( 5-1 downto 0 );
begin
  dout <= delay1_q_net;
  coeff <= register_q_net;
  reinterpret11_output_port_net <= din;
  slice_y_net <= sync;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_3b7fef6a01 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    in4 => reinterpret5_output_port_net,
    in5 => reinterpret6_output_port_net,
    in6 => reinterpret7_output_port_net,
    in7 => reinterpret8_output_port_net,
    y => concat_y_net
  );
  counter : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_256c_16i_8b_core_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 5
  )
  port map (
    en => "1",
    clr => '0',
    rst => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => reinterpret11_output_port_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  rom1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_3813ae_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
  rom2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_13f3b5_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom2_data_net
  );
  rom3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_ece8ff_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom3_data_net
  );
  rom4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_d041a9_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom4_data_net
  );
  rom5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_945f03_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom5_data_net
  );
  rom6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_71ba8c_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom6_data_net
  );
  rom7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_cdba10_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay7_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom7_data_net
  );
  rom8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_26bc91_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay8_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom8_data_net
  );
  register_x0 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlregister 
  generic map (
    d_width => 144,
    init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom1_data_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom2_data_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom3_data_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom4_data_net,
    output_port => reinterpret4_output_port_net
  );
  reinterpret5 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom5_data_net,
    output_port => reinterpret5_output_port_net
  );
  reinterpret6 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom6_data_net,
    output_port => reinterpret6_output_port_net
  );
  reinterpret7 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom7_data_net,
    output_port => reinterpret7_output_port_net
  );
  reinterpret8 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom8_data_net,
    output_port => reinterpret8_output_port_net
  );
  fan_delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay1_q_net
  );
  fan_delay2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay2_q_net
  );
  fan_delay3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay3_q_net
  );
  fan_delay4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay4_q_net
  );
  fan_delay5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay5_q_net
  );
  fan_delay6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay6_q_net
  );
  fan_delay7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay7_q_net
  );
  fan_delay8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay8_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in6_first_tap/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x78 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x78;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x78 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  delay1_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => delay1_q_net,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in6_first_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in6_first_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeffs : in std_logic_vector( 144-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 126-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in6_first_tap;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in6_first_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 126-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net;
  coeff_out <= slice1_y_net;
  taps_out <= mult_p_net;
  delay1_q_net <= din;
  delay_q_net <= sync;
  register_q_net <= coeffs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x78 
  port map (
    din => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret2_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 144,
    y_width => 18
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 143,
    x_width => 144,
    y_width => 126
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in6_last_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in6_last_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tap_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in6_last_tap;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in6_last_tap is 
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  tap_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in6_tap2/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x79 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x79;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x79 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in6_tap2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in6_tap2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 126-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 108-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in6_tap2;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in6_tap2 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 108-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 126-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x79 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 126,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 125,
    x_width => 126,
    y_width => 108
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in6_tap3/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x80 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x80;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x80 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in6_tap3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in6_tap3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 108-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 90-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in6_tap3;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in6_tap3 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 90-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 108-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x80 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 108,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 107,
    x_width => 108,
    y_width => 90
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in6_tap4/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x81 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x81;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x81 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in6_tap4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in6_tap4 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 90-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 72-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in6_tap4;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in6_tap4 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 72-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 90-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x81 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 90,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 89,
    x_width => 90,
    y_width => 72
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in6_tap5/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x61 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x61;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x61 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in6_tap5
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in6_tap5 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 72-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 54-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in6_tap5;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in6_tap5 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 54-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 72-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x61 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 72,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 71,
    x_width => 72,
    y_width => 54
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in6_tap6/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x5 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x5;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x5 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in6_tap6
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in6_tap6 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 54-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 36-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in6_tap6;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in6_tap6 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x5 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 54,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 53,
    x_width => 54,
    y_width => 36
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in6_tap7/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x6 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x6;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x6 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in6_tap7
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in6_tap7 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 36-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 18-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in6_tap7;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in6_tap7 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 36-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x6 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 35,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in7_coeffs
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in7_coeffs is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff : out std_logic_vector( 144-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in7_coeffs;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in7_coeffs is 
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal reinterpret10_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 144-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret5_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret6_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret7_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret8_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal rom1_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay1_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom2_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay2_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom3_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay3_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom4_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay4_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom5_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay5_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom6_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay6_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom7_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay7_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom8_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay8_q_net : std_logic_vector( 5-1 downto 0 );
begin
  dout <= delay1_q_net;
  coeff <= register_q_net;
  reinterpret10_output_port_net <= din;
  slice_y_net <= sync;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_3b7fef6a01 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    in4 => reinterpret5_output_port_net,
    in5 => reinterpret6_output_port_net,
    in6 => reinterpret7_output_port_net,
    in7 => reinterpret8_output_port_net,
    y => concat_y_net
  );
  counter : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_256c_16i_8b_core_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 5
  )
  port map (
    en => "1",
    clr => '0',
    rst => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => reinterpret10_output_port_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  rom1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_c56397_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
  rom2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_44724f_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom2_data_net
  );
  rom3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_383dd9_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom3_data_net
  );
  rom4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_05f816_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom4_data_net
  );
  rom5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_d63a73_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom5_data_net
  );
  rom6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_f20526_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom6_data_net
  );
  rom7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_db5aaf_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay7_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom7_data_net
  );
  rom8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_82c3c7_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay8_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom8_data_net
  );
  register_x0 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlregister 
  generic map (
    d_width => 144,
    init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom1_data_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom2_data_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom3_data_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom4_data_net,
    output_port => reinterpret4_output_port_net
  );
  reinterpret5 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom5_data_net,
    output_port => reinterpret5_output_port_net
  );
  reinterpret6 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom6_data_net,
    output_port => reinterpret6_output_port_net
  );
  reinterpret7 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom7_data_net,
    output_port => reinterpret7_output_port_net
  );
  reinterpret8 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom8_data_net,
    output_port => reinterpret8_output_port_net
  );
  fan_delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay1_q_net
  );
  fan_delay2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay2_q_net
  );
  fan_delay3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay3_q_net
  );
  fan_delay4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay4_q_net
  );
  fan_delay5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay5_q_net
  );
  fan_delay6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay6_q_net
  );
  fan_delay7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay7_q_net
  );
  fan_delay8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay8_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in7_first_tap/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x7 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x7;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x7 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  delay1_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => delay1_q_net,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in7_first_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in7_first_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeffs : in std_logic_vector( 144-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 126-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in7_first_tap;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in7_first_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 126-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net;
  coeff_out <= slice1_y_net;
  taps_out <= mult_p_net;
  delay1_q_net <= din;
  delay_q_net <= sync;
  register_q_net <= coeffs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x7 
  port map (
    din => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret2_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 144,
    y_width => 18
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 143,
    x_width => 144,
    y_width => 126
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in7_last_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in7_last_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tap_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in7_last_tap;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in7_last_tap is 
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  tap_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in7_tap2/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x9 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x9;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x9 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in7_tap2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in7_tap2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 126-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 108-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in7_tap2;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in7_tap2 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 108-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 126-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x9 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 126,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 125,
    x_width => 126,
    y_width => 108
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in7_tap3/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x10 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x10;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x10 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in7_tap3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in7_tap3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 108-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 90-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in7_tap3;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in7_tap3 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 90-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 108-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x10 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 108,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 107,
    x_width => 108,
    y_width => 90
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in7_tap4/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x2;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x2 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in7_tap4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in7_tap4 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 90-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 72-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in7_tap4;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in7_tap4 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 72-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 90-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x2 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 90,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 89,
    x_width => 90,
    y_width => 72
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in7_tap5/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in7_tap5
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in7_tap5 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 72-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 54-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in7_tap5;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in7_tap5 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 54-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 72-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 72,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 71,
    x_width => 72,
    y_width => 54
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in7_tap6/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x0 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x0;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x0 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in7_tap6
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in7_tap6 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 54-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 36-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in7_tap6;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in7_tap6 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x0 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 54,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 53,
    x_width => 54,
    y_width => 36
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in7_tap7/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x1 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x1;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x1 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in7_tap7
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in7_tap7 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 36-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 18-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in7_tap7;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in7_tap7 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 36-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x1 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 35,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in8_coeffs
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in8_coeffs is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff : out std_logic_vector( 144-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in8_coeffs;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in8_coeffs is 
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal reinterpret9_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 144-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret5_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret6_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret7_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret8_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal rom1_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay1_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom2_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay2_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom3_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay3_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom4_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay4_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom5_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay5_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom6_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay6_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom7_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay7_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom8_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay8_q_net : std_logic_vector( 5-1 downto 0 );
begin
  dout <= delay1_q_net;
  coeff <= register_q_net;
  reinterpret9_output_port_net <= din;
  slice_y_net <= sync;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_3b7fef6a01 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    in4 => reinterpret5_output_port_net,
    in5 => reinterpret6_output_port_net,
    in6 => reinterpret7_output_port_net,
    in7 => reinterpret8_output_port_net,
    y => concat_y_net
  );
  counter : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_256c_16i_8b_core_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 5
  )
  port map (
    en => "1",
    clr => '0',
    rst => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => reinterpret9_output_port_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  rom1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_e9957b_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
  rom2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_287900_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom2_data_net
  );
  rom3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_c475c0_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom3_data_net
  );
  rom4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_7017f8_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom4_data_net
  );
  rom5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_d2b9bb_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom5_data_net
  );
  rom6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_142b13_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom6_data_net
  );
  rom7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_f50a36_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay7_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom7_data_net
  );
  rom8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_6db6a8_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay8_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom8_data_net
  );
  register_x0 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlregister 
  generic map (
    d_width => 144,
    init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom1_data_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom2_data_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom3_data_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom4_data_net,
    output_port => reinterpret4_output_port_net
  );
  reinterpret5 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom5_data_net,
    output_port => reinterpret5_output_port_net
  );
  reinterpret6 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom6_data_net,
    output_port => reinterpret6_output_port_net
  );
  reinterpret7 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom7_data_net,
    output_port => reinterpret7_output_port_net
  );
  reinterpret8 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom8_data_net,
    output_port => reinterpret8_output_port_net
  );
  fan_delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay1_q_net
  );
  fan_delay2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay2_q_net
  );
  fan_delay3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay3_q_net
  );
  fan_delay4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay4_q_net
  );
  fan_delay5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay5_q_net
  );
  fan_delay6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay6_q_net
  );
  fan_delay7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay7_q_net
  );
  fan_delay8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay8_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in8_first_tap/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x3;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x3 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  delay1_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => delay1_q_net,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in8_first_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in8_first_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeffs : in std_logic_vector( 144-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 126-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in8_first_tap;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in8_first_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 126-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net;
  coeff_out <= slice1_y_net;
  taps_out <= mult_p_net;
  delay1_q_net <= din;
  delay_q_net <= sync;
  register_q_net <= coeffs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x3 
  port map (
    din => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret2_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 144,
    y_width => 18
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 143,
    x_width => 144,
    y_width => 126
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in8_last_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in8_last_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tap_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in8_last_tap;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in8_last_tap is 
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  tap_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in8_tap2/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x4 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x4;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x4 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in8_tap2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in8_tap2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 126-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 108-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in8_tap2;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in8_tap2 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 108-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 126-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x4 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 126,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 125,
    x_width => 126,
    y_width => 108
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in8_tap3/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x8 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x8;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x8 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in8_tap3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in8_tap3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 108-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 90-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in8_tap3;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in8_tap3 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 90-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 108-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x8 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 108,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 107,
    x_width => 108,
    y_width => 90
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in8_tap4/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x17 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x17;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x17 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in8_tap4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in8_tap4 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 90-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 72-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in8_tap4;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in8_tap4 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 72-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 90-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x17 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 90,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 89,
    x_width => 90,
    y_width => 72
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in8_tap5/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x18 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x18;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x18 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in8_tap5
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in8_tap5 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 72-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 54-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in8_tap5;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in8_tap5 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 54-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 72-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x18 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 72,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 71,
    x_width => 72,
    y_width => 54
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in8_tap6/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x19 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x19;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x19 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in8_tap6
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in8_tap6 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 54-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 36-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in8_tap6;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in8_tap6 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x19 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 54,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 53,
    x_width => 54,
    y_width => 36
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in8_tap7/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x20 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x20;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x20 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in8_tap7
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in8_tap7 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 36-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 18-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in8_tap7;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in8_tap7 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 36-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x20 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 35,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in9_coeffs
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in9_coeffs is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff : out std_logic_vector( 144-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in9_coeffs;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in9_coeffs is 
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal reinterpret8_output_port_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 144-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret5_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret6_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret7_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret8_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal rom1_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay1_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom2_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay2_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom3_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay3_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom4_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay4_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom5_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay5_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom6_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay6_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom7_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay7_q_net : std_logic_vector( 5-1 downto 0 );
  signal rom8_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay8_q_net : std_logic_vector( 5-1 downto 0 );
begin
  dout <= delay1_q_net;
  coeff <= register_q_net;
  reinterpret8_output_port_net_x0 <= din;
  slice_y_net <= sync;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_3b7fef6a01 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    in4 => reinterpret5_output_port_net,
    in5 => reinterpret6_output_port_net,
    in6 => reinterpret7_output_port_net,
    in7 => reinterpret8_output_port_net,
    y => concat_y_net
  );
  counter : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_256c_16i_8b_core_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 5
  )
  port map (
    en => "1",
    clr => '0',
    rst => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => reinterpret8_output_port_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  rom1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_6530f1_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
  rom2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_84b09c_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom2_data_net
  );
  rom3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_5a22a1_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom3_data_net
  );
  rom4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_4d73c9_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom4_data_net
  );
  rom5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_4e713d_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom5_data_net
  );
  rom6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_c78b40_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom6_data_net
  );
  rom7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_2e290f_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay7_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom7_data_net
  );
  rom8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlsprom 
  generic map (
    c_address_width => 5,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_ef8195_vivado.mem",
    mem_size => 576,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay8_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom8_data_net
  );
  register_x0 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlregister 
  generic map (
    d_width => 144,
    init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom1_data_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom2_data_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom3_data_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom4_data_net,
    output_port => reinterpret4_output_port_net
  );
  reinterpret5 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom5_data_net,
    output_port => reinterpret5_output_port_net
  );
  reinterpret6 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom6_data_net,
    output_port => reinterpret6_output_port_net
  );
  reinterpret7 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom7_data_net,
    output_port => reinterpret7_output_port_net
  );
  reinterpret8 : entity xil_defaultlib.sysgen_reinterpret_c7f7ea9680 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom8_data_net,
    output_port => reinterpret8_output_port_net
  );
  fan_delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay1_q_net
  );
  fan_delay2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay2_q_net
  );
  fan_delay3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay3_q_net
  );
  fan_delay4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay4_q_net
  );
  fan_delay5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay5_q_net
  );
  fan_delay6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay6_q_net
  );
  fan_delay7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay7_q_net
  );
  fan_delay8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 5
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay8_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in9_first_tap/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x21 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x21;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x21 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  delay1_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => delay1_q_net,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in9_first_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in9_first_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeffs : in std_logic_vector( 144-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 126-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in9_first_tap;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in9_first_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 126-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net;
  coeff_out <= slice1_y_net;
  taps_out <= mult_p_net;
  delay1_q_net <= din;
  delay_q_net <= sync;
  register_q_net <= coeffs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x21 
  port map (
    din => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret2_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 144,
    y_width => 18
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 143,
    x_width => 144,
    y_width => 126
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in9_last_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in9_last_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tap_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in9_last_tap;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in9_last_tap is 
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  tap_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in9_tap2/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x12 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x12;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x12 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in9_tap2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in9_tap2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 126-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 108-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in9_tap2;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in9_tap2 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 108-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 126-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x12 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 126,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 125,
    x_width => 126,
    y_width => 108
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in9_tap3/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x13 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x13;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x13 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in9_tap3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in9_tap3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 108-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 90-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in9_tap3;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in9_tap3 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 90-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 108-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x13 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 108,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 107,
    x_width => 108,
    y_width => 90
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in9_tap4/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x14 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x14;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x14 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in9_tap4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in9_tap4 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 90-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 72-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in9_tap4;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in9_tap4 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 72-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 90-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x14 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 90,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 89,
    x_width => 90,
    y_width => 72
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in9_tap5/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x11 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x11;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x11 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in9_tap5
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in9_tap5 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 72-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 54-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in9_tap5;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in9_tap5 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 54-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 72-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x11 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 72,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 71,
    x_width => 72,
    y_width => 54
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in9_tap6/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x15 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x15;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x15 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in9_tap6
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in9_tap6 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 54-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 36-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in9_tap6;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in9_tap6 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x15 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 54,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 53,
    x_width => 54,
    y_width => 36
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in9_tap7/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_delay_bram_x16 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_delay_bram_x16;
architecture structural of pfb_fir_256c_16i_8b_core_delay_bram_x16 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 5-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_ef7e8ca81b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_2225de9d3f 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_895f05b3b1 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
  ram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_0bde1c_vivado.mem",
    mem_size => 256,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 5,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real/pol1_in9_tap7
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pol1_in9_tap7 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 36-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 18-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pol1_in9_tap7;
architecture structural of pfb_fir_256c_16i_8b_core_pol1_in9_tap7 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 36-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_delay_bram_x16 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_233419e609 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_0fe88d49f1 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_7fffc7084b 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 35,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core/pfb_fir_real
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_pfb_fir_real is
  port (
    sync : in std_logic_vector( 1-1 downto 0 );
    pol1_in1 : in std_logic_vector( 8-1 downto 0 );
    pol1_in2 : in std_logic_vector( 8-1 downto 0 );
    pol1_in3 : in std_logic_vector( 8-1 downto 0 );
    pol1_in4 : in std_logic_vector( 8-1 downto 0 );
    pol1_in5 : in std_logic_vector( 8-1 downto 0 );
    pol1_in6 : in std_logic_vector( 8-1 downto 0 );
    pol1_in7 : in std_logic_vector( 8-1 downto 0 );
    pol1_in8 : in std_logic_vector( 8-1 downto 0 );
    pol1_in9 : in std_logic_vector( 8-1 downto 0 );
    pol1_in10 : in std_logic_vector( 8-1 downto 0 );
    pol1_in11 : in std_logic_vector( 8-1 downto 0 );
    pol1_in12 : in std_logic_vector( 8-1 downto 0 );
    pol1_in13 : in std_logic_vector( 8-1 downto 0 );
    pol1_in14 : in std_logic_vector( 8-1 downto 0 );
    pol1_in15 : in std_logic_vector( 8-1 downto 0 );
    pol1_in16 : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    sync_out : out std_logic_vector( 1-1 downto 0 );
    pol1_out1 : out std_logic_vector( 18-1 downto 0 );
    pol1_out2 : out std_logic_vector( 18-1 downto 0 );
    pol1_out3 : out std_logic_vector( 18-1 downto 0 );
    pol1_out4 : out std_logic_vector( 18-1 downto 0 );
    pol1_out5 : out std_logic_vector( 18-1 downto 0 );
    pol1_out6 : out std_logic_vector( 18-1 downto 0 );
    pol1_out7 : out std_logic_vector( 18-1 downto 0 );
    pol1_out8 : out std_logic_vector( 18-1 downto 0 );
    pol1_out9 : out std_logic_vector( 18-1 downto 0 );
    pol1_out10 : out std_logic_vector( 18-1 downto 0 );
    pol1_out11 : out std_logic_vector( 18-1 downto 0 );
    pol1_out12 : out std_logic_vector( 18-1 downto 0 );
    pol1_out13 : out std_logic_vector( 18-1 downto 0 );
    pol1_out14 : out std_logic_vector( 18-1 downto 0 );
    pol1_out15 : out std_logic_vector( 18-1 downto 0 );
    pol1_out16 : out std_logic_vector( 18-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_pfb_fir_real;
architecture structural of pfb_fir_256c_16i_8b_core_pfb_fir_real is 
  signal delay1_q_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal convert_1_1_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_2_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_3_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_4_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_5_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_6_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_7_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_8_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_9_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_10_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_11_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_12_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_13_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_14_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_15_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_16_dout_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret16_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret15_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret14_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret13_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret12_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret11_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret10_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret9_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret8_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret7_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret6_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret5_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal sync_delay_q_net_x13 : std_logic_vector( 1-1 downto 0 );
  signal addr7_s_net_x14 : std_logic_vector( 26-1 downto 0 );
  signal delay_q_net_x15 : std_logic_vector( 1-1 downto 0 );
  signal mult_p_net_x58 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x59 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x61 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x67 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x66 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x64 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x63 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x60 : std_logic_vector( 26-1 downto 0 );
  signal addr7_s_net_x13 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x12 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x13 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x17 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x16 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x15 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x14 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x6 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal addr7_s_net_x3 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x3 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x4 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x11 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x10 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x7 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x9 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x8 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x5 : std_logic_vector( 26-1 downto 0 );
  signal addr7_s_net_x7 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x102 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x99 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x98 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x101 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x106 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x105 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x104 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x100 : std_logic_vector( 26-1 downto 0 );
  signal addr7_s_net_x6 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x103 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x92 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x91 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x89 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x88 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x90 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x97 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x93 : std_logic_vector( 26-1 downto 0 );
  signal addr7_s_net_x5 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x96 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x94 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x121 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x120 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x119 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x118 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x117 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x95 : std_logic_vector( 26-1 downto 0 );
  signal addr7_s_net_x4 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x126 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x122 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x124 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x123 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x110 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x109 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x107 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x125 : std_logic_vector( 26-1 downto 0 );
  signal addr7_s_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x108 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x115 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x114 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x113 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x112 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x111 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x62 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x116 : std_logic_vector( 26-1 downto 0 );
  signal addr7_s_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x54 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x52 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x50 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x49 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x51 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x57 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x56 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x53 : std_logic_vector( 26-1 downto 0 );
  signal addr7_s_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x55 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x82 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x81 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x80 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x79 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x78 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x87 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x65 : std_logic_vector( 26-1 downto 0 );
  signal addr7_s_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x86 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x84 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x83 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x72 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x71 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x68 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x69 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x85 : std_logic_vector( 26-1 downto 0 );
  signal addr7_s_net_x8 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x70 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x76 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x73 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x75 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x74 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x77 : std_logic_vector( 26-1 downto 0 );
  signal addr7_s_net_x12 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x36 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x37 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x39 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x40 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x31 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x32 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x35 : std_logic_vector( 26-1 downto 0 );
  signal addr7_s_net_x11 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x33 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x38 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x45 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x46 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x47 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x48 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x42 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x34 : std_logic_vector( 26-1 downto 0 );
  signal addr7_s_net_x10 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x41 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x44 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x23 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x24 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x22 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x25 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x26 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x43 : std_logic_vector( 26-1 downto 0 );
  signal addr7_s_net_x9 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x18 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x20 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x21 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x27 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x28 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x29 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x30 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x19 : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal register_q_net_x1 : std_logic_vector( 144-1 downto 0 );
  signal d1_q_net_x11 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x9 : std_logic_vector( 126-1 downto 0 );
  signal delay_q_net_x16 : std_logic_vector( 1-1 downto 0 );
  signal d1_q_net_x4 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x4 : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x15 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x14 : std_logic_vector( 108-1 downto 0 );
  signal d1_q_net_x14 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x13 : std_logic_vector( 90-1 downto 0 );
  signal d1_q_net_x13 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x10 : std_logic_vector( 72-1 downto 0 );
  signal d1_q_net_x12 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x12 : std_logic_vector( 54-1 downto 0 );
  signal d1_q_net_x7 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x11 : std_logic_vector( 36-1 downto 0 );
  signal delay1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal register_q_net_x0 : std_logic_vector( 144-1 downto 0 );
  signal d1_q_net_x3 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x3 : std_logic_vector( 126-1 downto 0 );
  signal d1_q_net_x88 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x34 : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x2 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x2 : std_logic_vector( 108-1 downto 0 );
  signal d1_q_net_x9 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x8 : std_logic_vector( 90-1 downto 0 );
  signal d1_q_net_x8 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x7 : std_logic_vector( 72-1 downto 0 );
  signal d1_q_net_x6 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x6 : std_logic_vector( 54-1 downto 0 );
  signal d1_q_net_x5 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x5 : std_logic_vector( 36-1 downto 0 );
  signal delay1_q_net_x12 : std_logic_vector( 8-1 downto 0 );
  signal register_q_net_x11 : std_logic_vector( 144-1 downto 0 );
  signal d1_q_net_x87 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x89 : std_logic_vector( 126-1 downto 0 );
  signal d1_q_net_x90 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x90 : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x86 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x88 : std_logic_vector( 108-1 downto 0 );
  signal d1_q_net_x85 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x87 : std_logic_vector( 90-1 downto 0 );
  signal d1_q_net_x92 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x93 : std_logic_vector( 72-1 downto 0 );
  signal d1_q_net_x91 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x92 : std_logic_vector( 54-1 downto 0 );
  signal d1_q_net_x89 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x91 : std_logic_vector( 36-1 downto 0 );
  signal delay1_q_net_x13 : std_logic_vector( 8-1 downto 0 );
  signal register_q_net_x12 : std_logic_vector( 144-1 downto 0 );
  signal d1_q_net_x80 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x84 : std_logic_vector( 126-1 downto 0 );
  signal d1_q_net_x83 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x85 : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x79 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x81 : std_logic_vector( 108-1 downto 0 );
  signal d1_q_net_x78 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x78 : std_logic_vector( 90-1 downto 0 );
  signal d1_q_net_x77 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x80 : std_logic_vector( 72-1 downto 0 );
  signal d1_q_net_x76 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x79 : std_logic_vector( 54-1 downto 0 );
  signal d1_q_net_x84 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x86 : std_logic_vector( 36-1 downto 0 );
  signal delay1_q_net_x11 : std_logic_vector( 8-1 downto 0 );
  signal register_q_net_x10 : std_logic_vector( 144-1 downto 0 );
  signal d1_q_net_x82 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x83 : std_logic_vector( 126-1 downto 0 );
  signal d1_q_net_x102 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x103 : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x81 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x82 : std_logic_vector( 108-1 downto 0 );
  signal d1_q_net_x106 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x106 : std_logic_vector( 90-1 downto 0 );
  signal d1_q_net_x105 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x105 : std_logic_vector( 72-1 downto 0 );
  signal d1_q_net_x104 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x102 : std_logic_vector( 54-1 downto 0 );
  signal d1_q_net_x103 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x104 : std_logic_vector( 36-1 downto 0 );
  signal delay1_q_net_x15 : std_logic_vector( 8-1 downto 0 );
  signal register_q_net_x14 : std_logic_vector( 144-1 downto 0 );
  signal d1_q_net_x110 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x110 : std_logic_vector( 126-1 downto 0 );
  signal d1_q_net_x94 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x95 : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x108 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x109 : std_logic_vector( 108-1 downto 0 );
  signal d1_q_net_x107 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x108 : std_logic_vector( 90-1 downto 0 );
  signal d1_q_net_x99 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x107 : std_logic_vector( 72-1 downto 0 );
  signal d1_q_net_x96 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x97 : std_logic_vector( 54-1 downto 0 );
  signal d1_q_net_x95 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x96 : std_logic_vector( 36-1 downto 0 );
  signal delay1_q_net_x14 : std_logic_vector( 8-1 downto 0 );
  signal register_q_net_x13 : std_logic_vector( 144-1 downto 0 );
  signal d1_q_net_x93 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x94 : std_logic_vector( 126-1 downto 0 );
  signal d1_q_net_x52 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x53 : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x101 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x101 : std_logic_vector( 108-1 downto 0 );
  signal d1_q_net_x100 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x100 : std_logic_vector( 90-1 downto 0 );
  signal d1_q_net_x98 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x99 : std_logic_vector( 72-1 downto 0 );
  signal d1_q_net_x97 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x98 : std_logic_vector( 54-1 downto 0 );
  signal d1_q_net_x53 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x75 : std_logic_vector( 36-1 downto 0 );
  signal delay1_q_net_x8 : std_logic_vector( 8-1 downto 0 );
  signal register_q_net_x7 : std_logic_vector( 144-1 downto 0 );
  signal d1_q_net_x51 : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net_x52 : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net_x52 : std_logic_vector( 126-1 downto 0 );
  signal d1_q_net_x55 : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net_x55 : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net_x54 : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x50 : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net_x51 : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net_x51 : std_logic_vector( 108-1 downto 0 );
  signal d1_q_net_x58 : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net_x59 : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net_x58 : std_logic_vector( 90-1 downto 0 );
  signal d1_q_net_x57 : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net_x58 : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net_x57 : std_logic_vector( 72-1 downto 0 );
  signal d1_q_net_x54 : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net_x57 : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net_x56 : std_logic_vector( 54-1 downto 0 );
  signal d1_q_net_x56 : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net_x56 : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net_x55 : std_logic_vector( 36-1 downto 0 );
  signal delay1_q_net_x6 : std_logic_vector( 8-1 downto 0 );
  signal register_q_net_x5 : std_logic_vector( 144-1 downto 0 );
  signal d1_q_net_x45 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x46 : std_logic_vector( 126-1 downto 0 );
  signal d1_q_net_x46 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x48 : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x44 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x43 : std_logic_vector( 108-1 downto 0 );
  signal d1_q_net_x43 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x45 : std_logic_vector( 90-1 downto 0 );
  signal d1_q_net_x42 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x44 : std_logic_vector( 72-1 downto 0 );
  signal d1_q_net_x49 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x50 : std_logic_vector( 54-1 downto 0 );
  signal d1_q_net_x48 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x49 : std_logic_vector( 36-1 downto 0 );
  signal delay1_q_net_x7 : std_logic_vector( 8-1 downto 0 );
  signal register_q_net_x6 : std_logic_vector( 144-1 downto 0 );
  signal d1_q_net_x47 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x47 : std_logic_vector( 126-1 downto 0 );
  signal d1_q_net_x75 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x77 : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x72 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x72 : std_logic_vector( 108-1 downto 0 );
  signal d1_q_net_x71 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x71 : std_logic_vector( 90-1 downto 0 );
  signal d1_q_net_x70 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x68 : std_logic_vector( 72-1 downto 0 );
  signal d1_q_net_x69 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x70 : std_logic_vector( 54-1 downto 0 );
  signal d1_q_net_x68 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x69 : std_logic_vector( 36-1 downto 0 );
  signal delay1_q_net_x10 : std_logic_vector( 8-1 downto 0 );
  signal register_q_net_x9 : std_logic_vector( 144-1 downto 0 );
  signal d1_q_net_x73 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x76 : std_logic_vector( 126-1 downto 0 );
  signal d1_q_net_x59 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x59 : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x74 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x74 : std_logic_vector( 108-1 downto 0 );
  signal d1_q_net_x65 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x73 : std_logic_vector( 90-1 downto 0 );
  signal d1_q_net_x62 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x62 : std_logic_vector( 72-1 downto 0 );
  signal d1_q_net_x61 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x61 : std_logic_vector( 54-1 downto 0 );
  signal d1_q_net_x60 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x60 : std_logic_vector( 36-1 downto 0 );
  signal delay1_q_net_x9 : std_logic_vector( 8-1 downto 0 );
  signal register_q_net_x8 : std_logic_vector( 144-1 downto 0 );
  signal d1_q_net_x67 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x67 : std_logic_vector( 126-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x66 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x66 : std_logic_vector( 108-1 downto 0 );
  signal d1_q_net_x64 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x65 : std_logic_vector( 90-1 downto 0 );
  signal d1_q_net_x63 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x64 : std_logic_vector( 72-1 downto 0 );
  signal d1_q_net_x109 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x63 : std_logic_vector( 54-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 144-1 downto 0 );
  signal d1_q_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x1 : std_logic_vector( 126-1 downto 0 );
  signal d1_q_net_x29 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x28 : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x32 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x30 : std_logic_vector( 108-1 downto 0 );
  signal d1_q_net_x31 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x31 : std_logic_vector( 90-1 downto 0 );
  signal d1_q_net_x33 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x32 : std_logic_vector( 72-1 downto 0 );
  signal d1_q_net_x10 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x33 : std_logic_vector( 54-1 downto 0 );
  signal d1_q_net_x28 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x27 : std_logic_vector( 36-1 downto 0 );
  signal delay1_q_net_x4 : std_logic_vector( 8-1 downto 0 );
  signal register_q_net_x3 : std_logic_vector( 144-1 downto 0 );
  signal d1_q_net_x30 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x29 : std_logic_vector( 126-1 downto 0 );
  signal d1_q_net_x34 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x35 : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x38 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x39 : std_logic_vector( 108-1 downto 0 );
  signal d1_q_net_x39 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x40 : std_logic_vector( 90-1 downto 0 );
  signal d1_q_net_x40 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x38 : std_logic_vector( 72-1 downto 0 );
  signal d1_q_net_x41 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x41 : std_logic_vector( 54-1 downto 0 );
  signal d1_q_net_x35 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x42 : std_logic_vector( 36-1 downto 0 );
  signal delay1_q_net_x5 : std_logic_vector( 8-1 downto 0 );
  signal register_q_net_x4 : std_logic_vector( 144-1 downto 0 );
  signal d1_q_net_x36 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x36 : std_logic_vector( 126-1 downto 0 );
  signal d1_q_net_x16 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x16 : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x37 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x37 : std_logic_vector( 108-1 downto 0 );
  signal d1_q_net_x19 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x19 : std_logic_vector( 90-1 downto 0 );
  signal d1_q_net_x20 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x20 : std_logic_vector( 72-1 downto 0 );
  signal d1_q_net_x22 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x21 : std_logic_vector( 54-1 downto 0 );
  signal d1_q_net_x23 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x22 : std_logic_vector( 36-1 downto 0 );
  signal delay1_q_net_x3 : std_logic_vector( 8-1 downto 0 );
  signal register_q_net_x2 : std_logic_vector( 144-1 downto 0 );
  signal d1_q_net_x17 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x15 : std_logic_vector( 126-1 downto 0 );
  signal d1_q_net_x27 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x26 : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x18 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x17 : std_logic_vector( 108-1 downto 0 );
  signal d1_q_net_x21 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x18 : std_logic_vector( 90-1 downto 0 );
  signal d1_q_net_x24 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x23 : std_logic_vector( 72-1 downto 0 );
  signal d1_q_net_x25 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x24 : std_logic_vector( 54-1 downto 0 );
  signal d1_q_net_x26 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x25 : std_logic_vector( 36-1 downto 0 );
  signal scale_1_1_op_net : std_logic_vector( 26-1 downto 0 );
  signal scale_1_10_op_net : std_logic_vector( 26-1 downto 0 );
  signal scale_1_11_op_net : std_logic_vector( 26-1 downto 0 );
  signal scale_1_12_op_net : std_logic_vector( 26-1 downto 0 );
  signal scale_1_13_op_net : std_logic_vector( 26-1 downto 0 );
  signal scale_1_14_op_net : std_logic_vector( 26-1 downto 0 );
  signal scale_1_15_op_net : std_logic_vector( 26-1 downto 0 );
  signal scale_1_16_op_net : std_logic_vector( 26-1 downto 0 );
  signal scale_1_2_op_net : std_logic_vector( 26-1 downto 0 );
  signal scale_1_3_op_net : std_logic_vector( 26-1 downto 0 );
  signal scale_1_4_op_net : std_logic_vector( 26-1 downto 0 );
  signal scale_1_5_op_net : std_logic_vector( 26-1 downto 0 );
  signal scale_1_6_op_net : std_logic_vector( 26-1 downto 0 );
  signal scale_1_7_op_net : std_logic_vector( 26-1 downto 0 );
  signal scale_1_8_op_net : std_logic_vector( 26-1 downto 0 );
  signal scale_1_9_op_net : std_logic_vector( 26-1 downto 0 );
begin
  sync_out <= delay1_q_net_x2;
  pol1_out1 <= convert_1_1_dout_net;
  pol1_out2 <= convert_1_2_dout_net;
  pol1_out3 <= convert_1_3_dout_net;
  pol1_out4 <= convert_1_4_dout_net;
  pol1_out5 <= convert_1_5_dout_net;
  pol1_out6 <= convert_1_6_dout_net;
  pol1_out7 <= convert_1_7_dout_net;
  pol1_out8 <= convert_1_8_dout_net;
  pol1_out9 <= convert_1_9_dout_net;
  pol1_out10 <= convert_1_10_dout_net;
  pol1_out11 <= convert_1_11_dout_net;
  pol1_out12 <= convert_1_12_dout_net;
  pol1_out13 <= convert_1_13_dout_net;
  pol1_out14 <= convert_1_14_dout_net;
  pol1_out15 <= convert_1_15_dout_net;
  pol1_out16 <= convert_1_16_dout_net;
  slice_y_net <= sync;
  reinterpret16_output_port_net <= pol1_in1;
  reinterpret15_output_port_net <= pol1_in2;
  reinterpret14_output_port_net <= pol1_in3;
  reinterpret13_output_port_net <= pol1_in4;
  reinterpret12_output_port_net <= pol1_in5;
  reinterpret11_output_port_net <= pol1_in6;
  reinterpret10_output_port_net <= pol1_in7;
  reinterpret9_output_port_net <= pol1_in8;
  reinterpret8_output_port_net <= pol1_in9;
  reinterpret7_output_port_net <= pol1_in10;
  reinterpret6_output_port_net <= pol1_in11;
  reinterpret5_output_port_net <= pol1_in12;
  reinterpret4_output_port_net <= pol1_in13;
  reinterpret3_output_port_net <= pol1_in14;
  reinterpret2_output_port_net <= pol1_in15;
  reinterpret1_output_port_net <= pol1_in16;
  clk_net <= clk_1;
  ce_net <= ce_1;
  adder_1_1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_adder_1_1 
  port map (
    sync => delay_q_net_x15,
    din1 => mult_p_net_x58,
    din2 => mult_p_net_x59,
    din3 => mult_p_net_x61,
    din4 => mult_p_net_x67,
    din5 => mult_p_net_x66,
    din6 => mult_p_net_x64,
    din7 => mult_p_net_x63,
    din8 => mult_p_net_x60,
    clk_1 => clk_net,
    ce_1 => ce_net,
    sync_out => sync_delay_q_net_x13,
    dout => addr7_s_net_x14
  );
  adder_1_10 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_adder_1_10 
  port map (
    din1 => mult_p_net_x12,
    din2 => mult_p_net_x13,
    din3 => mult_p_net_x17,
    din4 => mult_p_net_x16,
    din5 => mult_p_net_x15,
    din6 => mult_p_net_x14,
    din7 => mult_p_net_x6,
    din8 => mult_p_net_x2,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => addr7_s_net_x13
  );
  adder_1_11 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_adder_1_11 
  port map (
    din1 => mult_p_net_x3,
    din2 => mult_p_net_x4,
    din3 => mult_p_net_x11,
    din4 => mult_p_net_x10,
    din5 => mult_p_net_x7,
    din6 => mult_p_net_x9,
    din7 => mult_p_net_x8,
    din8 => mult_p_net_x5,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => addr7_s_net_x3
  );
  adder_1_12 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_adder_1_12 
  port map (
    din1 => mult_p_net_x102,
    din2 => mult_p_net_x99,
    din3 => mult_p_net_x98,
    din4 => mult_p_net_x101,
    din5 => mult_p_net_x106,
    din6 => mult_p_net_x105,
    din7 => mult_p_net_x104,
    din8 => mult_p_net_x100,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => addr7_s_net_x7
  );
  adder_1_13 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_adder_1_13 
  port map (
    din1 => mult_p_net_x103,
    din2 => mult_p_net_x92,
    din3 => mult_p_net_x91,
    din4 => mult_p_net_x89,
    din5 => mult_p_net_x88,
    din6 => mult_p_net_x90,
    din7 => mult_p_net_x97,
    din8 => mult_p_net_x93,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => addr7_s_net_x6
  );
  adder_1_14 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_adder_1_14 
  port map (
    din1 => mult_p_net_x96,
    din2 => mult_p_net_x94,
    din3 => mult_p_net_x121,
    din4 => mult_p_net_x120,
    din5 => mult_p_net_x119,
    din6 => mult_p_net_x118,
    din7 => mult_p_net_x117,
    din8 => mult_p_net_x95,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => addr7_s_net_x5
  );
  adder_1_15 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_adder_1_15 
  port map (
    din1 => mult_p_net_x126,
    din2 => mult_p_net_x122,
    din3 => mult_p_net_x124,
    din4 => mult_p_net_x123,
    din5 => mult_p_net_x110,
    din6 => mult_p_net_x109,
    din7 => mult_p_net_x107,
    din8 => mult_p_net_x125,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => addr7_s_net_x4
  );
  adder_1_16 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_adder_1_16 
  port map (
    din1 => mult_p_net_x108,
    din2 => mult_p_net_x115,
    din3 => mult_p_net_x114,
    din4 => mult_p_net_x113,
    din5 => mult_p_net_x112,
    din6 => mult_p_net_x111,
    din7 => mult_p_net_x62,
    din8 => mult_p_net_x116,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => addr7_s_net_x0
  );
  adder_1_2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_adder_1_2 
  port map (
    din1 => mult_p_net_x54,
    din2 => mult_p_net_x52,
    din3 => mult_p_net_x50,
    din4 => mult_p_net_x49,
    din5 => mult_p_net_x51,
    din6 => mult_p_net_x57,
    din7 => mult_p_net_x56,
    din8 => mult_p_net_x53,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => addr7_s_net
  );
  adder_1_3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_adder_1_3 
  port map (
    din1 => mult_p_net_x55,
    din2 => mult_p_net_x82,
    din3 => mult_p_net_x81,
    din4 => mult_p_net_x80,
    din5 => mult_p_net_x79,
    din6 => mult_p_net_x78,
    din7 => mult_p_net_x87,
    din8 => mult_p_net_x65,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => addr7_s_net_x1
  );
  adder_1_4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_adder_1_4 
  port map (
    din1 => mult_p_net_x86,
    din2 => mult_p_net_x84,
    din3 => mult_p_net_x83,
    din4 => mult_p_net_x72,
    din5 => mult_p_net_x71,
    din6 => mult_p_net_x68,
    din7 => mult_p_net_x69,
    din8 => mult_p_net_x85,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => addr7_s_net_x2
  );
  adder_1_5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_adder_1_5 
  port map (
    din1 => mult_p_net_x70,
    din2 => mult_p_net_x76,
    din3 => mult_p_net_x73,
    din4 => mult_p_net_x75,
    din5 => mult_p_net_x74,
    din6 => mult_p_net,
    din7 => mult_p_net_x0,
    din8 => mult_p_net_x77,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => addr7_s_net_x8
  );
  adder_1_6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_adder_1_6 
  port map (
    din1 => mult_p_net_x1,
    din2 => mult_p_net_x36,
    din3 => mult_p_net_x37,
    din4 => mult_p_net_x39,
    din5 => mult_p_net_x40,
    din6 => mult_p_net_x31,
    din7 => mult_p_net_x32,
    din8 => mult_p_net_x35,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => addr7_s_net_x12
  );
  adder_1_7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_adder_1_7 
  port map (
    din1 => mult_p_net_x33,
    din2 => mult_p_net_x38,
    din3 => mult_p_net_x45,
    din4 => mult_p_net_x46,
    din5 => mult_p_net_x47,
    din6 => mult_p_net_x48,
    din7 => mult_p_net_x42,
    din8 => mult_p_net_x34,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => addr7_s_net_x11
  );
  adder_1_8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_adder_1_8 
  port map (
    din1 => mult_p_net_x41,
    din2 => mult_p_net_x44,
    din3 => mult_p_net_x23,
    din4 => mult_p_net_x24,
    din5 => mult_p_net_x22,
    din6 => mult_p_net_x25,
    din7 => mult_p_net_x26,
    din8 => mult_p_net_x43,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => addr7_s_net_x10
  );
  adder_1_9 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_adder_1_9 
  port map (
    din1 => mult_p_net_x18,
    din2 => mult_p_net_x20,
    din3 => mult_p_net_x21,
    din4 => mult_p_net_x27,
    din5 => mult_p_net_x28,
    din6 => mult_p_net_x29,
    din7 => mult_p_net_x30,
    din8 => mult_p_net_x19,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => addr7_s_net_x9
  );
  pol1_in10_coeffs : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in10_coeffs 
  port map (
    din => reinterpret7_output_port_net,
    sync => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => delay1_q_net_x1,
    coeff => register_q_net_x1
  );
  pol1_in10_first_tap : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in10_first_tap 
  port map (
    din => delay1_q_net_x1,
    sync => delay_q_net_x16,
    coeffs => register_q_net_x1,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x11,
    coeff_out => slice1_y_net_x9,
    taps_out => mult_p_net_x12
  );
  pol1_in10_last_tap : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in10_last_tap 
  port map (
    din => d1_q_net_x4,
    coeff => slice1_y_net_x4,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tap_out => mult_p_net_x2
  );
  pol1_in10_tap2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in10_tap2 
  port map (
    din => d1_q_net_x11,
    coeff => slice1_y_net_x9,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x15,
    coeff_out => slice1_y_net_x14,
    taps_out => mult_p_net_x13
  );
  pol1_in10_tap3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in10_tap3 
  port map (
    din => d1_q_net_x15,
    coeff => slice1_y_net_x14,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x14,
    coeff_out => slice1_y_net_x13,
    taps_out => mult_p_net_x17
  );
  pol1_in10_tap4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in10_tap4 
  port map (
    din => d1_q_net_x14,
    coeff => slice1_y_net_x13,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x13,
    coeff_out => slice1_y_net_x10,
    taps_out => mult_p_net_x16
  );
  pol1_in10_tap5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in10_tap5 
  port map (
    din => d1_q_net_x13,
    coeff => slice1_y_net_x10,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x12,
    coeff_out => slice1_y_net_x12,
    taps_out => mult_p_net_x15
  );
  pol1_in10_tap6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in10_tap6 
  port map (
    din => d1_q_net_x12,
    coeff => slice1_y_net_x12,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x7,
    coeff_out => slice1_y_net_x11,
    taps_out => mult_p_net_x14
  );
  pol1_in10_tap7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in10_tap7 
  port map (
    din => d1_q_net_x7,
    coeff => slice1_y_net_x11,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x4,
    coeff_out => slice1_y_net_x4,
    taps_out => mult_p_net_x6
  );
  pol1_in11_coeffs : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in11_coeffs 
  port map (
    din => reinterpret6_output_port_net,
    sync => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => delay1_q_net_x0,
    coeff => register_q_net_x0
  );
  pol1_in11_first_tap : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in11_first_tap 
  port map (
    din => delay1_q_net_x0,
    sync => delay_q_net_x16,
    coeffs => register_q_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x3,
    coeff_out => slice1_y_net_x3,
    taps_out => mult_p_net_x3
  );
  pol1_in11_last_tap : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in11_last_tap 
  port map (
    din => d1_q_net_x88,
    coeff => slice1_y_net_x34,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tap_out => mult_p_net_x5
  );
  pol1_in11_tap2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in11_tap2 
  port map (
    din => d1_q_net_x3,
    coeff => slice1_y_net_x3,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x2,
    coeff_out => slice1_y_net_x2,
    taps_out => mult_p_net_x4
  );
  pol1_in11_tap3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in11_tap3 
  port map (
    din => d1_q_net_x2,
    coeff => slice1_y_net_x2,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x9,
    coeff_out => slice1_y_net_x8,
    taps_out => mult_p_net_x11
  );
  pol1_in11_tap4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in11_tap4 
  port map (
    din => d1_q_net_x9,
    coeff => slice1_y_net_x8,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x8,
    coeff_out => slice1_y_net_x7,
    taps_out => mult_p_net_x10
  );
  pol1_in11_tap5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in11_tap5 
  port map (
    din => d1_q_net_x8,
    coeff => slice1_y_net_x7,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x6,
    coeff_out => slice1_y_net_x6,
    taps_out => mult_p_net_x7
  );
  pol1_in11_tap6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in11_tap6 
  port map (
    din => d1_q_net_x6,
    coeff => slice1_y_net_x6,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x5,
    coeff_out => slice1_y_net_x5,
    taps_out => mult_p_net_x9
  );
  pol1_in11_tap7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in11_tap7 
  port map (
    din => d1_q_net_x5,
    coeff => slice1_y_net_x5,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x88,
    coeff_out => slice1_y_net_x34,
    taps_out => mult_p_net_x8
  );
  pol1_in12_coeffs : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in12_coeffs 
  port map (
    din => reinterpret5_output_port_net,
    sync => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => delay1_q_net_x12,
    coeff => register_q_net_x11
  );
  pol1_in12_first_tap : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in12_first_tap 
  port map (
    din => delay1_q_net_x12,
    sync => delay_q_net_x16,
    coeffs => register_q_net_x11,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x87,
    coeff_out => slice1_y_net_x89,
    taps_out => mult_p_net_x102
  );
  pol1_in12_last_tap : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in12_last_tap 
  port map (
    din => d1_q_net_x90,
    coeff => slice1_y_net_x90,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tap_out => mult_p_net_x100
  );
  pol1_in12_tap2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in12_tap2 
  port map (
    din => d1_q_net_x87,
    coeff => slice1_y_net_x89,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x86,
    coeff_out => slice1_y_net_x88,
    taps_out => mult_p_net_x99
  );
  pol1_in12_tap3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in12_tap3 
  port map (
    din => d1_q_net_x86,
    coeff => slice1_y_net_x88,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x85,
    coeff_out => slice1_y_net_x87,
    taps_out => mult_p_net_x98
  );
  pol1_in12_tap4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in12_tap4 
  port map (
    din => d1_q_net_x85,
    coeff => slice1_y_net_x87,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x92,
    coeff_out => slice1_y_net_x93,
    taps_out => mult_p_net_x101
  );
  pol1_in12_tap5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in12_tap5 
  port map (
    din => d1_q_net_x92,
    coeff => slice1_y_net_x93,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x91,
    coeff_out => slice1_y_net_x92,
    taps_out => mult_p_net_x106
  );
  pol1_in12_tap6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in12_tap6 
  port map (
    din => d1_q_net_x91,
    coeff => slice1_y_net_x92,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x89,
    coeff_out => slice1_y_net_x91,
    taps_out => mult_p_net_x105
  );
  pol1_in12_tap7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in12_tap7 
  port map (
    din => d1_q_net_x89,
    coeff => slice1_y_net_x91,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x90,
    coeff_out => slice1_y_net_x90,
    taps_out => mult_p_net_x104
  );
  pol1_in13_coeffs : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in13_coeffs 
  port map (
    din => reinterpret4_output_port_net,
    sync => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => delay1_q_net_x13,
    coeff => register_q_net_x12
  );
  pol1_in13_first_tap : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in13_first_tap 
  port map (
    din => delay1_q_net_x13,
    sync => delay_q_net_x16,
    coeffs => register_q_net_x12,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x80,
    coeff_out => slice1_y_net_x84,
    taps_out => mult_p_net_x103
  );
  pol1_in13_last_tap : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in13_last_tap 
  port map (
    din => d1_q_net_x83,
    coeff => slice1_y_net_x85,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tap_out => mult_p_net_x93
  );
  pol1_in13_tap2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in13_tap2 
  port map (
    din => d1_q_net_x80,
    coeff => slice1_y_net_x84,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x79,
    coeff_out => slice1_y_net_x81,
    taps_out => mult_p_net_x92
  );
  pol1_in13_tap3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in13_tap3 
  port map (
    din => d1_q_net_x79,
    coeff => slice1_y_net_x81,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x78,
    coeff_out => slice1_y_net_x78,
    taps_out => mult_p_net_x91
  );
  pol1_in13_tap4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in13_tap4 
  port map (
    din => d1_q_net_x78,
    coeff => slice1_y_net_x78,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x77,
    coeff_out => slice1_y_net_x80,
    taps_out => mult_p_net_x89
  );
  pol1_in13_tap5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in13_tap5 
  port map (
    din => d1_q_net_x77,
    coeff => slice1_y_net_x80,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x76,
    coeff_out => slice1_y_net_x79,
    taps_out => mult_p_net_x88
  );
  pol1_in13_tap6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in13_tap6 
  port map (
    din => d1_q_net_x76,
    coeff => slice1_y_net_x79,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x84,
    coeff_out => slice1_y_net_x86,
    taps_out => mult_p_net_x90
  );
  pol1_in13_tap7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in13_tap7 
  port map (
    din => d1_q_net_x84,
    coeff => slice1_y_net_x86,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x83,
    coeff_out => slice1_y_net_x85,
    taps_out => mult_p_net_x97
  );
  pol1_in14_coeffs : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in14_coeffs 
  port map (
    din => reinterpret3_output_port_net,
    sync => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => delay1_q_net_x11,
    coeff => register_q_net_x10
  );
  pol1_in14_first_tap : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in14_first_tap 
  port map (
    din => delay1_q_net_x11,
    sync => delay_q_net_x16,
    coeffs => register_q_net_x10,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x82,
    coeff_out => slice1_y_net_x83,
    taps_out => mult_p_net_x96
  );
  pol1_in14_last_tap : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in14_last_tap 
  port map (
    din => d1_q_net_x102,
    coeff => slice1_y_net_x103,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tap_out => mult_p_net_x95
  );
  pol1_in14_tap2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in14_tap2 
  port map (
    din => d1_q_net_x82,
    coeff => slice1_y_net_x83,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x81,
    coeff_out => slice1_y_net_x82,
    taps_out => mult_p_net_x94
  );
  pol1_in14_tap3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in14_tap3 
  port map (
    din => d1_q_net_x81,
    coeff => slice1_y_net_x82,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x106,
    coeff_out => slice1_y_net_x106,
    taps_out => mult_p_net_x121
  );
  pol1_in14_tap4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in14_tap4 
  port map (
    din => d1_q_net_x106,
    coeff => slice1_y_net_x106,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x105,
    coeff_out => slice1_y_net_x105,
    taps_out => mult_p_net_x120
  );
  pol1_in14_tap5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in14_tap5 
  port map (
    din => d1_q_net_x105,
    coeff => slice1_y_net_x105,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x104,
    coeff_out => slice1_y_net_x102,
    taps_out => mult_p_net_x119
  );
  pol1_in14_tap6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in14_tap6 
  port map (
    din => d1_q_net_x104,
    coeff => slice1_y_net_x102,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x103,
    coeff_out => slice1_y_net_x104,
    taps_out => mult_p_net_x118
  );
  pol1_in14_tap7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in14_tap7 
  port map (
    din => d1_q_net_x103,
    coeff => slice1_y_net_x104,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x102,
    coeff_out => slice1_y_net_x103,
    taps_out => mult_p_net_x117
  );
  pol1_in15_coeffs : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in15_coeffs 
  port map (
    din => reinterpret2_output_port_net,
    sync => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => delay1_q_net_x15,
    coeff => register_q_net_x14
  );
  pol1_in15_first_tap : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in15_first_tap 
  port map (
    din => delay1_q_net_x15,
    sync => delay_q_net_x16,
    coeffs => register_q_net_x14,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x110,
    coeff_out => slice1_y_net_x110,
    taps_out => mult_p_net_x126
  );
  pol1_in15_last_tap : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in15_last_tap 
  port map (
    din => d1_q_net_x94,
    coeff => slice1_y_net_x95,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tap_out => mult_p_net_x125
  );
  pol1_in15_tap2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in15_tap2 
  port map (
    din => d1_q_net_x110,
    coeff => slice1_y_net_x110,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x108,
    coeff_out => slice1_y_net_x109,
    taps_out => mult_p_net_x122
  );
  pol1_in15_tap3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in15_tap3 
  port map (
    din => d1_q_net_x108,
    coeff => slice1_y_net_x109,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x107,
    coeff_out => slice1_y_net_x108,
    taps_out => mult_p_net_x124
  );
  pol1_in15_tap4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in15_tap4 
  port map (
    din => d1_q_net_x107,
    coeff => slice1_y_net_x108,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x99,
    coeff_out => slice1_y_net_x107,
    taps_out => mult_p_net_x123
  );
  pol1_in15_tap5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in15_tap5 
  port map (
    din => d1_q_net_x99,
    coeff => slice1_y_net_x107,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x96,
    coeff_out => slice1_y_net_x97,
    taps_out => mult_p_net_x110
  );
  pol1_in15_tap6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in15_tap6 
  port map (
    din => d1_q_net_x96,
    coeff => slice1_y_net_x97,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x95,
    coeff_out => slice1_y_net_x96,
    taps_out => mult_p_net_x109
  );
  pol1_in15_tap7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in15_tap7 
  port map (
    din => d1_q_net_x95,
    coeff => slice1_y_net_x96,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x94,
    coeff_out => slice1_y_net_x95,
    taps_out => mult_p_net_x107
  );
  pol1_in16_coeffs : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in16_coeffs 
  port map (
    din => reinterpret1_output_port_net,
    sync => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => delay1_q_net_x14,
    coeff => register_q_net_x13
  );
  pol1_in16_first_tap : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in16_first_tap 
  port map (
    din => delay1_q_net_x14,
    sync => delay_q_net_x16,
    coeffs => register_q_net_x13,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x93,
    coeff_out => slice1_y_net_x94,
    taps_out => mult_p_net_x108
  );
  pol1_in16_last_tap : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in16_last_tap 
  port map (
    din => d1_q_net_x52,
    coeff => slice1_y_net_x53,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tap_out => mult_p_net_x116
  );
  pol1_in16_tap2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in16_tap2 
  port map (
    din => d1_q_net_x93,
    coeff => slice1_y_net_x94,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x101,
    coeff_out => slice1_y_net_x101,
    taps_out => mult_p_net_x115
  );
  pol1_in16_tap3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in16_tap3 
  port map (
    din => d1_q_net_x101,
    coeff => slice1_y_net_x101,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x100,
    coeff_out => slice1_y_net_x100,
    taps_out => mult_p_net_x114
  );
  pol1_in16_tap4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in16_tap4 
  port map (
    din => d1_q_net_x100,
    coeff => slice1_y_net_x100,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x98,
    coeff_out => slice1_y_net_x99,
    taps_out => mult_p_net_x113
  );
  pol1_in16_tap5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in16_tap5 
  port map (
    din => d1_q_net_x98,
    coeff => slice1_y_net_x99,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x97,
    coeff_out => slice1_y_net_x98,
    taps_out => mult_p_net_x112
  );
  pol1_in16_tap6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in16_tap6 
  port map (
    din => d1_q_net_x97,
    coeff => slice1_y_net_x98,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x53,
    coeff_out => slice1_y_net_x75,
    taps_out => mult_p_net_x111
  );
  pol1_in16_tap7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in16_tap7 
  port map (
    din => d1_q_net_x53,
    coeff => slice1_y_net_x75,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x52,
    coeff_out => slice1_y_net_x53,
    taps_out => mult_p_net_x62
  );
  pol1_in1_coeffs : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in1_coeffs 
  port map (
    din => reinterpret16_output_port_net,
    sync => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => delay1_q_net_x8,
    sync_out => delay_q_net_x16,
    coeff => register_q_net_x7
  );
  pol1_in1_first_tap : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in1_first_tap 
  port map (
    din => delay1_q_net_x8,
    sync => delay_q_net_x16,
    coeffs => register_q_net_x7,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x51,
    sync_out => mux_y_net_x52,
    coeff_out => slice1_y_net_x52,
    taps_out => mult_p_net_x58
  );
  pol1_in1_last_tap : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in1_last_tap 
  port map (
    din => d1_q_net_x55,
    sync => mux_y_net_x55,
    coeff => slice1_y_net_x54,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tap_out => mult_p_net_x60,
    sync_out => delay_q_net_x15
  );
  pol1_in1_tap2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in1_tap2 
  port map (
    din => d1_q_net_x51,
    sync => mux_y_net_x52,
    coeff => slice1_y_net_x52,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x50,
    sync_out => mux_y_net_x51,
    coeff_out => slice1_y_net_x51,
    taps_out => mult_p_net_x59
  );
  pol1_in1_tap3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in1_tap3 
  port map (
    din => d1_q_net_x50,
    sync => mux_y_net_x51,
    coeff => slice1_y_net_x51,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x58,
    sync_out => mux_y_net_x59,
    coeff_out => slice1_y_net_x58,
    taps_out => mult_p_net_x61
  );
  pol1_in1_tap4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in1_tap4 
  port map (
    din => d1_q_net_x58,
    sync => mux_y_net_x59,
    coeff => slice1_y_net_x58,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x57,
    sync_out => mux_y_net_x58,
    coeff_out => slice1_y_net_x57,
    taps_out => mult_p_net_x67
  );
  pol1_in1_tap5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in1_tap5 
  port map (
    din => d1_q_net_x57,
    sync => mux_y_net_x58,
    coeff => slice1_y_net_x57,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x54,
    sync_out => mux_y_net_x57,
    coeff_out => slice1_y_net_x56,
    taps_out => mult_p_net_x66
  );
  pol1_in1_tap6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in1_tap6 
  port map (
    din => d1_q_net_x54,
    sync => mux_y_net_x57,
    coeff => slice1_y_net_x56,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x56,
    sync_out => mux_y_net_x56,
    coeff_out => slice1_y_net_x55,
    taps_out => mult_p_net_x64
  );
  pol1_in1_tap7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in1_tap7 
  port map (
    din => d1_q_net_x56,
    sync => mux_y_net_x56,
    coeff => slice1_y_net_x55,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x55,
    sync_out => mux_y_net_x55,
    coeff_out => slice1_y_net_x54,
    taps_out => mult_p_net_x63
  );
  pol1_in2_coeffs : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in2_coeffs 
  port map (
    din => reinterpret15_output_port_net,
    sync => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => delay1_q_net_x6,
    coeff => register_q_net_x5
  );
  pol1_in2_first_tap : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in2_first_tap 
  port map (
    din => delay1_q_net_x6,
    sync => delay_q_net_x16,
    coeffs => register_q_net_x5,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x45,
    coeff_out => slice1_y_net_x46,
    taps_out => mult_p_net_x54
  );
  pol1_in2_last_tap : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in2_last_tap 
  port map (
    din => d1_q_net_x46,
    coeff => slice1_y_net_x48,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tap_out => mult_p_net_x53
  );
  pol1_in2_tap2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in2_tap2 
  port map (
    din => d1_q_net_x45,
    coeff => slice1_y_net_x46,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x44,
    coeff_out => slice1_y_net_x43,
    taps_out => mult_p_net_x52
  );
  pol1_in2_tap3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in2_tap3 
  port map (
    din => d1_q_net_x44,
    coeff => slice1_y_net_x43,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x43,
    coeff_out => slice1_y_net_x45,
    taps_out => mult_p_net_x50
  );
  pol1_in2_tap4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in2_tap4 
  port map (
    din => d1_q_net_x43,
    coeff => slice1_y_net_x45,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x42,
    coeff_out => slice1_y_net_x44,
    taps_out => mult_p_net_x49
  );
  pol1_in2_tap5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in2_tap5 
  port map (
    din => d1_q_net_x42,
    coeff => slice1_y_net_x44,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x49,
    coeff_out => slice1_y_net_x50,
    taps_out => mult_p_net_x51
  );
  pol1_in2_tap6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in2_tap6 
  port map (
    din => d1_q_net_x49,
    coeff => slice1_y_net_x50,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x48,
    coeff_out => slice1_y_net_x49,
    taps_out => mult_p_net_x57
  );
  pol1_in2_tap7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in2_tap7 
  port map (
    din => d1_q_net_x48,
    coeff => slice1_y_net_x49,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x46,
    coeff_out => slice1_y_net_x48,
    taps_out => mult_p_net_x56
  );
  pol1_in3_coeffs : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in3_coeffs 
  port map (
    din => reinterpret14_output_port_net,
    sync => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => delay1_q_net_x7,
    coeff => register_q_net_x6
  );
  pol1_in3_first_tap : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in3_first_tap 
  port map (
    din => delay1_q_net_x7,
    sync => delay_q_net_x16,
    coeffs => register_q_net_x6,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x47,
    coeff_out => slice1_y_net_x47,
    taps_out => mult_p_net_x55
  );
  pol1_in3_last_tap : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in3_last_tap 
  port map (
    din => d1_q_net_x75,
    coeff => slice1_y_net_x77,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tap_out => mult_p_net_x65
  );
  pol1_in3_tap2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in3_tap2 
  port map (
    din => d1_q_net_x47,
    coeff => slice1_y_net_x47,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x72,
    coeff_out => slice1_y_net_x72,
    taps_out => mult_p_net_x82
  );
  pol1_in3_tap3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in3_tap3 
  port map (
    din => d1_q_net_x72,
    coeff => slice1_y_net_x72,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x71,
    coeff_out => slice1_y_net_x71,
    taps_out => mult_p_net_x81
  );
  pol1_in3_tap4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in3_tap4 
  port map (
    din => d1_q_net_x71,
    coeff => slice1_y_net_x71,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x70,
    coeff_out => slice1_y_net_x68,
    taps_out => mult_p_net_x80
  );
  pol1_in3_tap5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in3_tap5 
  port map (
    din => d1_q_net_x70,
    coeff => slice1_y_net_x68,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x69,
    coeff_out => slice1_y_net_x70,
    taps_out => mult_p_net_x79
  );
  pol1_in3_tap6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in3_tap6 
  port map (
    din => d1_q_net_x69,
    coeff => slice1_y_net_x70,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x68,
    coeff_out => slice1_y_net_x69,
    taps_out => mult_p_net_x78
  );
  pol1_in3_tap7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in3_tap7 
  port map (
    din => d1_q_net_x68,
    coeff => slice1_y_net_x69,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x75,
    coeff_out => slice1_y_net_x77,
    taps_out => mult_p_net_x87
  );
  pol1_in4_coeffs : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in4_coeffs 
  port map (
    din => reinterpret13_output_port_net,
    sync => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => delay1_q_net_x10,
    coeff => register_q_net_x9
  );
  pol1_in4_first_tap : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in4_first_tap 
  port map (
    din => delay1_q_net_x10,
    sync => delay_q_net_x16,
    coeffs => register_q_net_x9,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x73,
    coeff_out => slice1_y_net_x76,
    taps_out => mult_p_net_x86
  );
  pol1_in4_last_tap : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in4_last_tap 
  port map (
    din => d1_q_net_x59,
    coeff => slice1_y_net_x59,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tap_out => mult_p_net_x85
  );
  pol1_in4_tap2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in4_tap2 
  port map (
    din => d1_q_net_x73,
    coeff => slice1_y_net_x76,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x74,
    coeff_out => slice1_y_net_x74,
    taps_out => mult_p_net_x84
  );
  pol1_in4_tap3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in4_tap3 
  port map (
    din => d1_q_net_x74,
    coeff => slice1_y_net_x74,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x65,
    coeff_out => slice1_y_net_x73,
    taps_out => mult_p_net_x83
  );
  pol1_in4_tap4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in4_tap4 
  port map (
    din => d1_q_net_x65,
    coeff => slice1_y_net_x73,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x62,
    coeff_out => slice1_y_net_x62,
    taps_out => mult_p_net_x72
  );
  pol1_in4_tap5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in4_tap5 
  port map (
    din => d1_q_net_x62,
    coeff => slice1_y_net_x62,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x61,
    coeff_out => slice1_y_net_x61,
    taps_out => mult_p_net_x71
  );
  pol1_in4_tap6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in4_tap6 
  port map (
    din => d1_q_net_x61,
    coeff => slice1_y_net_x61,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x60,
    coeff_out => slice1_y_net_x60,
    taps_out => mult_p_net_x68
  );
  pol1_in4_tap7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in4_tap7 
  port map (
    din => d1_q_net_x60,
    coeff => slice1_y_net_x60,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x59,
    coeff_out => slice1_y_net_x59,
    taps_out => mult_p_net_x69
  );
  pol1_in5_coeffs : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in5_coeffs 
  port map (
    din => reinterpret12_output_port_net,
    sync => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => delay1_q_net_x9,
    coeff => register_q_net_x8
  );
  pol1_in5_first_tap : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in5_first_tap 
  port map (
    din => delay1_q_net_x9,
    sync => delay_q_net_x16,
    coeffs => register_q_net_x8,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x67,
    coeff_out => slice1_y_net_x67,
    taps_out => mult_p_net_x70
  );
  pol1_in5_last_tap : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in5_last_tap 
  port map (
    din => d1_q_net_x0,
    coeff => slice1_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tap_out => mult_p_net_x77
  );
  pol1_in5_tap2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in5_tap2 
  port map (
    din => d1_q_net_x67,
    coeff => slice1_y_net_x67,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x66,
    coeff_out => slice1_y_net_x66,
    taps_out => mult_p_net_x76
  );
  pol1_in5_tap3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in5_tap3 
  port map (
    din => d1_q_net_x66,
    coeff => slice1_y_net_x66,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x64,
    coeff_out => slice1_y_net_x65,
    taps_out => mult_p_net_x73
  );
  pol1_in5_tap4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in5_tap4 
  port map (
    din => d1_q_net_x64,
    coeff => slice1_y_net_x65,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x63,
    coeff_out => slice1_y_net_x64,
    taps_out => mult_p_net_x75
  );
  pol1_in5_tap5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in5_tap5 
  port map (
    din => d1_q_net_x63,
    coeff => slice1_y_net_x64,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x109,
    coeff_out => slice1_y_net_x63,
    taps_out => mult_p_net_x74
  );
  pol1_in5_tap6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in5_tap6 
  port map (
    din => d1_q_net_x109,
    coeff => slice1_y_net_x63,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net,
    coeff_out => slice1_y_net_x0,
    taps_out => mult_p_net
  );
  pol1_in5_tap7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in5_tap7 
  port map (
    din => d1_q_net,
    coeff => slice1_y_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0,
    coeff_out => slice1_y_net,
    taps_out => mult_p_net_x0
  );
  pol1_in6_coeffs : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in6_coeffs 
  port map (
    din => reinterpret11_output_port_net,
    sync => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => delay1_q_net,
    coeff => register_q_net
  );
  pol1_in6_first_tap : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in6_first_tap 
  port map (
    din => delay1_q_net,
    sync => delay_q_net_x16,
    coeffs => register_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x1,
    coeff_out => slice1_y_net_x1,
    taps_out => mult_p_net_x1
  );
  pol1_in6_last_tap : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in6_last_tap 
  port map (
    din => d1_q_net_x29,
    coeff => slice1_y_net_x28,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tap_out => mult_p_net_x35
  );
  pol1_in6_tap2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in6_tap2 
  port map (
    din => d1_q_net_x1,
    coeff => slice1_y_net_x1,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x32,
    coeff_out => slice1_y_net_x30,
    taps_out => mult_p_net_x36
  );
  pol1_in6_tap3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in6_tap3 
  port map (
    din => d1_q_net_x32,
    coeff => slice1_y_net_x30,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x31,
    coeff_out => slice1_y_net_x31,
    taps_out => mult_p_net_x37
  );
  pol1_in6_tap4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in6_tap4 
  port map (
    din => d1_q_net_x31,
    coeff => slice1_y_net_x31,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x33,
    coeff_out => slice1_y_net_x32,
    taps_out => mult_p_net_x39
  );
  pol1_in6_tap5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in6_tap5 
  port map (
    din => d1_q_net_x33,
    coeff => slice1_y_net_x32,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x10,
    coeff_out => slice1_y_net_x33,
    taps_out => mult_p_net_x40
  );
  pol1_in6_tap6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in6_tap6 
  port map (
    din => d1_q_net_x10,
    coeff => slice1_y_net_x33,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x28,
    coeff_out => slice1_y_net_x27,
    taps_out => mult_p_net_x31
  );
  pol1_in6_tap7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in6_tap7 
  port map (
    din => d1_q_net_x28,
    coeff => slice1_y_net_x27,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x29,
    coeff_out => slice1_y_net_x28,
    taps_out => mult_p_net_x32
  );
  pol1_in7_coeffs : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in7_coeffs 
  port map (
    din => reinterpret10_output_port_net,
    sync => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => delay1_q_net_x4,
    coeff => register_q_net_x3
  );
  pol1_in7_first_tap : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in7_first_tap 
  port map (
    din => delay1_q_net_x4,
    sync => delay_q_net_x16,
    coeffs => register_q_net_x3,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x30,
    coeff_out => slice1_y_net_x29,
    taps_out => mult_p_net_x33
  );
  pol1_in7_last_tap : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in7_last_tap 
  port map (
    din => d1_q_net_x34,
    coeff => slice1_y_net_x35,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tap_out => mult_p_net_x34
  );
  pol1_in7_tap2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in7_tap2 
  port map (
    din => d1_q_net_x30,
    coeff => slice1_y_net_x29,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x38,
    coeff_out => slice1_y_net_x39,
    taps_out => mult_p_net_x38
  );
  pol1_in7_tap3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in7_tap3 
  port map (
    din => d1_q_net_x38,
    coeff => slice1_y_net_x39,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x39,
    coeff_out => slice1_y_net_x40,
    taps_out => mult_p_net_x45
  );
  pol1_in7_tap4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in7_tap4 
  port map (
    din => d1_q_net_x39,
    coeff => slice1_y_net_x40,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x40,
    coeff_out => slice1_y_net_x38,
    taps_out => mult_p_net_x46
  );
  pol1_in7_tap5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in7_tap5 
  port map (
    din => d1_q_net_x40,
    coeff => slice1_y_net_x38,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x41,
    coeff_out => slice1_y_net_x41,
    taps_out => mult_p_net_x47
  );
  pol1_in7_tap6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in7_tap6 
  port map (
    din => d1_q_net_x41,
    coeff => slice1_y_net_x41,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x35,
    coeff_out => slice1_y_net_x42,
    taps_out => mult_p_net_x48
  );
  pol1_in7_tap7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in7_tap7 
  port map (
    din => d1_q_net_x35,
    coeff => slice1_y_net_x42,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x34,
    coeff_out => slice1_y_net_x35,
    taps_out => mult_p_net_x42
  );
  pol1_in8_coeffs : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in8_coeffs 
  port map (
    din => reinterpret9_output_port_net,
    sync => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => delay1_q_net_x5,
    coeff => register_q_net_x4
  );
  pol1_in8_first_tap : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in8_first_tap 
  port map (
    din => delay1_q_net_x5,
    sync => delay_q_net_x16,
    coeffs => register_q_net_x4,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x36,
    coeff_out => slice1_y_net_x36,
    taps_out => mult_p_net_x41
  );
  pol1_in8_last_tap : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in8_last_tap 
  port map (
    din => d1_q_net_x16,
    coeff => slice1_y_net_x16,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tap_out => mult_p_net_x43
  );
  pol1_in8_tap2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in8_tap2 
  port map (
    din => d1_q_net_x36,
    coeff => slice1_y_net_x36,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x37,
    coeff_out => slice1_y_net_x37,
    taps_out => mult_p_net_x44
  );
  pol1_in8_tap3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in8_tap3 
  port map (
    din => d1_q_net_x37,
    coeff => slice1_y_net_x37,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x19,
    coeff_out => slice1_y_net_x19,
    taps_out => mult_p_net_x23
  );
  pol1_in8_tap4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in8_tap4 
  port map (
    din => d1_q_net_x19,
    coeff => slice1_y_net_x19,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x20,
    coeff_out => slice1_y_net_x20,
    taps_out => mult_p_net_x24
  );
  pol1_in8_tap5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in8_tap5 
  port map (
    din => d1_q_net_x20,
    coeff => slice1_y_net_x20,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x22,
    coeff_out => slice1_y_net_x21,
    taps_out => mult_p_net_x22
  );
  pol1_in8_tap6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in8_tap6 
  port map (
    din => d1_q_net_x22,
    coeff => slice1_y_net_x21,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x23,
    coeff_out => slice1_y_net_x22,
    taps_out => mult_p_net_x25
  );
  pol1_in8_tap7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in8_tap7 
  port map (
    din => d1_q_net_x23,
    coeff => slice1_y_net_x22,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x16,
    coeff_out => slice1_y_net_x16,
    taps_out => mult_p_net_x26
  );
  pol1_in9_coeffs : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in9_coeffs 
  port map (
    din => reinterpret8_output_port_net,
    sync => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => delay1_q_net_x3,
    coeff => register_q_net_x2
  );
  pol1_in9_first_tap : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in9_first_tap 
  port map (
    din => delay1_q_net_x3,
    sync => delay_q_net_x16,
    coeffs => register_q_net_x2,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x17,
    coeff_out => slice1_y_net_x15,
    taps_out => mult_p_net_x18
  );
  pol1_in9_last_tap : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in9_last_tap 
  port map (
    din => d1_q_net_x27,
    coeff => slice1_y_net_x26,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tap_out => mult_p_net_x19
  );
  pol1_in9_tap2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in9_tap2 
  port map (
    din => d1_q_net_x17,
    coeff => slice1_y_net_x15,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x18,
    coeff_out => slice1_y_net_x17,
    taps_out => mult_p_net_x20
  );
  pol1_in9_tap3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in9_tap3 
  port map (
    din => d1_q_net_x18,
    coeff => slice1_y_net_x17,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x21,
    coeff_out => slice1_y_net_x18,
    taps_out => mult_p_net_x21
  );
  pol1_in9_tap4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in9_tap4 
  port map (
    din => d1_q_net_x21,
    coeff => slice1_y_net_x18,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x24,
    coeff_out => slice1_y_net_x23,
    taps_out => mult_p_net_x27
  );
  pol1_in9_tap5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in9_tap5 
  port map (
    din => d1_q_net_x24,
    coeff => slice1_y_net_x23,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x25,
    coeff_out => slice1_y_net_x24,
    taps_out => mult_p_net_x28
  );
  pol1_in9_tap6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in9_tap6 
  port map (
    din => d1_q_net_x25,
    coeff => slice1_y_net_x24,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x26,
    coeff_out => slice1_y_net_x25,
    taps_out => mult_p_net_x29
  );
  pol1_in9_tap7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pol1_in9_tap7 
  port map (
    din => d1_q_net_x26,
    coeff => slice1_y_net_x25,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x27,
    coeff_out => slice1_y_net_x26,
    taps_out => mult_p_net_x30
  );
  convert_1_1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlconvert_pipeline 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 25,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 17,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRoundBanker
  )
  port map (
    clr => '0',
    en => "1",
    din => scale_1_1_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_1_1_dout_net
  );
  convert_1_10 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlconvert_pipeline 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 25,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 17,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRoundBanker
  )
  port map (
    clr => '0',
    en => "1",
    din => scale_1_10_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_1_10_dout_net
  );
  convert_1_11 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlconvert_pipeline 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 25,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 17,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRoundBanker
  )
  port map (
    clr => '0',
    en => "1",
    din => scale_1_11_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_1_11_dout_net
  );
  convert_1_12 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlconvert_pipeline 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 25,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 17,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRoundBanker
  )
  port map (
    clr => '0',
    en => "1",
    din => scale_1_12_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_1_12_dout_net
  );
  convert_1_13 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlconvert_pipeline 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 25,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 17,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRoundBanker
  )
  port map (
    clr => '0',
    en => "1",
    din => scale_1_13_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_1_13_dout_net
  );
  convert_1_14 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlconvert_pipeline 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 25,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 17,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRoundBanker
  )
  port map (
    clr => '0',
    en => "1",
    din => scale_1_14_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_1_14_dout_net
  );
  convert_1_15 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlconvert_pipeline 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 25,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 17,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRoundBanker
  )
  port map (
    clr => '0',
    en => "1",
    din => scale_1_15_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_1_15_dout_net
  );
  convert_1_16 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlconvert_pipeline 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 25,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 17,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRoundBanker
  )
  port map (
    clr => '0',
    en => "1",
    din => scale_1_16_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_1_16_dout_net
  );
  convert_1_2 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlconvert_pipeline 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 25,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 17,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRoundBanker
  )
  port map (
    clr => '0',
    en => "1",
    din => scale_1_2_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_1_2_dout_net
  );
  convert_1_3 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlconvert_pipeline 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 25,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 17,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRoundBanker
  )
  port map (
    clr => '0',
    en => "1",
    din => scale_1_3_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_1_3_dout_net
  );
  convert_1_4 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlconvert_pipeline 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 25,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 17,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRoundBanker
  )
  port map (
    clr => '0',
    en => "1",
    din => scale_1_4_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_1_4_dout_net
  );
  convert_1_5 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlconvert_pipeline 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 25,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 17,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRoundBanker
  )
  port map (
    clr => '0',
    en => "1",
    din => scale_1_5_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_1_5_dout_net
  );
  convert_1_6 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlconvert_pipeline 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 25,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 17,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRoundBanker
  )
  port map (
    clr => '0',
    en => "1",
    din => scale_1_6_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_1_6_dout_net
  );
  convert_1_7 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlconvert_pipeline 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 25,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 17,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRoundBanker
  )
  port map (
    clr => '0',
    en => "1",
    din => scale_1_7_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_1_7_dout_net
  );
  convert_1_8 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlconvert_pipeline 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 25,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 17,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRoundBanker
  )
  port map (
    clr => '0',
    en => "1",
    din => scale_1_8_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_1_8_dout_net
  );
  convert_1_9 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlconvert_pipeline 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 25,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 17,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRoundBanker
  )
  port map (
    clr => '0',
    en => "1",
    din => scale_1_9_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_1_9_dout_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => sync_delay_q_net_x13,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net_x2
  );
  scale_1_1 : entity xil_defaultlib.sysgen_scale_0c6bdd2330 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    ip => addr7_s_net_x14,
    op => scale_1_1_op_net
  );
  scale_1_10 : entity xil_defaultlib.sysgen_scale_0c6bdd2330 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    ip => addr7_s_net_x13,
    op => scale_1_10_op_net
  );
  scale_1_11 : entity xil_defaultlib.sysgen_scale_0c6bdd2330 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    ip => addr7_s_net_x3,
    op => scale_1_11_op_net
  );
  scale_1_12 : entity xil_defaultlib.sysgen_scale_0c6bdd2330 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    ip => addr7_s_net_x7,
    op => scale_1_12_op_net
  );
  scale_1_13 : entity xil_defaultlib.sysgen_scale_0c6bdd2330 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    ip => addr7_s_net_x6,
    op => scale_1_13_op_net
  );
  scale_1_14 : entity xil_defaultlib.sysgen_scale_0c6bdd2330 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    ip => addr7_s_net_x5,
    op => scale_1_14_op_net
  );
  scale_1_15 : entity xil_defaultlib.sysgen_scale_0c6bdd2330 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    ip => addr7_s_net_x4,
    op => scale_1_15_op_net
  );
  scale_1_16 : entity xil_defaultlib.sysgen_scale_0c6bdd2330 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    ip => addr7_s_net_x0,
    op => scale_1_16_op_net
  );
  scale_1_2 : entity xil_defaultlib.sysgen_scale_0c6bdd2330 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    ip => addr7_s_net,
    op => scale_1_2_op_net
  );
  scale_1_3 : entity xil_defaultlib.sysgen_scale_0c6bdd2330 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    ip => addr7_s_net_x1,
    op => scale_1_3_op_net
  );
  scale_1_4 : entity xil_defaultlib.sysgen_scale_0c6bdd2330 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    ip => addr7_s_net_x2,
    op => scale_1_4_op_net
  );
  scale_1_5 : entity xil_defaultlib.sysgen_scale_0c6bdd2330 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    ip => addr7_s_net_x8,
    op => scale_1_5_op_net
  );
  scale_1_6 : entity xil_defaultlib.sysgen_scale_0c6bdd2330 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    ip => addr7_s_net_x12,
    op => scale_1_6_op_net
  );
  scale_1_7 : entity xil_defaultlib.sysgen_scale_0c6bdd2330 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    ip => addr7_s_net_x11,
    op => scale_1_7_op_net
  );
  scale_1_8 : entity xil_defaultlib.sysgen_scale_0c6bdd2330 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    ip => addr7_s_net_x10,
    op => scale_1_8_op_net
  );
  scale_1_9 : entity xil_defaultlib.sysgen_scale_0c6bdd2330 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    ip => addr7_s_net_x9,
    op => scale_1_9_op_net
  );
end structural;
-- Generated from Simulink block pfb_fir_256c_16i_8b_core_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_struct is
  port (
    pol_in : in std_logic_vector( 128-1 downto 0 );
    sync : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    pol_out : out std_logic_vector( 288-1 downto 0 );
    sync_out : out std_logic_vector( 1-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core_struct;
architecture structural of pfb_fir_256c_16i_8b_core_struct is 
  signal pol_in_net : std_logic_vector( 128-1 downto 0 );
  signal concatenate_y_net : std_logic_vector( 288-1 downto 0 );
  signal sync_net : std_logic_vector( 32-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal convert_1_1_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_2_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_3_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_4_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_5_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_6_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_7_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_8_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_9_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_10_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_11_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_12_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_13_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_14_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_15_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert_1_16_dout_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret16_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret15_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret14_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret13_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret12_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret11_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret10_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret9_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret8_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret7_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret6_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret5_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
begin
  pol_in_net <= pol_in;
  pol_out <= concatenate_y_net;
  sync_net <= sync;
  sync_out <= delay1_q_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  bus_create : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_bus_create 
  port map (
    in1 => convert_1_1_dout_net,
    in2 => convert_1_2_dout_net,
    in3 => convert_1_3_dout_net,
    in4 => convert_1_4_dout_net,
    in5 => convert_1_5_dout_net,
    in6 => convert_1_6_dout_net,
    in7 => convert_1_7_dout_net,
    in8 => convert_1_8_dout_net,
    in9 => convert_1_9_dout_net,
    in10 => convert_1_10_dout_net,
    in11 => convert_1_11_dout_net,
    in12 => convert_1_12_dout_net,
    in13 => convert_1_13_dout_net,
    in14 => convert_1_14_dout_net,
    in15 => convert_1_15_dout_net,
    in16 => convert_1_16_dout_net,
    bus_out => concatenate_y_net
  );
  bus_expand : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_bus_expand 
  port map (
    bus_in => pol_in_net,
    msb_out16 => reinterpret16_output_port_net,
    out15 => reinterpret15_output_port_net,
    out14 => reinterpret14_output_port_net,
    out13 => reinterpret13_output_port_net,
    out12 => reinterpret12_output_port_net,
    out11 => reinterpret11_output_port_net,
    out10 => reinterpret10_output_port_net,
    out9 => reinterpret9_output_port_net,
    out8 => reinterpret8_output_port_net,
    out7 => reinterpret7_output_port_net,
    out6 => reinterpret6_output_port_net,
    out5 => reinterpret5_output_port_net,
    out4 => reinterpret4_output_port_net,
    out3 => reinterpret3_output_port_net,
    out2 => reinterpret2_output_port_net,
    lsb_out1 => reinterpret1_output_port_net
  );
  pfb_fir_real : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_pfb_fir_real 
  port map (
    sync => slice_y_net,
    pol1_in1 => reinterpret16_output_port_net,
    pol1_in2 => reinterpret15_output_port_net,
    pol1_in3 => reinterpret14_output_port_net,
    pol1_in4 => reinterpret13_output_port_net,
    pol1_in5 => reinterpret12_output_port_net,
    pol1_in6 => reinterpret11_output_port_net,
    pol1_in7 => reinterpret10_output_port_net,
    pol1_in8 => reinterpret9_output_port_net,
    pol1_in9 => reinterpret8_output_port_net,
    pol1_in10 => reinterpret7_output_port_net,
    pol1_in11 => reinterpret6_output_port_net,
    pol1_in12 => reinterpret5_output_port_net,
    pol1_in13 => reinterpret4_output_port_net,
    pol1_in14 => reinterpret3_output_port_net,
    pol1_in15 => reinterpret2_output_port_net,
    pol1_in16 => reinterpret1_output_port_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    sync_out => delay1_q_net,
    pol1_out1 => convert_1_1_dout_net,
    pol1_out2 => convert_1_2_dout_net,
    pol1_out3 => convert_1_3_dout_net,
    pol1_out4 => convert_1_4_dout_net,
    pol1_out5 => convert_1_5_dout_net,
    pol1_out6 => convert_1_6_dout_net,
    pol1_out7 => convert_1_7_dout_net,
    pol1_out8 => convert_1_8_dout_net,
    pol1_out9 => convert_1_9_dout_net,
    pol1_out10 => convert_1_10_dout_net,
    pol1_out11 => convert_1_11_dout_net,
    pol1_out12 => convert_1_12_dout_net,
    pol1_out13 => convert_1_13_dout_net,
    pol1_out14 => convert_1_14_dout_net,
    pol1_out15 => convert_1_15_dout_net,
    pol1_out16 => convert_1_16_dout_net
  );
  slice : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 32,
    y_width => 1
  )
  port map (
    x => sync_net,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core_default_clock_driver is
  port (
    pfb_fir_256c_16i_8b_core_sysclk : in std_logic;
    pfb_fir_256c_16i_8b_core_sysce : in std_logic;
    pfb_fir_256c_16i_8b_core_sysclr : in std_logic;
    pfb_fir_256c_16i_8b_core_clk1 : out std_logic;
    pfb_fir_256c_16i_8b_core_ce1 : out std_logic
  );
end pfb_fir_256c_16i_8b_core_default_clock_driver;
architecture structural of pfb_fir_256c_16i_8b_core_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => pfb_fir_256c_16i_8b_core_sysclk,
    sysce => pfb_fir_256c_16i_8b_core_sysce,
    sysclr => pfb_fir_256c_16i_8b_core_sysclr,
    clk => pfb_fir_256c_16i_8b_core_clk1,
    ce => pfb_fir_256c_16i_8b_core_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_256c_16i_8b_core is
  port (
    pol_in : in std_logic_vector( 128-1 downto 0 );
    sync : in std_logic_vector( 32-1 downto 0 );
    clk : in std_logic;
    pol_out : out std_logic_vector( 288-1 downto 0 );
    sync_out : out std_logic_vector( 1-1 downto 0 )
  );
end pfb_fir_256c_16i_8b_core;
architecture structural of pfb_fir_256c_16i_8b_core is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "pfb_fir_256c_16i_8b_core,sysgen_core_2019_1,{,compilation=IP Catalog,block_icon_display=Default,family=virtexuplusHBM,part=xcvu37p,speed=-2-e,package=fsvh2892,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=5,system_simulink_period=1,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=10,addsub=112,concat=17,constant=560,convert=16,counter=240,delay=305,logical=112,mult=128,mux=112,register=16,reinterpret=416,relational=224,scale=16,slice=241,spram=112,sprom=128,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
begin
  pfb_fir_256c_16i_8b_core_default_clock_driver : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_default_clock_driver 
  port map (
    pfb_fir_256c_16i_8b_core_sysclk => clk,
    pfb_fir_256c_16i_8b_core_sysce => '1',
    pfb_fir_256c_16i_8b_core_sysclr => '0',
    pfb_fir_256c_16i_8b_core_clk1 => clk_1_net,
    pfb_fir_256c_16i_8b_core_ce1 => ce_1_net
  );
  pfb_fir_256c_16i_8b_core_struct : entity xil_defaultlib.pfb_fir_256c_16i_8b_core_struct 
  port map (
    pol_in => pol_in,
    sync => sync,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    pol_out => pol_out,
    sync_out => sync_out
  );
end structural;

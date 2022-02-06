  sysgen_dut : entity xil_defaultlib.pfb_2p_512c_8i_18o_core 
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

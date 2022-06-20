  sysgen_dut : entity xil_defaultlib.pfb_fir_128c_2p_16i_8b_core 
  port map (
    pol_in1 => pol_in1,
    pol_in0 => pol_in0,
    sync => sync,
    clk => clk,
    pol_out1 => pol_out1,
    pol_out0 => pol_out0,
    sync_out => sync_out
  );

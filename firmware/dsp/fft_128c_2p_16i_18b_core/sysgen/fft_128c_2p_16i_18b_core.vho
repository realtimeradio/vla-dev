  sysgen_dut : entity xil_defaultlib.fft_128c_2p_16i_18b_core 
  port map (
    pol_in0 => pol_in0,
    shift => shift,
    sync => sync,
    pol_in1 => pol_in1,
    clk => clk,
    overflow => overflow,
    pol_out0 => pol_out0,
    sync_out => sync_out,
    pol_out1 => pol_out1
  );

  sysgen_dut : entity xil_defaultlib.fft_256c_16i_18b_core 
  port map (
    pol_in => pol_in,
    shift => shift,
    sync => sync,
    clk => clk,
    overflow => overflow,
    pol_out => pol_out,
    sync_out => sync_out
  );

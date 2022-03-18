  sysgen_dut : entity xil_defaultlib.uram_2048x512_latency3_core 
  port map (
    addr => addr,
    data => data,
    we => we,
    clk => clk,
    dout => dout
  );

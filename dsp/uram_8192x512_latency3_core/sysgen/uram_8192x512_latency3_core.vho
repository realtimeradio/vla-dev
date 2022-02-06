  sysgen_dut : entity xil_defaultlib.uram_8192x512_latency3_core 
  port map (
    data => data,
    addr => addr,
    we => we,
    clk => clk,
    dout => dout
  );

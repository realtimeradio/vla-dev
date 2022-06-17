  sysgen_dut : entity xil_defaultlib.uram_dp_64kx64_latency3_core 
  port map (
    addra => addra,
    addrb => addrb,
    dina => dina,
    dinb => dinb,
    wea => wea,
    web => web,
    clk => clk,
    douta => douta,
    doutb => doutb
  );

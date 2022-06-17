  sysgen_dut : entity xil_defaultlib.uram_dp_32kx64_latency3_core 
  port map (
    addra => addra,
    dina => dina,
    wea => wea,
    addrb => addrb,
    dinb => dinb,
    web => web,
    clk => clk,
    douta => douta,
    doutb => doutb
  );

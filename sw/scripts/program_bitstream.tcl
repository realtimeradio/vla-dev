if { $argc != 1 } {
    puts "Usage: program_bitstream.tcl <some_bit_file.bit>"
} else {
    set bitstream [lindex $argv 0]
    open_hw
    connect_hw_server
    open_hw_target
    
    set_property PROGRAM.FILE $bitstream [get_hw_devices xcvu37p_0]
    current_hw_device [get_hw_devices xcvu37p_0]
    refresh_hw_device -update_hw_probes false [lindex [get_hw_devices xcvu37p_0] 0]
    
    set_property PROBES.FILE {} [get_hw_devices xcvu37p_0]
    set_property FULL_PROBES.FILE {} [get_hw_devices xcvu37p_0]
    set_property PROGRAM.FILE $bitstream [get_hw_devices xcvu37p_0]
    program_hw_devices [get_hw_devices xcvu37p_0]
}



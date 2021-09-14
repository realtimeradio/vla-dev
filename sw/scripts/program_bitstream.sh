
bitfile=`realpath $1`
cmd="vivado -mode batch -source program_bitstream.tcl -tclargs $bitfile"
echo $cmd
$cmd

vivado=vivado
if ! command -v $vivado &> /dev/null
then
    echo "No vivado command detected, using vivado_lab instead"
    vivado=vivado_lab
fi

bitfile=`realpath $1`
cmd="$vivado -mode batch -source program_bitstream.tcl -tclargs $bitfile"
echo $cmd
$cmd

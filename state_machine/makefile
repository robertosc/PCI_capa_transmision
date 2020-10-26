all: yosys sed iverilog gtkwave
iverilog:
	iverilog -o prueba.vvp BancoPruebas.v ../lib/cmos_cells.v
	vvp prueba.vvp
gtkwave:
	gtkwave probador.vcd
yosys:
	yosys -s state_machine.ys
sed:
	sed -i 's/state_machine/state_machine_synth/' state_machine_synth.v

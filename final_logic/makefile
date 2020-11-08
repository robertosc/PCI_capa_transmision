all: final_logic

final_logic:
	iverilog -o final_logic banco_final_logic.v 
	vvp final_logic
	gtkwave final_logic.vcd
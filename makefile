all: final_logic_mod

final_logic_mod:
	iverilog ./final_logic/banco_final_logic.v -o final
	vvp final
	gtkwave final_logic.vcd
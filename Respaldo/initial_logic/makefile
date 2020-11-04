all: initial_logic

initial_logic:
	iverilog -o prueba banco_initial_logic.v
	vvp prueba
	gtkwave prueba_initial_logic.vcd
all: arb

arb:
	iverilog banco_pruebas.v -o bancopruebas
	vvp bancopruebas
	gtkwave arbitro.vcd

all: initial_logic

initial_logic:
	yosys -s initial_logic.ys
	
	sed -i 's/VC0_fifo_mod/VC0_fifo_mod_synth/' initial_logic_synth.v
	sed -i 's/VC1_fifo_mod/VC1_fifo_mod_synth/' initial_logic_synth.v
	sed -i 's/comb_initial/comb_initial_synth/' initial_logic_synth.v
	sed -i 's/demux_initial_mod/demux_initial_mod_synth/' initial_logic_synth.v
	sed -i 's/initial_logic/initial_logic_synth/' initial_logic_synth.v
	sed -i 's/main_fifo_/main_fifo_synth/' initial_logic_synth.v
	sed -i 's/full_fifo_VC0_/full_fifo_VC0_synth/' initial_logic_synth.v
	sed -i 's/empty_fifo_VC0_/empty_fifo_VC0_synth/' initial_logic_synth.v
	sed -i 's/almost_full_fifo_VC0/almost_full_fifo_VC0_synth/' initial_logic_synth.v
	sed -i 's/almost_empty_fifo_VC0/almost_empty_fifo_VC0_synth/' initial_logic_synth.v
	sed -i 's/error_VC0/error_VC0_synth/' initial_logic_synth.v
	sed -i 's/full_fifo_VC1_/full_fifo_VC1_synth/' initial_logic_synth.v
	sed -i 's/empty_fifo_VC1_/empty_fifo_VC1_synth/' initial_logic_synth.v
	sed -i 's/almost_full_fifo_VC1/almost_full_fifo_VC1_synth/' initial_logic_synth.v
	sed -i 's/almost_empty_fifo_VC1/almost_empty_fifo_VC1_synth/' initial_logic_synth.v
	#sed -i 's/almost_empty_fifo_VC1/almost_empty_fifo_VC1_synth/' initial_logic_synth.v
	sed -i 's/error_VC1/error_VC1_synth/' initial_logic_synth.v
	sed -i 's/data_out_VC1/data_out_VC1_synth/' initial_logic_synth.v
	sed -i 's/data_out_VC0/data_out_VC0_synth/' initial_logic_synth.v

	iverilog -o prueba banco_initial_logic.v ../lib/cmos_cells.v
	vvp prueba
	gtkwave prueba_initial_logic.vcd
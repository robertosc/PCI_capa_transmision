all: initial_logic

initial_logic:
	yosys -s initial_logic.ys
	sed -i 's/VC0_fifo/VC0_fifo_synth/' initial_logic_synth.v
	sed -i 's/VC1_fifo/VC1_fifo_synth/' initial_logic_synth.v
	sed -i 's/comb_initial/comb_initial_synth/' initial_logic_synth.v
	sed -i 's/demux_initial/demux_initial_synth/' initial_logic_synth.v
	sed -i 's/initial_logic/initial_logic_synth/' initial_logic_synth.v
	sed -i 's/main_fifo/main_fifo_synth/' initial_logic_synth.v
	sed -i 's/full_fifo_VC0/full_fifo_VC0_synth/' initial_logic_synth.v
	sed -i 's/empty_fifo_VC0/empty_fifo_VC0_synth/' initial_logic_synth.v
	sed -i 's/almost_full_fifo_VC0/almost_full_fifo_VC0_synth/' initial_logic_synth.v
	sed -i 's/almost_empty_fifo_VC0/almost_empty_fifo_VC0_synth/' initial_logic_synth.v
	sed -i 's/almost_empty_fifo_VC0/almost_empty_fifo_VC0_synth/' initial_logic_synth.v
	sed -i 's/error_VC0/error_VC0_synth/' initial_logic_synth.v
	sed -i 's/full_fifo_VC1/full_fifo_VC1_synth/' initial_logic_synth.v
	sed -i 's/empty_fifo_VC1/empty_fifo_VC1_synth/' initial_logic_synth.v
	sed -i 's/almost_full_fifo_VC1/almost_full_fifo_VC1_synth/' initial_logic_synth.v
	sed -i 's/almost_empty_fifo_VC1/almost_empty_fifo_VC1_synth/' initial_logic_synth.v
	sed -i 's/almost_empty_fifo_VC1/almost_empty_fifo_VC1_synth/' initial_logic_synth.v
	sed -i 's/error_VC1/error_VC1_synth/' initial_logic_synth.v
	sed -i 's/data_out_VC1/data_out_VC1_synth/' initial_logic_synth.v
	iverilog -o prueba banco_initial_logic.v ../lib/cmos_cells.v
	vvp prueba
	gtkwave prueba_initial_logic.vcd
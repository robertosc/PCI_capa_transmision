`include "initial_logic.v"
`include "initial_logic_synth.v"
`include "probador_initial_logic.v"

module banco_initial_logic();

	parameter address_width = 2;
	parameter data_width = 6;

    wire clk, reset, wr_enable;
    wire [data_width-1:0] data_in;
    wire pop_VC0_fifo, pop_VC1_fifo;
    wire full_fifo_VC0_;
    wire empty_fifo_VC0_;
    wire almost_full_fifo_VC0;
    wire almost_empty_fifo_VC0;
    wire error_VC0;
    wire [5:0] data_out_VC0;
    wire full_fifo_VC1_;
    wire empty_fifo_VC1_;
    wire almost_full_fifo_VC1;
    wire almost_empty_fifo_VC1;
    wire error_VC1;
    wire [5:0] data_out_VC1;
	wire full_fifo_VC0_synth;
    wire empty_fifo_VC0_synth;
    wire almost_full_fifo_VC0_synth;
    wire almost_empty_fifo_VC0_synth;
    wire error_VC0_synth;
    wire [5:0] data_out_VC0_synth;
    wire full_fifo_VC1_synth;
    wire empty_fifo_VC1_synth;
    wire almost_full_fifo_VC1_synth;
    wire almost_empty_fifo_VC1_synth;
    wire error_VC1_synth;
    wire [5:0] data_out_VC1_synth;
	wire pause_vc0,pause_vc1;

    initial_logic initial_logic1(/*AUTOINST*/
				 // Outputs
				 .full_fifo_VC0_		(full_fifo_VC0_),
				 .empty_fifo_VC0_	(empty_fifo_VC0_),
				 .almost_full_fifo_VC0	(almost_full_fifo_VC0),
				 .almost_empty_fifo_VC0	(almost_empty_fifo_VC0),
				 .error_VC0		(error_VC0),
				 .data_out_VC0		(data_out_VC0[5:0]),
				 .full_fifo_VC1_		(full_fifo_VC1_),
				 .empty_fifo_VC1_	(empty_fifo_VC1_),
				 .almost_full_fifo_VC1	(almost_full_fifo_VC1),
				 .almost_empty_fifo_VC1	(almost_empty_fifo_VC1),
				 .error_VC1		(error_VC1),
				 .data_out_VC1		(data_out_VC1[5:0]),
				 // Inputs
				 .clk			(clk),
				 .reset			(reset),
				 .wr_enable		(wr_enable),
				 .data_in		(data_in[data_width-1:0]),
				 .pop_VC0_fifo		(pop_VC0_fifo),
<<<<<<< HEAD:initial_logic/banco_initial_logic.v
				 .pop_VC1_fifo		(pop_VC1_fifo),
				 .pause_vc0			(pause_vc0),
				 .pause_vc1			(pause_vc1));

=======
				 .pop_VC1_fifo		(pop_VC1_fifo));
	
>>>>>>> 2a54feb... copia de initial-Roberto:initial_logic_copy_roberto/banco_initial_logic.v
	initial_logic_synth initial_logic1_synth(/*AUTOINST*/
				 // Outputs
				 .full_fifo_VC0_synth		(full_fifo_VC0_synth),
				 .empty_fifo_VC0_synth	(empty_fifo_VC0_synth),
				 .almost_full_fifo_VC0_synth	(almost_full_fifo_VC0_synth),
				 .almost_empty_fifo_VC0_synth	(almost_empty_fifo_VC0_synth),
				 .error_VC0_synth		(error_VC0_synth),
				 .data_out_VC0_synth		(data_out_VC0_synth[5:0]),
				 .full_fifo_VC1_synth		(full_fifo_VC1_synth),
				 .empty_fifo_VC1_synth	(empty_fifo_VC1_synth),
				 .almost_full_fifo_VC1_synth	(almost_full_fifo_VC1_synth),
				 .almost_empty_fifo_VC1_synth	(almost_empty_fifo_VC1_synth),
				 .error_VC1_synth		(error_VC1_synth),
				 .data_out_VC1_synth		(data_out_VC1_synth[5:0]),
				 // Inputs
				 .clk			(clk),
				 .reset			(reset),
				 .wr_enable		(wr_enable),
				 .data_in		(data_in[data_width-1:0]),
				 .pop_VC0_fifo		(pop_VC0_fifo),
				 .pop_VC1_fifo		(pop_VC1_fifo),
				 .pause_vc0			(pause_vc0),
				 .pause_vc1			(pause_vc1));

    probador_initial_logic probador_initial_logic_1(/*AUTOINST*/
						    // Outputs
						    .clk		(clk),
						    .reset		(reset),
						    .wr_enable		(wr_enable),
						    .data_in		(data_in[data_width-1:0]),
						    .pop_VC0_fifo	(pop_VC0_fifo),
						    .pop_VC1_fifo	(pop_VC1_fifo),
						    // Inputs
						    .full_fifo_VC0_	(full_fifo_VC0_),
						    .empty_fifo_VC0_	(empty_fifo_VC0_),
						    .almost_full_fifo_VC0(almost_full_fifo_VC0),
						    .almost_empty_fifo_VC0(almost_empty_fifo_VC0),
						    .error_VC0		(error_VC0),
						    .data_out_VC0	(data_out_VC0[5:0]),
						    .full_fifo_VC1_	(full_fifo_VC1_),
						    .empty_fifo_VC1_	(empty_fifo_VC1_),
						    .almost_full_fifo_VC1(almost_full_fifo_VC1),
						    .almost_empty_fifo_VC1(almost_empty_fifo_VC1),
						    .error_VC1		(error_VC1),
							.full_fifo_VC0_synth	(full_fifo_VC0_synth),
						    .empty_fifo_VC0_synth	(empty_fifo_VC0_synth),
						    .almost_full_fifo_VC0_synth(almost_full_fifo_VC0_synth),
						    .almost_empty_fifo_VC0_synth(almost_empty_fifo_VC0_synth),
						    .error_VC0_synth		(error_VC0_synth),
						    .data_out_VC0_synth	(data_out_VC0_synth[5:0]),
						    .full_fifo_VC1_synth	(full_fifo_VC1_synth),
						    .empty_fifo_VC1_synth	(empty_fifo_VC1_synth),
						    .almost_full_fifo_VC1_synth(almost_full_fifo_VC1_synth),
						    .almost_empty_fifo_VC1_synth(almost_empty_fifo_VC1_synth),
						    .error_VC1_synth		(error_VC1_synth),
						    .data_out_VC1_synth	(data_out_VC1_synth[5:0]),
							.pause_vc0			(pause_vc0),
							.pause_vc1			(pause_vc1));
    
endmodule

`include "initial_logic.v"
`include "probador_initial_logic.v"

module banco_initial_logic();

	parameter address_width = 2;
	parameter data_width = 6;

    wire clk, reset, wr_enable;
    wire [data_width-1:0] data_in;
    wire pop_VC0_fifo, pop_VC1_fifo;
    wire full_fifo_VC0;
    wire empty_fifo_VC0;
    wire almost_full_fifo_VC0;
    wire almost_empty_fifo_VC0;
    wire error_VC0;
    wire [5:0] data_out_VC0;
    wire full_fifo_VC1;
    wire empty_fifo_VC1;
    wire almost_full_fifo_VC1;
    wire almost_empty_fifo_VC1;
    wire error_VC1;
    wire [5:0] data_out_VC1;

    initial_logic initial_logic1(/*AUTOINST*/
				 // Outputs
				 .full_fifo_VC0		(full_fifo_VC0),
				 .empty_fifo_VC0	(empty_fifo_VC0),
				 .almost_full_fifo_VC0	(almost_full_fifo_VC0),
				 .almost_empty_fifo_VC0	(almost_empty_fifo_VC0),
				 .error_VC0		(error_VC0),
				 .data_out_VC0		(data_out_VC0[5:0]),
				 .full_fifo_VC1		(full_fifo_VC1),
				 .empty_fifo_VC1	(empty_fifo_VC1),
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
				 .pop_VC1_fifo		(pop_VC1_fifo));

    probador_initial_logic probador_initial_logic_1(/*AUTOINST*/
						    // Outputs
						    .clk		(clk),
						    .reset		(reset),
						    .wr_enable		(wr_enable),
						    .data_in		(data_in[data_width-1:0]),
						    .pop_VC0_fifo	(pop_VC0_fifo),
						    .pop_VC1_fifo	(pop_VC1_fifo),
						    // Inputs
						    .full_fifo_VC0	(full_fifo_VC0),
						    .empty_fifo_VC0	(empty_fifo_VC0),
						    .almost_full_fifo_VC0(almost_full_fifo_VC0),
						    .almost_empty_fifo_VC0(almost_empty_fifo_VC0),
						    .error_VC0		(error_VC0),
						    .data_out_VC0	(data_out_VC0[5:0]),
						    .full_fifo_VC1	(full_fifo_VC1),
						    .empty_fifo_VC1	(empty_fifo_VC1),
						    .almost_full_fifo_VC1(almost_full_fifo_VC1),
						    .almost_empty_fifo_VC1(almost_empty_fifo_VC1),
						    .error_VC1		(error_VC1),
						    .data_out_VC1	(data_out_VC1[5:0]));
    
endmodule

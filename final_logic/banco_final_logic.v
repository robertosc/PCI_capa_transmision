`include "./final_logic/final_logic.v"
`include "./final_logic/probador_final_logic.v"

module banco_final_logic();

    wire [5:0] data_out_VC0, data_out_VC1;
    wire [5:0] data_out_D0, data_out_D1;

final_logic final_logic_cond (/*AUTOINST*/
			      // Outputs
			      .data_out_D0	(data_out_D0[5:0]),
			      .data_out_D1	(data_out_D1[5:0]),
			      .pop_VC0_fifo	(pop_VC0_fifo),
			      .pop_VC1_fifo	(pop_VC1_fifo),
			      .error_D1		(error_D1),
			      .error_D0		(error_D0),
			      // Inputs
			      .data_out_VC0	(data_out_VC0[5:0]),
			      .data_out_VC1	(data_out_VC1[5:0]),
			      .clk		(clk),
			      .reset_L		(reset_L),
			      .empty_fifo_VC0	(empty_fifo_VC0),
			      .empty_fifo_VC1	(empty_fifo_VC1),
			      .D0_pop		(D0_pop),
			      .D1_pop		(D1_pop));

probador_final_logic probador_final_logic(/*AUTOINST*/
					  // Outputs
					  .data_out_VC0		(data_out_VC0[5:0]),
					  .data_out_VC1		(data_out_VC1[5:0]),
					  .clk			(clk),
					  .reset_L		(reset_L),
					  .empty_fifo_VC0	(empty_fifo_VC0),
					  .empty_fifo_VC1	(empty_fifo_VC1),
					  .D0_pop		(D0_pop),
					  .D1_pop		(D1_pop),
					  // Inputs
					  .data_out_D0		(data_out_D0[5:0]),
					  .data_out_D1		(data_out_D1[5:0]),
					  .pop_VC0_fifo		(pop_VC0_fifo),
					  .pop_VC1_fifo		(pop_VC1_fifo),
					  .error_D0		(error_D0),
					  .error_D1		(error_D1));

endmodule

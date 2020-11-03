`include "initial_logic.v"
`include "probador_initial_logic.v"

module banco_initial_logic();

	parameter address_width = 2;
	parameter data_width = 6;

    wire [data_width-1:0] data_in;
    wire pause_vc0, pause_vc1;

    wire [data_width-1:0] data_out_demux_initial_vc0;
	wire [data_width-1:0] data_out_demux_initial_vc1;
    wire push_vc0;
    wire push_vc1;

    initial_logic initial_logic1(/*AUTOINST*/
				 // Outputs
				 .data_out_demux_initial_vc0(data_out_demux_initial_vc0[5:0]),
				 .data_out_demux_initial_vc1(data_out_demux_initial_vc1[5:0]),
				 .push_vc0		(push_vc0),
				 .push_vc1		(push_vc1),
				 // Inputs
				 .clk			(clk),
				 .reset			(reset),
				 .wr_enable		(wr_enable),
				 .data_in		(data_in[data_width-1:0]),
				 .pause_vc0		(pause_vc0),
				 .pause_vc1		(pause_vc1));

    probador_initial_logic probador_initial_logic_1(/*AUTOINST*/
						    // Outputs
						    .clk		(clk),
						    .wr_enable		(wr_enable),
						    .reset		(reset),
						    .pause_vc0		(pause_vc0),
						    .pause_vc1		(pause_vc1),
						    .data_in		(data_in[data_width-1:0]),
						    // Inputs
						    .data_out_demux_initial_vc0(data_out_demux_initial_vc0[5:0]),
						    .data_out_demux_initial_vc1(data_out_demux_initial_vc1[5:0]),
						    .push_vc0		(push_vc0),
						    .push_vc1		(push_vc1));
    
endmodule

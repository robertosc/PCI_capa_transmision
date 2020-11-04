`include "comb_initial.v"
`include "demux_initial_mod.v"
`include "main_fifo_.v"
`include "VC0_fifo_mod.v"
`include "VC1_fifo_mod.v"

module initial_logic#(
            parameter data_width = 6,
			parameter address_width = 2
            )
            (
            input clk, reset, wr_enable,
            input [data_width-1:0] data_in,
            input pop_VC0_fifo, pop_VC1_fifo,
            output full_fifo_VC0_,
            output empty_fifo_VC0_,
            output almost_full_fifo_VC0,
            output almost_empty_fifo_VC0,
            output error_VC0,
            output [5:0] data_out_VC0,
            output full_fifo_VC1_,
            output empty_fifo_VC1_,
            output almost_full_fifo_VC1,
            output almost_empty_fifo_VC1,
            output error_VC1,
            output [5:0] data_out_VC1 );


	wire  [5:0] data_out_demux_initial_vc0;
	wire  [5:0] data_out_demux_initial_vc1;
    wire pop_main_fifo, empty_main_fifo, valid_pop_out; 
    wire full_fifo, empty_fifo, almost_full_fifo, almost_empty_fifo, error;
    wire [data_width-1:0] data_in_demux_initial;
    wire push_vc0,push_vc1;

    main_fifo_ fifo_main (.clk(clk), 
                    .reset(reset), 
                    .wr_enable(wr_enable), 
                    .rd_enable(pop_main_fifo), 
                    .data_in(data_in),
                    .full_fifo(full_fifo), 
                    .empty_fifo(empty_main_fifo), 
                    .almost_full_fifo(almost_full_fifo), 
                    .almost_empty_fifo(almost_empty_fifo), 
                    .error(error), 
                    .data_out(data_in_demux_initial));

    comb_initial comb_initial_1(.clk(clk), 
                                .pause_vc0(almost_full_fifo_VC0), 
                                .pause_vc1(almost_full_fifo_VC1), 
                                .empty_main_fifo(empty_main_fifo),
                                .pop_main_fifo(pop_main_fifo), 
                                .valid_pop_out(valid_pop_out));

    demux_initial_mod demux_initial_1(.clk(clk), 
                                .data_in_demux_initial(data_in_demux_initial), 
                                .valid_pop_out(valid_pop_out),
                                .reset(reset), 
                                .data_out_demux_initial_vc0(data_out_demux_initial_vc0), 
                                .data_out_demux_initial_vc1(data_out_demux_initial_vc1), 
                                .push_vc0(push_vc0), 
                                .push_vc1(push_vc1));

    VC0_fifo_mod fifo_VC0 (.clk(clk), 
                    .reset(reset), 
                    .wr_enable(push_vc0), 
                    .rd_enable(pop_VC0_fifo), 
                    .data_in(data_out_demux_initial_vc0),
                    .full_fifo_VC0_(full_fifo_VC0_), 
                    .empty_fifo_VC0_(empty_fifo_VC0_), 
                    .almost_full_fifo_VC0(almost_full_fifo_VC0), 
                    .almost_empty_fifo_VC0(almost_empty_fifo_VC0), 
                    .error_VC0(error_VC0), 
                    .data_out_VC0(data_out_VC0));

    VC1_fifo_mod fifo_VC1 (.clk(clk), .reset(reset), .wr_enable(push_vc1), .rd_enable(pop_VC1_fifo), .data_in(data_out_demux_initial_vc1),
                    .full_fifo_VC1_(full_fifo_VC1_), .empty_fifo_VC1_(empty_fifo_VC1_), .almost_full_fifo_VC1(almost_full_fifo_VC1), 
                    .almost_empty_fifo_VC1(almost_empty_fifo_VC1), .error_VC1(error_VC1), .data_out_VC1(data_out_VC1));

endmodule
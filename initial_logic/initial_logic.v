`include "comb_initial.v"
`include "demux_initial.v"
`include "fifo.v"

module initial_logic#(
            parameter data_width = 6,
			parameter address_width = 2
            )
            (
            input clk, reset, wr_enable,
            input [data_width-1:0] data_in,
            input pause_vc0, pause_vc1,
			output  [5:0] data_out_demux_initial_vc0,
			output  [5:0] data_out_demux_initial_vc1,
            output  push_vc0,
            output  push_vc1);

    wire pop_main_fifo, empty_main_fifo, valid_pop_out; 
    wire full_fifo, empty_fifo, almost_full_fifo, almost_empty_fifo, error;
    wire [data_width-1:0] data_in_demux_initial;

    fifo fifo_main (.clk(clk), .reset(reset), .wr_enable(wr_enable), .rd_enable(pop_main_fifo), .data_in(data_in),
                    .full_fifo(full_fifo), .empty_fifo(empty_main_fifo), .almost_full_fifo(almost_full_fifo), 
                    .almost_empty_fifo(almost_empty_fifo), .error(error), .data_out(data_in_demux_initial));

    comb_initial comb_initial_1(.clk(clk), .pause_vc0(pause_vc0), .pause_vc1(pause_vc1), .empty_main_fifo(empty_main_fifo),
                                .pop_main_fifo(pop_main_fifo), .valid_pop_out(valid_pop_out));

    demux_initial demux_initial_1(.clk(clk), .data_in_demux_initial(data_in_demux_initial), .valid_pop_out(valid_pop_out),
                                  .reset(reset), .data_out_demux_initial_vc0(data_out_demux_initial_vc0), 
                                  .data_out_demux_initial_vc1(data_out_demux_initial_vc1), .push_vc0(push_vc0), .push_vc1(push_vc1));

endmodule
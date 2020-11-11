`include "initial_logic.v"
`include "final_logic.v"

module full_logic#(
            parameter data_width = 6,
			parameter address_width = 2
            )
            (input clk, reset, wr_enable,
            input [data_width-1:0] data_in,
            input D0_pop, D1_pop,
            output [5:0] data_out_D0, data_out_D1,
            output error_D0, error_D1
            );

wire pop_VC0_fifo, pop_VC1_fifo;
wire [5:0] data_out_VC0,data_out_VC1;
wire empty_fifo_VC0, empty_fifo_VC1;

    initial_logic initial_logic_1(
        .clk                   ( clk                   ),
        .reset                 ( reset                 ),
        .wr_enable             ( wr_enable             ),
        .data_in               ( data_in[5:0]                ),
        .pop_VC0_fifo          ( pop_VC0_fifo          ),
        .pop_VC1_fifo          ( pop_VC1_fifo          ),
        .full_fifo_VC0         ( full_fifo_VC0         ),
        .empty_fifo_VC0        ( empty_fifo_VC0        ),
        .almost_full_fifo_VC0  ( almost_full_fifo_VC0  ),
        .almost_empty_fifo_VC0 ( almost_empty_fifo_VC0 ),
        .error_VC0             ( error_VC0             ),
        .data_out_VC0          ( data_out_VC0[5:0]          ),
        .full_fifo_VC1         ( full_fifo_VC1         ),
        .empty_fifo_VC1        ( empty_fifo_VC1        ),
        .almost_full_fifo_VC1  ( almost_full_fifo_VC1  ),
        .almost_empty_fifo_VC1 ( almost_empty_fifo_VC1 ),
        .error_VC1             ( error_VC1             ),
        .data_out_VC1          ( data_out_VC1[5:0]           )
    );

    final_logic final_logic_1(
    .data_out_VC0   ( data_out_VC0[5:0]    ),
    .data_out_VC1   ( data_out_VC1[5:0]    ),
    .clk            ( clk            ),
    .reset_L        ( reset          ),
    .empty_fifo_VC0 ( empty_fifo_VC0 ),
    .empty_fifo_VC1 ( empty_fifo_VC1 ),
    .D0_pop         ( D0_pop         ),
    .D1_pop         ( D1_pop         ),
    .data_out_D0    ( data_out_D0[5:0]     ),
    .data_out_D1    ( data_out_D1[5:0]     ),
    .pop_VC0_fifo   ( pop_VC0_fifo   ),
    .pop_VC1_fifo   ( pop_VC1_fifo   ),
    .error_D1       ( error_D1       ),
    .error_D0       ( error_D0       )
);


endmodule
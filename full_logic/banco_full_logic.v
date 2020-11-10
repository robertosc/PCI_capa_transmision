`include "full_logic.v"
`include "probador_full_logic.v"
//`include "./lib/cmos_cells.v"

module banco_full_logic();
    wire [5:0] data_out_D0, data_out_D1, data_in;

full_logic full_logic_cond(
    .clk         ( clk         ),
    .reset       ( reset       ),
    .wr_enable   ( wr_enable   ),
    .data_in     ( data_in[5:0]     ),
    .D0_pop      ( D0_pop      ),
    .D1_pop      ( D1_pop      ),
    .data_out_D0 ( data_out_D0[5:0] ),
    .data_out_D1 ( data_out_D1[5:0] ),
    .error_D0    ( error_D0    ),
    .error_D1    ( error_D1    )
);


probador_full_logic probador_full_logic_1(
    .clk         ( clk         ),
    .reset       ( reset       ),
    .wr_enable   ( wr_enable   ),
    .data_in     ( data_in[5:0]     ),
    .D0_pop      ( D0_pop      ),
    .D1_pop      ( D1_pop      ),
    .data_out_D0 ( data_out_D0[5:0] ),
    .data_out_D1 ( data_out_D1[5:0] ),
    .error_D0    ( error_D0    ),
    .error_D1   ( error_D1   )
);


endmodule
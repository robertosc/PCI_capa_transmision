`include "arbitro_mux.v"
`include "arbitro_demux.v"


module arbitro_enrutamiento(input [5:0]VC0, VC1,
                            input clk, reset_L, pop_delay_VCO,
                            output [5:0] D0, D1);

    wire [5:0] mux_arbitro_1;

    arbitro_mux u_arbitro_muxes(
        .reset_L       ( reset_L       ),
        .clk           ( clk           ),
        .VC0           ( VC0 [5:0]          ),
        .VC1           ( VC1 [5:0]          ),
        .pop_delay_VCO ( pop_delay_VCO ),
        .mux_arbitro_1 ( mux_arbitro_1 [5:0] )
    );


    arbitro_demux u_arbitro_demux(
        .mux_arbitro_1 ( mux_arbitro_1[5:0] ),
        .reset_L       ( reset_L       ),
        .D0            ( D0           [5:0] ),
        .D1            ( D1           [5:0] )
    );


endmodule
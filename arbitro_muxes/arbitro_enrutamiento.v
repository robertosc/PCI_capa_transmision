`include "arbitro_mux.v"
`include "arbitro_demux.v"
`include "logica_pops.v"


module arbitro_enrutamiento(input [5:0]VC0, VC1,
                            input clk, reset_L,
                            input VC0_empty, VC1_empty, D1_pause, D0_pause,
                            output VC1_pop, VC0_pop,
                            output [5:0] D0, D1);

    wire [5:0] mux_arbitro_1;
    wire pop_delay_VC0, pop_delay_VC1;

    arbitro_mux u_arbitro_muxes(
        .reset_L       ( reset_L       ),
        .clk           ( clk           ),
        .VC0           ( VC0 [5:0]          ),
        .VC1           ( VC1 [5:0]          ),
        .pop_delay_VC0 ( pop_delay_VC0 ),
        .pop_delay_VC1 ( pop_delay_VC1 ),
        .VC0_empty (VC0_empty),
        .mux_arbitro_1 ( mux_arbitro_1 [5:0] )
    );


    arbitro_demux u_arbitro_demux(
        .mux_arbitro_1 ( mux_arbitro_1[5:0] ),
        .reset_L       ( reset_L       ),
        .D0            ( D0           [5:0] ),
        .D1            ( D1           [5:0] )
    );


    logica_pops u_logica_pops(
        .VC0_empty     ( VC0_empty     ),
        .VC1_empty     ( VC1_empty     ),
        .D0_pause      ( D0_pause      ),
        .D1_pause      ( D1_pause      ),
        .clk           ( clk           ),
        .VC0_pop       ( VC0_pop       ),
        .VC1_pop       ( VC1_pop       ),
        .pop_delay_VC0 ( pop_delay_VC0 ),
        .pop_delay_VC1 ( pop_delay_VC1 )
    );


endmodule
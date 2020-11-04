`include "arbitro_enrutamiento.v"
`include "probador_arbitro.v"

module bancopruebas();

    wire [5:0] VC0, VC1;
    wire [5:0] D0, D1;

arbitro_enrutamiento u_arbitro_enrutamiento(
    .VC0       ( VC0 [5:0]      ),
    .VC1       ( VC1 [5:0]      ),
    .clk       ( clk       ),
    .reset_L   ( reset_L   ),
    .VC0_empty ( VC0_empty ),
    .VC1_empty ( VC1_empty ),
    .VC1_pop   ( VC1_pop   ),
    .VC0_pop   ( VC0_pop   ),
    .D0        ( D0 [5:0]       ),
    .D1        ( D1 [5:0]       )
);


probador_arbitro u_probador_arbitro(
    .VC0           ( VC0 [5:0]          ),
    .VC1           ( VC1 [5:0]          ),
    .clk           ( clk           ),
    .reset_L       ( reset_L       ),
    .pop_delay_VCO ( pop_delay_VCO ),
    .pop_delay_VC1 ( pop_delay_VC1 ),
    .VC0_empty     ( VC0_empty     ),
    .VC1_empty     ( VC1_empty     ),
    .D0            ( D0 [5:0]           ),
    .D1            ( D1 [5:0]           )
);



endmodule
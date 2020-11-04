`include "arbitro_enrutamiento.v"
`include "D0_fifo.v"
`include "D1_fifo.v"

module final_logic#(
            parameter data_width = 6,
			parameter address_width = 2
            )
            (input [5:0] data_out_VC0, data_out_VC1,
            input clk, reset_L, empty_fifo_VC0, empty_fifo_VC1,
            input D0_pop, D1_pop,
            output [5:0] data_out_D0, data_out_D1);



endmodule

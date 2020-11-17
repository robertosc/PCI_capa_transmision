module retraso1(input reset_L, clk,
					input [5:0] VC0,
					input [5:0] VC1,
					input pop_delay_VC0, pop_delay_VC1,
					input VC0_empty, VC1_empty,
                    output reg VC0_empty_retrasado, VC1_empty_retrasado,
                    output reg  [5:0] VC0_retrasado,
					output reg  [5:0] VC1_retrasado);
					

	always@(posedge clk) begin
        VC0_retrasado[5:0] <= VC0[5:0];
		VC1_retrasado[5:0] <= VC1[5:0];
		VC0_empty_retrasado <= VC0_empty;
        VC1_empty_retrasado <= VC1_empty;
	end


endmodule
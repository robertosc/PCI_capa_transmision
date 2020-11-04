module arbitro_mux(input reset_L, clk,
					input [5:0] VC0,
					input [5:0] VC1,
					input pop_delay_VC0, pop_delay_VC1,
					input VC0_empty,
					output reg [5:0] mux_arbitro_1,
					output reg destiny);

	always@(posedge clk) begin
		if(~reset_L) begin
			mux_arbitro_1 <= 0;
			destiny <= 0;
		end
		else begin
			if (~VC0_empty) begin
				if(pop_delay_VC0) begin
					mux_arbitro_1 <= VC0;
					destiny <= VC0[4];
				end
			end
			else begin
				if(pop_delay_VC1) begin
					mux_arbitro_1 <= VC1;
					destiny <= VC1[4];
				end
			end 
		end 
	end


endmodule
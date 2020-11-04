module arbitro_mux(input reset_L, clk,
					input [5:0] VC0,
					input [5:0] VC1,
					input pop_delay_VCO, pop_delay_VC1,
					input VC0_empty,
					output reg [5:0] mux_arbitro_1);

	always@(posedge clk) begin
		if(~reset_L) begin
			mux_arbitro_1 <= 0;
		end
		else begin
			if (~VC0_empty) begin
				mux_arbitro_1 <= VC0;
			end
			else begin
				if()
			end
		end 
	end


endmodule
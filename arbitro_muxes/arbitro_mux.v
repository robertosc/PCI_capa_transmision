module arbitro_mux(input reset_L, clk,
					input [5:0] VC0,
					input [5:0] VC1,
					input pop_delay_VC0, pop_delay_VC1,
					input VC0_empty,
					output reg [5:0] D0_out, D1_out);

	always@(posedge clk) begin
		if(~reset_L) begin
			D0_out <= 0;
			D1_out <= 0;
		end
		else begin
			if (~VC0_empty) begin
				if(pop_delay_VC0) begin
					if (VC0[4] == 0) D0_out <= VC0;
					else D1_out <= VC0;
				end
			end
			else begin
				if(pop_delay_VC1) begin
					if (VC1[4] == 0) D0_out <= VC1;
					else D1_out <= VC1;
				end
			end 
		end 
	end


endmodule
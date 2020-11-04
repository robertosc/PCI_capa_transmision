module arbitro_mux(input reset_L, clk,
                    input [5:0] VC0,
                    input [5:0] VC1,
                    input pop_delay_VCO,
                    output reg [5:0] mux_arbitro_1);

    always@(posedge clk) begin
       if(~reset_L) begin
           mux_arbitro_1 <= 0;
       end
       else begin
            case (pop_delay_VCO)
                0: mux_arbitro_1 <= VC1;
                1: mux_arbitro_1 <= VC0;
            endcase
       end 
    end


endmodule
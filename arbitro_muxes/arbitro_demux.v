module arbitro_demux(input [5:0] mux_arbitro_1,
                    input reset_L,
                    output reg [5:0] D0, D1);

    always@(*) begin
        if(~reset_L) begin
            D0 = 0;
            D1 = 0;
        end
        else begin
            case (mux_arbitro_1[4])
                0: D0 = mux_arbitro_1;
                1: D1 = mux_arbitro_1;
            endcase
        end
    end

endmodule
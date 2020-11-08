module D1_fifo #(
            parameter data_width = 6,
			parameter address_width = 2
            )
            (
            input clk, reset_L, wr_enable, rd_enable,
            input [data_width-1:0] data_in,
            output full_fifo_D1,
            output empty_fifo_D1,
            output almost_full_fifo_D1,
            output almost_empty_fifo_D1,
            output error_D1,
            output reg [data_width-1:0] data_out_D1
            );

    parameter size_fifo = 2**address_width;
    reg [data_width-1:0] mem [0:size_fifo-1];
    reg [address_width-1:0] wr_ptr;
    reg [address_width-1:0] rd_ptr;
    reg [address_width:0] cnt;

    assign full_fifo_D1 = (cnt == size_fifo);
    assign empty_fifo_D1 = (cnt == 0);  
    assign error_D1 = (cnt > size_fifo);
    assign almost_empty_fifo_D1 = (cnt == 1);
    assign almost_full_fifo_D1 = (cnt == size_fifo-1);


// WRITE //
    always @(posedge clk) begin
       if (reset_L == 0) begin
       wr_ptr <= 0;
       end
       else begin
           if (wr_enable == 1) begin
                mem[wr_ptr] <= data_in;
                wr_ptr <= wr_ptr+1;
           end
       end  
    end

// READ //
    always @(posedge clk) begin
       if (reset_L == 0) begin
       rd_ptr <= 0;
       data_out_D1 <=0;
       end
       else begin
           if (rd_enable == 1) begin
                data_out_D1 <= mem[rd_ptr];
                rd_ptr <= rd_ptr+1;
           end
           else data_out_D1 <=0;
       end  
    end

//COUNTERS//
    always @(posedge clk) begin
       if (reset_L == 0) begin
            cnt <= 0;
       end
       else begin
           case ({wr_enable, rd_enable})
               2'b00: cnt <= cnt;
               2'b01: cnt <= cnt-1;
               2'b10: cnt <= cnt+1;
               2'b11: cnt <= cnt;
               default: cnt <= cnt;
           endcase
           end
       end  

  
       
endmodule
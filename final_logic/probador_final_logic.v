module probador_final_logic(output reg [5:0] data_out_VC0, data_out_VC1,
                            output reg clk, reset_L,
                            output reg empty_fifo_VC0, empty_fifo_VC1,
                            output reg D0_pop, D1_pop,
                            input [5:0] data_out_D0, data_out_D1,
                            input pop_VC0_fifo, pop_VC1_fifo, error_D0, error_D1);

	initial begin
	$dumpfile("final_logic.vcd");
	$dumpvars;

    reset_L <= 0;
    empty_fifo_VC0 <= 0;
    empty_fifo_VC1 <= 0;
    D0_pop <= 0;
    D1_pop <= 0;

	@(posedge clk);
	@(posedge clk);
    reset_L <= 1;
    data_out_VC0 <= 6'b110100;
    data_out_VC1 <= 6'b110110;
    D1_pop = 1;
    @(posedge clk);

    data_out_VC0 <= 6'b100101;
    data_out_VC1 <= 6'b101100;

    @(posedge clk);
    empty_fifo_VC0 <= 1;
    data_out_VC0 <= 6'b110100;
    data_out_VC1 <= 6'b110100;

    @(posedge clk);
    D0_pop <= 1;
    D1_pop <= 0;
    data_out_VC0 <= 6'b110110;
    data_out_VC1 <= 6'b110101;

    @(posedge clk);
    D0_pop <= 0;
    D1_pop <= 0;
    data_out_VC0 <= 6'b110110;
    data_out_VC1 <= 6'b110100;

    @(posedge clk);
    data_out_VC0 <= 6'b111101;
    data_out_VC1 <= 6'b010110;
    @(posedge clk);
    @(posedge clk);



	$finish;
	end
	initial clk <= 1;
	always #1 clk <= ~clk;
endmodule 
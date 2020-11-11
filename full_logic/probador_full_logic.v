module probador_full_logic#(
            parameter data_width = 6,
			parameter address_width = 2
            )
            (output reg clk, reset, wr_enable,
            output reg[data_width-1:0] data_in,
            output reg D0_pop, D1_pop,
            input [5:0] data_out_D0, data_out_D1,data_out_D0_synth, data_out_D1_synth,
            input error_D0, error_D1
            );

initial begin
	$dumpfile("prueba_full_logic.vcd");
	$dumpvars;

	{wr_enable, reset} <= 0;
	data_in <= 0;
    D0_pop <= 0;
    D1_pop <= 0;

	@(posedge clk);
	@(posedge clk);
	@(posedge clk);
	
    @(posedge clk);
    wr_enable <= 1;
	reset <= 1;
	data_in <= 6'b000001;

	@(posedge clk);
	data_in <= 6'b000010;


	@(posedge clk);
	data_in <= 6'b000011;

	@(posedge clk);
	data_in <= 6'b000100;
/////////////
	@(posedge clk);
    wr_enable <= 1;
	reset <= 1;
	data_in <= 6'b100001;

	@(posedge clk);
	data_in <= 6'b100010;


	@(posedge clk);
	data_in <= 6'b100011;

	@(posedge clk);
	data_in <= 6'b100100;
    D0_pop <= 1;
    D1_pop <= 1;
/////////////
	@(posedge clk);
	data_in <= 6'b100100;
	@(posedge clk);
	data_in <= 6'b100100;
////////////
	@(posedge clk);
    wr_enable <= 0;

	@(posedge clk);

	@(posedge clk);
	@(posedge clk);

	@(posedge clk);

	@(posedge clk);

	@(posedge clk);
	@(posedge clk);
	@(posedge clk);
    D0_pop <= 0;
    D1_pop <= 0;
	@(posedge clk);

	@(posedge clk);

	@(posedge clk);

	$finish;
	end
	initial clk <= 1;
	always #1 clk <= ~clk;
endmodule
module probador_initial_logic#(
                    parameter data_width = 6,
					parameter address_width = 2)
					(
                    output reg clk, wr_enable, reset, pause_vc0, pause_vc1,
					output reg [data_width-1:0] data_in,
				    input [5:0] data_out_demux_initial_vc0,
				    input [5:0] data_out_demux_initial_vc1,
                    input push_vc0,
                    input push_vc1
                    );

	initial begin
	$dumpfile("prueba_initial_logic.vcd");
	$dumpvars;

	{wr_enable, reset} <= 0;
	data_in <= 0;

	@(posedge clk);
	@(posedge clk);
	@(posedge clk);
	
    @(posedge clk);
    wr_enable <= 1;
	reset <= 1;
	data_in <= 6'b000001;
    pause_vc0 <= 0;
	pause_vc1 <= 0;

	@(posedge clk);
	data_in <= 6'b000010;


	@(posedge clk);
	data_in <= 6'b000011;

	@(posedge clk);
	data_in <= 6'b000100;
/////////////
	@(posedge clk);
	data_in <= 6'b000100;
    pause_vc0 <= 1;
	pause_vc1 <= 1;

	@(posedge clk);
	data_in <= 6'b000100;
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

	$finish;
	end
	initial clk <= 1;
	always #1 clk <= ~clk;
endmodule
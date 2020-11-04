module probador_arbitro(output reg [5:0] VC0, VC1,
                output reg clk, reset_L, pop_delay_VCO, pop_delay_VC1,
                output reg VC0_empty, VC1_empty,
                input [5:0] D0, D1);

	initial begin
	$dumpfile("arbitro.vcd");
	$dumpvars;

    reset_L <= 0;
    pop_delay_VCO <= 0;
    pop_delay_VC1 <= 1;
	@(posedge clk);
	@(posedge clk);
    reset_L <= 1;
    VC0 <= 6'b110100;
    VC1 <= 6'b110110;
    @(posedge clk);

    pop_delay_VCO <= 1;
    pop_delay_VC1 <= 1;
    VC0 <= 6'b100101;
    VC1 <= 6'b101100;

    @(posedge clk);
    pop_delay_VCO <= 0;
    pop_delay_VC1 <= 1;
    VC0_empty <= 1;
    VC0 <= 6'b110100;
    VC1 <= 6'b110100;

    @(posedge clk);
    pop_delay_VCO <= 1;
    pop_delay_VC1 <= 1;
    VC0 <= 6'b110110;
    VC1 <= 6'b110101;

    @(posedge clk);
    pop_delay_VCO <= 0;
    pop_delay_VC1 <= 1;
    VC0 <= 6'b110110;
    VC1 <= 6'b110100;

    @(posedge clk);
    pop_delay_VCO <= 1;
    pop_delay_VC1 <= 1;
    VC0 <= 6'b111101;
    VC1 <= 6'b010110;
    @(posedge clk);
    @(posedge clk);



	$finish;
	end
	initial clk <= 1;
	always #1 clk <= ~clk;
endmodule 
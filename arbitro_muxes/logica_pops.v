module logica_pops(input VC0_empty, VC1_empty, D0_pause, D1_pause, clk,
                    output reg VC0_pop, VC1_pop, pop_delay_VCO, pop_delay_VC1);


    always@(*) begin
        if(~(D0_pause||D1_pause)) begin
            if(~VC1_empty && VC0_empty) VC0_pop = 1;
            else VC0_pop = 0;
            
            if (~VC0_empty) VC1_pop = 1;
            else VC1_pop = 0;
        end
        else begin
            VC0_pop = 0;
            VC1_pop = 0;
        end
    end

                
endmodule
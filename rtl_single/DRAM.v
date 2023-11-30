module DRAM (
    input clk,
    input [31:0] adr,
    input  dram_we,
    input  [31:0] wdin,
    output [31:0] rd
    );

    reg Dram1 [31:0];
    
always@(clk)
    begin
        if(dram_we)
        begin
            Dram1 [adr] <= wdin;
        end
    end
    
    assign rd = Dram1[adr];
endmodule
       
        
    
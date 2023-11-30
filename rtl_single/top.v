module top(
    input         clk,
    input         rst_n,

    output        debug_wb_ena,
    output        debug_wb_have_inst,
    output [4:0]  debug_wb_reg,
    output [31:0] debug_wb_pc,
    output [31:0] debug_wb_value
    );
    
    wire [31:0] pc;
    wire [31:0] rD2;
    wire [31:0] aluc;
    wire [31:0] inst;
    wire [31:0] dram_rd;


    assign ram_clk = !clk;

    assign debug_wb_have_inst = 1;


    debugCPU debugCPU_U(
        .clk            (clk),
        .rst_n          (rst_n),
        .dram_rd        (dram_rd),
        .inst           (inst),
        
        .dram_we        (dram_we),
        .pc             (pc),
        .rD2_s          (rD2),
        .aluc           (aluc),
        .debug_wb_ena   (debug_wb_ena), 
        .debug_wb_pc    (debug_wb_pc),  
        .debug_wb_reg   (debug_wb_reg), 
        .debug_wb_value (debug_wb_value)
    );
    

     // IROM 模块
     IROM U_IROM(
         .pc         (pc),
         .inst       (inst)
     );

     // DRAM 模块
     DRAM U_DRAM(
         .clk        (ram_clk),
         .adr        (aluc),
         .wdin       (rD2),
         .dram_we    (dram_we),
        .rd         (dram_rd)
     );
    

endmodule

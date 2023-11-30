module debugCPU(
    input         clk,
    input         rst_n,
    input  [31:0] dram_rd,
    input  [31:0] inst,

    output        dram_we,
    output [31:0] pc,
    output [31:0] rD2_s,
    output [31:0] aluc, 
    output        debug_wb_ena,
    output [4:0]  debug_wb_reg,
    output [31:0] debug_wb_pc,
    output [31:0] debug_wb_value
    );

    // control signal
    wire asel;
    wire rf_we;
    wire wb_pc_sel;
    wire [1:0] npc_op;
    wire [1:0] wd_sel;
    wire [1:0] store_sel;
    wire [2:0] wd_dram_sel;
    wire [2:0] sext_op;
    wire [3:0] alu_op;

    wire [31:0] wD;
    wire [31:0] npc; 
    wire [31:0] imm;
    wire [31:0] rD1;
    wire [31:0] rD2;
    wire [31:0] wb_pc;

    // branch input
    wire beq;
    wire blt;
    wire bltu;

    // test signal
    assign debug_wb_pc    =   pc;
    assign debug_wb_value =   wD;
    assign debug_wb_ena   =   rf_we;
    assign debug_wb_reg   =   inst[11:7];


    PC U_PC(
        .clk        (clk),
        .rst_n      (rst_n),
        .en         (pc_en),
        .npc        (npc),
        .pc         (pc)
    );

    NPC U_NPC(
        .wb_pc_sel  (wb_pc_sel),
        .npc_op     (npc_op),
        .pc         (pc),
        .imm        (imm),
        .aluc       (aluc),
        .npc        (npc),
        .wb_pc      (wb_pc)
    );    

    SEXT U_SEXT(
        .sext_op    (sext_op),
        .din        (inst[31:7]),
        .ext        (imm)
    );

    RF U_RF(
        .clk              (clk),
        .rst_n            (rst_n),
        .rf_we            (rf_we),
        .store_sel        (store_sel),
        .wd_dram_sel      (wd_dram_sel),
        .wd_sel           (wd_sel),
        .rR1              (inst[19:15]),
        .rR2              (inst[24:20]),
        .wR               (inst[11:7]),
        .wD_aluc          (aluc),
        .wD_dram_rd       (dram_rd),
        .wD_sext_ext      (imm),
        .wD_npc           (wb_pc),
        .rD1              (rD1),
        .rD2              (rD2),
        .rD2_s            (rD2_s),
        .wD               (wD)
    );

    ALU U_ALU(
        .asel        (asel),
        .alu_op      (alu_op),
        .rf_rD1      (rD1),
        .rf_rD2      (rD2),
        .sext_ext    (imm),
        .beq         (beq),
        .blt         (blt),
        .bltu        (bltu),
        .C           (aluc)
    );


    Control U_Control(
        .beq        (beq),
        .blt        (blt), 
        .bltu       (bltu),
        .funct3     (inst[14:12]),
        .funct7     (inst[31:25]),
        .opcode     (inst[6:0]),
        .asel       (asel),
        .rf_we      (rf_we),
        .pc_en      (pc_en),
        .dram_we    (dram_we),
        .wb_pc_sel  (wb_pc_sel),
        .store_sel  (store_sel),
        .npc_op     (npc_op),
        .wd_sel     (wd_sel),
        .sext_op    (sext_op),
        .alu_op     (alu_op),
        .wd_dram_sel      (wd_dram_sel)
    );

endmodule

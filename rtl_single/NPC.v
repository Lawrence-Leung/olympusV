module NPC(
    input wb_pc_sel,
    input [1:0] npc_op,
    input [31:0] pc,
    input [31:0] imm,
    input [31:0] aluc,
    
    output [31:0] wb_pc,
    output reg [31:0] npc
    );

    // npc_op signal
    parameter npc_pc4 = 2'b00;
    parameter npc_add = 2'b01;
    parameter npc_alu = 2'b10;

    // write back pc
    assign wb_pc = wb_pc_sel ? pc + imm : pc + 32'd4;

    always @(*) begin
        case (npc_op)
            npc_pc4:   npc = pc + 32'd4;             // pc+4
            npc_add:   npc = pc + imm;             // jal || branch
            npc_alu:   npc = {aluc[31:2], 2'b00};  // jalr
            default:   npc = 32'b0;
        endcase
    end


endmodule

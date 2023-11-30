module Control(
    input beq,
    input blt, 
    input bltu,
    input [2:0] funct3,
    input [6:0] funct7,
    input [6:0] opcode,

    output asel,
    output rf_we,
    output pc_en,
    output dram_we,
    output wb_pc_sel,
    output reg [1:0] store_sel,
    output reg [1:0] npc_op,
    output reg [1:0] wd_sel,
    output reg [2:0] wd_dram_sel,
    output reg [2:0] sext_op,
    output reg [3:0] alu_op
    );

    // opcode signal
    parameter R_type  = 7'b0110011;
    parameter I_type  = 7'b0010011;
    parameter S_type  = 7'b0100011;
    parameter B_type  = 7'b1100011;
    parameter U_type  = 7'b0110111;
    parameter J_type  = 7'b1101111;
    parameter lui_op  = 7'b0110111;
    parameter load_op = 7'b0000011;
    parameter jalr_op = 7'b1100111;
    parameter auipc_op= 7'b0010111;

    // npc_op signal
    parameter npc_pc4 = 2'b00;
    parameter npc_add = 2'b01;
    parameter npc_alu = 2'b10;

    // wd_sel signal
    parameter wd_alu  = 2'b00;
    parameter wd_dram = 2'b01;
    parameter wd_npc  = 2'b10;
    parameter wd_sext = 2'b11;

    // sext_op signal
    parameter I_ext  = 3'b000;
    parameter Is_ext = 3'b001;
    parameter S_ext  = 3'b010;
    parameter U_ext  = 3'b011;
    parameter B_ext  = 3'b100;
    parameter J_ext  = 3'b101;
    
    // alu_op signal
    parameter alu_add = 4'b0000;
    parameter alu_sub = 4'b0001;
    parameter alu_and = 4'b0010;
    parameter alu_or  = 4'b0011;
    parameter alu_xor = 4'b0100;
    parameter alu_sll = 4'b0101;
    parameter alu_srl = 4'b0110;
    parameter alu_sra = 4'b0111;
    parameter alu_bra = 4'b1000;
    parameter alu_slt = 4'b1001;
    parameter alu_sltu= 4'b1010;
    parameter alu_slti= 4'b1011;
    parameter alu_sltiu=4'b1100;
    
    // wd_dram_sel
    parameter load_lw =  3'b000;
    parameter load_lh =  3'b001;
    parameter load_lb =  3'b010;
    parameter load_lhu=  3'b011;
    parameter load_lbu=  3'b100;

    // store signal
    parameter store_sw = 2'b00;
    parameter store_sh = 2'b01;
    parameter store_sb = 2'b10;

     


    assign pc_en = {funct7, funct3, opcode} != 17'b0;

    always @(*) begin
        case(opcode)
            R_type: npc_op = npc_pc4; // R
            I_type: npc_op = npc_pc4; // I
            B_type: begin             // B
                case(funct3)
                    3'b000:  npc_op = beq ? npc_add : npc_pc4;  // beq
                    3'b001:  npc_op = beq ? npc_pc4 : npc_add;  // bne
                    3'b100:  npc_op = blt ? npc_add : npc_pc4;  // blt
                    3'b101:  npc_op = blt ? npc_pc4 : npc_add;  // bge
                    3'b110:  npc_op = bltu? npc_add : npc_pc4;  // bltu
                    3'b111:  npc_op = bltu? npc_pc4 : npc_add;  // bgeu
                    default: npc_op = 2'b00;
                endcase
            end
            S_type : npc_op = npc_pc4; // sw
            J_type : npc_op = npc_add; // jal
            lui_op : npc_op = npc_pc4; // lui
            load_op: npc_op = npc_pc4; // load
            jalr_op: npc_op = npc_alu; // jalr
            auipc_op:npc_op = npc_pc4; // auipc
            default: npc_op =   2'b00;
        endcase
    end
    
    
    // wd_sel control
    always @(*) begin
        case(opcode)
            R_type : wd_sel =  wd_alu; // R
            I_type : wd_sel =  wd_alu; // I
            J_type : wd_sel =  wd_npc; // jal
            lui_op : wd_sel = wd_sext; // lui
            load_op: wd_sel = wd_dram; // load
            jalr_op: wd_sel =  wd_npc; // jalr
            auipc_op:wd_sel =  wd_npc;
            default: wd_sel =   2'b00;
        endcase
    end

    // sext_op control 
    always @(*) begin
        case(opcode)
            I_type: begin // I
                if(funct3 == 3'b000||funct3 == 3'b111||funct3 == 3'b110||funct3 == 3'b100||funct3 == 3'b010|| funct3 == 3'b011)     sext_op =  I_ext;  // I
                else if(funct3 == 3'b001 || funct3 == 3'b101)                                                                       sext_op = Is_ext;  // I_type shift
                else                                                                                                                sext_op = 3'b000;
            end
            S_type : sext_op = S_ext; // sw
            B_type : sext_op = B_ext; // B
            J_type : sext_op = J_ext; // jal
            lui_op : sext_op = U_ext; // lui
            load_op: sext_op = I_ext; // load
            auipc_op:sext_op = U_ext; // auipc
            jalr_op: sext_op = I_ext; // jalr
            default: sext_op = 3'b000;
        endcase
    end

    // alu_op control
    always @(*) begin
        case(opcode)
            R_type: begin // R
                case(funct3)
                    3'b000:  alu_op = funct7[5] ? alu_sub : alu_add;   // sub || add
                    3'b111:  alu_op = alu_and;                         // and
                    3'b110:  alu_op = alu_or;                          // or
                    3'b100:  alu_op = alu_xor;                         // xor
                    3'b001:  alu_op = alu_sll;                         // sll
                    3'b101:  alu_op = funct7[5] ? alu_sra : alu_srl;   // sra || srl
                    3'b010:  alu_op = alu_slt;                         // slt
                    3'b011:  alu_op = alu_sltu;                        // sltu
                    default: alu_op = 4'b0000;
                endcase
            end
            I_type: begin // I
                case(funct3)
                    3'b000:  alu_op = alu_add;                         // addi
                    3'b111:  alu_op = alu_and;                         // andi
                    3'b110:  alu_op = alu_or;                          // ori
                    3'b100:  alu_op = alu_xor;                         // xori
                    3'b001:  alu_op = alu_sll;                         // slli
                    3'b101:  alu_op = funct7[5] ? alu_sra : alu_srl;   // srai || srli
                    3'b010:  alu_op = alu_slti;                        // slit
                    3'b011:  alu_op = alu_sltiu;                       // sltiu 
                    default: alu_op = 4'b0000;
                endcase
            end
            S_type : alu_op = alu_add; // sw
            B_type : alu_op = alu_bra; // B
            load_op: alu_op = alu_add; // load
            jalr_op: alu_op = alu_add; // jalr
            default: alu_op = 4'b0000;
        endcase
    end

    always@(*) begin
        case(opcode)
            load_op: begin
                if(funct3 == 3'b000)        wd_dram_sel = load_lb;
                else if(funct3 == 3'b001)   wd_dram_sel = load_lh;
                else if(funct3 == 3'b010)   wd_dram_sel = load_lw;
                else if(funct3 == 3'b101)   wd_dram_sel = load_lhu;
                else if(funct3 == 3'b100)   wd_dram_sel = load_lbu;
                else                        wd_dram_sel = load_lw;                
            end
            default: wd_dram_sel = load_lw;
        endcase
    end
    
    // store_sel control
    always@(*) begin
        if(opcode == S_type) begin
            case(funct3)
                3'b000: store_sel = store_sb;
                3'b001: store_sel = store_sh;
                3'b010: store_sel = store_sw;
                default:store_sel =   3'b000;
            endcase
        end
        else        store_sel = 2'b00;
    end

    assign wb_pc_sel = opcode == auipc_op;
    assign dram_we =  (opcode == S_type) ? 1'b1 : 1'b0;
    assign rf_we   =  (opcode == B_type || opcode == S_type) ? 1'b0 : 1'b1;
    assign asel    =  (opcode == I_type || opcode == load_op || opcode == jalr_op || opcode == S_type) ? 1'b1 : 1'b0;

endmodule



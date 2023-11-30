module ALU(
    input asel,
    input [3:0]  alu_op,
    input [31:0] rf_rD1,
    input [31:0] rf_rD2,
    input [31:0] sext_ext,

    output beq,
    output blt,
    output bltu,
    output reg [31:0] C
    );

    // alu_op
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




    // input pin
    wire [31:0] A = rf_rD1;
    wire [31:0] B = asel ? sext_ext : rf_rD2;

    wire [4:0] shamt = B[4:0];

    // valid shamt
    reg [4:0] valid_shamt;

    // bucket shifter
    always @(*)begin
        case(shamt)
            5'd00 : valid_shamt = shamt;
            5'd01 : valid_shamt = shamt;
            5'd02 : valid_shamt = shamt;
            5'd03 : valid_shamt = shamt;
            5'd04 : valid_shamt = shamt;
            5'd05 : valid_shamt = shamt;
            5'd06 : valid_shamt = shamt;
            5'd07 : valid_shamt = shamt;
            5'd08 : valid_shamt = shamt;
            5'd09 : valid_shamt = shamt;
            5'd10 : valid_shamt = shamt;
            5'd11 : valid_shamt = shamt;
            5'd12 : valid_shamt = shamt;
            5'd13 : valid_shamt = shamt;
            5'd14 : valid_shamt = shamt;
            5'd15 : valid_shamt = shamt;
            5'd16 : valid_shamt = shamt;
            5'd17 : valid_shamt = shamt;
            5'd18 : valid_shamt = shamt;
            5'd19 : valid_shamt = shamt;
            5'd20 : valid_shamt = shamt;
            5'd21 : valid_shamt = shamt;
            5'd22 : valid_shamt = shamt;
            5'd23 : valid_shamt = shamt;
            5'd24 : valid_shamt = shamt;
            5'd25 : valid_shamt = shamt;
            5'd26 : valid_shamt = shamt;
            5'd27 : valid_shamt = shamt;
            5'd28 : valid_shamt = shamt;
            5'd29 : valid_shamt = shamt;
            5'd30 : valid_shamt = shamt;
            5'd31 : valid_shamt = shamt;
            default : valid_shamt =   0;
        endcase
    end

    // alu calculate select
    always @(*) begin
        case(alu_op)
            alu_add  :  C = A + B;                      // add
            alu_sub  :  C = A + ((~B) + 1);             // sub
            alu_and  :  C = A & B;                      // and 
            alu_or   :  C = A | B;                      // or
            alu_xor  :  C = A ^ B;                      // xor 
            alu_sll  :  C = A << valid_shamt;           // sll
            alu_srl  :  C = A >> valid_shamt;           // srl
            alu_sra  :  C = $signed(A) >>> valid_shamt; // sra
            alu_bra  :  C = C;                          // branch
            alu_slt  :  C = $signed(A) < $signed(B);    // slt
            alu_slti :  C = $signed(A) < $signed(B);    // slti
            alu_sltu :  C = A < B;                      // sltu
            alu_sltiu:  C = A < B;                      // sltiu
            default  :  C = A;
        endcase
    end



    // branch
    assign blt  = $signed(A) < $signed(B);
    assign beq  = $signed(A) == $signed(B);
    assign bltu = A < B; 

endmodule

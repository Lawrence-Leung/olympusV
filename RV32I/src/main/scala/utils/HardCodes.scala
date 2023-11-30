package utils

import chisel3._

object OP_TYPES {
    val OP_TYPES_WIDTH = 4
    val OP_NOP = "b0000".U
    val OP_ADD = "b0001".U
    val OP_SUB = "b0010".U
    val OP_AND = "b0100".U
    val OP_OR = "b0101".U
    val OP_XOR = "b0111".U
    val OP_SLL = "b1000".U
    val OP_SRL = "b1001".U
    val OP_SRA = "b1011".U
    val OP_EQ = "b1100".U
    val OP_NEQ = "b1101".U
    val OP_LT = "b1110".U
    val OP_GE = "b1111".U
}
//Load和Store指令的字节位数，字节B，半字H，字W
object LS_TYPES {
    val LS_TYPE_WIDTH = 2
    val LS_B = "b00".U
    val LS_H = "b01".U
    val LS_W = "b10".U
}

object IMM_TYPES{
    val IMM_I ="b000".U
    val IMM_S ="b001".U
    val IMM_B ="b010".U
    val IMM_U ="b011".U
    val IMM_J ="b100".U
    val IMM_SHAMT ="b101".U
}
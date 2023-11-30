package rv32i

import chisel3._
import chisel3.util._
import configs.Configs._
import utils.IMM_TYPES._

class  ImmGen extends Module{
    val io = IO(new Bundle{
        val inst = Input(UInt(DATA_WIDTH.W))
        val ctrlImmsrc = Input(UInt(IMM_WIDTH.W))
        val imm = Output(UInt(DATA_WIDTH.W))
    })

    val imm_i =Cat(Fill(20,io.inst(31)),io.inst(31,20))
    val imm_s =Cat(Fill(20,io.inst(31)),io.inst(31,25),io.inst(11,7))
    val imm_b =Cat(Fill(20,io.inst(31)),io.inst(31),io.inst(7),io.inst(30,25),io.inst(11,8),0.U(1.W))
    val imm_u =Cat(io.inst(31,12),Fill(20,0.U))
    val imm_j = Cat(Fill(12, io.inst(31)), io.inst(31), io.inst(19, 12), io.inst(20), io.inst(30, 21), Fill(1, 0.U))

    // 用于移位指令的shamt
    val imm_shamt = Cat(Fill(27, 0.U), io.inst(24, 20))

    val imm = MuxLookup (io.ctrlImmsrc , 0.U(DATA_WIDTH.W),Seq(
        IMM_I -> imm_i ,
        IMM_S -> imm_s ,
        IMM_B -> imm_b ,
        IMM_U -> imm_u ,
        IMM_J -> imm_j ,
        IMM_SHAMT -> imm_shamt
    ))
    io.imm := imm
}
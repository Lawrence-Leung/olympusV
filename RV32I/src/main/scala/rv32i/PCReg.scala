package rv32i
import chisel3._
import chisel3.util._
import configs.Configs._

class PCReg extends Module{
    val io = IO(new Bundle{
        val addrOut = Output(UInt(ADDR_WIDTH.W))
        val ctrlJump = Input(Bool())
        val ctrlBranch = Input(Bool())
        val resultBranch = Input(Bool())
        val addrTarget = Input(UInt(ADDR_WIDTH.W))
    })

    val regPC = RegInit(UInt(ADDR_WIDTH.W) , START_ADDR.U)
    when(io.ctrlJump || (io.ctrlBranch && io.resultBranch)){
        regPC := io.addrTarget
    }.otherwise{
        regPC := regPC + ADDR_BYTE_WIDTH.U
    }

    io.addrOut := regPC 
}

object PCReg extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new PCReg(), Array("--target-dir", "generated"))
}
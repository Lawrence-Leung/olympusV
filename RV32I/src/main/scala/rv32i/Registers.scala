package rv32i
import chisel3._
import chisel3.util._
import configs.Configs._
import utils._

class RegistersIO extends Bundle{
    val ctrlRegWrite =Input(Bool())
    val dataWrite = Input(UInt(DATA_WIDTH.W))
    val bundleReg = Input(Flipped(new BundleReg))
    val ctrlJump = Input(Bool())
    val pc = Input(UInt(ADDR_WIDTH.W))
    val dataRead1 = Output(UInt(DATA_WIDTH.W))
    val dataRead2 = Output(UInt(DATA_WIDTH.W))
}
class Registers extends Module{
    val io = IO(new RegistersIO())
    val regs= Reg(Vec(REG_NUMS,UInt(DATA_WIDTH.W))) //使用vec组成寄存器组

    when(io.bundleReg.rs1 === 0.U)
    {
        io.dataRead1 := 0.U
    }
    when (io.bundleReg.rs2=== 0.U)
    {
        io.dataRead2 := 0.U
    }

    io.dataRead1 := regs(io.bundleReg.rs1)
    io.dataRead2 := regs(io.bundleReg.rs2)

    when(io.ctrlRegWrite && io.bundleReg.rd =/= 0.U)//x0不可以修改
    {   
        when(io.ctrlJump) {
            regs(io.bundleReg.rd) := io.pc + INST_BYTE_WIDTH.U
        }.otherwise {
            regs(io.bundleReg.rd) := io.dataWrite
        }
    }
}

object Registers extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new Registers(), Array("--target-dir", "generated"))
}
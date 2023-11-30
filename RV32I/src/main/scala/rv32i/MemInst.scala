package rv32i
import chisel3._
import chisel3.util._
import configs.Configs._

import firrtl.annotations.MemoryLoadFileType
import chisel3.util.experimental.loadMemoryFromFile
class MemInst(memTest: Boolean = false) extends Module{
    val io=IO(new Bundle {
        val addr = Input(UInt(ADDR_WIDTH.W))//输入地址
        val inst = Output(UInt(INST_WIDTH.W))//输出指令
    })
    //初始化指令存储模块
    val mem = Mem(MEM_INST_SIZE, UInt(INST_WIDTH.W))

      if (memTest) {
        loadMemoryFromFile(
            mem,
            "src/test/scala/randMemInst.hex",
            MemoryLoadFileType.Hex
        )
    } else {
        loadMemoryFromFile(
            mem,
            "src/test/scala/MemInst.hex",
            MemoryLoadFileType.Hex
        )
    }
    io.inst := mem.read(io.addr >> INST_BYTE_WIDTH_LOG.U)    // 读取对应位置的指令并输出

}

object MemInst extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new MemInst(), Array("--target-dir", "generated"))
}
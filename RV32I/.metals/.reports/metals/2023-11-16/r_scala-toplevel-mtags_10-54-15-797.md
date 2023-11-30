id: file://<HOME>/%E6%A1%8C%E9%9D%A2/RV32I/src/main/scala/rv32i/Registers.scala:[362..362) in Input.VirtualFile("file://<HOME>/%E6%A1%8C%E9%9D%A2/RV32I/src/main/scala/rv32i/Registers.scala", "package rv32i
import chisel3._
import chisel3.util._
import configs.Configs._
import utils._

class RegistersIO extends Bundle{
    val ctrlRegwrite =Input(Bool())
    val datawrite = Input(UInt(DATA_WIDTH.W))
    val bundleReg = Input(Flipped(new BundleReg))
    val dataRead1 = Output(UInt(DATA_WIDTH.W))
    val dataRead2 = Output(UInt(DATA_WIDTH.W))
}
class ")
file://<HOME>/%E6%A1%8C%E9%9D%A2/RV32I/src/main/scala/rv32i/Registers.scala
file://<HOME>/%E6%A1%8C%E9%9D%A2/RV32I/src/main/scala/rv32i/Registers.scala:14: error: expected identifier; obtained eof
class 
      ^
#### Short summary: 

expected identifier; obtained eof
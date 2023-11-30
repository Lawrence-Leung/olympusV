file://<HOME>/%E6%A1%8C%E9%9D%A2/RV32I/src/main/scala/rv32i/Decoder.scala
### java.lang.IndexOutOfBoundsException: 0

occurred in the presentation compiler.

action parameters:
offset: 2170
uri: file://<HOME>/%E6%A1%8C%E9%9D%A2/RV32I/src/main/scala/rv32i/Decoder.scala
text:
```scala
package rv32isc

import chisel3._
import chisel3.util._

import config.Configs._
import utils.OP_TYPES._
import utils.LS_TYPES._
import utils._

class DecoderIO extends Bundle {
    val inst = Input(UInt(INST_WIDTH.W))
    val bundleCtrl = new BundleControl()
    val bundleReg = new BundleReg()
    val imm = Output(UInt(DATA_WIDTH.W))
}
class Decoder extends Module{
    val io=IO(new DecoderIO())
    //三个寄存器的编号
    val io.BundleReg.rs1 = io.inst(19,15)
    val io.BundleReg.rs2 = io.inst(24,20)
    val io.BundleReg.rd = io.inst(11,7)

    //五种指令的立即数
    val imm_i=cat(fill(20,io.inst(31)),io.inst(31,20))
    val imm_s=cat(fill(20,io.inst(31)),io.inst(31,25),io.inst(11,7))
    val imm_b=cat(fill(20,io.inst(31)),io.inst(31),io.inst(7),io.inst(30,25),io.inst(11,8),0.U(1.W))
    val imm_u=cat(io.inst(31,12),fill(20,0.U))
    val imm_j = Cat(Fill(12, io.inst(31)), io.inst(31), io.inst(19, 12), io.inst(20), io.inst(30, 21), Fill(1, 0.U))

    // 用于移位指令的shamt
    val imm_shamt = Cat(Fill(27, 0.U), io.inst(24, 20))

    // 用于立即数输出
    val imm = WireDefault(0.U(32.W))

    // 用于控制信号
    val ctrlJump = WireDefault(false.B)
    val ctrlBranch = WireDefault(false.B)
    val ctrlRegWrite = WireDefault(true.B)
    val ctrlLoad = WireDefault(false.B)
    val ctrlStore = WireDefault(false.B)
    val ctrlALUSrc = WireDefault(false.B)
    val ctrlJAL = WireDefault(false.B)
    val ctrlOP = WireDefault(0.U(OP_TYPES_WIDTH.W))
    val ctrlSigned = WireDefault(true.B)
    val ctrlLSType = WireDefault(LS_W)

    switch(io.inst(6,2)){
        //U指令 :lui auipc
        is("b01101".U,"b00101".U){
            ctrlALUSrc :=true.B //第二个操作数为立即数
            ctrlOP := OP_ADD //需要加法
            imm:= imm_u //立即数拓展
        }
        //J: jal
        is("b11011".U){
            ctrlJAL := true.B//是无条件跳转指令
            ctrlALUSrc := true.B
            ctrlJump := true.B //是跳转指令
            ctrlOP := OP_ADD
            imm := imm_j
        }
        // I: JALR, 
        // I: LB, LH, LW, LBU, LHU
        // I: ADDI, SLTI, SLTIU, XORI, ORI, ANDI, SLLI, SRLI, SRAI
        is("b11001".U,"b00000".U,"b00100".U){
            ctrlALUSrc = true.B
            //JALR
            if(@@)
        }
    }
}
```



#### Error stacktrace:

```
scala.collection.LinearSeqOps.apply(LinearSeq.scala:131)
	scala.collection.LinearSeqOps.apply$(LinearSeq.scala:128)
	scala.collection.immutable.List.apply(List.scala:79)
	dotty.tools.dotc.util.Signatures$.countParams(Signatures.scala:501)
	dotty.tools.dotc.util.Signatures$.applyCallInfo(Signatures.scala:186)
	dotty.tools.dotc.util.Signatures$.computeSignatureHelp(Signatures.scala:94)
	dotty.tools.dotc.util.Signatures$.signatureHelp(Signatures.scala:63)
	scala.meta.internal.pc.MetalsSignatures$.signatures(MetalsSignatures.scala:17)
	scala.meta.internal.pc.SignatureHelpProvider$.signatureHelp(SignatureHelpProvider.scala:51)
	scala.meta.internal.pc.ScalaPresentationCompiler.signatureHelp$$anonfun$1(ScalaPresentationCompiler.scala:375)
```
#### Short summary: 

java.lang.IndexOutOfBoundsException: 0
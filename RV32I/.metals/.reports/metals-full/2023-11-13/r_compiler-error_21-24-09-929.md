file://<HOME>/%E6%A1%8C%E9%9D%A2/RV32I/src/test/scala/PCRegTest.scala
### java.lang.IndexOutOfBoundsException: 0

occurred in the presentation compiler.

action parameters:
offset: 770
uri: file://<HOME>/%E6%A1%8C%E9%9D%A2/RV32I/src/test/scala/PCRegTest.scala
text:
```scala
import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import chisel3.util._
import configs.Configs._

trait PCRegTestFunc{
    val target_list = Seq.fill(10)(scala.util.Random.nextInit().toLong & 0x00ffffffffL)

    def testFn(dut:PCReg):UInt={
        //初始化
        dut.io.ctrlBranch.poke(false.B)
        dut.io.ctrlJump.poke(false.B)
        dut.io.resultBranch.poke(false.B)
        dut.io.addrTarget.poke(START_ADDR)
        dut.io.addrOut.expect(START_ADDR)

        var addr:Long = START_ADDR

        //正常自增功能
        for (target <- target_list){
            dut.io.addrTarget.poke(target.U)
            addr+= ADDR_BYTE_WIDTH
            dut.clock.step()
            dut.io.addrOut.expect(addr.U)
        }
        //跳转功能测试
        for(@@)
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
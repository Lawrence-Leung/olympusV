package EDA
import chisel3._
import chiseltest._
import chisel3.util._
import org.scalatest.flatspec.AnyFlatSpec

trait KaratsubaTestFunc{
    //val a = Seq.fill(100)(scala.util.Random.nextInt().toLong & 0x000f0ff0f0fL)
    //val b = Seq.fill(100)(scala.util.Random.nextInt().toLong & 0x000f0f000ffL)
    val a = Seq.fill(100)(scala.util.Random.nextInt().toLong & 0x0000ffffffffL)
    val b = Seq.fill(100)(scala.util.Random.nextInt().toLong & 0x0000ffffffffL)

    def testFn(dut:Karatsuba32x32):Unit ={
        for (i<-0 to 100-1){
            dut.io.a.poke(a(i).U)
            
            dut.io.b.poke(b(i).U)
            dut.clock.step()
            dut.io.out.expect((dut.io.a.peekInt()* dut.io.b.peekInt()).U) 
            println(a(i),b(i),(dut.io.a.peekInt()* dut.io.b.peekInt()).U)      
        }
    }
}

class KaratsubaTest extends AnyFlatSpec with ChiselScalatestTester with KaratsubaTestFunc{
    "Karatsuba"should "pass" in{
        test(new (Karatsuba32x32)).withAnnotations(Seq(WriteVcdAnnotation)){
            dut =>
                testFn(dut)
        }
    }
}
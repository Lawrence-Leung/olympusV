package EDA
import chisel3._
import chisel3.util._

class Karatsuba32x32 extends Module{
    val io=IO(new Bundle{
        val a=Input(UInt(32.W))
        val b=Input(UInt(32.W))
        val out=Output(UInt(64.W))
    })
    val Ka32_1=Module(new Karatsuba16x16)
    val Ka32_2=Module(new Karatsuba16x16)
    val Ka32_3=Module(new Karatsuba16x16)
    val Ka32_4=Module(new Karatsuba16x16)
    
    val a=RegInit(0.U(32.W))
    val b=RegInit(0.U(32.W))
    val C=RegInit(0.U(64.W))
    val T0=WireDefault(0.U(64.W))
    val T1=WireDefault(0.U(64.W))
    val ac,bc,ad,bd=WireDefault(0.U(64.W))
    val psum=WireDefault(0.U(49.W))

    a := io.a
    b := io.b
    Ka32_1.io.a := a(15,0)
    Ka32_1.io.b := b(15,0)
    bd := Ka32_1.io.out

    Ka32_2.io.a := a(31,16)
    Ka32_2.io.b := b(31,16)
    ac:= Ka32_2.io.out

    Ka32_3.io.a := a(15,0)
    Ka32_3.io.b := b(31,16)
    bc:= Ka32_3.io.out 

    Ka32_4.io.a := a(31,16)
    Ka32_4.io.b := b(15,0)
    ad:= Ka32_4.io.out


    T1:= bd
    psum:=Cat(bc+ad,0.U(16.W))
    T0:= Cat(ac,0.U(32.W))
    C:= T1 + T0 + psum
    io.out:= C
}

object Karatsuba32x32 extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new Karatsuba32x32(), Array("--target-dir", "generated"))
}
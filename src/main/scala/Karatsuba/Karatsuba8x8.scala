package EDA
import chisel3._
import chisel3.util._

class Karatsuba8x8 extends Module{
    val io=IO(new Bundle{
        val a=Input(UInt(8.W))
        val b=Input(UInt(8.W))
        val out=Output(UInt(16.W))
    })
    val Ka8_1=Module(new Karatsuba4x4)
    val Ka8_2=Module(new Karatsuba4x4)
    val Ka8_3=Module(new Karatsuba4x4)
    val Ka8_4=Module(new Karatsuba4x4)
    val T0=WireDefault(0.U(16.W))
    val T1=WireDefault(0.U(16.W))
     val ac,bc,ad,bd=WireDefault(0.U(16.W))
    val psum=WireDefault(0.U(13.W))

    Ka8_1.io.a := io.a(3,0)
    Ka8_1.io.b := io.b(3,0)
    bd := Ka8_1.io.out

    Ka8_2.io.a := io.a(7,4)
    Ka8_2.io.b := io.b(7,4)
    ac:= Ka8_2.io.out

    Ka8_3.io.a := io.a(3,0)
    Ka8_3.io.b := io.b(7,4)
    bc:= Ka8_3.io.out 

    Ka8_4.io.a := io.a(7,4)
    Ka8_4.io.b := io.b(3,0)
    ad:= Ka8_4.io.out


    T1:= bd
    psum:=Cat(bc+ad,0.U(4.W))
    T0:= Cat(ac,0.U(8.W))
    io.out:= T1 + T0 + psum
}


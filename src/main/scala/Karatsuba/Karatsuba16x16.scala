package EDA
import chisel3._
import chisel3.util._

class Karatsuba16x16 extends Module{
    val io=IO(new Bundle{
        val a=Input(UInt(16.W))
        val b=Input(UInt(16.W))
        val out=Output(UInt(32.W))
    })
    val Ka16_1=Module(new Karatsuba8x8)
    val Ka16_2=Module(new Karatsuba8x8)
    val Ka16_3=Module(new Karatsuba8x8)
    val Ka16_4=Module(new Karatsuba8x8)
    val T0=WireDefault(0.U(32.W))
    val T1=WireDefault(0.U(32.W))
    val ac,bc,ad,bd=WireDefault(0.U(32.W))
    val psum=WireDefault(0.U(25.W))
    
    Ka16_1.io.a := io.a(7,0)
    Ka16_1.io.b := io.b(7,0)
    bd := Ka16_1.io.out

    Ka16_2.io.a := io.a(15,8)
    Ka16_2.io.b := io.b(15,8)
    ac:= Ka16_2.io.out

    Ka16_3.io.a := io.a(7,0)
    Ka16_3.io.b := io.b(15,8)
    bc:= Ka16_3.io.out 

    Ka16_4.io.a := io.a(15,8)
    Ka16_4.io.b := io.b(7,0)
    ad:= Ka16_4.io.out


    T1:= bd
    psum:=Cat(bc+ad,0.U(8.W))
    T0:= Cat(ac,0.U(16.W))
    io.out:= T1 + T0 + psum
}
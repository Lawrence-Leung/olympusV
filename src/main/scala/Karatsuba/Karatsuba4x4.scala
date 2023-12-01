package EDA
import chisel3._
import chisel3.util._

class Karatsuba4x4 extends Module{
    val io=IO(new Bundle{
        val a=Input(UInt(4.W))
        val b=Input(UInt(4.W))
        val out=Output(UInt(8.W))
    })
    val Ka4_1=Module(new Karatsuba2x2)
    val Ka4_2=Module(new Karatsuba2x2)
    val Ka4_3=Module(new Karatsuba2x2)
    val Ka4_4=Module(new Karatsuba2x2)
    val ac,bc,ad,bd=WireDefault(0.U(8.W))

    val T0=WireDefault(0.U(8.W))
    val T1=WireDefault(0.U(8.W))
    val psum=WireDefault(0.U(7.W))

    Ka4_1.io.a := io.a(1,0)
    Ka4_1.io.b := io.b(1,0)
    bd := Ka4_1.io.out

    Ka4_2.io.a := io.a(3,2)
    Ka4_2.io.b := io.b(3,2)
    ac:= Ka4_2.io.out

    Ka4_3.io.a := io.a(1,0)
    Ka4_3.io.b := io.b(3,2)
    bc:= Ka4_3.io.out 

    Ka4_4.io.a := io.a(3,2)
    Ka4_4.io.b := io.b(1,0)
    ad:= Ka4_4.io.out

    T1:= bd
    psum:=Cat(bc+ad,0.U(2.W))
    T0:= Cat(ac,0.U(4.W))
    io.out:= T1 + T0 + psum
}
package EDA
import chisel3._
import chisel3.util._

class Karatsuba2x2 extends Module{
    val io=IO(new Bundle{
        val a=Input(UInt(2.W))
        val b=Input(UInt(2.W))
        val out=Output(UInt(4.W))
    })
    //val T0=WireDefault(0.U(4.W))
    //val T1=WireDefault(0.U(4.W))
    //val T2=WireDefault(0.U(4.W))
    val temp=WireDefault(0.U(1.W))

    temp:=(io.a(1)&io.b(0))&(io.a(0)&io.b(1))
    //T0:= io.a(0)*io.b(0)
    //T1:= (io.a(1)+io.a(0))*(io.b(1)+io.b(0))
    //T2:= io.a(1)*io.b(1)
    
    io.out:= Cat(temp&(io.a(1)&io.b(1)),temp^(io.a(1)&io.b(1)),(io.a(1)&io.b(0))^(io.a(0)&io.b(1)),io.a(0)&io.b(0))
}
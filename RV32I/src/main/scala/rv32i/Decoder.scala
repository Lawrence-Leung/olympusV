package rv32i

import chisel3._
import chisel3.util._

import configs.Configs._
import utils.OP_TYPES._
import utils.LS_TYPES._
import utils.IMM_TYPES._
import utils._
import scala.annotation.switch

class DecoderIO extends Bundle {//定义io口
    val inst = Input(UInt(INST_WIDTH.W))
    val bundleCtrl = new BundleControl()
    val bundleReg = new BundleReg()   
}
class Decoder extends Module{
    val io=IO(new DecoderIO())
    //三个寄存器的编号
    io.bundleReg.rs1 := io.inst(19,15)
    io.bundleReg.rs2 := io.inst(24,20)
    io.bundleReg.rd := io.inst(11,7)


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
    val ctrlImmsrc = WireDefault(0.U(IMM_WIDTH.W))

    switch(io.inst(6,2)){
        //U指令 :lui auipc
        is("b01101".U,"b00101".U){
            ctrlALUSrc :=true.B //第二个操作数为立即数
            ctrlOP := OP_ADD //需要加法
            ctrlImmsrc := IMM_U//立即数拓展
        }
        //J: jal
        is("b11011".U){
            ctrlJAL := true.B//是无条件跳转指令
            ctrlALUSrc := true.B
            ctrlJump := true.B //是跳转指令
            ctrlOP := OP_ADD
            ctrlImmsrc := IMM_J
        }
        // I: JALR,  11001
        // I: LB, LH, LW, LBU, LHU 00000
        // I: ADDI, SLTI, SLTIU, XORI, ORI, ANDI, SLLI, SRLI, SRAI 00100
        is("b11001".U,"b00000".U,"b00100".U){
            ctrlALUSrc := true.B
            //JALR
            when(io.inst(6,2)==="b11001".U){
                ctrlJump := true.B
                ctrlOP := OP_ADD
                ctrlImmsrc := IMM_I
            }.elsewhen(io.inst(6,2)==="b00000".U){
                ctrlImmsrc := IMM_I
                ctrlLoad := true.B
                ctrlOP := OP_ADD
                when(io.inst(14,12)==="b101".U | io.inst(14,12)==="b100".U){//lbu lhu
                    ctrlSigned:= false.B
                }
                when(io.inst(14,12)==="b000".U | io.inst(14,12)==="b100".U){ //lb lbu
                    ctrlLSType := LS_B
                }
                when(io.inst(14,12)==="b001".U | io.inst(14,12)==="b101".U){// lh lhu
                    ctrlLSType := LS_H
                }

            }//slli srli srai
            .elsewhen(io.inst(14,12)==="b001".U && io.inst(6,2)==="b00100".U || io.inst(14,12)==="b101".U){
                ctrlImmsrc := IMM_SHAMT
                switch(Cat(io.inst(30),io.inst(14,12))){
                    is("b0001".U){
                        ctrlOP := OP_SLL
                    }// sll
                    is("b0101".U){
                        ctrlOP := OP_SRL
                    }//srl
                    is("b1101".U){
                        ctrlOP := OP_SRA
                    }//sra
                }
                
            }
            .otherwise{
                ctrlImmsrc := IMM_I
                switch(io.inst(14,12)){
                    // addi
                    is("b000".U){
                        ctrlOP:= OP_ADD
                    }
                    //slti
                    is("b010".U){
                        ctrlOP:= OP_LT
                    }
                    //sltiu
                    is("b011".U){
                        ctrlOP:= OP_LT
                        ctrlSigned := false.B
                    }
                    //xori
                    is("b100".U){
                        ctrlOP:= OP_XOR
                    }
                    //ori
                    is("b110".U){
                        ctrlOP:= OP_OR
                    }
                    //andi
                    is("b111".U){
                        ctrlOP:= OP_AND
                    }
                }
            }

        }
        //B : beq bne blt bge bltu bgeu
        is("b11000".U){
            ctrlBranch := true.B
            ctrlALUSrc := false.B//ALU需要两个源寄存器
            ctrlRegWrite := false.B//没有rd，无需写入寄存器
            ctrlImmsrc := IMM_B
            switch(io.inst(14,12)){
                // beq
                is("b000".U){
                    ctrlOP := OP_EQ
                }
                // bne
                is("b001".U){
                    ctrlOP:= OP_NEQ
                }
                // blt
                is("b100".U){
                    ctrlOP:= OP_LT
                }
                // bge
                is("b101".U){
                    ctrlOP:= OP_GE
                }
                // bltu
                is("b110".U){
                    ctrlOP:= OP_LT
                    ctrlSigned := false.B
                }
                // bgeu
                is("b111".U){
                    ctrlOP:= OP_GE
                    ctrlSigned := false.B
                }
            }

        }
        //S : sb sh sw
        is("b01000".U){
            ctrlStore := true.B
            ctrlALUSrc := true.B
            ctrlRegWrite := false.B
            ctrlOP := OP_ADD
            ctrlImmsrc := IMM_S
            when (io.inst(14, 12) === "b000".U) {
                ctrlLSType := LS_B
            }
            when (io.inst(14, 12) === "b001".U) {
                ctrlLSType := LS_H
            }
        }
        //R : add sub sll slt sltu xor srl sra or and
        is("b01100".U){
            ctrlRegWrite := true.B
            ctrlALUSrc := false.B
            switch(io.inst(14,12)){
                is("b000".U){
                    when(io.inst(30)){
                        ctrlOP := OP_SUB
                    }.otherwise{
                        ctrlOP := OP_ADD
                    }
                }
                //sll
                is("b001".U){
                    ctrlOP := OP_SLL
                }
                //slt
                is("b010".U){
                    ctrlOP := OP_LT
                }
                //sltu
                is("b011".U){
                    ctrlOP := OP_LT
                    ctrlSigned := false.B
                }
                //xor
                is("b100".U){
                    ctrlOP := OP_XOR
                }
                is("b101".U){
                    when(io.inst(30)){
                        ctrlOP := OP_SRA
                    }.otherwise{
                        ctrlOP := OP_SRL
                    }
                }
                is("b110".U){
                    ctrlOP :=OP_OR
                }
                is("b111".U){
                    ctrlOP :=OP_AND
                }

            }
        }
    }
    // 连接控制信号和立即数
    io.bundleCtrl.ctrlALUSrc := ctrlALUSrc
    io.bundleCtrl.ctrlBranch := ctrlBranch
    io.bundleCtrl.ctrlJAL := ctrlJAL
    io.bundleCtrl.ctrlJump := ctrlJump
    io.bundleCtrl.ctrlLoad := ctrlLoad
    io.bundleCtrl.ctrlOP := ctrlOP
    io.bundleCtrl.ctrlRegWrite := ctrlRegWrite
    io.bundleCtrl.ctrlSigned := ctrlSigned
    io.bundleCtrl.ctrlStore := ctrlStore
    io.bundleCtrl.ctrlLSType := ctrlLSType
    io.bundleCtrl.ctrlImmsrc := ctrlImmsrc

}

object Decoder extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new Decoder(), Array("--target-dir", "generated"))
}
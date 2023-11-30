package rv32i
import chisel3._
import chisel3.util._
import configs.Configs._
import utils._
import utils.OP_TYPES._

class ALUIO extends Bundle{
    val bundleAluControl = new BundleAluControl()
    /*class BundleAluControl extends Bundle {
    val ctrlALUSrc = Input(Bool())
    val ctrlJAL = Input(Bool())
    val ctrlOP = Input(UInt(OP_TYPES_WIDTH.W))
    val ctrlSigned = Input(Bool())
    val ctrlBranch = Input(Bool())
    }
    */
    val dataRead1 = Input(UInt(DATA_WIDTH.W))
    val dataRead2 = Input(UInt(DATA_WIDTH.W))
    val imm = Input(UInt(DATA_WIDTH.W))
    val pc = Input(UInt(ADDR_WIDTH.W))
    val resultBranch = Output(Bool())
    val resultAlu = Output(UInt(DATA_WIDTH.W))
}

class Alu extends Module{
    val io=IO(new ALUIO())
     // 用于输出比较结果和计算结果
    val resultBranch = WireDefault(false.B)
    val resultAlu = WireDefault(0.U(DATA_WIDTH.W))

    // 用于得到操作数
    val oprand1 = WireDefault(0.U(DATA_WIDTH.W))
    val oprand2 = WireDefault(0.U(DATA_WIDTH.W))
    //如果指令为跳转指令，第一个操作数应该为PC寄存器
    oprand1 := Mux(io.bundleAluControl.ctrlJAL, io.pc, io.dataRead1)
    //指令是否需要读取立即数
    oprand2 := Mux(io.bundleAluControl.ctrlALUSrc, io.imm, io.dataRead2)

    switch(io.bundleAluControl.ctrlOP){
        is(OP_NOP){
            resultAlu:=0.U
            resultBranch:=0.U
        }
        //对于加法和减法，还可以指定是否进行位宽拓展保留进位，在+或-后加上%就是不进行位宽拓展，加上&就是不保留进位
        is(OP_ADD) {
            resultAlu := oprand1 +& oprand2
        }
        is(OP_SUB) {
            resultAlu := oprand1 -& oprand2
        }
        is(OP_AND) {
            resultAlu := oprand1 & oprand2
        }
        is(OP_OR) {
            resultAlu := oprand1 | oprand2
        }
        is(OP_XOR) {
            resultAlu := oprand1 ^ oprand2
        }
        is(OP_SLL) {
            resultAlu := oprand1 << oprand2(4, 0)//imm_s中的偏移量
        }
        is(OP_SRL) {
            resultAlu := oprand1 >> oprand2(4, 0)
        }
        is(OP_SRA) { // 需要注意算术右移的写法
            resultAlu := (oprand1.asSInt >> oprand2(4, 0)).asUInt
        }
        is(OP_EQ) {
            resultBranch := oprand1.asSInt === oprand2.asSInt
            resultAlu := io.pc +& io.imm
        }
        is(OP_NEQ) {
            resultBranch := oprand1.asSInt =/= oprand2.asSInt
            resultAlu := io.pc +& io.imm
        }
        is(OP_LT){//slt sltu blt bltu
            when(io.bundleAluControl.ctrlBranch){
                when(io.bundleAluControl.ctrlSigned){
                    resultBranch := oprand1.asSInt < oprand2.asSInt
                }.otherwise{
                    resultBranch := oprand1 < oprand2
                }
                resultAlu := io.pc +& io.imm
            }.otherwise{
                when(io.bundleAluControl.ctrlSigned){
                    resultAlu := oprand1.asSInt < oprand2.asSInt
                }.otherwise{
                    resultAlu := oprand1 < oprand2
                }
            }
        }
        is(OP_GE){//bge bgeu
            when(io.bundleAluControl.ctrlSigned){
                    resultBranch := oprand1.asSInt >= oprand2.asSInt
                }.otherwise{
                    resultBranch := oprand1 >= oprand2
                }
            resultAlu := io.pc +& io.imm
        }
    }
    io.resultAlu := resultAlu
    io.resultBranch := resultBranch
}
object Alu extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new Alu(), Array("--target-dir", "generated"))
}
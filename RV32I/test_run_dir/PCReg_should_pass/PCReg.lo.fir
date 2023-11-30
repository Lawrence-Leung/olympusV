circuit PCReg :
  module PCReg :
    input clock : Clock
    input reset : UInt<1>
    output io_addrOut : UInt<32>
    input io_ctrlJump : UInt<1>
    input io_ctrlBranch : UInt<1>
    input io_resultBranch : UInt<1>
    input io_addrTarget : UInt<32>

    reg regPC : UInt<32>, clock with :
      reset => (UInt<1>("h0"), regPC) @[PCReg.scala 15:24]
    node _T = and(io_ctrlBranch, io_resultBranch) @[PCReg.scala 16:40]
    node _T_1 = or(io_ctrlJump, _T) @[PCReg.scala 16:22]
    node _regPC_T = add(regPC, UInt<3>("h4")) @[PCReg.scala 19:24]
    node _regPC_T_1 = tail(_regPC_T, 1) @[PCReg.scala 19:24]
    node _GEN_0 = mux(_T_1, io_addrTarget, _regPC_T_1) @[PCReg.scala 16:60 17:15 19:15]
    io_addrOut <= regPC @[PCReg.scala 22:16]
    regPC <= mux(reset, UInt<8>("h84"), _GEN_0) @[PCReg.scala 15:{24,24}]

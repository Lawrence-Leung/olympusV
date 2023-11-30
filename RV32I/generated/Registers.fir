circuit Registers :
  module Registers :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip ctrlRegWrite : UInt<1>, flip datawrite : UInt<32>, flip bundleReg : { rs1 : UInt<5>, rs2 : UInt<5>, rd : UInt<5>}, dataRead1 : UInt<32>, dataRead2 : UInt<32>}

    reg regs : UInt<32>[32], clock with :
      reset => (UInt<1>("h0"), regs) @[Registers.scala 16:18]
    node _T = eq(io.bundleReg.rs1, UInt<1>("h0")) @[Registers.scala 18:27]
    when _T : @[Registers.scala 19:5]
      io.dataRead1 <= UInt<1>("h0") @[Registers.scala 20:22]
    node _T_1 = eq(io.bundleReg.rs2, UInt<1>("h0")) @[Registers.scala 22:27]
    when _T_1 : @[Registers.scala 23:5]
      io.dataRead2 <= UInt<1>("h0") @[Registers.scala 24:22]
    io.dataRead1 <= regs[io.bundleReg.rs1] @[Registers.scala 27:18]
    io.dataRead2 <= regs[io.bundleReg.rs2] @[Registers.scala 28:18]
    node _T_2 = neq(io.bundleReg.rd, UInt<1>("h0")) @[Registers.scala 30:45]
    node _T_3 = and(io.ctrlRegWrite, _T_2) @[Registers.scala 30:26]
    when _T_3 : @[Registers.scala 31:5]
      regs[io.bundleReg.rd] <= io.datawrite @[Registers.scala 32:31]


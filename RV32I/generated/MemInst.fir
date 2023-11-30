circuit MemInst :
  module MemInst :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip addr : UInt<4>, inst : UInt<32>}

    cmem mem : UInt<32> [1024] @[MemInst.scala 14:18]
    node _io_inst_T = dshr(io.addr, UInt<2>("h2")) @[MemInst.scala 29:33]
    read mport io_inst_MPORT = mem[_io_inst_T], clock @[MemInst.scala 29:24]
    io.inst <= io_inst_MPORT @[MemInst.scala 29:13]


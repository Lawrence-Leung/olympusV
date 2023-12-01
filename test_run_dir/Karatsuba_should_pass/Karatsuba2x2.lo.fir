circuit Karatsuba2x2 :
  module Karatsuba2x2 :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<2>
    input io_b : UInt<2>
    output io_out : UInt<4>

    node _temp_T = bits(io_a, 1, 1) @[Karatsuba2x2.scala 16:16]
    node _temp_T_1 = bits(io_b, 0, 0) @[Karatsuba2x2.scala 16:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 16:19]
    node _temp_T_3 = bits(io_a, 0, 0) @[Karatsuba2x2.scala 16:34]
    node _temp_T_4 = bits(io_b, 1, 1) @[Karatsuba2x2.scala 16:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 16:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 16:28]
    node _io_out_T = bits(io_a, 1, 1) @[Karatsuba2x2.scala 21:28]
    node _io_out_T_1 = bits(io_b, 1, 1) @[Karatsuba2x2.scala 21:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 21:31]
    node temp = _temp_T_6
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 21:22]
    node _io_out_T_4 = bits(io_a, 1, 1) @[Karatsuba2x2.scala 21:51]
    node _io_out_T_5 = bits(io_b, 1, 1) @[Karatsuba2x2.scala 21:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 21:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 21:45]
    node _io_out_T_8 = bits(io_a, 1, 1) @[Karatsuba2x2.scala 21:69]
    node _io_out_T_9 = bits(io_b, 0, 0) @[Karatsuba2x2.scala 21:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 21:72]
    node _io_out_T_11 = bits(io_a, 0, 0) @[Karatsuba2x2.scala 21:87]
    node _io_out_T_12 = bits(io_b, 1, 1) @[Karatsuba2x2.scala 21:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 21:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 21:81]
    node _io_out_T_15 = bits(io_a, 0, 0) @[Karatsuba2x2.scala 21:104]
    node _io_out_T_16 = bits(io_b, 0, 0) @[Karatsuba2x2.scala 21:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 21:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io_out <= _io_out_T_18 @[Karatsuba2x2.scala 21:11]

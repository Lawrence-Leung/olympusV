circuit Karatsuba4x4 :
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

  module Karatsuba4x4 :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<4>
    input io_b : UInt<4>
    output io_out : UInt<8>

    inst Ka4_1 of Karatsuba2x2 @[Karatsuba4x4.scala 11:21]
    inst Ka4_2 of Karatsuba2x2 @[Karatsuba4x4.scala 12:21]
    inst Ka4_3 of Karatsuba2x2 @[Karatsuba4x4.scala 13:21]
    inst Ka4_4 of Karatsuba2x2 @[Karatsuba4x4.scala 14:21]
    node _Ka4_1_io_a_T = bits(io_a, 1, 0) @[Karatsuba4x4.scala 21:23]
    node _Ka4_1_io_b_T = bits(io_b, 1, 0) @[Karatsuba4x4.scala 22:23]
    node _Ka4_2_io_a_T = bits(io_a, 3, 2) @[Karatsuba4x4.scala 25:23]
    node _Ka4_2_io_b_T = bits(io_b, 3, 2) @[Karatsuba4x4.scala 26:23]
    node _Ka4_3_io_a_T = bits(io_a, 1, 0) @[Karatsuba4x4.scala 29:23]
    node _Ka4_3_io_b_T = bits(io_b, 3, 2) @[Karatsuba4x4.scala 30:23]
    node _Ka4_4_io_a_T = bits(io_a, 3, 2) @[Karatsuba4x4.scala 33:23]
    node _Ka4_4_io_b_T = bits(io_b, 1, 0) @[Karatsuba4x4.scala 34:23]
    node bc = pad(Ka4_3.io_out, 8)
    node ad = pad(Ka4_4.io_out, 8)
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    node ac = pad(Ka4_2.io_out, 8)
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    node bd = pad(Ka4_1.io_out, 8)
    node T1 = bd
    node T0 = bits(_T0_T, 7, 0)
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node psum = bits(_psum_T_2, 6, 0)
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io_out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    Ka4_1.io_a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    Ka4_1.io_b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    Ka4_2.io_a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    Ka4_2.io_b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    Ka4_3.io_a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    Ka4_3.io_b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    Ka4_4.io_a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    Ka4_4.io_b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]

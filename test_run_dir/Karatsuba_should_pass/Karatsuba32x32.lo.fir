circuit Karatsuba32x32 :
  module Karatsuba2x2 :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<2>
    input io_b : UInt<2>
    output io_out : UInt<4>

    node _temp_T = bits(io_a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io_b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io_a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io_b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    node _io_out_T = bits(io_a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io_b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node temp = _temp_T_6
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io_a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io_b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io_a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io_b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io_a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io_b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io_a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io_b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io_out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

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

  module Karatsuba8x8 :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<8>
    input io_b : UInt<8>
    output io_out : UInt<16>

    inst Ka8_1 of Karatsuba4x4 @[Karatsuba8x8.scala 11:21]
    inst Ka8_2 of Karatsuba4x4 @[Karatsuba8x8.scala 12:21]
    inst Ka8_3 of Karatsuba4x4 @[Karatsuba8x8.scala 13:21]
    inst Ka8_4 of Karatsuba4x4 @[Karatsuba8x8.scala 14:21]
    node _Ka8_1_io_a_T = bits(io_a, 3, 0) @[Karatsuba8x8.scala 20:23]
    node _Ka8_1_io_b_T = bits(io_b, 3, 0) @[Karatsuba8x8.scala 21:23]
    node _Ka8_2_io_a_T = bits(io_a, 7, 4) @[Karatsuba8x8.scala 24:23]
    node _Ka8_2_io_b_T = bits(io_b, 7, 4) @[Karatsuba8x8.scala 25:23]
    node _Ka8_3_io_a_T = bits(io_a, 3, 0) @[Karatsuba8x8.scala 28:23]
    node _Ka8_3_io_b_T = bits(io_b, 7, 4) @[Karatsuba8x8.scala 29:23]
    node _Ka8_4_io_a_T = bits(io_a, 7, 4) @[Karatsuba8x8.scala 32:23]
    node _Ka8_4_io_b_T = bits(io_b, 3, 0) @[Karatsuba8x8.scala 33:23]
    node bc = pad(Ka8_3.io_out, 16)
    node ad = pad(Ka8_4.io_out, 16)
    node _psum_T = add(bc, ad) @[Karatsuba8x8.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba8x8.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<4>("h0")) @[Cat.scala 31:58]
    node ac = pad(Ka8_2.io_out, 16)
    node _T0_T = cat(ac, UInt<8>("h0")) @[Cat.scala 31:58]
    node bd = pad(Ka8_1.io_out, 16)
    node T1 = bd
    node T0 = bits(_T0_T, 15, 0)
    node _io_out_T = add(T1, T0) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba8x8.scala 40:17]
    node psum = bits(_psum_T_2, 12, 0)
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba8x8.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba8x8.scala 40:22]
    io_out <= _io_out_T_3 @[Karatsuba8x8.scala 40:11]
    Ka8_1.clock <= clock
    Ka8_1.reset <= reset
    Ka8_1.io_a <= _Ka8_1_io_a_T @[Karatsuba8x8.scala 20:16]
    Ka8_1.io_b <= _Ka8_1_io_b_T @[Karatsuba8x8.scala 21:16]
    Ka8_2.clock <= clock
    Ka8_2.reset <= reset
    Ka8_2.io_a <= _Ka8_2_io_a_T @[Karatsuba8x8.scala 24:16]
    Ka8_2.io_b <= _Ka8_2_io_b_T @[Karatsuba8x8.scala 25:16]
    Ka8_3.clock <= clock
    Ka8_3.reset <= reset
    Ka8_3.io_a <= _Ka8_3_io_a_T @[Karatsuba8x8.scala 28:16]
    Ka8_3.io_b <= _Ka8_3_io_b_T @[Karatsuba8x8.scala 29:16]
    Ka8_4.clock <= clock
    Ka8_4.reset <= reset
    Ka8_4.io_a <= _Ka8_4_io_a_T @[Karatsuba8x8.scala 32:16]
    Ka8_4.io_b <= _Ka8_4_io_b_T @[Karatsuba8x8.scala 33:16]

  module Karatsuba16x16 :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<16>
    input io_b : UInt<16>
    output io_out : UInt<32>

    inst Ka16_1 of Karatsuba8x8 @[Karatsuba16x16.scala 11:22]
    inst Ka16_2 of Karatsuba8x8 @[Karatsuba16x16.scala 12:22]
    inst Ka16_3 of Karatsuba8x8 @[Karatsuba16x16.scala 13:22]
    inst Ka16_4 of Karatsuba8x8 @[Karatsuba16x16.scala 14:22]
    node _Ka16_1_io_a_T = bits(io_a, 7, 0) @[Karatsuba16x16.scala 20:24]
    node _Ka16_1_io_b_T = bits(io_b, 7, 0) @[Karatsuba16x16.scala 21:24]
    node _Ka16_2_io_a_T = bits(io_a, 15, 8) @[Karatsuba16x16.scala 24:24]
    node _Ka16_2_io_b_T = bits(io_b, 15, 8) @[Karatsuba16x16.scala 25:24]
    node _Ka16_3_io_a_T = bits(io_a, 7, 0) @[Karatsuba16x16.scala 28:24]
    node _Ka16_3_io_b_T = bits(io_b, 15, 8) @[Karatsuba16x16.scala 29:24]
    node _Ka16_4_io_a_T = bits(io_a, 15, 8) @[Karatsuba16x16.scala 32:24]
    node _Ka16_4_io_b_T = bits(io_b, 7, 0) @[Karatsuba16x16.scala 33:24]
    node bc = pad(Ka16_3.io_out, 32)
    node ad = pad(Ka16_4.io_out, 32)
    node _psum_T = add(bc, ad) @[Karatsuba16x16.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba16x16.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<8>("h0")) @[Cat.scala 31:58]
    node ac = pad(Ka16_2.io_out, 32)
    node _T0_T = cat(ac, UInt<16>("h0")) @[Cat.scala 31:58]
    node bd = pad(Ka16_1.io_out, 32)
    node T1 = bd
    node T0 = bits(_T0_T, 31, 0)
    node _io_out_T = add(T1, T0) @[Karatsuba16x16.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba16x16.scala 40:17]
    node psum = bits(_psum_T_2, 24, 0)
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba16x16.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba16x16.scala 40:22]
    io_out <= _io_out_T_3 @[Karatsuba16x16.scala 40:11]
    Ka16_1.clock <= clock
    Ka16_1.reset <= reset
    Ka16_1.io_a <= _Ka16_1_io_a_T @[Karatsuba16x16.scala 20:17]
    Ka16_1.io_b <= _Ka16_1_io_b_T @[Karatsuba16x16.scala 21:17]
    Ka16_2.clock <= clock
    Ka16_2.reset <= reset
    Ka16_2.io_a <= _Ka16_2_io_a_T @[Karatsuba16x16.scala 24:17]
    Ka16_2.io_b <= _Ka16_2_io_b_T @[Karatsuba16x16.scala 25:17]
    Ka16_3.clock <= clock
    Ka16_3.reset <= reset
    Ka16_3.io_a <= _Ka16_3_io_a_T @[Karatsuba16x16.scala 28:17]
    Ka16_3.io_b <= _Ka16_3_io_b_T @[Karatsuba16x16.scala 29:17]
    Ka16_4.clock <= clock
    Ka16_4.reset <= reset
    Ka16_4.io_a <= _Ka16_4_io_a_T @[Karatsuba16x16.scala 32:17]
    Ka16_4.io_b <= _Ka16_4_io_b_T @[Karatsuba16x16.scala 33:17]

  module Karatsuba32x32 :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<32>
    input io_b : UInt<32>
    output io_out : UInt<64>

    inst Ka32_1 of Karatsuba16x16 @[Karatsuba32x32.scala 11:22]
    inst Ka32_2 of Karatsuba16x16 @[Karatsuba32x32.scala 12:22]
    inst Ka32_3 of Karatsuba16x16 @[Karatsuba32x32.scala 13:22]
    inst Ka32_4 of Karatsuba16x16 @[Karatsuba32x32.scala 14:22]
    reg a : UInt<32>, clock with :
      reset => (UInt<1>("h0"), a) @[Karatsuba32x32.scala 16:18]
    reg b : UInt<32>, clock with :
      reset => (UInt<1>("h0"), b) @[Karatsuba32x32.scala 17:18]
    reg C : UInt<64>, clock with :
      reset => (UInt<1>("h0"), C) @[Karatsuba32x32.scala 18:18]
    node _Ka32_1_io_a_T = bits(a, 15, 0) @[Karatsuba32x32.scala 26:21]
    node _Ka32_1_io_b_T = bits(b, 15, 0) @[Karatsuba32x32.scala 27:21]
    node _Ka32_2_io_a_T = bits(a, 31, 16) @[Karatsuba32x32.scala 30:21]
    node _Ka32_2_io_b_T = bits(b, 31, 16) @[Karatsuba32x32.scala 31:21]
    node _Ka32_3_io_a_T = bits(a, 15, 0) @[Karatsuba32x32.scala 34:21]
    node _Ka32_3_io_b_T = bits(b, 31, 16) @[Karatsuba32x32.scala 35:21]
    node _Ka32_4_io_a_T = bits(a, 31, 16) @[Karatsuba32x32.scala 38:21]
    node _Ka32_4_io_b_T = bits(b, 15, 0) @[Karatsuba32x32.scala 39:21]
    node bc = pad(Ka32_3.io_out, 64)
    node ad = pad(Ka32_4.io_out, 64)
    node _psum_T = add(bc, ad) @[Karatsuba32x32.scala 44:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba32x32.scala 44:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<16>("h0")) @[Cat.scala 31:58]
    node ac = pad(Ka32_2.io_out, 64)
    node _T0_T = cat(ac, UInt<32>("h0")) @[Cat.scala 31:58]
    node bd = pad(Ka32_1.io_out, 64)
    node T1 = bd
    node T0 = bits(_T0_T, 63, 0)
    node _C_T = add(T1, T0) @[Karatsuba32x32.scala 46:12]
    node _C_T_1 = tail(_C_T, 1) @[Karatsuba32x32.scala 46:12]
    node psum = bits(_psum_T_2, 48, 0)
    node _C_T_2 = add(_C_T_1, psum) @[Karatsuba32x32.scala 46:17]
    node _C_T_3 = tail(_C_T_2, 1) @[Karatsuba32x32.scala 46:17]
    io_out <= C @[Karatsuba32x32.scala 47:11]
    Ka32_1.clock <= clock
    Ka32_1.reset <= reset
    Ka32_1.io_a <= _Ka32_1_io_a_T @[Karatsuba32x32.scala 26:17]
    Ka32_1.io_b <= _Ka32_1_io_b_T @[Karatsuba32x32.scala 27:17]
    Ka32_2.clock <= clock
    Ka32_2.reset <= reset
    Ka32_2.io_a <= _Ka32_2_io_a_T @[Karatsuba32x32.scala 30:17]
    Ka32_2.io_b <= _Ka32_2_io_b_T @[Karatsuba32x32.scala 31:17]
    Ka32_3.clock <= clock
    Ka32_3.reset <= reset
    Ka32_3.io_a <= _Ka32_3_io_a_T @[Karatsuba32x32.scala 34:17]
    Ka32_3.io_b <= _Ka32_3_io_b_T @[Karatsuba32x32.scala 35:17]
    Ka32_4.clock <= clock
    Ka32_4.reset <= reset
    Ka32_4.io_a <= _Ka32_4_io_a_T @[Karatsuba32x32.scala 38:17]
    Ka32_4.io_b <= _Ka32_4_io_b_T @[Karatsuba32x32.scala 39:17]
    a <= mux(reset, UInt<32>("h0"), io_a) @[Karatsuba32x32.scala 16:{18,18} 24:7]
    b <= mux(reset, UInt<32>("h0"), io_b) @[Karatsuba32x32.scala 17:{18,18} 25:7]
    C <= mux(reset, UInt<64>("h0"), _C_T_3) @[Karatsuba32x32.scala 18:{18,18} 46:6]

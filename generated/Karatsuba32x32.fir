circuit Karatsuba32x32 :
  module Karatsuba2x2 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_1 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_2 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_3 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_4 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_5 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_6 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_7 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_8 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_9 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_10 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_11 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_13 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_14 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_15 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_12 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_13 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_14 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_15 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba8x8 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, out : UInt<16>}

    inst Ka8_1 of Karatsuba4x4 @[Karatsuba8x8.scala 11:21]
    Ka8_1.clock <= clock
    Ka8_1.reset <= reset
    inst Ka8_2 of Karatsuba4x4_1 @[Karatsuba8x8.scala 12:21]
    Ka8_2.clock <= clock
    Ka8_2.reset <= reset
    inst Ka8_3 of Karatsuba4x4_2 @[Karatsuba8x8.scala 13:21]
    Ka8_3.clock <= clock
    Ka8_3.reset <= reset
    inst Ka8_4 of Karatsuba4x4_3 @[Karatsuba8x8.scala 14:21]
    Ka8_4.clock <= clock
    Ka8_4.reset <= reset
    wire T0 : UInt<16>
    T0 <= UInt<16>("h0")
    wire T1 : UInt<16>
    T1 <= UInt<16>("h0")
    wire ac : UInt<16>
    ac <= UInt<16>("h0")
    wire bc : UInt<16>
    bc <= UInt<16>("h0")
    wire ad : UInt<16>
    ad <= UInt<16>("h0")
    wire bd : UInt<16>
    bd <= UInt<16>("h0")
    wire psum : UInt<13>
    psum <= UInt<13>("h0")
    node _Ka8_1_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 20:23]
    Ka8_1.io.a <= _Ka8_1_io_a_T @[Karatsuba8x8.scala 20:16]
    node _Ka8_1_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 21:23]
    Ka8_1.io.b <= _Ka8_1_io_b_T @[Karatsuba8x8.scala 21:16]
    bd <= Ka8_1.io.out @[Karatsuba8x8.scala 22:8]
    node _Ka8_2_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 24:23]
    Ka8_2.io.a <= _Ka8_2_io_a_T @[Karatsuba8x8.scala 24:16]
    node _Ka8_2_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 25:23]
    Ka8_2.io.b <= _Ka8_2_io_b_T @[Karatsuba8x8.scala 25:16]
    ac <= Ka8_2.io.out @[Karatsuba8x8.scala 26:7]
    node _Ka8_3_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 28:23]
    Ka8_3.io.a <= _Ka8_3_io_a_T @[Karatsuba8x8.scala 28:16]
    node _Ka8_3_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 29:23]
    Ka8_3.io.b <= _Ka8_3_io_b_T @[Karatsuba8x8.scala 29:16]
    bc <= Ka8_3.io.out @[Karatsuba8x8.scala 30:7]
    node _Ka8_4_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 32:23]
    Ka8_4.io.a <= _Ka8_4_io_a_T @[Karatsuba8x8.scala 32:16]
    node _Ka8_4_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 33:23]
    Ka8_4.io.b <= _Ka8_4_io_b_T @[Karatsuba8x8.scala 33:16]
    ad <= Ka8_4.io.out @[Karatsuba8x8.scala 34:7]
    T1 <= bd @[Karatsuba8x8.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba8x8.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba8x8.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<4>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba8x8.scala 38:9]
    node _T0_T = cat(ac, UInt<8>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba8x8.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba8x8.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba8x8.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba8x8.scala 40:11]

  module Karatsuba2x2_16 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_17 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_18 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_19 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_16 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_17 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_18 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_19 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_20 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_21 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_22 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_23 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_20 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_21 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_22 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_23 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_24 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_25 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_26 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_27 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_24 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_25 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_26 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_27 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_28 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_29 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_30 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_31 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_28 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_29 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_30 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_31 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba8x8_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, out : UInt<16>}

    inst Ka8_1 of Karatsuba4x4_4 @[Karatsuba8x8.scala 11:21]
    Ka8_1.clock <= clock
    Ka8_1.reset <= reset
    inst Ka8_2 of Karatsuba4x4_5 @[Karatsuba8x8.scala 12:21]
    Ka8_2.clock <= clock
    Ka8_2.reset <= reset
    inst Ka8_3 of Karatsuba4x4_6 @[Karatsuba8x8.scala 13:21]
    Ka8_3.clock <= clock
    Ka8_3.reset <= reset
    inst Ka8_4 of Karatsuba4x4_7 @[Karatsuba8x8.scala 14:21]
    Ka8_4.clock <= clock
    Ka8_4.reset <= reset
    wire T0 : UInt<16>
    T0 <= UInt<16>("h0")
    wire T1 : UInt<16>
    T1 <= UInt<16>("h0")
    wire ac : UInt<16>
    ac <= UInt<16>("h0")
    wire bc : UInt<16>
    bc <= UInt<16>("h0")
    wire ad : UInt<16>
    ad <= UInt<16>("h0")
    wire bd : UInt<16>
    bd <= UInt<16>("h0")
    wire psum : UInt<13>
    psum <= UInt<13>("h0")
    node _Ka8_1_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 20:23]
    Ka8_1.io.a <= _Ka8_1_io_a_T @[Karatsuba8x8.scala 20:16]
    node _Ka8_1_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 21:23]
    Ka8_1.io.b <= _Ka8_1_io_b_T @[Karatsuba8x8.scala 21:16]
    bd <= Ka8_1.io.out @[Karatsuba8x8.scala 22:8]
    node _Ka8_2_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 24:23]
    Ka8_2.io.a <= _Ka8_2_io_a_T @[Karatsuba8x8.scala 24:16]
    node _Ka8_2_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 25:23]
    Ka8_2.io.b <= _Ka8_2_io_b_T @[Karatsuba8x8.scala 25:16]
    ac <= Ka8_2.io.out @[Karatsuba8x8.scala 26:7]
    node _Ka8_3_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 28:23]
    Ka8_3.io.a <= _Ka8_3_io_a_T @[Karatsuba8x8.scala 28:16]
    node _Ka8_3_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 29:23]
    Ka8_3.io.b <= _Ka8_3_io_b_T @[Karatsuba8x8.scala 29:16]
    bc <= Ka8_3.io.out @[Karatsuba8x8.scala 30:7]
    node _Ka8_4_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 32:23]
    Ka8_4.io.a <= _Ka8_4_io_a_T @[Karatsuba8x8.scala 32:16]
    node _Ka8_4_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 33:23]
    Ka8_4.io.b <= _Ka8_4_io_b_T @[Karatsuba8x8.scala 33:16]
    ad <= Ka8_4.io.out @[Karatsuba8x8.scala 34:7]
    T1 <= bd @[Karatsuba8x8.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba8x8.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba8x8.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<4>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba8x8.scala 38:9]
    node _T0_T = cat(ac, UInt<8>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba8x8.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba8x8.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba8x8.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba8x8.scala 40:11]

  module Karatsuba2x2_32 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_33 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_34 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_35 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_32 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_33 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_34 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_35 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_36 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_37 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_38 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_39 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_36 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_37 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_38 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_39 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_40 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_41 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_42 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_43 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_40 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_41 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_42 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_43 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_44 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_45 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_46 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_47 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_44 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_45 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_46 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_47 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba8x8_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, out : UInt<16>}

    inst Ka8_1 of Karatsuba4x4_8 @[Karatsuba8x8.scala 11:21]
    Ka8_1.clock <= clock
    Ka8_1.reset <= reset
    inst Ka8_2 of Karatsuba4x4_9 @[Karatsuba8x8.scala 12:21]
    Ka8_2.clock <= clock
    Ka8_2.reset <= reset
    inst Ka8_3 of Karatsuba4x4_10 @[Karatsuba8x8.scala 13:21]
    Ka8_3.clock <= clock
    Ka8_3.reset <= reset
    inst Ka8_4 of Karatsuba4x4_11 @[Karatsuba8x8.scala 14:21]
    Ka8_4.clock <= clock
    Ka8_4.reset <= reset
    wire T0 : UInt<16>
    T0 <= UInt<16>("h0")
    wire T1 : UInt<16>
    T1 <= UInt<16>("h0")
    wire ac : UInt<16>
    ac <= UInt<16>("h0")
    wire bc : UInt<16>
    bc <= UInt<16>("h0")
    wire ad : UInt<16>
    ad <= UInt<16>("h0")
    wire bd : UInt<16>
    bd <= UInt<16>("h0")
    wire psum : UInt<13>
    psum <= UInt<13>("h0")
    node _Ka8_1_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 20:23]
    Ka8_1.io.a <= _Ka8_1_io_a_T @[Karatsuba8x8.scala 20:16]
    node _Ka8_1_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 21:23]
    Ka8_1.io.b <= _Ka8_1_io_b_T @[Karatsuba8x8.scala 21:16]
    bd <= Ka8_1.io.out @[Karatsuba8x8.scala 22:8]
    node _Ka8_2_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 24:23]
    Ka8_2.io.a <= _Ka8_2_io_a_T @[Karatsuba8x8.scala 24:16]
    node _Ka8_2_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 25:23]
    Ka8_2.io.b <= _Ka8_2_io_b_T @[Karatsuba8x8.scala 25:16]
    ac <= Ka8_2.io.out @[Karatsuba8x8.scala 26:7]
    node _Ka8_3_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 28:23]
    Ka8_3.io.a <= _Ka8_3_io_a_T @[Karatsuba8x8.scala 28:16]
    node _Ka8_3_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 29:23]
    Ka8_3.io.b <= _Ka8_3_io_b_T @[Karatsuba8x8.scala 29:16]
    bc <= Ka8_3.io.out @[Karatsuba8x8.scala 30:7]
    node _Ka8_4_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 32:23]
    Ka8_4.io.a <= _Ka8_4_io_a_T @[Karatsuba8x8.scala 32:16]
    node _Ka8_4_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 33:23]
    Ka8_4.io.b <= _Ka8_4_io_b_T @[Karatsuba8x8.scala 33:16]
    ad <= Ka8_4.io.out @[Karatsuba8x8.scala 34:7]
    T1 <= bd @[Karatsuba8x8.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba8x8.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba8x8.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<4>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba8x8.scala 38:9]
    node _T0_T = cat(ac, UInt<8>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba8x8.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba8x8.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba8x8.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba8x8.scala 40:11]

  module Karatsuba2x2_48 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_49 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_50 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_51 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_48 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_49 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_50 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_51 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_52 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_53 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_54 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_55 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_13 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_52 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_53 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_54 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_55 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_56 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_57 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_58 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_59 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_14 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_56 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_57 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_58 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_59 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_60 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_61 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_62 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_63 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_15 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_60 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_61 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_62 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_63 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba8x8_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, out : UInt<16>}

    inst Ka8_1 of Karatsuba4x4_12 @[Karatsuba8x8.scala 11:21]
    Ka8_1.clock <= clock
    Ka8_1.reset <= reset
    inst Ka8_2 of Karatsuba4x4_13 @[Karatsuba8x8.scala 12:21]
    Ka8_2.clock <= clock
    Ka8_2.reset <= reset
    inst Ka8_3 of Karatsuba4x4_14 @[Karatsuba8x8.scala 13:21]
    Ka8_3.clock <= clock
    Ka8_3.reset <= reset
    inst Ka8_4 of Karatsuba4x4_15 @[Karatsuba8x8.scala 14:21]
    Ka8_4.clock <= clock
    Ka8_4.reset <= reset
    wire T0 : UInt<16>
    T0 <= UInt<16>("h0")
    wire T1 : UInt<16>
    T1 <= UInt<16>("h0")
    wire ac : UInt<16>
    ac <= UInt<16>("h0")
    wire bc : UInt<16>
    bc <= UInt<16>("h0")
    wire ad : UInt<16>
    ad <= UInt<16>("h0")
    wire bd : UInt<16>
    bd <= UInt<16>("h0")
    wire psum : UInt<13>
    psum <= UInt<13>("h0")
    node _Ka8_1_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 20:23]
    Ka8_1.io.a <= _Ka8_1_io_a_T @[Karatsuba8x8.scala 20:16]
    node _Ka8_1_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 21:23]
    Ka8_1.io.b <= _Ka8_1_io_b_T @[Karatsuba8x8.scala 21:16]
    bd <= Ka8_1.io.out @[Karatsuba8x8.scala 22:8]
    node _Ka8_2_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 24:23]
    Ka8_2.io.a <= _Ka8_2_io_a_T @[Karatsuba8x8.scala 24:16]
    node _Ka8_2_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 25:23]
    Ka8_2.io.b <= _Ka8_2_io_b_T @[Karatsuba8x8.scala 25:16]
    ac <= Ka8_2.io.out @[Karatsuba8x8.scala 26:7]
    node _Ka8_3_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 28:23]
    Ka8_3.io.a <= _Ka8_3_io_a_T @[Karatsuba8x8.scala 28:16]
    node _Ka8_3_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 29:23]
    Ka8_3.io.b <= _Ka8_3_io_b_T @[Karatsuba8x8.scala 29:16]
    bc <= Ka8_3.io.out @[Karatsuba8x8.scala 30:7]
    node _Ka8_4_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 32:23]
    Ka8_4.io.a <= _Ka8_4_io_a_T @[Karatsuba8x8.scala 32:16]
    node _Ka8_4_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 33:23]
    Ka8_4.io.b <= _Ka8_4_io_b_T @[Karatsuba8x8.scala 33:16]
    ad <= Ka8_4.io.out @[Karatsuba8x8.scala 34:7]
    T1 <= bd @[Karatsuba8x8.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba8x8.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba8x8.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<4>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba8x8.scala 38:9]
    node _T0_T = cat(ac, UInt<8>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba8x8.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba8x8.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba8x8.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba8x8.scala 40:11]

  module Karatsuba16x16 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<16>, flip b : UInt<16>, out : UInt<32>}

    inst Ka16_1 of Karatsuba8x8 @[Karatsuba16x16.scala 11:22]
    Ka16_1.clock <= clock
    Ka16_1.reset <= reset
    inst Ka16_2 of Karatsuba8x8_1 @[Karatsuba16x16.scala 12:22]
    Ka16_2.clock <= clock
    Ka16_2.reset <= reset
    inst Ka16_3 of Karatsuba8x8_2 @[Karatsuba16x16.scala 13:22]
    Ka16_3.clock <= clock
    Ka16_3.reset <= reset
    inst Ka16_4 of Karatsuba8x8_3 @[Karatsuba16x16.scala 14:22]
    Ka16_4.clock <= clock
    Ka16_4.reset <= reset
    wire T0 : UInt<32>
    T0 <= UInt<32>("h0")
    wire T1 : UInt<32>
    T1 <= UInt<32>("h0")
    wire ac : UInt<32>
    ac <= UInt<32>("h0")
    wire bc : UInt<32>
    bc <= UInt<32>("h0")
    wire ad : UInt<32>
    ad <= UInt<32>("h0")
    wire bd : UInt<32>
    bd <= UInt<32>("h0")
    wire psum : UInt<25>
    psum <= UInt<25>("h0")
    node _Ka16_1_io_a_T = bits(io.a, 7, 0) @[Karatsuba16x16.scala 20:24]
    Ka16_1.io.a <= _Ka16_1_io_a_T @[Karatsuba16x16.scala 20:17]
    node _Ka16_1_io_b_T = bits(io.b, 7, 0) @[Karatsuba16x16.scala 21:24]
    Ka16_1.io.b <= _Ka16_1_io_b_T @[Karatsuba16x16.scala 21:17]
    bd <= Ka16_1.io.out @[Karatsuba16x16.scala 22:8]
    node _Ka16_2_io_a_T = bits(io.a, 15, 8) @[Karatsuba16x16.scala 24:24]
    Ka16_2.io.a <= _Ka16_2_io_a_T @[Karatsuba16x16.scala 24:17]
    node _Ka16_2_io_b_T = bits(io.b, 15, 8) @[Karatsuba16x16.scala 25:24]
    Ka16_2.io.b <= _Ka16_2_io_b_T @[Karatsuba16x16.scala 25:17]
    ac <= Ka16_2.io.out @[Karatsuba16x16.scala 26:7]
    node _Ka16_3_io_a_T = bits(io.a, 7, 0) @[Karatsuba16x16.scala 28:24]
    Ka16_3.io.a <= _Ka16_3_io_a_T @[Karatsuba16x16.scala 28:17]
    node _Ka16_3_io_b_T = bits(io.b, 15, 8) @[Karatsuba16x16.scala 29:24]
    Ka16_3.io.b <= _Ka16_3_io_b_T @[Karatsuba16x16.scala 29:17]
    bc <= Ka16_3.io.out @[Karatsuba16x16.scala 30:7]
    node _Ka16_4_io_a_T = bits(io.a, 15, 8) @[Karatsuba16x16.scala 32:24]
    Ka16_4.io.a <= _Ka16_4_io_a_T @[Karatsuba16x16.scala 32:17]
    node _Ka16_4_io_b_T = bits(io.b, 7, 0) @[Karatsuba16x16.scala 33:24]
    Ka16_4.io.b <= _Ka16_4_io_b_T @[Karatsuba16x16.scala 33:17]
    ad <= Ka16_4.io.out @[Karatsuba16x16.scala 34:7]
    T1 <= bd @[Karatsuba16x16.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba16x16.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba16x16.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<8>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba16x16.scala 38:9]
    node _T0_T = cat(ac, UInt<16>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba16x16.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba16x16.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba16x16.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba16x16.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba16x16.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba16x16.scala 40:11]

  module Karatsuba2x2_64 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_65 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_66 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_67 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_16 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_64 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_65 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_66 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_67 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_68 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_69 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_70 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_71 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_17 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_68 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_69 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_70 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_71 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_72 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_73 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_74 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_75 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_18 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_72 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_73 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_74 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_75 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_76 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_77 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_78 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_79 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_19 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_76 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_77 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_78 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_79 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba8x8_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, out : UInt<16>}

    inst Ka8_1 of Karatsuba4x4_16 @[Karatsuba8x8.scala 11:21]
    Ka8_1.clock <= clock
    Ka8_1.reset <= reset
    inst Ka8_2 of Karatsuba4x4_17 @[Karatsuba8x8.scala 12:21]
    Ka8_2.clock <= clock
    Ka8_2.reset <= reset
    inst Ka8_3 of Karatsuba4x4_18 @[Karatsuba8x8.scala 13:21]
    Ka8_3.clock <= clock
    Ka8_3.reset <= reset
    inst Ka8_4 of Karatsuba4x4_19 @[Karatsuba8x8.scala 14:21]
    Ka8_4.clock <= clock
    Ka8_4.reset <= reset
    wire T0 : UInt<16>
    T0 <= UInt<16>("h0")
    wire T1 : UInt<16>
    T1 <= UInt<16>("h0")
    wire ac : UInt<16>
    ac <= UInt<16>("h0")
    wire bc : UInt<16>
    bc <= UInt<16>("h0")
    wire ad : UInt<16>
    ad <= UInt<16>("h0")
    wire bd : UInt<16>
    bd <= UInt<16>("h0")
    wire psum : UInt<13>
    psum <= UInt<13>("h0")
    node _Ka8_1_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 20:23]
    Ka8_1.io.a <= _Ka8_1_io_a_T @[Karatsuba8x8.scala 20:16]
    node _Ka8_1_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 21:23]
    Ka8_1.io.b <= _Ka8_1_io_b_T @[Karatsuba8x8.scala 21:16]
    bd <= Ka8_1.io.out @[Karatsuba8x8.scala 22:8]
    node _Ka8_2_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 24:23]
    Ka8_2.io.a <= _Ka8_2_io_a_T @[Karatsuba8x8.scala 24:16]
    node _Ka8_2_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 25:23]
    Ka8_2.io.b <= _Ka8_2_io_b_T @[Karatsuba8x8.scala 25:16]
    ac <= Ka8_2.io.out @[Karatsuba8x8.scala 26:7]
    node _Ka8_3_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 28:23]
    Ka8_3.io.a <= _Ka8_3_io_a_T @[Karatsuba8x8.scala 28:16]
    node _Ka8_3_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 29:23]
    Ka8_3.io.b <= _Ka8_3_io_b_T @[Karatsuba8x8.scala 29:16]
    bc <= Ka8_3.io.out @[Karatsuba8x8.scala 30:7]
    node _Ka8_4_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 32:23]
    Ka8_4.io.a <= _Ka8_4_io_a_T @[Karatsuba8x8.scala 32:16]
    node _Ka8_4_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 33:23]
    Ka8_4.io.b <= _Ka8_4_io_b_T @[Karatsuba8x8.scala 33:16]
    ad <= Ka8_4.io.out @[Karatsuba8x8.scala 34:7]
    T1 <= bd @[Karatsuba8x8.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba8x8.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba8x8.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<4>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba8x8.scala 38:9]
    node _T0_T = cat(ac, UInt<8>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba8x8.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba8x8.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba8x8.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba8x8.scala 40:11]

  module Karatsuba2x2_80 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_81 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_82 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_83 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_20 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_80 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_81 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_82 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_83 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_84 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_85 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_86 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_87 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_21 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_84 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_85 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_86 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_87 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_88 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_89 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_90 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_91 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_22 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_88 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_89 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_90 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_91 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_92 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_93 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_94 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_95 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_23 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_92 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_93 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_94 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_95 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba8x8_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, out : UInt<16>}

    inst Ka8_1 of Karatsuba4x4_20 @[Karatsuba8x8.scala 11:21]
    Ka8_1.clock <= clock
    Ka8_1.reset <= reset
    inst Ka8_2 of Karatsuba4x4_21 @[Karatsuba8x8.scala 12:21]
    Ka8_2.clock <= clock
    Ka8_2.reset <= reset
    inst Ka8_3 of Karatsuba4x4_22 @[Karatsuba8x8.scala 13:21]
    Ka8_3.clock <= clock
    Ka8_3.reset <= reset
    inst Ka8_4 of Karatsuba4x4_23 @[Karatsuba8x8.scala 14:21]
    Ka8_4.clock <= clock
    Ka8_4.reset <= reset
    wire T0 : UInt<16>
    T0 <= UInt<16>("h0")
    wire T1 : UInt<16>
    T1 <= UInt<16>("h0")
    wire ac : UInt<16>
    ac <= UInt<16>("h0")
    wire bc : UInt<16>
    bc <= UInt<16>("h0")
    wire ad : UInt<16>
    ad <= UInt<16>("h0")
    wire bd : UInt<16>
    bd <= UInt<16>("h0")
    wire psum : UInt<13>
    psum <= UInt<13>("h0")
    node _Ka8_1_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 20:23]
    Ka8_1.io.a <= _Ka8_1_io_a_T @[Karatsuba8x8.scala 20:16]
    node _Ka8_1_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 21:23]
    Ka8_1.io.b <= _Ka8_1_io_b_T @[Karatsuba8x8.scala 21:16]
    bd <= Ka8_1.io.out @[Karatsuba8x8.scala 22:8]
    node _Ka8_2_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 24:23]
    Ka8_2.io.a <= _Ka8_2_io_a_T @[Karatsuba8x8.scala 24:16]
    node _Ka8_2_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 25:23]
    Ka8_2.io.b <= _Ka8_2_io_b_T @[Karatsuba8x8.scala 25:16]
    ac <= Ka8_2.io.out @[Karatsuba8x8.scala 26:7]
    node _Ka8_3_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 28:23]
    Ka8_3.io.a <= _Ka8_3_io_a_T @[Karatsuba8x8.scala 28:16]
    node _Ka8_3_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 29:23]
    Ka8_3.io.b <= _Ka8_3_io_b_T @[Karatsuba8x8.scala 29:16]
    bc <= Ka8_3.io.out @[Karatsuba8x8.scala 30:7]
    node _Ka8_4_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 32:23]
    Ka8_4.io.a <= _Ka8_4_io_a_T @[Karatsuba8x8.scala 32:16]
    node _Ka8_4_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 33:23]
    Ka8_4.io.b <= _Ka8_4_io_b_T @[Karatsuba8x8.scala 33:16]
    ad <= Ka8_4.io.out @[Karatsuba8x8.scala 34:7]
    T1 <= bd @[Karatsuba8x8.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba8x8.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba8x8.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<4>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba8x8.scala 38:9]
    node _T0_T = cat(ac, UInt<8>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba8x8.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba8x8.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba8x8.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba8x8.scala 40:11]

  module Karatsuba2x2_96 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_97 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_98 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_99 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_24 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_96 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_97 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_98 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_99 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_100 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_101 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_102 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_103 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_25 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_100 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_101 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_102 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_103 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_104 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_105 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_106 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_107 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_26 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_104 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_105 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_106 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_107 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_108 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_109 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_110 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_111 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_27 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_108 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_109 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_110 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_111 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba8x8_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, out : UInt<16>}

    inst Ka8_1 of Karatsuba4x4_24 @[Karatsuba8x8.scala 11:21]
    Ka8_1.clock <= clock
    Ka8_1.reset <= reset
    inst Ka8_2 of Karatsuba4x4_25 @[Karatsuba8x8.scala 12:21]
    Ka8_2.clock <= clock
    Ka8_2.reset <= reset
    inst Ka8_3 of Karatsuba4x4_26 @[Karatsuba8x8.scala 13:21]
    Ka8_3.clock <= clock
    Ka8_3.reset <= reset
    inst Ka8_4 of Karatsuba4x4_27 @[Karatsuba8x8.scala 14:21]
    Ka8_4.clock <= clock
    Ka8_4.reset <= reset
    wire T0 : UInt<16>
    T0 <= UInt<16>("h0")
    wire T1 : UInt<16>
    T1 <= UInt<16>("h0")
    wire ac : UInt<16>
    ac <= UInt<16>("h0")
    wire bc : UInt<16>
    bc <= UInt<16>("h0")
    wire ad : UInt<16>
    ad <= UInt<16>("h0")
    wire bd : UInt<16>
    bd <= UInt<16>("h0")
    wire psum : UInt<13>
    psum <= UInt<13>("h0")
    node _Ka8_1_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 20:23]
    Ka8_1.io.a <= _Ka8_1_io_a_T @[Karatsuba8x8.scala 20:16]
    node _Ka8_1_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 21:23]
    Ka8_1.io.b <= _Ka8_1_io_b_T @[Karatsuba8x8.scala 21:16]
    bd <= Ka8_1.io.out @[Karatsuba8x8.scala 22:8]
    node _Ka8_2_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 24:23]
    Ka8_2.io.a <= _Ka8_2_io_a_T @[Karatsuba8x8.scala 24:16]
    node _Ka8_2_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 25:23]
    Ka8_2.io.b <= _Ka8_2_io_b_T @[Karatsuba8x8.scala 25:16]
    ac <= Ka8_2.io.out @[Karatsuba8x8.scala 26:7]
    node _Ka8_3_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 28:23]
    Ka8_3.io.a <= _Ka8_3_io_a_T @[Karatsuba8x8.scala 28:16]
    node _Ka8_3_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 29:23]
    Ka8_3.io.b <= _Ka8_3_io_b_T @[Karatsuba8x8.scala 29:16]
    bc <= Ka8_3.io.out @[Karatsuba8x8.scala 30:7]
    node _Ka8_4_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 32:23]
    Ka8_4.io.a <= _Ka8_4_io_a_T @[Karatsuba8x8.scala 32:16]
    node _Ka8_4_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 33:23]
    Ka8_4.io.b <= _Ka8_4_io_b_T @[Karatsuba8x8.scala 33:16]
    ad <= Ka8_4.io.out @[Karatsuba8x8.scala 34:7]
    T1 <= bd @[Karatsuba8x8.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba8x8.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba8x8.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<4>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba8x8.scala 38:9]
    node _T0_T = cat(ac, UInt<8>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba8x8.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba8x8.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba8x8.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba8x8.scala 40:11]

  module Karatsuba2x2_112 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_113 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_114 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_115 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_28 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_112 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_113 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_114 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_115 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_116 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_117 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_118 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_119 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_29 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_116 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_117 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_118 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_119 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_120 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_121 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_122 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_123 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_30 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_120 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_121 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_122 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_123 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_124 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_125 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_126 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_127 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_31 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_124 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_125 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_126 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_127 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba8x8_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, out : UInt<16>}

    inst Ka8_1 of Karatsuba4x4_28 @[Karatsuba8x8.scala 11:21]
    Ka8_1.clock <= clock
    Ka8_1.reset <= reset
    inst Ka8_2 of Karatsuba4x4_29 @[Karatsuba8x8.scala 12:21]
    Ka8_2.clock <= clock
    Ka8_2.reset <= reset
    inst Ka8_3 of Karatsuba4x4_30 @[Karatsuba8x8.scala 13:21]
    Ka8_3.clock <= clock
    Ka8_3.reset <= reset
    inst Ka8_4 of Karatsuba4x4_31 @[Karatsuba8x8.scala 14:21]
    Ka8_4.clock <= clock
    Ka8_4.reset <= reset
    wire T0 : UInt<16>
    T0 <= UInt<16>("h0")
    wire T1 : UInt<16>
    T1 <= UInt<16>("h0")
    wire ac : UInt<16>
    ac <= UInt<16>("h0")
    wire bc : UInt<16>
    bc <= UInt<16>("h0")
    wire ad : UInt<16>
    ad <= UInt<16>("h0")
    wire bd : UInt<16>
    bd <= UInt<16>("h0")
    wire psum : UInt<13>
    psum <= UInt<13>("h0")
    node _Ka8_1_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 20:23]
    Ka8_1.io.a <= _Ka8_1_io_a_T @[Karatsuba8x8.scala 20:16]
    node _Ka8_1_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 21:23]
    Ka8_1.io.b <= _Ka8_1_io_b_T @[Karatsuba8x8.scala 21:16]
    bd <= Ka8_1.io.out @[Karatsuba8x8.scala 22:8]
    node _Ka8_2_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 24:23]
    Ka8_2.io.a <= _Ka8_2_io_a_T @[Karatsuba8x8.scala 24:16]
    node _Ka8_2_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 25:23]
    Ka8_2.io.b <= _Ka8_2_io_b_T @[Karatsuba8x8.scala 25:16]
    ac <= Ka8_2.io.out @[Karatsuba8x8.scala 26:7]
    node _Ka8_3_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 28:23]
    Ka8_3.io.a <= _Ka8_3_io_a_T @[Karatsuba8x8.scala 28:16]
    node _Ka8_3_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 29:23]
    Ka8_3.io.b <= _Ka8_3_io_b_T @[Karatsuba8x8.scala 29:16]
    bc <= Ka8_3.io.out @[Karatsuba8x8.scala 30:7]
    node _Ka8_4_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 32:23]
    Ka8_4.io.a <= _Ka8_4_io_a_T @[Karatsuba8x8.scala 32:16]
    node _Ka8_4_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 33:23]
    Ka8_4.io.b <= _Ka8_4_io_b_T @[Karatsuba8x8.scala 33:16]
    ad <= Ka8_4.io.out @[Karatsuba8x8.scala 34:7]
    T1 <= bd @[Karatsuba8x8.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba8x8.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba8x8.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<4>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba8x8.scala 38:9]
    node _T0_T = cat(ac, UInt<8>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba8x8.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba8x8.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba8x8.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba8x8.scala 40:11]

  module Karatsuba16x16_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<16>, flip b : UInt<16>, out : UInt<32>}

    inst Ka16_1 of Karatsuba8x8_4 @[Karatsuba16x16.scala 11:22]
    Ka16_1.clock <= clock
    Ka16_1.reset <= reset
    inst Ka16_2 of Karatsuba8x8_5 @[Karatsuba16x16.scala 12:22]
    Ka16_2.clock <= clock
    Ka16_2.reset <= reset
    inst Ka16_3 of Karatsuba8x8_6 @[Karatsuba16x16.scala 13:22]
    Ka16_3.clock <= clock
    Ka16_3.reset <= reset
    inst Ka16_4 of Karatsuba8x8_7 @[Karatsuba16x16.scala 14:22]
    Ka16_4.clock <= clock
    Ka16_4.reset <= reset
    wire T0 : UInt<32>
    T0 <= UInt<32>("h0")
    wire T1 : UInt<32>
    T1 <= UInt<32>("h0")
    wire ac : UInt<32>
    ac <= UInt<32>("h0")
    wire bc : UInt<32>
    bc <= UInt<32>("h0")
    wire ad : UInt<32>
    ad <= UInt<32>("h0")
    wire bd : UInt<32>
    bd <= UInt<32>("h0")
    wire psum : UInt<25>
    psum <= UInt<25>("h0")
    node _Ka16_1_io_a_T = bits(io.a, 7, 0) @[Karatsuba16x16.scala 20:24]
    Ka16_1.io.a <= _Ka16_1_io_a_T @[Karatsuba16x16.scala 20:17]
    node _Ka16_1_io_b_T = bits(io.b, 7, 0) @[Karatsuba16x16.scala 21:24]
    Ka16_1.io.b <= _Ka16_1_io_b_T @[Karatsuba16x16.scala 21:17]
    bd <= Ka16_1.io.out @[Karatsuba16x16.scala 22:8]
    node _Ka16_2_io_a_T = bits(io.a, 15, 8) @[Karatsuba16x16.scala 24:24]
    Ka16_2.io.a <= _Ka16_2_io_a_T @[Karatsuba16x16.scala 24:17]
    node _Ka16_2_io_b_T = bits(io.b, 15, 8) @[Karatsuba16x16.scala 25:24]
    Ka16_2.io.b <= _Ka16_2_io_b_T @[Karatsuba16x16.scala 25:17]
    ac <= Ka16_2.io.out @[Karatsuba16x16.scala 26:7]
    node _Ka16_3_io_a_T = bits(io.a, 7, 0) @[Karatsuba16x16.scala 28:24]
    Ka16_3.io.a <= _Ka16_3_io_a_T @[Karatsuba16x16.scala 28:17]
    node _Ka16_3_io_b_T = bits(io.b, 15, 8) @[Karatsuba16x16.scala 29:24]
    Ka16_3.io.b <= _Ka16_3_io_b_T @[Karatsuba16x16.scala 29:17]
    bc <= Ka16_3.io.out @[Karatsuba16x16.scala 30:7]
    node _Ka16_4_io_a_T = bits(io.a, 15, 8) @[Karatsuba16x16.scala 32:24]
    Ka16_4.io.a <= _Ka16_4_io_a_T @[Karatsuba16x16.scala 32:17]
    node _Ka16_4_io_b_T = bits(io.b, 7, 0) @[Karatsuba16x16.scala 33:24]
    Ka16_4.io.b <= _Ka16_4_io_b_T @[Karatsuba16x16.scala 33:17]
    ad <= Ka16_4.io.out @[Karatsuba16x16.scala 34:7]
    T1 <= bd @[Karatsuba16x16.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba16x16.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba16x16.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<8>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba16x16.scala 38:9]
    node _T0_T = cat(ac, UInt<16>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba16x16.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba16x16.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba16x16.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba16x16.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba16x16.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba16x16.scala 40:11]

  module Karatsuba2x2_128 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_129 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_130 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_131 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_32 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_128 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_129 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_130 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_131 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_132 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_133 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_134 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_135 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_33 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_132 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_133 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_134 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_135 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_136 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_137 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_138 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_139 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_34 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_136 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_137 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_138 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_139 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_140 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_141 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_142 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_143 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_35 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_140 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_141 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_142 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_143 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba8x8_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, out : UInt<16>}

    inst Ka8_1 of Karatsuba4x4_32 @[Karatsuba8x8.scala 11:21]
    Ka8_1.clock <= clock
    Ka8_1.reset <= reset
    inst Ka8_2 of Karatsuba4x4_33 @[Karatsuba8x8.scala 12:21]
    Ka8_2.clock <= clock
    Ka8_2.reset <= reset
    inst Ka8_3 of Karatsuba4x4_34 @[Karatsuba8x8.scala 13:21]
    Ka8_3.clock <= clock
    Ka8_3.reset <= reset
    inst Ka8_4 of Karatsuba4x4_35 @[Karatsuba8x8.scala 14:21]
    Ka8_4.clock <= clock
    Ka8_4.reset <= reset
    wire T0 : UInt<16>
    T0 <= UInt<16>("h0")
    wire T1 : UInt<16>
    T1 <= UInt<16>("h0")
    wire ac : UInt<16>
    ac <= UInt<16>("h0")
    wire bc : UInt<16>
    bc <= UInt<16>("h0")
    wire ad : UInt<16>
    ad <= UInt<16>("h0")
    wire bd : UInt<16>
    bd <= UInt<16>("h0")
    wire psum : UInt<13>
    psum <= UInt<13>("h0")
    node _Ka8_1_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 20:23]
    Ka8_1.io.a <= _Ka8_1_io_a_T @[Karatsuba8x8.scala 20:16]
    node _Ka8_1_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 21:23]
    Ka8_1.io.b <= _Ka8_1_io_b_T @[Karatsuba8x8.scala 21:16]
    bd <= Ka8_1.io.out @[Karatsuba8x8.scala 22:8]
    node _Ka8_2_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 24:23]
    Ka8_2.io.a <= _Ka8_2_io_a_T @[Karatsuba8x8.scala 24:16]
    node _Ka8_2_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 25:23]
    Ka8_2.io.b <= _Ka8_2_io_b_T @[Karatsuba8x8.scala 25:16]
    ac <= Ka8_2.io.out @[Karatsuba8x8.scala 26:7]
    node _Ka8_3_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 28:23]
    Ka8_3.io.a <= _Ka8_3_io_a_T @[Karatsuba8x8.scala 28:16]
    node _Ka8_3_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 29:23]
    Ka8_3.io.b <= _Ka8_3_io_b_T @[Karatsuba8x8.scala 29:16]
    bc <= Ka8_3.io.out @[Karatsuba8x8.scala 30:7]
    node _Ka8_4_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 32:23]
    Ka8_4.io.a <= _Ka8_4_io_a_T @[Karatsuba8x8.scala 32:16]
    node _Ka8_4_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 33:23]
    Ka8_4.io.b <= _Ka8_4_io_b_T @[Karatsuba8x8.scala 33:16]
    ad <= Ka8_4.io.out @[Karatsuba8x8.scala 34:7]
    T1 <= bd @[Karatsuba8x8.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba8x8.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba8x8.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<4>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba8x8.scala 38:9]
    node _T0_T = cat(ac, UInt<8>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba8x8.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba8x8.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba8x8.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba8x8.scala 40:11]

  module Karatsuba2x2_144 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_145 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_146 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_147 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_36 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_144 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_145 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_146 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_147 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_148 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_149 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_150 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_151 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_37 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_148 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_149 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_150 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_151 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_152 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_153 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_154 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_155 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_38 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_152 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_153 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_154 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_155 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_156 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_157 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_158 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_159 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_39 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_156 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_157 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_158 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_159 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba8x8_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, out : UInt<16>}

    inst Ka8_1 of Karatsuba4x4_36 @[Karatsuba8x8.scala 11:21]
    Ka8_1.clock <= clock
    Ka8_1.reset <= reset
    inst Ka8_2 of Karatsuba4x4_37 @[Karatsuba8x8.scala 12:21]
    Ka8_2.clock <= clock
    Ka8_2.reset <= reset
    inst Ka8_3 of Karatsuba4x4_38 @[Karatsuba8x8.scala 13:21]
    Ka8_3.clock <= clock
    Ka8_3.reset <= reset
    inst Ka8_4 of Karatsuba4x4_39 @[Karatsuba8x8.scala 14:21]
    Ka8_4.clock <= clock
    Ka8_4.reset <= reset
    wire T0 : UInt<16>
    T0 <= UInt<16>("h0")
    wire T1 : UInt<16>
    T1 <= UInt<16>("h0")
    wire ac : UInt<16>
    ac <= UInt<16>("h0")
    wire bc : UInt<16>
    bc <= UInt<16>("h0")
    wire ad : UInt<16>
    ad <= UInt<16>("h0")
    wire bd : UInt<16>
    bd <= UInt<16>("h0")
    wire psum : UInt<13>
    psum <= UInt<13>("h0")
    node _Ka8_1_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 20:23]
    Ka8_1.io.a <= _Ka8_1_io_a_T @[Karatsuba8x8.scala 20:16]
    node _Ka8_1_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 21:23]
    Ka8_1.io.b <= _Ka8_1_io_b_T @[Karatsuba8x8.scala 21:16]
    bd <= Ka8_1.io.out @[Karatsuba8x8.scala 22:8]
    node _Ka8_2_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 24:23]
    Ka8_2.io.a <= _Ka8_2_io_a_T @[Karatsuba8x8.scala 24:16]
    node _Ka8_2_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 25:23]
    Ka8_2.io.b <= _Ka8_2_io_b_T @[Karatsuba8x8.scala 25:16]
    ac <= Ka8_2.io.out @[Karatsuba8x8.scala 26:7]
    node _Ka8_3_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 28:23]
    Ka8_3.io.a <= _Ka8_3_io_a_T @[Karatsuba8x8.scala 28:16]
    node _Ka8_3_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 29:23]
    Ka8_3.io.b <= _Ka8_3_io_b_T @[Karatsuba8x8.scala 29:16]
    bc <= Ka8_3.io.out @[Karatsuba8x8.scala 30:7]
    node _Ka8_4_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 32:23]
    Ka8_4.io.a <= _Ka8_4_io_a_T @[Karatsuba8x8.scala 32:16]
    node _Ka8_4_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 33:23]
    Ka8_4.io.b <= _Ka8_4_io_b_T @[Karatsuba8x8.scala 33:16]
    ad <= Ka8_4.io.out @[Karatsuba8x8.scala 34:7]
    T1 <= bd @[Karatsuba8x8.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba8x8.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba8x8.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<4>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba8x8.scala 38:9]
    node _T0_T = cat(ac, UInt<8>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba8x8.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba8x8.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba8x8.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba8x8.scala 40:11]

  module Karatsuba2x2_160 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_161 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_162 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_163 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_40 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_160 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_161 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_162 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_163 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_164 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_165 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_166 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_167 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_41 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_164 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_165 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_166 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_167 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_168 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_169 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_170 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_171 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_42 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_168 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_169 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_170 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_171 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_172 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_173 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_174 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_175 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_43 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_172 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_173 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_174 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_175 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba8x8_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, out : UInt<16>}

    inst Ka8_1 of Karatsuba4x4_40 @[Karatsuba8x8.scala 11:21]
    Ka8_1.clock <= clock
    Ka8_1.reset <= reset
    inst Ka8_2 of Karatsuba4x4_41 @[Karatsuba8x8.scala 12:21]
    Ka8_2.clock <= clock
    Ka8_2.reset <= reset
    inst Ka8_3 of Karatsuba4x4_42 @[Karatsuba8x8.scala 13:21]
    Ka8_3.clock <= clock
    Ka8_3.reset <= reset
    inst Ka8_4 of Karatsuba4x4_43 @[Karatsuba8x8.scala 14:21]
    Ka8_4.clock <= clock
    Ka8_4.reset <= reset
    wire T0 : UInt<16>
    T0 <= UInt<16>("h0")
    wire T1 : UInt<16>
    T1 <= UInt<16>("h0")
    wire ac : UInt<16>
    ac <= UInt<16>("h0")
    wire bc : UInt<16>
    bc <= UInt<16>("h0")
    wire ad : UInt<16>
    ad <= UInt<16>("h0")
    wire bd : UInt<16>
    bd <= UInt<16>("h0")
    wire psum : UInt<13>
    psum <= UInt<13>("h0")
    node _Ka8_1_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 20:23]
    Ka8_1.io.a <= _Ka8_1_io_a_T @[Karatsuba8x8.scala 20:16]
    node _Ka8_1_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 21:23]
    Ka8_1.io.b <= _Ka8_1_io_b_T @[Karatsuba8x8.scala 21:16]
    bd <= Ka8_1.io.out @[Karatsuba8x8.scala 22:8]
    node _Ka8_2_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 24:23]
    Ka8_2.io.a <= _Ka8_2_io_a_T @[Karatsuba8x8.scala 24:16]
    node _Ka8_2_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 25:23]
    Ka8_2.io.b <= _Ka8_2_io_b_T @[Karatsuba8x8.scala 25:16]
    ac <= Ka8_2.io.out @[Karatsuba8x8.scala 26:7]
    node _Ka8_3_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 28:23]
    Ka8_3.io.a <= _Ka8_3_io_a_T @[Karatsuba8x8.scala 28:16]
    node _Ka8_3_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 29:23]
    Ka8_3.io.b <= _Ka8_3_io_b_T @[Karatsuba8x8.scala 29:16]
    bc <= Ka8_3.io.out @[Karatsuba8x8.scala 30:7]
    node _Ka8_4_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 32:23]
    Ka8_4.io.a <= _Ka8_4_io_a_T @[Karatsuba8x8.scala 32:16]
    node _Ka8_4_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 33:23]
    Ka8_4.io.b <= _Ka8_4_io_b_T @[Karatsuba8x8.scala 33:16]
    ad <= Ka8_4.io.out @[Karatsuba8x8.scala 34:7]
    T1 <= bd @[Karatsuba8x8.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba8x8.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba8x8.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<4>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba8x8.scala 38:9]
    node _T0_T = cat(ac, UInt<8>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba8x8.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba8x8.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba8x8.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba8x8.scala 40:11]

  module Karatsuba2x2_176 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_177 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_178 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_179 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_44 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_176 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_177 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_178 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_179 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_180 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_181 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_182 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_183 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_45 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_180 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_181 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_182 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_183 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_184 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_185 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_186 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_187 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_46 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_184 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_185 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_186 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_187 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_188 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_189 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_190 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_191 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_47 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_188 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_189 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_190 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_191 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba8x8_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, out : UInt<16>}

    inst Ka8_1 of Karatsuba4x4_44 @[Karatsuba8x8.scala 11:21]
    Ka8_1.clock <= clock
    Ka8_1.reset <= reset
    inst Ka8_2 of Karatsuba4x4_45 @[Karatsuba8x8.scala 12:21]
    Ka8_2.clock <= clock
    Ka8_2.reset <= reset
    inst Ka8_3 of Karatsuba4x4_46 @[Karatsuba8x8.scala 13:21]
    Ka8_3.clock <= clock
    Ka8_3.reset <= reset
    inst Ka8_4 of Karatsuba4x4_47 @[Karatsuba8x8.scala 14:21]
    Ka8_4.clock <= clock
    Ka8_4.reset <= reset
    wire T0 : UInt<16>
    T0 <= UInt<16>("h0")
    wire T1 : UInt<16>
    T1 <= UInt<16>("h0")
    wire ac : UInt<16>
    ac <= UInt<16>("h0")
    wire bc : UInt<16>
    bc <= UInt<16>("h0")
    wire ad : UInt<16>
    ad <= UInt<16>("h0")
    wire bd : UInt<16>
    bd <= UInt<16>("h0")
    wire psum : UInt<13>
    psum <= UInt<13>("h0")
    node _Ka8_1_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 20:23]
    Ka8_1.io.a <= _Ka8_1_io_a_T @[Karatsuba8x8.scala 20:16]
    node _Ka8_1_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 21:23]
    Ka8_1.io.b <= _Ka8_1_io_b_T @[Karatsuba8x8.scala 21:16]
    bd <= Ka8_1.io.out @[Karatsuba8x8.scala 22:8]
    node _Ka8_2_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 24:23]
    Ka8_2.io.a <= _Ka8_2_io_a_T @[Karatsuba8x8.scala 24:16]
    node _Ka8_2_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 25:23]
    Ka8_2.io.b <= _Ka8_2_io_b_T @[Karatsuba8x8.scala 25:16]
    ac <= Ka8_2.io.out @[Karatsuba8x8.scala 26:7]
    node _Ka8_3_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 28:23]
    Ka8_3.io.a <= _Ka8_3_io_a_T @[Karatsuba8x8.scala 28:16]
    node _Ka8_3_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 29:23]
    Ka8_3.io.b <= _Ka8_3_io_b_T @[Karatsuba8x8.scala 29:16]
    bc <= Ka8_3.io.out @[Karatsuba8x8.scala 30:7]
    node _Ka8_4_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 32:23]
    Ka8_4.io.a <= _Ka8_4_io_a_T @[Karatsuba8x8.scala 32:16]
    node _Ka8_4_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 33:23]
    Ka8_4.io.b <= _Ka8_4_io_b_T @[Karatsuba8x8.scala 33:16]
    ad <= Ka8_4.io.out @[Karatsuba8x8.scala 34:7]
    T1 <= bd @[Karatsuba8x8.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba8x8.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba8x8.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<4>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba8x8.scala 38:9]
    node _T0_T = cat(ac, UInt<8>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba8x8.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba8x8.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba8x8.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba8x8.scala 40:11]

  module Karatsuba16x16_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<16>, flip b : UInt<16>, out : UInt<32>}

    inst Ka16_1 of Karatsuba8x8_8 @[Karatsuba16x16.scala 11:22]
    Ka16_1.clock <= clock
    Ka16_1.reset <= reset
    inst Ka16_2 of Karatsuba8x8_9 @[Karatsuba16x16.scala 12:22]
    Ka16_2.clock <= clock
    Ka16_2.reset <= reset
    inst Ka16_3 of Karatsuba8x8_10 @[Karatsuba16x16.scala 13:22]
    Ka16_3.clock <= clock
    Ka16_3.reset <= reset
    inst Ka16_4 of Karatsuba8x8_11 @[Karatsuba16x16.scala 14:22]
    Ka16_4.clock <= clock
    Ka16_4.reset <= reset
    wire T0 : UInt<32>
    T0 <= UInt<32>("h0")
    wire T1 : UInt<32>
    T1 <= UInt<32>("h0")
    wire ac : UInt<32>
    ac <= UInt<32>("h0")
    wire bc : UInt<32>
    bc <= UInt<32>("h0")
    wire ad : UInt<32>
    ad <= UInt<32>("h0")
    wire bd : UInt<32>
    bd <= UInt<32>("h0")
    wire psum : UInt<25>
    psum <= UInt<25>("h0")
    node _Ka16_1_io_a_T = bits(io.a, 7, 0) @[Karatsuba16x16.scala 20:24]
    Ka16_1.io.a <= _Ka16_1_io_a_T @[Karatsuba16x16.scala 20:17]
    node _Ka16_1_io_b_T = bits(io.b, 7, 0) @[Karatsuba16x16.scala 21:24]
    Ka16_1.io.b <= _Ka16_1_io_b_T @[Karatsuba16x16.scala 21:17]
    bd <= Ka16_1.io.out @[Karatsuba16x16.scala 22:8]
    node _Ka16_2_io_a_T = bits(io.a, 15, 8) @[Karatsuba16x16.scala 24:24]
    Ka16_2.io.a <= _Ka16_2_io_a_T @[Karatsuba16x16.scala 24:17]
    node _Ka16_2_io_b_T = bits(io.b, 15, 8) @[Karatsuba16x16.scala 25:24]
    Ka16_2.io.b <= _Ka16_2_io_b_T @[Karatsuba16x16.scala 25:17]
    ac <= Ka16_2.io.out @[Karatsuba16x16.scala 26:7]
    node _Ka16_3_io_a_T = bits(io.a, 7, 0) @[Karatsuba16x16.scala 28:24]
    Ka16_3.io.a <= _Ka16_3_io_a_T @[Karatsuba16x16.scala 28:17]
    node _Ka16_3_io_b_T = bits(io.b, 15, 8) @[Karatsuba16x16.scala 29:24]
    Ka16_3.io.b <= _Ka16_3_io_b_T @[Karatsuba16x16.scala 29:17]
    bc <= Ka16_3.io.out @[Karatsuba16x16.scala 30:7]
    node _Ka16_4_io_a_T = bits(io.a, 15, 8) @[Karatsuba16x16.scala 32:24]
    Ka16_4.io.a <= _Ka16_4_io_a_T @[Karatsuba16x16.scala 32:17]
    node _Ka16_4_io_b_T = bits(io.b, 7, 0) @[Karatsuba16x16.scala 33:24]
    Ka16_4.io.b <= _Ka16_4_io_b_T @[Karatsuba16x16.scala 33:17]
    ad <= Ka16_4.io.out @[Karatsuba16x16.scala 34:7]
    T1 <= bd @[Karatsuba16x16.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba16x16.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba16x16.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<8>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba16x16.scala 38:9]
    node _T0_T = cat(ac, UInt<16>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba16x16.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba16x16.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba16x16.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba16x16.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba16x16.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba16x16.scala 40:11]

  module Karatsuba2x2_192 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_193 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_194 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_195 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_48 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_192 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_193 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_194 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_195 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_196 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_197 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_198 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_199 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_49 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_196 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_197 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_198 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_199 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_200 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_201 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_202 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_203 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_50 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_200 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_201 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_202 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_203 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_204 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_205 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_206 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_207 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_51 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_204 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_205 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_206 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_207 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba8x8_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, out : UInt<16>}

    inst Ka8_1 of Karatsuba4x4_48 @[Karatsuba8x8.scala 11:21]
    Ka8_1.clock <= clock
    Ka8_1.reset <= reset
    inst Ka8_2 of Karatsuba4x4_49 @[Karatsuba8x8.scala 12:21]
    Ka8_2.clock <= clock
    Ka8_2.reset <= reset
    inst Ka8_3 of Karatsuba4x4_50 @[Karatsuba8x8.scala 13:21]
    Ka8_3.clock <= clock
    Ka8_3.reset <= reset
    inst Ka8_4 of Karatsuba4x4_51 @[Karatsuba8x8.scala 14:21]
    Ka8_4.clock <= clock
    Ka8_4.reset <= reset
    wire T0 : UInt<16>
    T0 <= UInt<16>("h0")
    wire T1 : UInt<16>
    T1 <= UInt<16>("h0")
    wire ac : UInt<16>
    ac <= UInt<16>("h0")
    wire bc : UInt<16>
    bc <= UInt<16>("h0")
    wire ad : UInt<16>
    ad <= UInt<16>("h0")
    wire bd : UInt<16>
    bd <= UInt<16>("h0")
    wire psum : UInt<13>
    psum <= UInt<13>("h0")
    node _Ka8_1_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 20:23]
    Ka8_1.io.a <= _Ka8_1_io_a_T @[Karatsuba8x8.scala 20:16]
    node _Ka8_1_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 21:23]
    Ka8_1.io.b <= _Ka8_1_io_b_T @[Karatsuba8x8.scala 21:16]
    bd <= Ka8_1.io.out @[Karatsuba8x8.scala 22:8]
    node _Ka8_2_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 24:23]
    Ka8_2.io.a <= _Ka8_2_io_a_T @[Karatsuba8x8.scala 24:16]
    node _Ka8_2_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 25:23]
    Ka8_2.io.b <= _Ka8_2_io_b_T @[Karatsuba8x8.scala 25:16]
    ac <= Ka8_2.io.out @[Karatsuba8x8.scala 26:7]
    node _Ka8_3_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 28:23]
    Ka8_3.io.a <= _Ka8_3_io_a_T @[Karatsuba8x8.scala 28:16]
    node _Ka8_3_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 29:23]
    Ka8_3.io.b <= _Ka8_3_io_b_T @[Karatsuba8x8.scala 29:16]
    bc <= Ka8_3.io.out @[Karatsuba8x8.scala 30:7]
    node _Ka8_4_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 32:23]
    Ka8_4.io.a <= _Ka8_4_io_a_T @[Karatsuba8x8.scala 32:16]
    node _Ka8_4_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 33:23]
    Ka8_4.io.b <= _Ka8_4_io_b_T @[Karatsuba8x8.scala 33:16]
    ad <= Ka8_4.io.out @[Karatsuba8x8.scala 34:7]
    T1 <= bd @[Karatsuba8x8.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba8x8.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba8x8.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<4>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba8x8.scala 38:9]
    node _T0_T = cat(ac, UInt<8>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba8x8.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba8x8.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba8x8.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba8x8.scala 40:11]

  module Karatsuba2x2_208 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_209 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_210 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_211 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_52 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_208 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_209 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_210 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_211 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_212 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_213 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_214 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_215 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_53 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_212 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_213 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_214 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_215 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_216 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_217 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_218 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_219 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_54 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_216 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_217 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_218 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_219 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_220 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_221 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_222 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_223 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_55 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_220 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_221 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_222 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_223 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba8x8_13 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, out : UInt<16>}

    inst Ka8_1 of Karatsuba4x4_52 @[Karatsuba8x8.scala 11:21]
    Ka8_1.clock <= clock
    Ka8_1.reset <= reset
    inst Ka8_2 of Karatsuba4x4_53 @[Karatsuba8x8.scala 12:21]
    Ka8_2.clock <= clock
    Ka8_2.reset <= reset
    inst Ka8_3 of Karatsuba4x4_54 @[Karatsuba8x8.scala 13:21]
    Ka8_3.clock <= clock
    Ka8_3.reset <= reset
    inst Ka8_4 of Karatsuba4x4_55 @[Karatsuba8x8.scala 14:21]
    Ka8_4.clock <= clock
    Ka8_4.reset <= reset
    wire T0 : UInt<16>
    T0 <= UInt<16>("h0")
    wire T1 : UInt<16>
    T1 <= UInt<16>("h0")
    wire ac : UInt<16>
    ac <= UInt<16>("h0")
    wire bc : UInt<16>
    bc <= UInt<16>("h0")
    wire ad : UInt<16>
    ad <= UInt<16>("h0")
    wire bd : UInt<16>
    bd <= UInt<16>("h0")
    wire psum : UInt<13>
    psum <= UInt<13>("h0")
    node _Ka8_1_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 20:23]
    Ka8_1.io.a <= _Ka8_1_io_a_T @[Karatsuba8x8.scala 20:16]
    node _Ka8_1_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 21:23]
    Ka8_1.io.b <= _Ka8_1_io_b_T @[Karatsuba8x8.scala 21:16]
    bd <= Ka8_1.io.out @[Karatsuba8x8.scala 22:8]
    node _Ka8_2_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 24:23]
    Ka8_2.io.a <= _Ka8_2_io_a_T @[Karatsuba8x8.scala 24:16]
    node _Ka8_2_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 25:23]
    Ka8_2.io.b <= _Ka8_2_io_b_T @[Karatsuba8x8.scala 25:16]
    ac <= Ka8_2.io.out @[Karatsuba8x8.scala 26:7]
    node _Ka8_3_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 28:23]
    Ka8_3.io.a <= _Ka8_3_io_a_T @[Karatsuba8x8.scala 28:16]
    node _Ka8_3_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 29:23]
    Ka8_3.io.b <= _Ka8_3_io_b_T @[Karatsuba8x8.scala 29:16]
    bc <= Ka8_3.io.out @[Karatsuba8x8.scala 30:7]
    node _Ka8_4_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 32:23]
    Ka8_4.io.a <= _Ka8_4_io_a_T @[Karatsuba8x8.scala 32:16]
    node _Ka8_4_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 33:23]
    Ka8_4.io.b <= _Ka8_4_io_b_T @[Karatsuba8x8.scala 33:16]
    ad <= Ka8_4.io.out @[Karatsuba8x8.scala 34:7]
    T1 <= bd @[Karatsuba8x8.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba8x8.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba8x8.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<4>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba8x8.scala 38:9]
    node _T0_T = cat(ac, UInt<8>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba8x8.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba8x8.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba8x8.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba8x8.scala 40:11]

  module Karatsuba2x2_224 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_225 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_226 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_227 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_56 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_224 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_225 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_226 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_227 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_228 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_229 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_230 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_231 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_57 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_228 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_229 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_230 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_231 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_232 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_233 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_234 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_235 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_58 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_232 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_233 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_234 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_235 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_236 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_237 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_238 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_239 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_59 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_236 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_237 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_238 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_239 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba8x8_14 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, out : UInt<16>}

    inst Ka8_1 of Karatsuba4x4_56 @[Karatsuba8x8.scala 11:21]
    Ka8_1.clock <= clock
    Ka8_1.reset <= reset
    inst Ka8_2 of Karatsuba4x4_57 @[Karatsuba8x8.scala 12:21]
    Ka8_2.clock <= clock
    Ka8_2.reset <= reset
    inst Ka8_3 of Karatsuba4x4_58 @[Karatsuba8x8.scala 13:21]
    Ka8_3.clock <= clock
    Ka8_3.reset <= reset
    inst Ka8_4 of Karatsuba4x4_59 @[Karatsuba8x8.scala 14:21]
    Ka8_4.clock <= clock
    Ka8_4.reset <= reset
    wire T0 : UInt<16>
    T0 <= UInt<16>("h0")
    wire T1 : UInt<16>
    T1 <= UInt<16>("h0")
    wire ac : UInt<16>
    ac <= UInt<16>("h0")
    wire bc : UInt<16>
    bc <= UInt<16>("h0")
    wire ad : UInt<16>
    ad <= UInt<16>("h0")
    wire bd : UInt<16>
    bd <= UInt<16>("h0")
    wire psum : UInt<13>
    psum <= UInt<13>("h0")
    node _Ka8_1_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 20:23]
    Ka8_1.io.a <= _Ka8_1_io_a_T @[Karatsuba8x8.scala 20:16]
    node _Ka8_1_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 21:23]
    Ka8_1.io.b <= _Ka8_1_io_b_T @[Karatsuba8x8.scala 21:16]
    bd <= Ka8_1.io.out @[Karatsuba8x8.scala 22:8]
    node _Ka8_2_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 24:23]
    Ka8_2.io.a <= _Ka8_2_io_a_T @[Karatsuba8x8.scala 24:16]
    node _Ka8_2_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 25:23]
    Ka8_2.io.b <= _Ka8_2_io_b_T @[Karatsuba8x8.scala 25:16]
    ac <= Ka8_2.io.out @[Karatsuba8x8.scala 26:7]
    node _Ka8_3_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 28:23]
    Ka8_3.io.a <= _Ka8_3_io_a_T @[Karatsuba8x8.scala 28:16]
    node _Ka8_3_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 29:23]
    Ka8_3.io.b <= _Ka8_3_io_b_T @[Karatsuba8x8.scala 29:16]
    bc <= Ka8_3.io.out @[Karatsuba8x8.scala 30:7]
    node _Ka8_4_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 32:23]
    Ka8_4.io.a <= _Ka8_4_io_a_T @[Karatsuba8x8.scala 32:16]
    node _Ka8_4_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 33:23]
    Ka8_4.io.b <= _Ka8_4_io_b_T @[Karatsuba8x8.scala 33:16]
    ad <= Ka8_4.io.out @[Karatsuba8x8.scala 34:7]
    T1 <= bd @[Karatsuba8x8.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba8x8.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba8x8.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<4>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba8x8.scala 38:9]
    node _T0_T = cat(ac, UInt<8>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba8x8.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba8x8.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba8x8.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba8x8.scala 40:11]

  module Karatsuba2x2_240 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_241 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_242 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_243 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_60 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_240 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_241 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_242 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_243 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_244 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_245 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_246 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_247 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_61 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_244 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_245 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_246 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_247 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_248 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_249 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_250 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_251 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_62 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_248 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_249 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_250 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_251 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba2x2_252 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_253 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_254 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba2x2_255 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire temp : UInt<1>
    temp <= UInt<1>("h0")
    node _temp_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 12:16]
    node _temp_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 12:24]
    node _temp_T_2 = and(_temp_T, _temp_T_1) @[Karatsuba2x2.scala 12:19]
    node _temp_T_3 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 12:34]
    node _temp_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 12:42]
    node _temp_T_5 = and(_temp_T_3, _temp_T_4) @[Karatsuba2x2.scala 12:37]
    node _temp_T_6 = and(_temp_T_2, _temp_T_5) @[Karatsuba2x2.scala 12:28]
    temp <= _temp_T_6 @[Karatsuba2x2.scala 12:9]
    node _io_out_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:28]
    node _io_out_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:36]
    node _io_out_T_2 = and(_io_out_T, _io_out_T_1) @[Karatsuba2x2.scala 13:31]
    node _io_out_T_3 = and(temp, _io_out_T_2) @[Karatsuba2x2.scala 13:22]
    node _io_out_T_4 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:51]
    node _io_out_T_5 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:59]
    node _io_out_T_6 = and(_io_out_T_4, _io_out_T_5) @[Karatsuba2x2.scala 13:54]
    node _io_out_T_7 = xor(temp, _io_out_T_6) @[Karatsuba2x2.scala 13:45]
    node _io_out_T_8 = bits(io.a, 1, 1) @[Karatsuba2x2.scala 13:69]
    node _io_out_T_9 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:77]
    node _io_out_T_10 = and(_io_out_T_8, _io_out_T_9) @[Karatsuba2x2.scala 13:72]
    node _io_out_T_11 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:87]
    node _io_out_T_12 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 13:95]
    node _io_out_T_13 = and(_io_out_T_11, _io_out_T_12) @[Karatsuba2x2.scala 13:90]
    node _io_out_T_14 = xor(_io_out_T_10, _io_out_T_13) @[Karatsuba2x2.scala 13:81]
    node _io_out_T_15 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 13:104]
    node _io_out_T_16 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 13:112]
    node _io_out_T_17 = and(_io_out_T_15, _io_out_T_16) @[Karatsuba2x2.scala 13:107]
    node io_out_lo = cat(_io_out_T_14, _io_out_T_17) @[Cat.scala 31:58]
    node io_out_hi = cat(_io_out_T_3, _io_out_T_7) @[Cat.scala 31:58]
    node _io_out_T_18 = cat(io_out_hi, io_out_lo) @[Cat.scala 31:58]
    io.out <= _io_out_T_18 @[Karatsuba2x2.scala 13:11]

  module Karatsuba4x4_63 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_252 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_253 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_254 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    inst Ka4_4 of Karatsuba2x2_255 @[Karatsuba4x4.scala 14:21]
    Ka4_4.clock <= clock
    Ka4_4.reset <= reset
    wire ac : UInt<8>
    ac <= UInt<8>("h0")
    wire bc : UInt<8>
    bc <= UInt<8>("h0")
    wire ad : UInt<8>
    ad <= UInt<8>("h0")
    wire bd : UInt<8>
    bd <= UInt<8>("h0")
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire psum : UInt<7>
    psum <= UInt<7>("h0")
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 21:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 21:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 22:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 22:16]
    bd <= Ka4_1.io.out @[Karatsuba4x4.scala 23:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 25:23]
    Ka4_2.io.a <= _Ka4_2_io_a_T @[Karatsuba4x4.scala 25:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 26:23]
    Ka4_2.io.b <= _Ka4_2_io_b_T @[Karatsuba4x4.scala 26:16]
    ac <= Ka4_2.io.out @[Karatsuba4x4.scala 27:7]
    node _Ka4_3_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 29:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 29:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 30:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 30:16]
    bc <= Ka4_3.io.out @[Karatsuba4x4.scala 31:7]
    node _Ka4_4_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 33:23]
    Ka4_4.io.a <= _Ka4_4_io_a_T @[Karatsuba4x4.scala 33:16]
    node _Ka4_4_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 34:23]
    Ka4_4.io.b <= _Ka4_4_io_b_T @[Karatsuba4x4.scala 34:16]
    ad <= Ka4_4.io.out @[Karatsuba4x4.scala 35:7]
    T1 <= bd @[Karatsuba4x4.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba4x4.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba4x4.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<2>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba4x4.scala 38:9]
    node _T0_T = cat(ac, UInt<4>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba4x4.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba4x4.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba4x4.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba4x4.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba4x4.scala 40:11]

  module Karatsuba8x8_15 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, out : UInt<16>}

    inst Ka8_1 of Karatsuba4x4_60 @[Karatsuba8x8.scala 11:21]
    Ka8_1.clock <= clock
    Ka8_1.reset <= reset
    inst Ka8_2 of Karatsuba4x4_61 @[Karatsuba8x8.scala 12:21]
    Ka8_2.clock <= clock
    Ka8_2.reset <= reset
    inst Ka8_3 of Karatsuba4x4_62 @[Karatsuba8x8.scala 13:21]
    Ka8_3.clock <= clock
    Ka8_3.reset <= reset
    inst Ka8_4 of Karatsuba4x4_63 @[Karatsuba8x8.scala 14:21]
    Ka8_4.clock <= clock
    Ka8_4.reset <= reset
    wire T0 : UInt<16>
    T0 <= UInt<16>("h0")
    wire T1 : UInt<16>
    T1 <= UInt<16>("h0")
    wire ac : UInt<16>
    ac <= UInt<16>("h0")
    wire bc : UInt<16>
    bc <= UInt<16>("h0")
    wire ad : UInt<16>
    ad <= UInt<16>("h0")
    wire bd : UInt<16>
    bd <= UInt<16>("h0")
    wire psum : UInt<13>
    psum <= UInt<13>("h0")
    node _Ka8_1_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 20:23]
    Ka8_1.io.a <= _Ka8_1_io_a_T @[Karatsuba8x8.scala 20:16]
    node _Ka8_1_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 21:23]
    Ka8_1.io.b <= _Ka8_1_io_b_T @[Karatsuba8x8.scala 21:16]
    bd <= Ka8_1.io.out @[Karatsuba8x8.scala 22:8]
    node _Ka8_2_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 24:23]
    Ka8_2.io.a <= _Ka8_2_io_a_T @[Karatsuba8x8.scala 24:16]
    node _Ka8_2_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 25:23]
    Ka8_2.io.b <= _Ka8_2_io_b_T @[Karatsuba8x8.scala 25:16]
    ac <= Ka8_2.io.out @[Karatsuba8x8.scala 26:7]
    node _Ka8_3_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 28:23]
    Ka8_3.io.a <= _Ka8_3_io_a_T @[Karatsuba8x8.scala 28:16]
    node _Ka8_3_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 29:23]
    Ka8_3.io.b <= _Ka8_3_io_b_T @[Karatsuba8x8.scala 29:16]
    bc <= Ka8_3.io.out @[Karatsuba8x8.scala 30:7]
    node _Ka8_4_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 32:23]
    Ka8_4.io.a <= _Ka8_4_io_a_T @[Karatsuba8x8.scala 32:16]
    node _Ka8_4_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 33:23]
    Ka8_4.io.b <= _Ka8_4_io_b_T @[Karatsuba8x8.scala 33:16]
    ad <= Ka8_4.io.out @[Karatsuba8x8.scala 34:7]
    T1 <= bd @[Karatsuba8x8.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba8x8.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba8x8.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<4>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba8x8.scala 38:9]
    node _T0_T = cat(ac, UInt<8>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba8x8.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba8x8.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba8x8.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba8x8.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba8x8.scala 40:11]

  module Karatsuba16x16_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<16>, flip b : UInt<16>, out : UInt<32>}

    inst Ka16_1 of Karatsuba8x8_12 @[Karatsuba16x16.scala 11:22]
    Ka16_1.clock <= clock
    Ka16_1.reset <= reset
    inst Ka16_2 of Karatsuba8x8_13 @[Karatsuba16x16.scala 12:22]
    Ka16_2.clock <= clock
    Ka16_2.reset <= reset
    inst Ka16_3 of Karatsuba8x8_14 @[Karatsuba16x16.scala 13:22]
    Ka16_3.clock <= clock
    Ka16_3.reset <= reset
    inst Ka16_4 of Karatsuba8x8_15 @[Karatsuba16x16.scala 14:22]
    Ka16_4.clock <= clock
    Ka16_4.reset <= reset
    wire T0 : UInt<32>
    T0 <= UInt<32>("h0")
    wire T1 : UInt<32>
    T1 <= UInt<32>("h0")
    wire ac : UInt<32>
    ac <= UInt<32>("h0")
    wire bc : UInt<32>
    bc <= UInt<32>("h0")
    wire ad : UInt<32>
    ad <= UInt<32>("h0")
    wire bd : UInt<32>
    bd <= UInt<32>("h0")
    wire psum : UInt<25>
    psum <= UInt<25>("h0")
    node _Ka16_1_io_a_T = bits(io.a, 7, 0) @[Karatsuba16x16.scala 20:24]
    Ka16_1.io.a <= _Ka16_1_io_a_T @[Karatsuba16x16.scala 20:17]
    node _Ka16_1_io_b_T = bits(io.b, 7, 0) @[Karatsuba16x16.scala 21:24]
    Ka16_1.io.b <= _Ka16_1_io_b_T @[Karatsuba16x16.scala 21:17]
    bd <= Ka16_1.io.out @[Karatsuba16x16.scala 22:8]
    node _Ka16_2_io_a_T = bits(io.a, 15, 8) @[Karatsuba16x16.scala 24:24]
    Ka16_2.io.a <= _Ka16_2_io_a_T @[Karatsuba16x16.scala 24:17]
    node _Ka16_2_io_b_T = bits(io.b, 15, 8) @[Karatsuba16x16.scala 25:24]
    Ka16_2.io.b <= _Ka16_2_io_b_T @[Karatsuba16x16.scala 25:17]
    ac <= Ka16_2.io.out @[Karatsuba16x16.scala 26:7]
    node _Ka16_3_io_a_T = bits(io.a, 7, 0) @[Karatsuba16x16.scala 28:24]
    Ka16_3.io.a <= _Ka16_3_io_a_T @[Karatsuba16x16.scala 28:17]
    node _Ka16_3_io_b_T = bits(io.b, 15, 8) @[Karatsuba16x16.scala 29:24]
    Ka16_3.io.b <= _Ka16_3_io_b_T @[Karatsuba16x16.scala 29:17]
    bc <= Ka16_3.io.out @[Karatsuba16x16.scala 30:7]
    node _Ka16_4_io_a_T = bits(io.a, 15, 8) @[Karatsuba16x16.scala 32:24]
    Ka16_4.io.a <= _Ka16_4_io_a_T @[Karatsuba16x16.scala 32:17]
    node _Ka16_4_io_b_T = bits(io.b, 7, 0) @[Karatsuba16x16.scala 33:24]
    Ka16_4.io.b <= _Ka16_4_io_b_T @[Karatsuba16x16.scala 33:17]
    ad <= Ka16_4.io.out @[Karatsuba16x16.scala 34:7]
    T1 <= bd @[Karatsuba16x16.scala 37:7]
    node _psum_T = add(bc, ad) @[Karatsuba16x16.scala 38:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba16x16.scala 38:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<8>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba16x16.scala 38:9]
    node _T0_T = cat(ac, UInt<16>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba16x16.scala 39:7]
    node _io_out_T = add(T1, T0) @[Karatsuba16x16.scala 40:17]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Karatsuba16x16.scala 40:17]
    node _io_out_T_2 = add(_io_out_T_1, psum) @[Karatsuba16x16.scala 40:22]
    node _io_out_T_3 = tail(_io_out_T_2, 1) @[Karatsuba16x16.scala 40:22]
    io.out <= _io_out_T_3 @[Karatsuba16x16.scala 40:11]

  module Karatsuba32x32 :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip a : UInt<32>, flip b : UInt<32>, out : UInt<64>}

    inst Ka32_1 of Karatsuba16x16 @[Karatsuba32x32.scala 11:22]
    Ka32_1.clock <= clock
    Ka32_1.reset <= reset
    inst Ka32_2 of Karatsuba16x16_1 @[Karatsuba32x32.scala 12:22]
    Ka32_2.clock <= clock
    Ka32_2.reset <= reset
    inst Ka32_3 of Karatsuba16x16_2 @[Karatsuba32x32.scala 13:22]
    Ka32_3.clock <= clock
    Ka32_3.reset <= reset
    inst Ka32_4 of Karatsuba16x16_3 @[Karatsuba32x32.scala 14:22]
    Ka32_4.clock <= clock
    Ka32_4.reset <= reset
    reg a : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[Karatsuba32x32.scala 16:18]
    reg b : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[Karatsuba32x32.scala 17:18]
    reg C : UInt<64>, clock with :
      reset => (reset, UInt<64>("h0")) @[Karatsuba32x32.scala 18:18]
    wire T0 : UInt<64>
    T0 <= UInt<64>("h0")
    wire T1 : UInt<64>
    T1 <= UInt<64>("h0")
    wire ac : UInt<64>
    ac <= UInt<64>("h0")
    wire bc : UInt<64>
    bc <= UInt<64>("h0")
    wire ad : UInt<64>
    ad <= UInt<64>("h0")
    wire bd : UInt<64>
    bd <= UInt<64>("h0")
    wire psum : UInt<49>
    psum <= UInt<49>("h0")
    a <= io.a @[Karatsuba32x32.scala 24:7]
    b <= io.b @[Karatsuba32x32.scala 25:7]
    node _Ka32_1_io_a_T = bits(a, 15, 0) @[Karatsuba32x32.scala 26:21]
    Ka32_1.io.a <= _Ka32_1_io_a_T @[Karatsuba32x32.scala 26:17]
    node _Ka32_1_io_b_T = bits(b, 15, 0) @[Karatsuba32x32.scala 27:21]
    Ka32_1.io.b <= _Ka32_1_io_b_T @[Karatsuba32x32.scala 27:17]
    bd <= Ka32_1.io.out @[Karatsuba32x32.scala 28:8]
    node _Ka32_2_io_a_T = bits(a, 31, 16) @[Karatsuba32x32.scala 30:21]
    Ka32_2.io.a <= _Ka32_2_io_a_T @[Karatsuba32x32.scala 30:17]
    node _Ka32_2_io_b_T = bits(b, 31, 16) @[Karatsuba32x32.scala 31:21]
    Ka32_2.io.b <= _Ka32_2_io_b_T @[Karatsuba32x32.scala 31:17]
    ac <= Ka32_2.io.out @[Karatsuba32x32.scala 32:7]
    node _Ka32_3_io_a_T = bits(a, 15, 0) @[Karatsuba32x32.scala 34:21]
    Ka32_3.io.a <= _Ka32_3_io_a_T @[Karatsuba32x32.scala 34:17]
    node _Ka32_3_io_b_T = bits(b, 31, 16) @[Karatsuba32x32.scala 35:21]
    Ka32_3.io.b <= _Ka32_3_io_b_T @[Karatsuba32x32.scala 35:17]
    bc <= Ka32_3.io.out @[Karatsuba32x32.scala 36:7]
    node _Ka32_4_io_a_T = bits(a, 31, 16) @[Karatsuba32x32.scala 38:21]
    Ka32_4.io.a <= _Ka32_4_io_a_T @[Karatsuba32x32.scala 38:17]
    node _Ka32_4_io_b_T = bits(b, 15, 0) @[Karatsuba32x32.scala 39:21]
    Ka32_4.io.b <= _Ka32_4_io_b_T @[Karatsuba32x32.scala 39:17]
    ad <= Ka32_4.io.out @[Karatsuba32x32.scala 40:7]
    T1 <= bd @[Karatsuba32x32.scala 43:7]
    node _psum_T = add(bc, ad) @[Karatsuba32x32.scala 44:17]
    node _psum_T_1 = tail(_psum_T, 1) @[Karatsuba32x32.scala 44:17]
    node _psum_T_2 = cat(_psum_T_1, UInt<16>("h0")) @[Cat.scala 31:58]
    psum <= _psum_T_2 @[Karatsuba32x32.scala 44:9]
    node _T0_T = cat(ac, UInt<32>("h0")) @[Cat.scala 31:58]
    T0 <= _T0_T @[Karatsuba32x32.scala 45:7]
    node _C_T = add(T1, T0) @[Karatsuba32x32.scala 46:12]
    node _C_T_1 = tail(_C_T, 1) @[Karatsuba32x32.scala 46:12]
    node _C_T_2 = add(_C_T_1, psum) @[Karatsuba32x32.scala 46:17]
    node _C_T_3 = tail(_C_T_2, 1) @[Karatsuba32x32.scala 46:17]
    C <= _C_T_3 @[Karatsuba32x32.scala 46:6]
    io.out <= C @[Karatsuba32x32.scala 47:11]


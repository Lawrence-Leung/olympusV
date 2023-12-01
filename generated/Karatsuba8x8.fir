circuit Karatsuba8x8 :
  module Karatsuba2x2 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire T0 : UInt<4>
    T0 <= UInt<4>("h0")
    wire T1 : UInt<4>
    T1 <= UInt<4>("h0")
    wire T2 : UInt<4>
    T2 <= UInt<4>("h0")
    reg C : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[Karatsuba2x2.scala 14:18]
    node _T0_T = bits(io.a, 0, 0) @[Karatsuba2x2.scala 16:14]
    node _T0_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 16:22]
    node _T0_T_2 = mul(_T0_T, _T0_T_1) @[Karatsuba2x2.scala 16:17]
    T0 <= _T0_T_2 @[Karatsuba2x2.scala 16:7]
    node _T1_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 17:15]
    node _T1_T_1 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 17:23]
    node _T1_T_2 = add(_T1_T, _T1_T_1) @[Karatsuba2x2.scala 17:18]
    node _T1_T_3 = tail(_T1_T_2, 1) @[Karatsuba2x2.scala 17:18]
    node _T1_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 17:33]
    node _T1_T_5 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 17:41]
    node _T1_T_6 = add(_T1_T_4, _T1_T_5) @[Karatsuba2x2.scala 17:36]
    node _T1_T_7 = tail(_T1_T_6, 1) @[Karatsuba2x2.scala 17:36]
    node _T1_T_8 = mul(_T1_T_3, _T1_T_7) @[Karatsuba2x2.scala 17:27]
    T1 <= _T1_T_8 @[Karatsuba2x2.scala 17:7]
    node _T2_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 18:14]
    node _T2_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 18:22]
    node _T2_T_2 = mul(_T2_T, _T2_T_1) @[Karatsuba2x2.scala 18:17]
    T2 <= _T2_T_2 @[Karatsuba2x2.scala 18:7]
    node _C_T = cat(T2, UInt<2>("h0")) @[Cat.scala 31:58]
    node _C_T_1 = sub(T1, T0) @[Karatsuba2x2.scala 20:33]
    node _C_T_2 = tail(_C_T_1, 1) @[Karatsuba2x2.scala 20:33]
    node _C_T_3 = sub(_C_T_2, T2) @[Karatsuba2x2.scala 20:36]
    node _C_T_4 = tail(_C_T_3, 1) @[Karatsuba2x2.scala 20:36]
    node _C_T_5 = cat(_C_T_4, UInt<1>("h0")) @[Cat.scala 31:58]
    node _C_T_6 = add(_C_T, _C_T_5) @[Karatsuba2x2.scala 20:25]
    node _C_T_7 = tail(_C_T_6, 1) @[Karatsuba2x2.scala 20:25]
    node _C_T_8 = add(_C_T_7, T0) @[Karatsuba2x2.scala 20:50]
    node _C_T_9 = tail(_C_T_8, 1) @[Karatsuba2x2.scala 20:50]
    C <= _C_T_9 @[Karatsuba2x2.scala 20:6]
    io.out <= C @[Karatsuba2x2.scala 21:11]

  module Karatsuba2x2_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire T0 : UInt<4>
    T0 <= UInt<4>("h0")
    wire T1 : UInt<4>
    T1 <= UInt<4>("h0")
    wire T2 : UInt<4>
    T2 <= UInt<4>("h0")
    reg C : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[Karatsuba2x2.scala 14:18]
    node _T0_T = bits(io.a, 0, 0) @[Karatsuba2x2.scala 16:14]
    node _T0_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 16:22]
    node _T0_T_2 = mul(_T0_T, _T0_T_1) @[Karatsuba2x2.scala 16:17]
    T0 <= _T0_T_2 @[Karatsuba2x2.scala 16:7]
    node _T1_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 17:15]
    node _T1_T_1 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 17:23]
    node _T1_T_2 = add(_T1_T, _T1_T_1) @[Karatsuba2x2.scala 17:18]
    node _T1_T_3 = tail(_T1_T_2, 1) @[Karatsuba2x2.scala 17:18]
    node _T1_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 17:33]
    node _T1_T_5 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 17:41]
    node _T1_T_6 = add(_T1_T_4, _T1_T_5) @[Karatsuba2x2.scala 17:36]
    node _T1_T_7 = tail(_T1_T_6, 1) @[Karatsuba2x2.scala 17:36]
    node _T1_T_8 = mul(_T1_T_3, _T1_T_7) @[Karatsuba2x2.scala 17:27]
    T1 <= _T1_T_8 @[Karatsuba2x2.scala 17:7]
    node _T2_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 18:14]
    node _T2_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 18:22]
    node _T2_T_2 = mul(_T2_T, _T2_T_1) @[Karatsuba2x2.scala 18:17]
    T2 <= _T2_T_2 @[Karatsuba2x2.scala 18:7]
    node _C_T = cat(T2, UInt<2>("h0")) @[Cat.scala 31:58]
    node _C_T_1 = sub(T1, T0) @[Karatsuba2x2.scala 20:33]
    node _C_T_2 = tail(_C_T_1, 1) @[Karatsuba2x2.scala 20:33]
    node _C_T_3 = sub(_C_T_2, T2) @[Karatsuba2x2.scala 20:36]
    node _C_T_4 = tail(_C_T_3, 1) @[Karatsuba2x2.scala 20:36]
    node _C_T_5 = cat(_C_T_4, UInt<1>("h0")) @[Cat.scala 31:58]
    node _C_T_6 = add(_C_T, _C_T_5) @[Karatsuba2x2.scala 20:25]
    node _C_T_7 = tail(_C_T_6, 1) @[Karatsuba2x2.scala 20:25]
    node _C_T_8 = add(_C_T_7, T0) @[Karatsuba2x2.scala 20:50]
    node _C_T_9 = tail(_C_T_8, 1) @[Karatsuba2x2.scala 20:50]
    C <= _C_T_9 @[Karatsuba2x2.scala 20:6]
    io.out <= C @[Karatsuba2x2.scala 21:11]

  module Karatsuba2x2_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire T0 : UInt<4>
    T0 <= UInt<4>("h0")
    wire T1 : UInt<4>
    T1 <= UInt<4>("h0")
    wire T2 : UInt<4>
    T2 <= UInt<4>("h0")
    reg C : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[Karatsuba2x2.scala 14:18]
    node _T0_T = bits(io.a, 0, 0) @[Karatsuba2x2.scala 16:14]
    node _T0_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 16:22]
    node _T0_T_2 = mul(_T0_T, _T0_T_1) @[Karatsuba2x2.scala 16:17]
    T0 <= _T0_T_2 @[Karatsuba2x2.scala 16:7]
    node _T1_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 17:15]
    node _T1_T_1 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 17:23]
    node _T1_T_2 = add(_T1_T, _T1_T_1) @[Karatsuba2x2.scala 17:18]
    node _T1_T_3 = tail(_T1_T_2, 1) @[Karatsuba2x2.scala 17:18]
    node _T1_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 17:33]
    node _T1_T_5 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 17:41]
    node _T1_T_6 = add(_T1_T_4, _T1_T_5) @[Karatsuba2x2.scala 17:36]
    node _T1_T_7 = tail(_T1_T_6, 1) @[Karatsuba2x2.scala 17:36]
    node _T1_T_8 = mul(_T1_T_3, _T1_T_7) @[Karatsuba2x2.scala 17:27]
    T1 <= _T1_T_8 @[Karatsuba2x2.scala 17:7]
    node _T2_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 18:14]
    node _T2_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 18:22]
    node _T2_T_2 = mul(_T2_T, _T2_T_1) @[Karatsuba2x2.scala 18:17]
    T2 <= _T2_T_2 @[Karatsuba2x2.scala 18:7]
    node _C_T = cat(T2, UInt<2>("h0")) @[Cat.scala 31:58]
    node _C_T_1 = sub(T1, T0) @[Karatsuba2x2.scala 20:33]
    node _C_T_2 = tail(_C_T_1, 1) @[Karatsuba2x2.scala 20:33]
    node _C_T_3 = sub(_C_T_2, T2) @[Karatsuba2x2.scala 20:36]
    node _C_T_4 = tail(_C_T_3, 1) @[Karatsuba2x2.scala 20:36]
    node _C_T_5 = cat(_C_T_4, UInt<1>("h0")) @[Cat.scala 31:58]
    node _C_T_6 = add(_C_T, _C_T_5) @[Karatsuba2x2.scala 20:25]
    node _C_T_7 = tail(_C_T_6, 1) @[Karatsuba2x2.scala 20:25]
    node _C_T_8 = add(_C_T_7, T0) @[Karatsuba2x2.scala 20:50]
    node _C_T_9 = tail(_C_T_8, 1) @[Karatsuba2x2.scala 20:50]
    C <= _C_T_9 @[Karatsuba2x2.scala 20:6]
    io.out <= C @[Karatsuba2x2.scala 21:11]

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
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire T2 : UInt<8>
    T2 <= UInt<8>("h0")
    reg C : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[Karatsuba4x4.scala 17:18]
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 19:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 19:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 20:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 20:16]
    T0 <= Ka4_1.io.out @[Karatsuba4x4.scala 21:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 23:23]
    node _Ka4_2_io_a_T_1 = bits(io.a, 1, 0) @[Karatsuba4x4.scala 23:33]
    node _Ka4_2_io_a_T_2 = add(_Ka4_2_io_a_T, _Ka4_2_io_a_T_1) @[Karatsuba4x4.scala 23:28]
    node _Ka4_2_io_a_T_3 = tail(_Ka4_2_io_a_T_2, 1) @[Karatsuba4x4.scala 23:28]
    Ka4_2.io.a <= _Ka4_2_io_a_T_3 @[Karatsuba4x4.scala 23:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 24:23]
    node _Ka4_2_io_b_T_1 = bits(io.b, 1, 0) @[Karatsuba4x4.scala 24:33]
    node _Ka4_2_io_b_T_2 = add(_Ka4_2_io_b_T, _Ka4_2_io_b_T_1) @[Karatsuba4x4.scala 24:28]
    node _Ka4_2_io_b_T_3 = tail(_Ka4_2_io_b_T_2, 1) @[Karatsuba4x4.scala 24:28]
    Ka4_2.io.b <= _Ka4_2_io_b_T_3 @[Karatsuba4x4.scala 24:16]
    T1 <= Ka4_2.io.out @[Karatsuba4x4.scala 25:7]
    node _Ka4_3_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 27:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 27:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 28:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 28:16]
    T1 <= Ka4_3.io.out @[Karatsuba4x4.scala 29:7]
    node _C_T = cat(T2, UInt<4>("h0")) @[Cat.scala 31:58]
    node _C_T_1 = sub(T1, T0) @[Karatsuba4x4.scala 31:33]
    node _C_T_2 = tail(_C_T_1, 1) @[Karatsuba4x4.scala 31:33]
    node _C_T_3 = sub(_C_T_2, T2) @[Karatsuba4x4.scala 31:36]
    node _C_T_4 = tail(_C_T_3, 1) @[Karatsuba4x4.scala 31:36]
    node _C_T_5 = cat(_C_T_4, UInt<2>("h0")) @[Cat.scala 31:58]
    node _C_T_6 = add(_C_T, _C_T_5) @[Karatsuba4x4.scala 31:25]
    node _C_T_7 = tail(_C_T_6, 1) @[Karatsuba4x4.scala 31:25]
    node _C_T_8 = add(_C_T_7, T0) @[Karatsuba4x4.scala 31:50]
    node _C_T_9 = tail(_C_T_8, 1) @[Karatsuba4x4.scala 31:50]
    C <= _C_T_9 @[Karatsuba4x4.scala 31:6]
    io.out <= C @[Karatsuba4x4.scala 32:11]

  module Karatsuba2x2_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire T0 : UInt<4>
    T0 <= UInt<4>("h0")
    wire T1 : UInt<4>
    T1 <= UInt<4>("h0")
    wire T2 : UInt<4>
    T2 <= UInt<4>("h0")
    reg C : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[Karatsuba2x2.scala 14:18]
    node _T0_T = bits(io.a, 0, 0) @[Karatsuba2x2.scala 16:14]
    node _T0_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 16:22]
    node _T0_T_2 = mul(_T0_T, _T0_T_1) @[Karatsuba2x2.scala 16:17]
    T0 <= _T0_T_2 @[Karatsuba2x2.scala 16:7]
    node _T1_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 17:15]
    node _T1_T_1 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 17:23]
    node _T1_T_2 = add(_T1_T, _T1_T_1) @[Karatsuba2x2.scala 17:18]
    node _T1_T_3 = tail(_T1_T_2, 1) @[Karatsuba2x2.scala 17:18]
    node _T1_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 17:33]
    node _T1_T_5 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 17:41]
    node _T1_T_6 = add(_T1_T_4, _T1_T_5) @[Karatsuba2x2.scala 17:36]
    node _T1_T_7 = tail(_T1_T_6, 1) @[Karatsuba2x2.scala 17:36]
    node _T1_T_8 = mul(_T1_T_3, _T1_T_7) @[Karatsuba2x2.scala 17:27]
    T1 <= _T1_T_8 @[Karatsuba2x2.scala 17:7]
    node _T2_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 18:14]
    node _T2_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 18:22]
    node _T2_T_2 = mul(_T2_T, _T2_T_1) @[Karatsuba2x2.scala 18:17]
    T2 <= _T2_T_2 @[Karatsuba2x2.scala 18:7]
    node _C_T = cat(T2, UInt<2>("h0")) @[Cat.scala 31:58]
    node _C_T_1 = sub(T1, T0) @[Karatsuba2x2.scala 20:33]
    node _C_T_2 = tail(_C_T_1, 1) @[Karatsuba2x2.scala 20:33]
    node _C_T_3 = sub(_C_T_2, T2) @[Karatsuba2x2.scala 20:36]
    node _C_T_4 = tail(_C_T_3, 1) @[Karatsuba2x2.scala 20:36]
    node _C_T_5 = cat(_C_T_4, UInt<1>("h0")) @[Cat.scala 31:58]
    node _C_T_6 = add(_C_T, _C_T_5) @[Karatsuba2x2.scala 20:25]
    node _C_T_7 = tail(_C_T_6, 1) @[Karatsuba2x2.scala 20:25]
    node _C_T_8 = add(_C_T_7, T0) @[Karatsuba2x2.scala 20:50]
    node _C_T_9 = tail(_C_T_8, 1) @[Karatsuba2x2.scala 20:50]
    C <= _C_T_9 @[Karatsuba2x2.scala 20:6]
    io.out <= C @[Karatsuba2x2.scala 21:11]

  module Karatsuba2x2_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire T0 : UInt<4>
    T0 <= UInt<4>("h0")
    wire T1 : UInt<4>
    T1 <= UInt<4>("h0")
    wire T2 : UInt<4>
    T2 <= UInt<4>("h0")
    reg C : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[Karatsuba2x2.scala 14:18]
    node _T0_T = bits(io.a, 0, 0) @[Karatsuba2x2.scala 16:14]
    node _T0_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 16:22]
    node _T0_T_2 = mul(_T0_T, _T0_T_1) @[Karatsuba2x2.scala 16:17]
    T0 <= _T0_T_2 @[Karatsuba2x2.scala 16:7]
    node _T1_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 17:15]
    node _T1_T_1 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 17:23]
    node _T1_T_2 = add(_T1_T, _T1_T_1) @[Karatsuba2x2.scala 17:18]
    node _T1_T_3 = tail(_T1_T_2, 1) @[Karatsuba2x2.scala 17:18]
    node _T1_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 17:33]
    node _T1_T_5 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 17:41]
    node _T1_T_6 = add(_T1_T_4, _T1_T_5) @[Karatsuba2x2.scala 17:36]
    node _T1_T_7 = tail(_T1_T_6, 1) @[Karatsuba2x2.scala 17:36]
    node _T1_T_8 = mul(_T1_T_3, _T1_T_7) @[Karatsuba2x2.scala 17:27]
    T1 <= _T1_T_8 @[Karatsuba2x2.scala 17:7]
    node _T2_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 18:14]
    node _T2_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 18:22]
    node _T2_T_2 = mul(_T2_T, _T2_T_1) @[Karatsuba2x2.scala 18:17]
    T2 <= _T2_T_2 @[Karatsuba2x2.scala 18:7]
    node _C_T = cat(T2, UInt<2>("h0")) @[Cat.scala 31:58]
    node _C_T_1 = sub(T1, T0) @[Karatsuba2x2.scala 20:33]
    node _C_T_2 = tail(_C_T_1, 1) @[Karatsuba2x2.scala 20:33]
    node _C_T_3 = sub(_C_T_2, T2) @[Karatsuba2x2.scala 20:36]
    node _C_T_4 = tail(_C_T_3, 1) @[Karatsuba2x2.scala 20:36]
    node _C_T_5 = cat(_C_T_4, UInt<1>("h0")) @[Cat.scala 31:58]
    node _C_T_6 = add(_C_T, _C_T_5) @[Karatsuba2x2.scala 20:25]
    node _C_T_7 = tail(_C_T_6, 1) @[Karatsuba2x2.scala 20:25]
    node _C_T_8 = add(_C_T_7, T0) @[Karatsuba2x2.scala 20:50]
    node _C_T_9 = tail(_C_T_8, 1) @[Karatsuba2x2.scala 20:50]
    C <= _C_T_9 @[Karatsuba2x2.scala 20:6]
    io.out <= C @[Karatsuba2x2.scala 21:11]

  module Karatsuba2x2_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire T0 : UInt<4>
    T0 <= UInt<4>("h0")
    wire T1 : UInt<4>
    T1 <= UInt<4>("h0")
    wire T2 : UInt<4>
    T2 <= UInt<4>("h0")
    reg C : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[Karatsuba2x2.scala 14:18]
    node _T0_T = bits(io.a, 0, 0) @[Karatsuba2x2.scala 16:14]
    node _T0_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 16:22]
    node _T0_T_2 = mul(_T0_T, _T0_T_1) @[Karatsuba2x2.scala 16:17]
    T0 <= _T0_T_2 @[Karatsuba2x2.scala 16:7]
    node _T1_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 17:15]
    node _T1_T_1 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 17:23]
    node _T1_T_2 = add(_T1_T, _T1_T_1) @[Karatsuba2x2.scala 17:18]
    node _T1_T_3 = tail(_T1_T_2, 1) @[Karatsuba2x2.scala 17:18]
    node _T1_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 17:33]
    node _T1_T_5 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 17:41]
    node _T1_T_6 = add(_T1_T_4, _T1_T_5) @[Karatsuba2x2.scala 17:36]
    node _T1_T_7 = tail(_T1_T_6, 1) @[Karatsuba2x2.scala 17:36]
    node _T1_T_8 = mul(_T1_T_3, _T1_T_7) @[Karatsuba2x2.scala 17:27]
    T1 <= _T1_T_8 @[Karatsuba2x2.scala 17:7]
    node _T2_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 18:14]
    node _T2_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 18:22]
    node _T2_T_2 = mul(_T2_T, _T2_T_1) @[Karatsuba2x2.scala 18:17]
    T2 <= _T2_T_2 @[Karatsuba2x2.scala 18:7]
    node _C_T = cat(T2, UInt<2>("h0")) @[Cat.scala 31:58]
    node _C_T_1 = sub(T1, T0) @[Karatsuba2x2.scala 20:33]
    node _C_T_2 = tail(_C_T_1, 1) @[Karatsuba2x2.scala 20:33]
    node _C_T_3 = sub(_C_T_2, T2) @[Karatsuba2x2.scala 20:36]
    node _C_T_4 = tail(_C_T_3, 1) @[Karatsuba2x2.scala 20:36]
    node _C_T_5 = cat(_C_T_4, UInt<1>("h0")) @[Cat.scala 31:58]
    node _C_T_6 = add(_C_T, _C_T_5) @[Karatsuba2x2.scala 20:25]
    node _C_T_7 = tail(_C_T_6, 1) @[Karatsuba2x2.scala 20:25]
    node _C_T_8 = add(_C_T_7, T0) @[Karatsuba2x2.scala 20:50]
    node _C_T_9 = tail(_C_T_8, 1) @[Karatsuba2x2.scala 20:50]
    C <= _C_T_9 @[Karatsuba2x2.scala 20:6]
    io.out <= C @[Karatsuba2x2.scala 21:11]

  module Karatsuba4x4_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_3 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_4 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_5 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire T2 : UInt<8>
    T2 <= UInt<8>("h0")
    reg C : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[Karatsuba4x4.scala 17:18]
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 19:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 19:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 20:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 20:16]
    T0 <= Ka4_1.io.out @[Karatsuba4x4.scala 21:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 23:23]
    node _Ka4_2_io_a_T_1 = bits(io.a, 1, 0) @[Karatsuba4x4.scala 23:33]
    node _Ka4_2_io_a_T_2 = add(_Ka4_2_io_a_T, _Ka4_2_io_a_T_1) @[Karatsuba4x4.scala 23:28]
    node _Ka4_2_io_a_T_3 = tail(_Ka4_2_io_a_T_2, 1) @[Karatsuba4x4.scala 23:28]
    Ka4_2.io.a <= _Ka4_2_io_a_T_3 @[Karatsuba4x4.scala 23:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 24:23]
    node _Ka4_2_io_b_T_1 = bits(io.b, 1, 0) @[Karatsuba4x4.scala 24:33]
    node _Ka4_2_io_b_T_2 = add(_Ka4_2_io_b_T, _Ka4_2_io_b_T_1) @[Karatsuba4x4.scala 24:28]
    node _Ka4_2_io_b_T_3 = tail(_Ka4_2_io_b_T_2, 1) @[Karatsuba4x4.scala 24:28]
    Ka4_2.io.b <= _Ka4_2_io_b_T_3 @[Karatsuba4x4.scala 24:16]
    T1 <= Ka4_2.io.out @[Karatsuba4x4.scala 25:7]
    node _Ka4_3_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 27:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 27:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 28:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 28:16]
    T1 <= Ka4_3.io.out @[Karatsuba4x4.scala 29:7]
    node _C_T = cat(T2, UInt<4>("h0")) @[Cat.scala 31:58]
    node _C_T_1 = sub(T1, T0) @[Karatsuba4x4.scala 31:33]
    node _C_T_2 = tail(_C_T_1, 1) @[Karatsuba4x4.scala 31:33]
    node _C_T_3 = sub(_C_T_2, T2) @[Karatsuba4x4.scala 31:36]
    node _C_T_4 = tail(_C_T_3, 1) @[Karatsuba4x4.scala 31:36]
    node _C_T_5 = cat(_C_T_4, UInt<2>("h0")) @[Cat.scala 31:58]
    node _C_T_6 = add(_C_T, _C_T_5) @[Karatsuba4x4.scala 31:25]
    node _C_T_7 = tail(_C_T_6, 1) @[Karatsuba4x4.scala 31:25]
    node _C_T_8 = add(_C_T_7, T0) @[Karatsuba4x4.scala 31:50]
    node _C_T_9 = tail(_C_T_8, 1) @[Karatsuba4x4.scala 31:50]
    C <= _C_T_9 @[Karatsuba4x4.scala 31:6]
    io.out <= C @[Karatsuba4x4.scala 32:11]

  module Karatsuba2x2_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire T0 : UInt<4>
    T0 <= UInt<4>("h0")
    wire T1 : UInt<4>
    T1 <= UInt<4>("h0")
    wire T2 : UInt<4>
    T2 <= UInt<4>("h0")
    reg C : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[Karatsuba2x2.scala 14:18]
    node _T0_T = bits(io.a, 0, 0) @[Karatsuba2x2.scala 16:14]
    node _T0_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 16:22]
    node _T0_T_2 = mul(_T0_T, _T0_T_1) @[Karatsuba2x2.scala 16:17]
    T0 <= _T0_T_2 @[Karatsuba2x2.scala 16:7]
    node _T1_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 17:15]
    node _T1_T_1 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 17:23]
    node _T1_T_2 = add(_T1_T, _T1_T_1) @[Karatsuba2x2.scala 17:18]
    node _T1_T_3 = tail(_T1_T_2, 1) @[Karatsuba2x2.scala 17:18]
    node _T1_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 17:33]
    node _T1_T_5 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 17:41]
    node _T1_T_6 = add(_T1_T_4, _T1_T_5) @[Karatsuba2x2.scala 17:36]
    node _T1_T_7 = tail(_T1_T_6, 1) @[Karatsuba2x2.scala 17:36]
    node _T1_T_8 = mul(_T1_T_3, _T1_T_7) @[Karatsuba2x2.scala 17:27]
    T1 <= _T1_T_8 @[Karatsuba2x2.scala 17:7]
    node _T2_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 18:14]
    node _T2_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 18:22]
    node _T2_T_2 = mul(_T2_T, _T2_T_1) @[Karatsuba2x2.scala 18:17]
    T2 <= _T2_T_2 @[Karatsuba2x2.scala 18:7]
    node _C_T = cat(T2, UInt<2>("h0")) @[Cat.scala 31:58]
    node _C_T_1 = sub(T1, T0) @[Karatsuba2x2.scala 20:33]
    node _C_T_2 = tail(_C_T_1, 1) @[Karatsuba2x2.scala 20:33]
    node _C_T_3 = sub(_C_T_2, T2) @[Karatsuba2x2.scala 20:36]
    node _C_T_4 = tail(_C_T_3, 1) @[Karatsuba2x2.scala 20:36]
    node _C_T_5 = cat(_C_T_4, UInt<1>("h0")) @[Cat.scala 31:58]
    node _C_T_6 = add(_C_T, _C_T_5) @[Karatsuba2x2.scala 20:25]
    node _C_T_7 = tail(_C_T_6, 1) @[Karatsuba2x2.scala 20:25]
    node _C_T_8 = add(_C_T_7, T0) @[Karatsuba2x2.scala 20:50]
    node _C_T_9 = tail(_C_T_8, 1) @[Karatsuba2x2.scala 20:50]
    C <= _C_T_9 @[Karatsuba2x2.scala 20:6]
    io.out <= C @[Karatsuba2x2.scala 21:11]

  module Karatsuba2x2_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire T0 : UInt<4>
    T0 <= UInt<4>("h0")
    wire T1 : UInt<4>
    T1 <= UInt<4>("h0")
    wire T2 : UInt<4>
    T2 <= UInt<4>("h0")
    reg C : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[Karatsuba2x2.scala 14:18]
    node _T0_T = bits(io.a, 0, 0) @[Karatsuba2x2.scala 16:14]
    node _T0_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 16:22]
    node _T0_T_2 = mul(_T0_T, _T0_T_1) @[Karatsuba2x2.scala 16:17]
    T0 <= _T0_T_2 @[Karatsuba2x2.scala 16:7]
    node _T1_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 17:15]
    node _T1_T_1 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 17:23]
    node _T1_T_2 = add(_T1_T, _T1_T_1) @[Karatsuba2x2.scala 17:18]
    node _T1_T_3 = tail(_T1_T_2, 1) @[Karatsuba2x2.scala 17:18]
    node _T1_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 17:33]
    node _T1_T_5 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 17:41]
    node _T1_T_6 = add(_T1_T_4, _T1_T_5) @[Karatsuba2x2.scala 17:36]
    node _T1_T_7 = tail(_T1_T_6, 1) @[Karatsuba2x2.scala 17:36]
    node _T1_T_8 = mul(_T1_T_3, _T1_T_7) @[Karatsuba2x2.scala 17:27]
    T1 <= _T1_T_8 @[Karatsuba2x2.scala 17:7]
    node _T2_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 18:14]
    node _T2_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 18:22]
    node _T2_T_2 = mul(_T2_T, _T2_T_1) @[Karatsuba2x2.scala 18:17]
    T2 <= _T2_T_2 @[Karatsuba2x2.scala 18:7]
    node _C_T = cat(T2, UInt<2>("h0")) @[Cat.scala 31:58]
    node _C_T_1 = sub(T1, T0) @[Karatsuba2x2.scala 20:33]
    node _C_T_2 = tail(_C_T_1, 1) @[Karatsuba2x2.scala 20:33]
    node _C_T_3 = sub(_C_T_2, T2) @[Karatsuba2x2.scala 20:36]
    node _C_T_4 = tail(_C_T_3, 1) @[Karatsuba2x2.scala 20:36]
    node _C_T_5 = cat(_C_T_4, UInt<1>("h0")) @[Cat.scala 31:58]
    node _C_T_6 = add(_C_T, _C_T_5) @[Karatsuba2x2.scala 20:25]
    node _C_T_7 = tail(_C_T_6, 1) @[Karatsuba2x2.scala 20:25]
    node _C_T_8 = add(_C_T_7, T0) @[Karatsuba2x2.scala 20:50]
    node _C_T_9 = tail(_C_T_8, 1) @[Karatsuba2x2.scala 20:50]
    C <= _C_T_9 @[Karatsuba2x2.scala 20:6]
    io.out <= C @[Karatsuba2x2.scala 21:11]

  module Karatsuba2x2_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<2>, flip b : UInt<2>, out : UInt<4>}

    wire T0 : UInt<4>
    T0 <= UInt<4>("h0")
    wire T1 : UInt<4>
    T1 <= UInt<4>("h0")
    wire T2 : UInt<4>
    T2 <= UInt<4>("h0")
    reg C : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[Karatsuba2x2.scala 14:18]
    node _T0_T = bits(io.a, 0, 0) @[Karatsuba2x2.scala 16:14]
    node _T0_T_1 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 16:22]
    node _T0_T_2 = mul(_T0_T, _T0_T_1) @[Karatsuba2x2.scala 16:17]
    T0 <= _T0_T_2 @[Karatsuba2x2.scala 16:7]
    node _T1_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 17:15]
    node _T1_T_1 = bits(io.a, 0, 0) @[Karatsuba2x2.scala 17:23]
    node _T1_T_2 = add(_T1_T, _T1_T_1) @[Karatsuba2x2.scala 17:18]
    node _T1_T_3 = tail(_T1_T_2, 1) @[Karatsuba2x2.scala 17:18]
    node _T1_T_4 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 17:33]
    node _T1_T_5 = bits(io.b, 0, 0) @[Karatsuba2x2.scala 17:41]
    node _T1_T_6 = add(_T1_T_4, _T1_T_5) @[Karatsuba2x2.scala 17:36]
    node _T1_T_7 = tail(_T1_T_6, 1) @[Karatsuba2x2.scala 17:36]
    node _T1_T_8 = mul(_T1_T_3, _T1_T_7) @[Karatsuba2x2.scala 17:27]
    T1 <= _T1_T_8 @[Karatsuba2x2.scala 17:7]
    node _T2_T = bits(io.a, 1, 1) @[Karatsuba2x2.scala 18:14]
    node _T2_T_1 = bits(io.b, 1, 1) @[Karatsuba2x2.scala 18:22]
    node _T2_T_2 = mul(_T2_T, _T2_T_1) @[Karatsuba2x2.scala 18:17]
    T2 <= _T2_T_2 @[Karatsuba2x2.scala 18:7]
    node _C_T = cat(T2, UInt<2>("h0")) @[Cat.scala 31:58]
    node _C_T_1 = sub(T1, T0) @[Karatsuba2x2.scala 20:33]
    node _C_T_2 = tail(_C_T_1, 1) @[Karatsuba2x2.scala 20:33]
    node _C_T_3 = sub(_C_T_2, T2) @[Karatsuba2x2.scala 20:36]
    node _C_T_4 = tail(_C_T_3, 1) @[Karatsuba2x2.scala 20:36]
    node _C_T_5 = cat(_C_T_4, UInt<1>("h0")) @[Cat.scala 31:58]
    node _C_T_6 = add(_C_T, _C_T_5) @[Karatsuba2x2.scala 20:25]
    node _C_T_7 = tail(_C_T_6, 1) @[Karatsuba2x2.scala 20:25]
    node _C_T_8 = add(_C_T_7, T0) @[Karatsuba2x2.scala 20:50]
    node _C_T_9 = tail(_C_T_8, 1) @[Karatsuba2x2.scala 20:50]
    C <= _C_T_9 @[Karatsuba2x2.scala 20:6]
    io.out <= C @[Karatsuba2x2.scala 21:11]

  module Karatsuba4x4_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<8>}

    inst Ka4_1 of Karatsuba2x2_6 @[Karatsuba4x4.scala 11:21]
    Ka4_1.clock <= clock
    Ka4_1.reset <= reset
    inst Ka4_2 of Karatsuba2x2_7 @[Karatsuba4x4.scala 12:21]
    Ka4_2.clock <= clock
    Ka4_2.reset <= reset
    inst Ka4_3 of Karatsuba2x2_8 @[Karatsuba4x4.scala 13:21]
    Ka4_3.clock <= clock
    Ka4_3.reset <= reset
    wire T0 : UInt<8>
    T0 <= UInt<8>("h0")
    wire T1 : UInt<8>
    T1 <= UInt<8>("h0")
    wire T2 : UInt<8>
    T2 <= UInt<8>("h0")
    reg C : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[Karatsuba4x4.scala 17:18]
    node _Ka4_1_io_a_T = bits(io.a, 1, 0) @[Karatsuba4x4.scala 19:23]
    Ka4_1.io.a <= _Ka4_1_io_a_T @[Karatsuba4x4.scala 19:16]
    node _Ka4_1_io_b_T = bits(io.b, 1, 0) @[Karatsuba4x4.scala 20:23]
    Ka4_1.io.b <= _Ka4_1_io_b_T @[Karatsuba4x4.scala 20:16]
    T0 <= Ka4_1.io.out @[Karatsuba4x4.scala 21:8]
    node _Ka4_2_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 23:23]
    node _Ka4_2_io_a_T_1 = bits(io.a, 1, 0) @[Karatsuba4x4.scala 23:33]
    node _Ka4_2_io_a_T_2 = add(_Ka4_2_io_a_T, _Ka4_2_io_a_T_1) @[Karatsuba4x4.scala 23:28]
    node _Ka4_2_io_a_T_3 = tail(_Ka4_2_io_a_T_2, 1) @[Karatsuba4x4.scala 23:28]
    Ka4_2.io.a <= _Ka4_2_io_a_T_3 @[Karatsuba4x4.scala 23:16]
    node _Ka4_2_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 24:23]
    node _Ka4_2_io_b_T_1 = bits(io.b, 1, 0) @[Karatsuba4x4.scala 24:33]
    node _Ka4_2_io_b_T_2 = add(_Ka4_2_io_b_T, _Ka4_2_io_b_T_1) @[Karatsuba4x4.scala 24:28]
    node _Ka4_2_io_b_T_3 = tail(_Ka4_2_io_b_T_2, 1) @[Karatsuba4x4.scala 24:28]
    Ka4_2.io.b <= _Ka4_2_io_b_T_3 @[Karatsuba4x4.scala 24:16]
    T1 <= Ka4_2.io.out @[Karatsuba4x4.scala 25:7]
    node _Ka4_3_io_a_T = bits(io.a, 3, 2) @[Karatsuba4x4.scala 27:23]
    Ka4_3.io.a <= _Ka4_3_io_a_T @[Karatsuba4x4.scala 27:16]
    node _Ka4_3_io_b_T = bits(io.b, 3, 2) @[Karatsuba4x4.scala 28:23]
    Ka4_3.io.b <= _Ka4_3_io_b_T @[Karatsuba4x4.scala 28:16]
    T1 <= Ka4_3.io.out @[Karatsuba4x4.scala 29:7]
    node _C_T = cat(T2, UInt<4>("h0")) @[Cat.scala 31:58]
    node _C_T_1 = sub(T1, T0) @[Karatsuba4x4.scala 31:33]
    node _C_T_2 = tail(_C_T_1, 1) @[Karatsuba4x4.scala 31:33]
    node _C_T_3 = sub(_C_T_2, T2) @[Karatsuba4x4.scala 31:36]
    node _C_T_4 = tail(_C_T_3, 1) @[Karatsuba4x4.scala 31:36]
    node _C_T_5 = cat(_C_T_4, UInt<2>("h0")) @[Cat.scala 31:58]
    node _C_T_6 = add(_C_T, _C_T_5) @[Karatsuba4x4.scala 31:25]
    node _C_T_7 = tail(_C_T_6, 1) @[Karatsuba4x4.scala 31:25]
    node _C_T_8 = add(_C_T_7, T0) @[Karatsuba4x4.scala 31:50]
    node _C_T_9 = tail(_C_T_8, 1) @[Karatsuba4x4.scala 31:50]
    C <= _C_T_9 @[Karatsuba4x4.scala 31:6]
    io.out <= C @[Karatsuba4x4.scala 32:11]

  module Karatsuba8x8 :
    input clock : Clock
    input reset : UInt<1>
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
    wire T0 : UInt<16>
    T0 <= UInt<16>("h0")
    wire T1 : UInt<16>
    T1 <= UInt<16>("h0")
    wire T2 : UInt<16>
    T2 <= UInt<16>("h0")
    reg C : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[Karatsuba8x8.scala 17:18]
    node _Ka8_1_io_a_T = bits(io.a, 3, 0) @[Karatsuba8x8.scala 19:23]
    Ka8_1.io.a <= _Ka8_1_io_a_T @[Karatsuba8x8.scala 19:16]
    node _Ka8_1_io_b_T = bits(io.b, 3, 0) @[Karatsuba8x8.scala 20:23]
    Ka8_1.io.b <= _Ka8_1_io_b_T @[Karatsuba8x8.scala 20:16]
    T0 <= Ka8_1.io.out @[Karatsuba8x8.scala 21:8]
    node _Ka8_2_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 23:23]
    node _Ka8_2_io_a_T_1 = bits(io.a, 3, 0) @[Karatsuba8x8.scala 23:33]
    node _Ka8_2_io_a_T_2 = add(_Ka8_2_io_a_T, _Ka8_2_io_a_T_1) @[Karatsuba8x8.scala 23:28]
    node _Ka8_2_io_a_T_3 = tail(_Ka8_2_io_a_T_2, 1) @[Karatsuba8x8.scala 23:28]
    Ka8_2.io.a <= _Ka8_2_io_a_T_3 @[Karatsuba8x8.scala 23:16]
    node _Ka8_2_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 24:23]
    node _Ka8_2_io_b_T_1 = bits(io.b, 3, 0) @[Karatsuba8x8.scala 24:33]
    node _Ka8_2_io_b_T_2 = add(_Ka8_2_io_b_T, _Ka8_2_io_b_T_1) @[Karatsuba8x8.scala 24:28]
    node _Ka8_2_io_b_T_3 = tail(_Ka8_2_io_b_T_2, 1) @[Karatsuba8x8.scala 24:28]
    Ka8_2.io.b <= _Ka8_2_io_b_T_3 @[Karatsuba8x8.scala 24:16]
    T1 <= Ka8_2.io.out @[Karatsuba8x8.scala 25:7]
    node _Ka8_3_io_a_T = bits(io.a, 7, 4) @[Karatsuba8x8.scala 27:23]
    Ka8_3.io.a <= _Ka8_3_io_a_T @[Karatsuba8x8.scala 27:16]
    node _Ka8_3_io_b_T = bits(io.b, 7, 4) @[Karatsuba8x8.scala 28:23]
    Ka8_3.io.b <= _Ka8_3_io_b_T @[Karatsuba8x8.scala 28:16]
    T1 <= Ka8_3.io.out @[Karatsuba8x8.scala 29:7]
    node _C_T = cat(T2, UInt<8>("h0")) @[Cat.scala 31:58]
    node _C_T_1 = sub(T1, T0) @[Karatsuba8x8.scala 31:33]
    node _C_T_2 = tail(_C_T_1, 1) @[Karatsuba8x8.scala 31:33]
    node _C_T_3 = sub(_C_T_2, T2) @[Karatsuba8x8.scala 31:36]
    node _C_T_4 = tail(_C_T_3, 1) @[Karatsuba8x8.scala 31:36]
    node _C_T_5 = cat(_C_T_4, UInt<4>("h0")) @[Cat.scala 31:58]
    node _C_T_6 = add(_C_T, _C_T_5) @[Karatsuba8x8.scala 31:25]
    node _C_T_7 = tail(_C_T_6, 1) @[Karatsuba8x8.scala 31:25]
    node _C_T_8 = add(_C_T_7, T0) @[Karatsuba8x8.scala 31:50]
    node _C_T_9 = tail(_C_T_8, 1) @[Karatsuba8x8.scala 31:50]
    C <= _C_T_9 @[Karatsuba8x8.scala 31:6]
    io.out <= C @[Karatsuba8x8.scala 32:11]


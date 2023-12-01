circuit Karatsuba :
  module Karatsuba :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip a : UInt<32>, flip b : UInt<32>, out : UInt<64>}

    wire T0 : UInt<64>
    T0 <= UInt<64>("h0")
    wire T1 : UInt<64>
    T1 <= UInt<64>("h0")
    wire T2 : UInt<64>
    T2 <= UInt<64>("h0")
    reg C : UInt<64>, clock with :
      reset => (reset, UInt<64>("h0")) @[Karatsuba.scala 14:18]
    node _T0_T = bits(io.a, 15, 0) @[Karatsuba.scala 16:14]
    node _T0_T_1 = bits(io.b, 15, 0) @[Karatsuba.scala 16:25]
    node _T0_T_2 = mul(_T0_T, _T0_T_1) @[Karatsuba.scala 16:20]
    T0 <= _T0_T_2 @[Karatsuba.scala 16:7]
    node _T1_T = bits(io.a, 31, 16) @[Karatsuba.scala 17:15]
    node _T1_T_1 = bits(io.a, 15, 0) @[Karatsuba.scala 17:27]
    node _T1_T_2 = add(_T1_T, _T1_T_1) @[Karatsuba.scala 17:22]
    node _T1_T_3 = tail(_T1_T_2, 1) @[Karatsuba.scala 17:22]
    node _T1_T_4 = bits(io.b, 31, 16) @[Karatsuba.scala 17:40]
    node _T1_T_5 = bits(io.b, 15, 0) @[Karatsuba.scala 17:52]
    node _T1_T_6 = add(_T1_T_4, _T1_T_5) @[Karatsuba.scala 17:47]
    node _T1_T_7 = tail(_T1_T_6, 1) @[Karatsuba.scala 17:47]
    node _T1_T_8 = mul(_T1_T_3, _T1_T_7) @[Karatsuba.scala 17:34]
    T1 <= _T1_T_8 @[Karatsuba.scala 17:7]
    node _T2_T = bits(io.a, 31, 16) @[Karatsuba.scala 18:14]
    node _T2_T_1 = bits(io.b, 31, 16) @[Karatsuba.scala 18:26]
    node _T2_T_2 = mul(_T2_T, _T2_T_1) @[Karatsuba.scala 18:21]
    T2 <= _T2_T_2 @[Karatsuba.scala 18:7]
    node _C_T = cat(T2, UInt<32>("h0")) @[Cat.scala 31:58]
    node _C_T_1 = sub(T1, T0) @[Karatsuba.scala 20:34]
    node _C_T_2 = tail(_C_T_1, 1) @[Karatsuba.scala 20:34]
    node _C_T_3 = sub(_C_T_2, T2) @[Karatsuba.scala 20:37]
    node _C_T_4 = tail(_C_T_3, 1) @[Karatsuba.scala 20:37]
    node _C_T_5 = cat(_C_T_4, UInt<16>("h0")) @[Cat.scala 31:58]
    node _C_T_6 = add(_C_T, _C_T_5) @[Karatsuba.scala 20:26]
    node _C_T_7 = tail(_C_T_6, 1) @[Karatsuba.scala 20:26]
    node _C_T_8 = add(_C_T_7, T0) @[Karatsuba.scala 20:52]
    node _C_T_9 = tail(_C_T_8, 1) @[Karatsuba.scala 20:52]
    C <= _C_T_9 @[Karatsuba.scala 20:6]
    io.out <= C @[Karatsuba.scala 21:11]


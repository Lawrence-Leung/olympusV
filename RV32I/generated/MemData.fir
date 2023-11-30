circuit MemData :
  module MemData :
    input clock : Clock
    input reset : UInt<1>
    output io : { bundleMemDataControl : { flip ctrlLoad : UInt<1>, flip ctrlStore : UInt<1>, flip ctrlSigned : UInt<1>, flip ctrlLSType : UInt<2>}, flip resultALU : UInt<32>, flip dataStore : UInt<32>, result : UInt<32>}

    cmem mem : UInt<32> [1024] @[MemData.scala 22:18]
    wire result : UInt<32>
    result <= UInt<32>("h0")
    wire dataLoad : UInt<32>
    dataLoad <= UInt<32>("h0")
    node _dataLoad_T = dshr(io.resultALU, UInt<2>("h2")) @[MemData.scala 31:39]
    node _dataLoad_T_1 = bits(_dataLoad_T, 9, 0) @[MemData.scala 31:25]
    read mport dataLoad_MPORT = mem[_dataLoad_T_1], clock @[MemData.scala 31:25]
    dataLoad <= dataLoad_MPORT @[MemData.scala 31:14]
    when io.bundleMemDataControl.ctrlStore : @[MemData.scala 34:45]
      node _T = eq(io.bundleMemDataControl.ctrlLSType, UInt<2>("h2")) @[MemData.scala 35:49]
      when _T : @[MemData.scala 35:59]
        node _T_1 = dshr(io.resultALU, UInt<2>("h2")) @[MemData.scala 36:36]
        node _T_2 = bits(_T_1, 9, 0)
        write mport MPORT = mem[_T_2], clock
        MPORT <= io.dataStore
      else :
        node _T_3 = eq(io.bundleMemDataControl.ctrlLSType, UInt<1>("h1")) @[MemData.scala 37:55]
        when _T_3 : @[MemData.scala 37:65]
          node _T_4 = dshr(io.resultALU, UInt<2>("h2")) @[MemData.scala 38:36]
          node _T_5 = bits(dataLoad, 31, 16) @[MemData.scala 38:74]
          node _T_6 = bits(io.dataStore, 15, 0) @[MemData.scala 38:96]
          node _T_7 = cat(_T_5, _T_6) @[Cat.scala 31:58]
          node _T_8 = bits(_T_4, 9, 0)
          write mport MPORT_1 = mem[_T_8], clock
          MPORT_1 <= _T_7
        else :
          node _T_9 = dshr(io.resultALU, UInt<2>("h2")) @[MemData.scala 40:36]
          node _T_10 = bits(dataLoad, 31, 8) @[MemData.scala 40:74]
          node _T_11 = bits(io.dataStore, 7, 0) @[MemData.scala 40:95]
          node _T_12 = cat(_T_10, _T_11) @[Cat.scala 31:58]
          node _T_13 = bits(_T_9, 9, 0)
          write mport MPORT_2 = mem[_T_13], clock
          MPORT_2 <= _T_12
    when io.bundleMemDataControl.ctrlLoad : @[MemData.scala 44:45]
      node _T_14 = eq(io.bundleMemDataControl.ctrlLSType, UInt<2>("h2")) @[MemData.scala 45:49]
      when _T_14 : @[MemData.scala 45:59]
        result <= dataLoad @[MemData.scala 46:20]
      else :
        node _T_15 = eq(io.bundleMemDataControl.ctrlLSType, UInt<1>("h1")) @[MemData.scala 47:55]
        when _T_15 : @[MemData.scala 47:65]
          when io.bundleMemDataControl.ctrlSigned : @[MemData.scala 48:55]
            node _result_T = bits(dataLoad, 15, 15) @[MemData.scala 49:48]
            node _result_T_1 = bits(_result_T, 0, 0) @[Bitwise.scala 74:15]
            node _result_T_2 = mux(_result_T_1, UInt<16>("hffff"), UInt<16>("h0")) @[Bitwise.scala 74:12]
            node _result_T_3 = bits(dataLoad, 15, 0) @[MemData.scala 49:63]
            node _result_T_4 = cat(_result_T_2, _result_T_3) @[Cat.scala 31:58]
            result <= _result_T_4 @[MemData.scala 49:24]
          else :
            node _result_T_5 = mux(UInt<1>("h0"), UInt<16>("hffff"), UInt<16>("h0")) @[Bitwise.scala 74:12]
            node _result_T_6 = bits(dataLoad, 15, 0) @[MemData.scala 51:54]
            node _result_T_7 = cat(_result_T_5, _result_T_6) @[Cat.scala 31:58]
            result <= _result_T_7 @[MemData.scala 51:24]
        else :
          when io.bundleMemDataControl.ctrlSigned : @[MemData.scala 54:55]
            node _result_T_8 = bits(dataLoad, 7, 7) @[MemData.scala 55:48]
            node _result_T_9 = bits(_result_T_8, 0, 0) @[Bitwise.scala 74:15]
            node _result_T_10 = mux(_result_T_9, UInt<24>("hffffff"), UInt<24>("h0")) @[Bitwise.scala 74:12]
            node _result_T_11 = bits(dataLoad, 7, 0) @[MemData.scala 55:62]
            node _result_T_12 = cat(_result_T_10, _result_T_11) @[Cat.scala 31:58]
            result <= _result_T_12 @[MemData.scala 55:24]
          else :
            node _result_T_13 = mux(UInt<1>("h0"), UInt<24>("hffffff"), UInt<24>("h0")) @[Bitwise.scala 74:12]
            node _result_T_14 = bits(dataLoad, 7, 0) @[MemData.scala 57:54]
            node _result_T_15 = cat(_result_T_13, _result_T_14) @[Cat.scala 31:58]
            result <= _result_T_15 @[MemData.scala 57:24]
    else :
      result <= io.resultALU @[MemData.scala 62:16]
    io.result <= result @[MemData.scala 66:15]


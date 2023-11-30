circuit ALU :
  module ALU :
    input clock : Clock
    input reset : UInt<1>
    output io : { bundleAluControl : { flip ctrlALUSrc : UInt<1>, flip ctrlJAL : UInt<1>, flip ctrlOP : UInt<4>, flip ctrlSigned : UInt<1>, flip ctrlBranch : UInt<1>}, flip dataRead1 : UInt<32>, flip dataRead2 : UInt<32>, flip imm : UInt<32>, flip pc : UInt<32>, resultBranch : UInt<1>, resultAlu : UInt<32>}

    wire resultBranch : UInt<1>
    resultBranch <= UInt<1>("h0")
    wire resultAlu : UInt<32>
    resultAlu <= UInt<32>("h0")
    wire oprand1 : UInt<32>
    oprand1 <= UInt<32>("h0")
    wire oprand2 : UInt<32>
    oprand2 <= UInt<32>("h0")
    node _oprand1_T = mux(io.bundleAluControl.ctrlJAL, io.pc, io.dataRead1) @[ALU.scala 36:19]
    oprand1 <= _oprand1_T @[ALU.scala 36:13]
    node _oprand2_T = mux(io.bundleAluControl.ctrlALUSrc, io.imm, io.dataRead2) @[ALU.scala 38:19]
    oprand2 <= _oprand2_T @[ALU.scala 38:13]
    node _T = eq(UInt<1>("h0"), io.bundleAluControl.ctrlOP) @[ALU.scala 40:39]
    when _T : @[ALU.scala 40:39]
      resultAlu <= UInt<1>("h0") @[ALU.scala 42:22]
      resultBranch <= UInt<1>("h0") @[ALU.scala 43:25]
    else :
      node _T_1 = eq(UInt<1>("h1"), io.bundleAluControl.ctrlOP) @[ALU.scala 40:39]
      when _T_1 : @[ALU.scala 40:39]
        node _resultAlu_T = add(oprand1, oprand2) @[ALU.scala 47:34]
        resultAlu <= _resultAlu_T @[ALU.scala 47:23]
      else :
        node _T_2 = eq(UInt<2>("h2"), io.bundleAluControl.ctrlOP) @[ALU.scala 40:39]
        when _T_2 : @[ALU.scala 40:39]
          node _resultAlu_T_1 = sub(oprand1, oprand2) @[ALU.scala 50:34]
          node _resultAlu_T_2 = asUInt(_resultAlu_T_1) @[ALU.scala 50:34]
          resultAlu <= _resultAlu_T_2 @[ALU.scala 50:23]
        else :
          node _T_3 = eq(UInt<3>("h4"), io.bundleAluControl.ctrlOP) @[ALU.scala 40:39]
          when _T_3 : @[ALU.scala 40:39]
            node _resultAlu_T_3 = and(oprand1, oprand2) @[ALU.scala 53:34]
            resultAlu <= _resultAlu_T_3 @[ALU.scala 53:23]
          else :
            node _T_4 = eq(UInt<3>("h5"), io.bundleAluControl.ctrlOP) @[ALU.scala 40:39]
            when _T_4 : @[ALU.scala 40:39]
              node _resultAlu_T_4 = or(oprand1, oprand2) @[ALU.scala 56:34]
              resultAlu <= _resultAlu_T_4 @[ALU.scala 56:23]
            else :
              node _T_5 = eq(UInt<3>("h7"), io.bundleAluControl.ctrlOP) @[ALU.scala 40:39]
              when _T_5 : @[ALU.scala 40:39]
                node _resultAlu_T_5 = xor(oprand1, oprand2) @[ALU.scala 59:34]
                resultAlu <= _resultAlu_T_5 @[ALU.scala 59:23]
              else :
                node _T_6 = eq(UInt<4>("h8"), io.bundleAluControl.ctrlOP) @[ALU.scala 40:39]
                when _T_6 : @[ALU.scala 40:39]
                  node _resultAlu_T_6 = bits(oprand2, 4, 0) @[ALU.scala 62:44]
                  node _resultAlu_T_7 = dshl(oprand1, _resultAlu_T_6) @[ALU.scala 62:34]
                  resultAlu <= _resultAlu_T_7 @[ALU.scala 62:23]
                else :
                  node _T_7 = eq(UInt<4>("h9"), io.bundleAluControl.ctrlOP) @[ALU.scala 40:39]
                  when _T_7 : @[ALU.scala 40:39]
                    node _resultAlu_T_8 = bits(oprand2, 4, 0) @[ALU.scala 65:44]
                    node _resultAlu_T_9 = dshr(oprand1, _resultAlu_T_8) @[ALU.scala 65:34]
                    resultAlu <= _resultAlu_T_9 @[ALU.scala 65:23]
                  else :
                    node _T_8 = eq(UInt<4>("hb"), io.bundleAluControl.ctrlOP) @[ALU.scala 40:39]
                    when _T_8 : @[ALU.scala 40:39]
                      node _resultAlu_T_10 = asSInt(oprand1) @[ALU.scala 68:35]
                      node _resultAlu_T_11 = bits(oprand2, 4, 0) @[ALU.scala 68:52]
                      node _resultAlu_T_12 = dshr(_resultAlu_T_10, _resultAlu_T_11) @[ALU.scala 68:42]
                      node _resultAlu_T_13 = asUInt(_resultAlu_T_12) @[ALU.scala 68:60]
                      resultAlu <= _resultAlu_T_13 @[ALU.scala 68:23]
                    else :
                      node _T_9 = eq(UInt<4>("hc"), io.bundleAluControl.ctrlOP) @[ALU.scala 40:39]
                      when _T_9 : @[ALU.scala 40:39]
                        node _resultBranch_T = asSInt(oprand1) @[ALU.scala 71:37]
                        node _resultBranch_T_1 = asSInt(oprand2) @[ALU.scala 71:56]
                        node _resultBranch_T_2 = eq(_resultBranch_T, _resultBranch_T_1) @[ALU.scala 71:44]
                        resultBranch <= _resultBranch_T_2 @[ALU.scala 71:26]
                        node _resultAlu_T_14 = add(io.pc, io.imm) @[ALU.scala 72:32]
                        resultAlu <= _resultAlu_T_14 @[ALU.scala 72:23]
                      else :
                        node _T_10 = eq(UInt<4>("hd"), io.bundleAluControl.ctrlOP) @[ALU.scala 40:39]
                        when _T_10 : @[ALU.scala 40:39]
                          node _resultBranch_T_3 = asSInt(oprand1) @[ALU.scala 75:37]
                          node _resultBranch_T_4 = asSInt(oprand2) @[ALU.scala 75:56]
                          node _resultBranch_T_5 = neq(_resultBranch_T_3, _resultBranch_T_4) @[ALU.scala 75:44]
                          resultBranch <= _resultBranch_T_5 @[ALU.scala 75:26]
                          node _resultAlu_T_15 = add(io.pc, io.imm) @[ALU.scala 76:32]
                          resultAlu <= _resultAlu_T_15 @[ALU.scala 76:23]
                        else :
                          node _T_11 = eq(UInt<4>("he"), io.bundleAluControl.ctrlOP) @[ALU.scala 40:39]
                          when _T_11 : @[ALU.scala 40:39]
                            when io.bundleAluControl.ctrlBranch : @[ALU.scala 79:49]
                              when io.bundleAluControl.ctrlSigned : @[ALU.scala 80:53]
                                node _resultBranch_T_6 = asSInt(oprand1) @[ALU.scala 81:45]
                                node _resultBranch_T_7 = asSInt(oprand2) @[ALU.scala 81:62]
                                node _resultBranch_T_8 = lt(_resultBranch_T_6, _resultBranch_T_7) @[ALU.scala 81:52]
                                resultBranch <= _resultBranch_T_8 @[ALU.scala 81:34]
                              else :
                                node _resultBranch_T_9 = lt(oprand1, oprand2) @[ALU.scala 83:45]
                                resultBranch <= _resultBranch_T_9 @[ALU.scala 83:34]
                              node _resultAlu_T_16 = add(io.pc, io.imm) @[ALU.scala 85:36]
                              resultAlu <= _resultAlu_T_16 @[ALU.scala 85:27]
                            else :
                              when io.bundleAluControl.ctrlSigned : @[ALU.scala 87:53]
                                node _resultAlu_T_17 = asSInt(oprand1) @[ALU.scala 88:42]
                                node _resultAlu_T_18 = asSInt(oprand2) @[ALU.scala 88:59]
                                node _resultAlu_T_19 = lt(_resultAlu_T_17, _resultAlu_T_18) @[ALU.scala 88:49]
                                resultAlu <= _resultAlu_T_19 @[ALU.scala 88:31]
                              else :
                                node _resultAlu_T_20 = lt(oprand1, oprand2) @[ALU.scala 90:42]
                                resultAlu <= _resultAlu_T_20 @[ALU.scala 90:31]
                          else :
                            node _T_12 = eq(UInt<4>("hf"), io.bundleAluControl.ctrlOP) @[ALU.scala 40:39]
                            when _T_12 : @[ALU.scala 40:39]
                              when io.bundleAluControl.ctrlSigned : @[ALU.scala 95:49]
                                node _resultBranch_T_10 = asSInt(oprand1) @[ALU.scala 96:45]
                                node _resultBranch_T_11 = asSInt(oprand2) @[ALU.scala 96:63]
                                node _resultBranch_T_12 = geq(_resultBranch_T_10, _resultBranch_T_11) @[ALU.scala 96:52]
                                resultBranch <= _resultBranch_T_12 @[ALU.scala 96:34]
                              else :
                                node _resultBranch_T_13 = geq(oprand1, oprand2) @[ALU.scala 98:45]
                                resultBranch <= _resultBranch_T_13 @[ALU.scala 98:34]
                              node _resultAlu_T_21 = add(io.pc, io.imm) @[ALU.scala 100:32]
                              resultAlu <= _resultAlu_T_21 @[ALU.scala 100:23]
    io.resultAlu <= resultAlu @[ALU.scala 103:18]
    io.resultBranch <= resultBranch @[ALU.scala 104:21]


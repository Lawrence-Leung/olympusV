circuit Top :
  module PCReg :
    input clock : Clock
    input reset : Reset
    output io : { addrOut : UInt<32>, flip ctrlJump : UInt<1>, flip ctrlBranch : UInt<1>, flip resultBranch : UInt<1>, flip addrTarget : UInt<32>}

    reg regPC : UInt<32>, clock with :
      reset => (reset, UInt<8>("h84")) @[PCReg.scala 15:24]
    node _T = and(io.ctrlBranch, io.resultBranch) @[PCReg.scala 16:40]
    node _T_1 = or(io.ctrlJump, _T) @[PCReg.scala 16:22]
    when _T_1 : @[PCReg.scala 16:60]
      regPC <= io.addrTarget @[PCReg.scala 17:15]
    else :
      node _regPC_T = add(regPC, UInt<3>("h4")) @[PCReg.scala 19:24]
      node _regPC_T_1 = tail(_regPC_T, 1) @[PCReg.scala 19:24]
      regPC <= _regPC_T_1 @[PCReg.scala 19:15]
    io.addrOut <= regPC @[PCReg.scala 22:16]

  module MemInst :
    input clock : Clock
    input reset : Reset
    output io : { flip addr : UInt<32>, inst : UInt<32>}

    cmem mem : UInt<32> [1024] @[MemInst.scala 14:18]
    node _io_inst_T = dshr(io.addr, UInt<2>("h2")) @[MemInst.scala 29:33]
    node _io_inst_T_1 = bits(_io_inst_T, 9, 0) @[MemInst.scala 29:24]
    read mport io_inst_MPORT = mem[_io_inst_T_1], clock @[MemInst.scala 29:24]
    io.inst <= io_inst_MPORT @[MemInst.scala 29:13]

  module Decoder :
    input clock : Clock
    input reset : Reset
    output io : { flip inst : UInt<32>, bundleCtrl : { ctrlJump : UInt<1>, ctrlBranch : UInt<1>, ctrlRegWrite : UInt<1>, ctrlLoad : UInt<1>, ctrlStore : UInt<1>, ctrlALUSrc : UInt<1>, ctrlJAL : UInt<1>, ctrlOP : UInt<4>, ctrlSigned : UInt<1>, ctrlLSType : UInt<2>, ctrlImmsrc : UInt<3>}, bundleReg : { rs1 : UInt<5>, rs2 : UInt<5>, rd : UInt<5>}}

    node _io_bundleReg_rs1_T = bits(io.inst, 19, 15) @[Decoder.scala 21:32]
    io.bundleReg.rs1 <= _io_bundleReg_rs1_T @[Decoder.scala 21:22]
    node _io_bundleReg_rs2_T = bits(io.inst, 24, 20) @[Decoder.scala 22:32]
    io.bundleReg.rs2 <= _io_bundleReg_rs2_T @[Decoder.scala 22:22]
    node _io_bundleReg_rd_T = bits(io.inst, 11, 7) @[Decoder.scala 23:31]
    io.bundleReg.rd <= _io_bundleReg_rd_T @[Decoder.scala 23:21]
    wire ctrlJump : UInt<1>
    ctrlJump <= UInt<1>("h0")
    wire ctrlBranch : UInt<1>
    ctrlBranch <= UInt<1>("h0")
    wire ctrlRegWrite : UInt<1>
    ctrlRegWrite <= UInt<1>("h1")
    wire ctrlLoad : UInt<1>
    ctrlLoad <= UInt<1>("h0")
    wire ctrlStore : UInt<1>
    ctrlStore <= UInt<1>("h0")
    wire ctrlALUSrc : UInt<1>
    ctrlALUSrc <= UInt<1>("h0")
    wire ctrlJAL : UInt<1>
    ctrlJAL <= UInt<1>("h0")
    wire ctrlOP : UInt<4>
    ctrlOP <= UInt<4>("h0")
    wire ctrlSigned : UInt<1>
    ctrlSigned <= UInt<1>("h1")
    wire ctrlLSType : UInt<2>
    ctrlLSType <= UInt<2>("h2")
    wire ctrlImmsrc : UInt<3>
    ctrlImmsrc <= UInt<3>("h0")
    node _T = bits(io.inst, 6, 2) @[Decoder.scala 39:19]
    node _T_1 = eq(UInt<4>("hd"), _T) @[Decoder.scala 39:25]
    node _T_2 = eq(UInt<3>("h5"), _T) @[Decoder.scala 39:25]
    node _T_3 = or(_T_1, _T_2) @[Decoder.scala 39:25]
    when _T_3 : @[Decoder.scala 39:25]
      ctrlALUSrc <= UInt<1>("h1") @[Decoder.scala 42:24]
      ctrlOP <= UInt<1>("h1") @[Decoder.scala 43:20]
      ctrlImmsrc <= UInt<2>("h3") @[Decoder.scala 44:24]
    else :
      node _T_4 = eq(UInt<5>("h1b"), _T) @[Decoder.scala 39:25]
      when _T_4 : @[Decoder.scala 39:25]
        ctrlJAL <= UInt<1>("h1") @[Decoder.scala 48:21]
        ctrlALUSrc <= UInt<1>("h1") @[Decoder.scala 49:24]
        ctrlJump <= UInt<1>("h1") @[Decoder.scala 50:22]
        ctrlOP <= UInt<1>("h1") @[Decoder.scala 51:20]
        ctrlImmsrc <= UInt<3>("h4") @[Decoder.scala 52:24]
      else :
        node _T_5 = eq(UInt<5>("h19"), _T) @[Decoder.scala 39:25]
        node _T_6 = eq(UInt<1>("h0"), _T) @[Decoder.scala 39:25]
        node _T_7 = eq(UInt<3>("h4"), _T) @[Decoder.scala 39:25]
        node _T_8 = or(_T_5, _T_6) @[Decoder.scala 39:25]
        node _T_9 = or(_T_8, _T_7) @[Decoder.scala 39:25]
        when _T_9 : @[Decoder.scala 39:25]
          ctrlALUSrc <= UInt<1>("h1") @[Decoder.scala 58:24]
          node _T_10 = bits(io.inst, 6, 2) @[Decoder.scala 60:25]
          node _T_11 = eq(_T_10, UInt<5>("h19")) @[Decoder.scala 60:30]
          when _T_11 : @[Decoder.scala 60:44]
            ctrlJump <= UInt<1>("h1") @[Decoder.scala 61:26]
            ctrlOP <= UInt<1>("h1") @[Decoder.scala 62:24]
            ctrlImmsrc <= UInt<1>("h0") @[Decoder.scala 63:28]
          else :
            node _T_12 = bits(io.inst, 6, 2) @[Decoder.scala 64:31]
            node _T_13 = eq(_T_12, UInt<1>("h0")) @[Decoder.scala 64:36]
            when _T_13 : @[Decoder.scala 64:50]
              ctrlImmsrc <= UInt<1>("h0") @[Decoder.scala 65:28]
              ctrlLoad <= UInt<1>("h1") @[Decoder.scala 66:26]
              ctrlOP <= UInt<1>("h1") @[Decoder.scala 67:24]
              node _T_14 = bits(io.inst, 14, 12) @[Decoder.scala 68:29]
              node _T_15 = eq(_T_14, UInt<3>("h5")) @[Decoder.scala 68:36]
              node _T_16 = bits(io.inst, 14, 12) @[Decoder.scala 68:57]
              node _T_17 = eq(_T_16, UInt<3>("h4")) @[Decoder.scala 68:64]
              node _T_18 = or(_T_15, _T_17) @[Decoder.scala 68:48]
              when _T_18 : @[Decoder.scala 68:76]
                ctrlSigned <= UInt<1>("h0") @[Decoder.scala 69:31]
              node _T_19 = bits(io.inst, 14, 12) @[Decoder.scala 71:29]
              node _T_20 = eq(_T_19, UInt<1>("h0")) @[Decoder.scala 71:36]
              node _T_21 = bits(io.inst, 14, 12) @[Decoder.scala 71:57]
              node _T_22 = eq(_T_21, UInt<3>("h4")) @[Decoder.scala 71:64]
              node _T_23 = or(_T_20, _T_22) @[Decoder.scala 71:48]
              when _T_23 : @[Decoder.scala 71:76]
                ctrlLSType <= UInt<1>("h0") @[Decoder.scala 72:32]
              node _T_24 = bits(io.inst, 14, 12) @[Decoder.scala 74:29]
              node _T_25 = eq(_T_24, UInt<1>("h1")) @[Decoder.scala 74:36]
              node _T_26 = bits(io.inst, 14, 12) @[Decoder.scala 74:57]
              node _T_27 = eq(_T_26, UInt<3>("h5")) @[Decoder.scala 74:64]
              node _T_28 = or(_T_25, _T_27) @[Decoder.scala 74:48]
              when _T_28 : @[Decoder.scala 74:76]
                ctrlLSType <= UInt<1>("h1") @[Decoder.scala 75:32]
            else :
              node _T_29 = bits(io.inst, 14, 12) @[Decoder.scala 79:30]
              node _T_30 = eq(_T_29, UInt<1>("h1")) @[Decoder.scala 79:37]
              node _T_31 = bits(io.inst, 6, 2) @[Decoder.scala 79:59]
              node _T_32 = eq(_T_31, UInt<3>("h4")) @[Decoder.scala 79:64]
              node _T_33 = and(_T_30, _T_32) @[Decoder.scala 79:49]
              node _T_34 = bits(io.inst, 14, 12) @[Decoder.scala 79:88]
              node _T_35 = eq(_T_34, UInt<3>("h5")) @[Decoder.scala 79:95]
              node _T_36 = or(_T_33, _T_35) @[Decoder.scala 79:78]
              when _T_36 : @[Decoder.scala 79:107]
                ctrlImmsrc <= UInt<3>("h5") @[Decoder.scala 80:28]
                node _T_37 = bits(io.inst, 30, 30) @[Decoder.scala 81:35]
                node _T_38 = bits(io.inst, 14, 12) @[Decoder.scala 81:47]
                node _T_39 = cat(_T_37, _T_38) @[Cat.scala 31:58]
                node _T_40 = eq(UInt<1>("h1"), _T_39) @[Decoder.scala 81:56]
                when _T_40 : @[Decoder.scala 81:56]
                  ctrlOP <= UInt<4>("h8") @[Decoder.scala 83:32]
                else :
                  node _T_41 = eq(UInt<3>("h5"), _T_39) @[Decoder.scala 81:56]
                  when _T_41 : @[Decoder.scala 81:56]
                    ctrlOP <= UInt<4>("h9") @[Decoder.scala 86:32]
                  else :
                    node _T_42 = eq(UInt<4>("hd"), _T_39) @[Decoder.scala 81:56]
                    when _T_42 : @[Decoder.scala 81:56]
                      ctrlOP <= UInt<4>("hb") @[Decoder.scala 89:32]
              else :
                ctrlImmsrc <= UInt<1>("h0") @[Decoder.scala 95:28]
                node _T_43 = bits(io.inst, 14, 12) @[Decoder.scala 96:31]
                node _T_44 = eq(UInt<1>("h0"), _T_43) @[Decoder.scala 96:39]
                when _T_44 : @[Decoder.scala 96:39]
                  ctrlOP <= UInt<1>("h1") @[Decoder.scala 99:31]
                else :
                  node _T_45 = eq(UInt<2>("h2"), _T_43) @[Decoder.scala 96:39]
                  when _T_45 : @[Decoder.scala 96:39]
                    ctrlOP <= UInt<4>("he") @[Decoder.scala 103:31]
                  else :
                    node _T_46 = eq(UInt<2>("h3"), _T_43) @[Decoder.scala 96:39]
                    when _T_46 : @[Decoder.scala 96:39]
                      ctrlOP <= UInt<4>("he") @[Decoder.scala 107:31]
                      ctrlSigned <= UInt<1>("h0") @[Decoder.scala 108:36]
                    else :
                      node _T_47 = eq(UInt<3>("h4"), _T_43) @[Decoder.scala 96:39]
                      when _T_47 : @[Decoder.scala 96:39]
                        ctrlOP <= UInt<3>("h7") @[Decoder.scala 112:31]
                      else :
                        node _T_48 = eq(UInt<3>("h6"), _T_43) @[Decoder.scala 96:39]
                        when _T_48 : @[Decoder.scala 96:39]
                          ctrlOP <= UInt<3>("h5") @[Decoder.scala 116:31]
                        else :
                          node _T_49 = eq(UInt<3>("h7"), _T_43) @[Decoder.scala 96:39]
                          when _T_49 : @[Decoder.scala 96:39]
                            ctrlOP <= UInt<3>("h4") @[Decoder.scala 120:31]
        else :
          node _T_50 = eq(UInt<5>("h18"), _T) @[Decoder.scala 39:25]
          when _T_50 : @[Decoder.scala 39:25]
            ctrlBranch <= UInt<1>("h1") @[Decoder.scala 128:24]
            ctrlALUSrc <= UInt<1>("h0") @[Decoder.scala 129:24]
            ctrlRegWrite <= UInt<1>("h0") @[Decoder.scala 130:26]
            ctrlImmsrc <= UInt<2>("h2") @[Decoder.scala 131:24]
            node _T_51 = bits(io.inst, 14, 12) @[Decoder.scala 132:27]
            node _T_52 = eq(UInt<1>("h0"), _T_51) @[Decoder.scala 132:35]
            when _T_52 : @[Decoder.scala 132:35]
              ctrlOP <= UInt<4>("hc") @[Decoder.scala 135:28]
            else :
              node _T_53 = eq(UInt<1>("h1"), _T_51) @[Decoder.scala 132:35]
              when _T_53 : @[Decoder.scala 132:35]
                ctrlOP <= UInt<4>("hd") @[Decoder.scala 139:27]
              else :
                node _T_54 = eq(UInt<3>("h4"), _T_51) @[Decoder.scala 132:35]
                when _T_54 : @[Decoder.scala 132:35]
                  ctrlOP <= UInt<4>("he") @[Decoder.scala 143:27]
                else :
                  node _T_55 = eq(UInt<3>("h5"), _T_51) @[Decoder.scala 132:35]
                  when _T_55 : @[Decoder.scala 132:35]
                    ctrlOP <= UInt<4>("hf") @[Decoder.scala 147:27]
                  else :
                    node _T_56 = eq(UInt<3>("h6"), _T_51) @[Decoder.scala 132:35]
                    when _T_56 : @[Decoder.scala 132:35]
                      ctrlOP <= UInt<4>("he") @[Decoder.scala 151:27]
                      ctrlSigned <= UInt<1>("h0") @[Decoder.scala 152:32]
                    else :
                      node _T_57 = eq(UInt<3>("h7"), _T_51) @[Decoder.scala 132:35]
                      when _T_57 : @[Decoder.scala 132:35]
                        ctrlOP <= UInt<4>("hf") @[Decoder.scala 156:27]
                        ctrlSigned <= UInt<1>("h0") @[Decoder.scala 157:32]
          else :
            node _T_58 = eq(UInt<4>("h8"), _T) @[Decoder.scala 39:25]
            when _T_58 : @[Decoder.scala 39:25]
              ctrlStore <= UInt<1>("h1") @[Decoder.scala 164:23]
              ctrlALUSrc <= UInt<1>("h1") @[Decoder.scala 165:24]
              ctrlRegWrite <= UInt<1>("h0") @[Decoder.scala 166:26]
              ctrlOP <= UInt<1>("h1") @[Decoder.scala 167:20]
              ctrlImmsrc <= UInt<1>("h1") @[Decoder.scala 168:24]
              node _T_59 = bits(io.inst, 14, 12) @[Decoder.scala 169:26]
              node _T_60 = eq(_T_59, UInt<1>("h0")) @[Decoder.scala 169:35]
              when _T_60 : @[Decoder.scala 169:49]
                ctrlLSType <= UInt<1>("h0") @[Decoder.scala 170:28]
              node _T_61 = bits(io.inst, 14, 12) @[Decoder.scala 172:26]
              node _T_62 = eq(_T_61, UInt<1>("h1")) @[Decoder.scala 172:35]
              when _T_62 : @[Decoder.scala 172:49]
                ctrlLSType <= UInt<1>("h1") @[Decoder.scala 173:28]
            else :
              node _T_63 = eq(UInt<4>("hc"), _T) @[Decoder.scala 39:25]
              when _T_63 : @[Decoder.scala 39:25]
                ctrlRegWrite <= UInt<1>("h1") @[Decoder.scala 178:26]
                ctrlALUSrc <= UInt<1>("h0") @[Decoder.scala 179:24]
                node _T_64 = bits(io.inst, 14, 12) @[Decoder.scala 180:27]
                node _T_65 = eq(UInt<1>("h0"), _T_64) @[Decoder.scala 180:35]
                when _T_65 : @[Decoder.scala 180:35]
                  node _T_66 = bits(io.inst, 30, 30) @[Decoder.scala 182:33]
                  when _T_66 : @[Decoder.scala 182:38]
                    ctrlOP <= UInt<2>("h2") @[Decoder.scala 183:32]
                  else :
                    ctrlOP <= UInt<1>("h1") @[Decoder.scala 185:32]
                else :
                  node _T_67 = eq(UInt<1>("h1"), _T_64) @[Decoder.scala 180:35]
                  when _T_67 : @[Decoder.scala 180:35]
                    ctrlOP <= UInt<4>("h8") @[Decoder.scala 190:28]
                  else :
                    node _T_68 = eq(UInt<2>("h2"), _T_64) @[Decoder.scala 180:35]
                    when _T_68 : @[Decoder.scala 180:35]
                      ctrlOP <= UInt<4>("he") @[Decoder.scala 194:28]
                    else :
                      node _T_69 = eq(UInt<2>("h3"), _T_64) @[Decoder.scala 180:35]
                      when _T_69 : @[Decoder.scala 180:35]
                        ctrlOP <= UInt<4>("he") @[Decoder.scala 198:28]
                        ctrlSigned <= UInt<1>("h0") @[Decoder.scala 199:32]
                      else :
                        node _T_70 = eq(UInt<3>("h4"), _T_64) @[Decoder.scala 180:35]
                        when _T_70 : @[Decoder.scala 180:35]
                          ctrlOP <= UInt<3>("h7") @[Decoder.scala 203:28]
                        else :
                          node _T_71 = eq(UInt<3>("h5"), _T_64) @[Decoder.scala 180:35]
                          when _T_71 : @[Decoder.scala 180:35]
                            node _T_72 = bits(io.inst, 30, 30) @[Decoder.scala 206:33]
                            when _T_72 : @[Decoder.scala 206:38]
                              ctrlOP <= UInt<4>("hb") @[Decoder.scala 207:32]
                            else :
                              ctrlOP <= UInt<4>("h9") @[Decoder.scala 209:32]
                          else :
                            node _T_73 = eq(UInt<3>("h6"), _T_64) @[Decoder.scala 180:35]
                            when _T_73 : @[Decoder.scala 180:35]
                              ctrlOP <= UInt<3>("h5") @[Decoder.scala 213:28]
                            else :
                              node _T_74 = eq(UInt<3>("h7"), _T_64) @[Decoder.scala 180:35]
                              when _T_74 : @[Decoder.scala 180:35]
                                ctrlOP <= UInt<3>("h4") @[Decoder.scala 216:28]
    io.bundleCtrl.ctrlALUSrc <= ctrlALUSrc @[Decoder.scala 223:30]
    io.bundleCtrl.ctrlBranch <= ctrlBranch @[Decoder.scala 224:30]
    io.bundleCtrl.ctrlJAL <= ctrlJAL @[Decoder.scala 225:27]
    io.bundleCtrl.ctrlJump <= ctrlJump @[Decoder.scala 226:28]
    io.bundleCtrl.ctrlLoad <= ctrlLoad @[Decoder.scala 227:28]
    io.bundleCtrl.ctrlOP <= ctrlOP @[Decoder.scala 228:26]
    io.bundleCtrl.ctrlRegWrite <= ctrlRegWrite @[Decoder.scala 229:32]
    io.bundleCtrl.ctrlSigned <= ctrlSigned @[Decoder.scala 230:30]
    io.bundleCtrl.ctrlStore <= ctrlStore @[Decoder.scala 231:29]
    io.bundleCtrl.ctrlLSType <= ctrlLSType @[Decoder.scala 232:30]
    io.bundleCtrl.ctrlImmsrc <= ctrlImmsrc @[Decoder.scala 233:30]

  module Registers :
    input clock : Clock
    input reset : Reset
    output io : { flip ctrlRegWrite : UInt<1>, flip dataWrite : UInt<32>, flip bundleReg : { rs1 : UInt<5>, rs2 : UInt<5>, rd : UInt<5>}, flip ctrlJump : UInt<1>, flip pc : UInt<32>, dataRead1 : UInt<32>, dataRead2 : UInt<32>}

    reg regs : UInt<32>[32], clock with :
      reset => (UInt<1>("h0"), regs) @[Registers.scala 18:18]
    node _T = eq(io.bundleReg.rs1, UInt<1>("h0")) @[Registers.scala 20:27]
    when _T : @[Registers.scala 21:5]
      io.dataRead1 <= UInt<1>("h0") @[Registers.scala 22:22]
    node _T_1 = eq(io.bundleReg.rs2, UInt<1>("h0")) @[Registers.scala 24:27]
    when _T_1 : @[Registers.scala 25:5]
      io.dataRead2 <= UInt<1>("h0") @[Registers.scala 26:22]
    io.dataRead1 <= regs[io.bundleReg.rs1] @[Registers.scala 29:18]
    io.dataRead2 <= regs[io.bundleReg.rs2] @[Registers.scala 30:18]
    node _T_2 = neq(io.bundleReg.rd, UInt<1>("h0")) @[Registers.scala 32:45]
    node _T_3 = and(io.ctrlRegWrite, _T_2) @[Registers.scala 32:26]
    when _T_3 : @[Registers.scala 33:5]
      when io.ctrlJump : @[Registers.scala 34:27]
        node _regs_T = add(io.pc, UInt<3>("h4")) @[Registers.scala 35:44]
        node _regs_T_1 = tail(_regs_T, 1) @[Registers.scala 35:44]
        regs[io.bundleReg.rd] <= _regs_T_1 @[Registers.scala 35:35]
      else :
        regs[io.bundleReg.rd] <= io.dataWrite @[Registers.scala 37:35]

  module Alu :
    input clock : Clock
    input reset : Reset
    output io : { bundleAluControl : { flip ctrlALUSrc : UInt<1>, flip ctrlJAL : UInt<1>, flip ctrlOP : UInt<4>, flip ctrlSigned : UInt<1>, flip ctrlBranch : UInt<1>}, flip dataRead1 : UInt<32>, flip dataRead2 : UInt<32>, flip imm : UInt<32>, flip pc : UInt<32>, resultBranch : UInt<1>, resultAlu : UInt<32>}

    wire resultBranch : UInt<1>
    resultBranch <= UInt<1>("h0")
    wire resultAlu : UInt<32>
    resultAlu <= UInt<32>("h0")
    wire oprand1 : UInt<32>
    oprand1 <= UInt<32>("h0")
    wire oprand2 : UInt<32>
    oprand2 <= UInt<32>("h0")
    node _oprand1_T = mux(io.bundleAluControl.ctrlJAL, io.pc, io.dataRead1) @[Alu.scala 36:19]
    oprand1 <= _oprand1_T @[Alu.scala 36:13]
    node _oprand2_T = mux(io.bundleAluControl.ctrlALUSrc, io.imm, io.dataRead2) @[Alu.scala 38:19]
    oprand2 <= _oprand2_T @[Alu.scala 38:13]
    node _T = eq(UInt<1>("h0"), io.bundleAluControl.ctrlOP) @[Alu.scala 40:39]
    when _T : @[Alu.scala 40:39]
      resultAlu <= UInt<1>("h0") @[Alu.scala 42:22]
      resultBranch <= UInt<1>("h0") @[Alu.scala 43:25]
    else :
      node _T_1 = eq(UInt<1>("h1"), io.bundleAluControl.ctrlOP) @[Alu.scala 40:39]
      when _T_1 : @[Alu.scala 40:39]
        node _resultAlu_T = add(oprand1, oprand2) @[Alu.scala 47:34]
        resultAlu <= _resultAlu_T @[Alu.scala 47:23]
      else :
        node _T_2 = eq(UInt<2>("h2"), io.bundleAluControl.ctrlOP) @[Alu.scala 40:39]
        when _T_2 : @[Alu.scala 40:39]
          node _resultAlu_T_1 = sub(oprand1, oprand2) @[Alu.scala 50:34]
          node _resultAlu_T_2 = asUInt(_resultAlu_T_1) @[Alu.scala 50:34]
          resultAlu <= _resultAlu_T_2 @[Alu.scala 50:23]
        else :
          node _T_3 = eq(UInt<3>("h4"), io.bundleAluControl.ctrlOP) @[Alu.scala 40:39]
          when _T_3 : @[Alu.scala 40:39]
            node _resultAlu_T_3 = and(oprand1, oprand2) @[Alu.scala 53:34]
            resultAlu <= _resultAlu_T_3 @[Alu.scala 53:23]
          else :
            node _T_4 = eq(UInt<3>("h5"), io.bundleAluControl.ctrlOP) @[Alu.scala 40:39]
            when _T_4 : @[Alu.scala 40:39]
              node _resultAlu_T_4 = or(oprand1, oprand2) @[Alu.scala 56:34]
              resultAlu <= _resultAlu_T_4 @[Alu.scala 56:23]
            else :
              node _T_5 = eq(UInt<3>("h7"), io.bundleAluControl.ctrlOP) @[Alu.scala 40:39]
              when _T_5 : @[Alu.scala 40:39]
                node _resultAlu_T_5 = xor(oprand1, oprand2) @[Alu.scala 59:34]
                resultAlu <= _resultAlu_T_5 @[Alu.scala 59:23]
              else :
                node _T_6 = eq(UInt<4>("h8"), io.bundleAluControl.ctrlOP) @[Alu.scala 40:39]
                when _T_6 : @[Alu.scala 40:39]
                  node _resultAlu_T_6 = bits(oprand2, 4, 0) @[Alu.scala 62:44]
                  node _resultAlu_T_7 = dshl(oprand1, _resultAlu_T_6) @[Alu.scala 62:34]
                  resultAlu <= _resultAlu_T_7 @[Alu.scala 62:23]
                else :
                  node _T_7 = eq(UInt<4>("h9"), io.bundleAluControl.ctrlOP) @[Alu.scala 40:39]
                  when _T_7 : @[Alu.scala 40:39]
                    node _resultAlu_T_8 = bits(oprand2, 4, 0) @[Alu.scala 65:44]
                    node _resultAlu_T_9 = dshr(oprand1, _resultAlu_T_8) @[Alu.scala 65:34]
                    resultAlu <= _resultAlu_T_9 @[Alu.scala 65:23]
                  else :
                    node _T_8 = eq(UInt<4>("hb"), io.bundleAluControl.ctrlOP) @[Alu.scala 40:39]
                    when _T_8 : @[Alu.scala 40:39]
                      node _resultAlu_T_10 = asSInt(oprand1) @[Alu.scala 68:35]
                      node _resultAlu_T_11 = bits(oprand2, 4, 0) @[Alu.scala 68:52]
                      node _resultAlu_T_12 = dshr(_resultAlu_T_10, _resultAlu_T_11) @[Alu.scala 68:42]
                      node _resultAlu_T_13 = asUInt(_resultAlu_T_12) @[Alu.scala 68:60]
                      resultAlu <= _resultAlu_T_13 @[Alu.scala 68:23]
                    else :
                      node _T_9 = eq(UInt<4>("hc"), io.bundleAluControl.ctrlOP) @[Alu.scala 40:39]
                      when _T_9 : @[Alu.scala 40:39]
                        node _resultBranch_T = asSInt(oprand1) @[Alu.scala 71:37]
                        node _resultBranch_T_1 = asSInt(oprand2) @[Alu.scala 71:56]
                        node _resultBranch_T_2 = eq(_resultBranch_T, _resultBranch_T_1) @[Alu.scala 71:44]
                        resultBranch <= _resultBranch_T_2 @[Alu.scala 71:26]
                        node _resultAlu_T_14 = add(io.pc, io.imm) @[Alu.scala 72:32]
                        resultAlu <= _resultAlu_T_14 @[Alu.scala 72:23]
                      else :
                        node _T_10 = eq(UInt<4>("hd"), io.bundleAluControl.ctrlOP) @[Alu.scala 40:39]
                        when _T_10 : @[Alu.scala 40:39]
                          node _resultBranch_T_3 = asSInt(oprand1) @[Alu.scala 75:37]
                          node _resultBranch_T_4 = asSInt(oprand2) @[Alu.scala 75:56]
                          node _resultBranch_T_5 = neq(_resultBranch_T_3, _resultBranch_T_4) @[Alu.scala 75:44]
                          resultBranch <= _resultBranch_T_5 @[Alu.scala 75:26]
                          node _resultAlu_T_15 = add(io.pc, io.imm) @[Alu.scala 76:32]
                          resultAlu <= _resultAlu_T_15 @[Alu.scala 76:23]
                        else :
                          node _T_11 = eq(UInt<4>("he"), io.bundleAluControl.ctrlOP) @[Alu.scala 40:39]
                          when _T_11 : @[Alu.scala 40:39]
                            when io.bundleAluControl.ctrlBranch : @[Alu.scala 79:49]
                              when io.bundleAluControl.ctrlSigned : @[Alu.scala 80:53]
                                node _resultBranch_T_6 = asSInt(oprand1) @[Alu.scala 81:45]
                                node _resultBranch_T_7 = asSInt(oprand2) @[Alu.scala 81:62]
                                node _resultBranch_T_8 = lt(_resultBranch_T_6, _resultBranch_T_7) @[Alu.scala 81:52]
                                resultBranch <= _resultBranch_T_8 @[Alu.scala 81:34]
                              else :
                                node _resultBranch_T_9 = lt(oprand1, oprand2) @[Alu.scala 83:45]
                                resultBranch <= _resultBranch_T_9 @[Alu.scala 83:34]
                              node _resultAlu_T_16 = add(io.pc, io.imm) @[Alu.scala 85:36]
                              resultAlu <= _resultAlu_T_16 @[Alu.scala 85:27]
                            else :
                              when io.bundleAluControl.ctrlSigned : @[Alu.scala 87:53]
                                node _resultAlu_T_17 = asSInt(oprand1) @[Alu.scala 88:42]
                                node _resultAlu_T_18 = asSInt(oprand2) @[Alu.scala 88:59]
                                node _resultAlu_T_19 = lt(_resultAlu_T_17, _resultAlu_T_18) @[Alu.scala 88:49]
                                resultAlu <= _resultAlu_T_19 @[Alu.scala 88:31]
                              else :
                                node _resultAlu_T_20 = lt(oprand1, oprand2) @[Alu.scala 90:42]
                                resultAlu <= _resultAlu_T_20 @[Alu.scala 90:31]
                          else :
                            node _T_12 = eq(UInt<4>("hf"), io.bundleAluControl.ctrlOP) @[Alu.scala 40:39]
                            when _T_12 : @[Alu.scala 40:39]
                              when io.bundleAluControl.ctrlSigned : @[Alu.scala 95:49]
                                node _resultBranch_T_10 = asSInt(oprand1) @[Alu.scala 96:45]
                                node _resultBranch_T_11 = asSInt(oprand2) @[Alu.scala 96:63]
                                node _resultBranch_T_12 = geq(_resultBranch_T_10, _resultBranch_T_11) @[Alu.scala 96:52]
                                resultBranch <= _resultBranch_T_12 @[Alu.scala 96:34]
                              else :
                                node _resultBranch_T_13 = geq(oprand1, oprand2) @[Alu.scala 98:45]
                                resultBranch <= _resultBranch_T_13 @[Alu.scala 98:34]
                              node _resultAlu_T_21 = add(io.pc, io.imm) @[Alu.scala 100:32]
                              resultAlu <= _resultAlu_T_21 @[Alu.scala 100:23]
    io.resultAlu <= resultAlu @[Alu.scala 103:18]
    io.resultBranch <= resultBranch @[Alu.scala 104:21]

  module MemData :
    input clock : Clock
    input reset : Reset
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

  module Controller :
    input clock : Clock
    input reset : Reset
    output io : { flip bundleControlIn : { ctrlJump : UInt<1>, ctrlBranch : UInt<1>, ctrlRegWrite : UInt<1>, ctrlLoad : UInt<1>, ctrlStore : UInt<1>, ctrlALUSrc : UInt<1>, ctrlJAL : UInt<1>, ctrlOP : UInt<4>, ctrlSigned : UInt<1>, ctrlLSType : UInt<2>, ctrlImmsrc : UInt<3>}, flip bundleAluControl : { flip ctrlALUSrc : UInt<1>, flip ctrlJAL : UInt<1>, flip ctrlOP : UInt<4>, flip ctrlSigned : UInt<1>, flip ctrlBranch : UInt<1>}, flip bundleMemDataControl : { flip ctrlLoad : UInt<1>, flip ctrlStore : UInt<1>, flip ctrlSigned : UInt<1>, flip ctrlLSType : UInt<2>}, bundleControlOut : { ctrlJump : UInt<1>, ctrlBranch : UInt<1>, ctrlRegWrite : UInt<1>, ctrlLoad : UInt<1>, ctrlStore : UInt<1>, ctrlALUSrc : UInt<1>, ctrlJAL : UInt<1>, ctrlOP : UInt<4>, ctrlSigned : UInt<1>, ctrlLSType : UInt<2>, ctrlImmsrc : UInt<3>}}

    io.bundleAluControl.ctrlALUSrc <= io.bundleControlIn.ctrlALUSrc @[Controller.scala 19:36]
    io.bundleAluControl.ctrlJAL <= io.bundleControlIn.ctrlJAL @[Controller.scala 20:33]
    io.bundleAluControl.ctrlOP <= io.bundleControlIn.ctrlOP @[Controller.scala 21:32]
    io.bundleAluControl.ctrlSigned <= io.bundleControlIn.ctrlSigned @[Controller.scala 22:36]
    io.bundleAluControl.ctrlBranch <= io.bundleControlIn.ctrlBranch @[Controller.scala 23:36]
    io.bundleMemDataControl.ctrlLSType <= io.bundleControlIn.ctrlALUSrc @[Controller.scala 26:40]
    io.bundleMemDataControl.ctrlLoad <= io.bundleControlIn.ctrlLoad @[Controller.scala 27:38]
    io.bundleMemDataControl.ctrlSigned <= io.bundleControlIn.ctrlSigned @[Controller.scala 28:40]
    io.bundleMemDataControl.ctrlStore <= io.bundleControlIn.ctrlStore @[Controller.scala 29:39]
    io.bundleControlOut <= io.bundleControlIn @[Controller.scala 32:25]

  module ImmGen :
    input clock : Clock
    input reset : Reset
    output io : { flip inst : UInt<32>, flip ctrlImmsrc : UInt<3>, imm : UInt<32>}

    node _imm_i_T = bits(io.inst, 31, 31) @[ImmGen.scala 15:35]
    node _imm_i_T_1 = bits(_imm_i_T, 0, 0) @[Bitwise.scala 74:15]
    node _imm_i_T_2 = mux(_imm_i_T_1, UInt<20>("hfffff"), UInt<20>("h0")) @[Bitwise.scala 74:12]
    node _imm_i_T_3 = bits(io.inst, 31, 20) @[ImmGen.scala 15:48]
    node imm_i = cat(_imm_i_T_2, _imm_i_T_3) @[Cat.scala 31:58]
    node _imm_s_T = bits(io.inst, 31, 31) @[ImmGen.scala 16:35]
    node _imm_s_T_1 = bits(_imm_s_T, 0, 0) @[Bitwise.scala 74:15]
    node _imm_s_T_2 = mux(_imm_s_T_1, UInt<20>("hfffff"), UInt<20>("h0")) @[Bitwise.scala 74:12]
    node _imm_s_T_3 = bits(io.inst, 31, 25) @[ImmGen.scala 16:48]
    node _imm_s_T_4 = bits(io.inst, 11, 7) @[ImmGen.scala 16:63]
    node imm_s_hi = cat(_imm_s_T_2, _imm_s_T_3) @[Cat.scala 31:58]
    node imm_s = cat(imm_s_hi, _imm_s_T_4) @[Cat.scala 31:58]
    node _imm_b_T = bits(io.inst, 31, 31) @[ImmGen.scala 17:35]
    node _imm_b_T_1 = bits(_imm_b_T, 0, 0) @[Bitwise.scala 74:15]
    node _imm_b_T_2 = mux(_imm_b_T_1, UInt<20>("hfffff"), UInt<20>("h0")) @[Bitwise.scala 74:12]
    node _imm_b_T_3 = bits(io.inst, 31, 31) @[ImmGen.scala 17:48]
    node _imm_b_T_4 = bits(io.inst, 7, 7) @[ImmGen.scala 17:60]
    node _imm_b_T_5 = bits(io.inst, 30, 25) @[ImmGen.scala 17:71]
    node _imm_b_T_6 = bits(io.inst, 11, 8) @[ImmGen.scala 17:86]
    node imm_b_lo_hi = cat(_imm_b_T_5, _imm_b_T_6) @[Cat.scala 31:58]
    node imm_b_lo = cat(imm_b_lo_hi, UInt<1>("h0")) @[Cat.scala 31:58]
    node imm_b_hi_hi = cat(_imm_b_T_2, _imm_b_T_3) @[Cat.scala 31:58]
    node imm_b_hi = cat(imm_b_hi_hi, _imm_b_T_4) @[Cat.scala 31:58]
    node imm_b = cat(imm_b_hi, imm_b_lo) @[Cat.scala 31:58]
    node _imm_u_T = bits(io.inst, 31, 12) @[ImmGen.scala 18:27]
    node _imm_u_T_1 = mux(UInt<1>("h0"), UInt<20>("hfffff"), UInt<20>("h0")) @[Bitwise.scala 74:12]
    node imm_u = cat(_imm_u_T, _imm_u_T_1) @[Cat.scala 31:58]
    node _imm_j_T = bits(io.inst, 31, 31) @[ImmGen.scala 19:37]
    node _imm_j_T_1 = bits(_imm_j_T, 0, 0) @[Bitwise.scala 74:15]
    node _imm_j_T_2 = mux(_imm_j_T_1, UInt<12>("hfff"), UInt<12>("h0")) @[Bitwise.scala 74:12]
    node _imm_j_T_3 = bits(io.inst, 31, 31) @[ImmGen.scala 19:51]
    node _imm_j_T_4 = bits(io.inst, 19, 12) @[ImmGen.scala 19:64]
    node _imm_j_T_5 = bits(io.inst, 20, 20) @[ImmGen.scala 19:81]
    node _imm_j_T_6 = bits(io.inst, 30, 21) @[ImmGen.scala 19:94]
    node imm_j_lo_hi = cat(_imm_j_T_5, _imm_j_T_6) @[Cat.scala 31:58]
    node imm_j_lo = cat(imm_j_lo_hi, UInt<1>("h0")) @[Cat.scala 31:58]
    node imm_j_hi_hi = cat(_imm_j_T_2, _imm_j_T_3) @[Cat.scala 31:58]
    node imm_j_hi = cat(imm_j_hi_hi, _imm_j_T_4) @[Cat.scala 31:58]
    node imm_j = cat(imm_j_hi, imm_j_lo) @[Cat.scala 31:58]
    node _imm_shamt_T = mux(UInt<1>("h0"), UInt<27>("h7ffffff"), UInt<27>("h0")) @[Bitwise.scala 74:12]
    node _imm_shamt_T_1 = bits(io.inst, 24, 20) @[ImmGen.scala 22:47]
    node imm_shamt = cat(_imm_shamt_T, _imm_shamt_T_1) @[Cat.scala 31:58]
    node _imm_T = eq(UInt<1>("h0"), io.ctrlImmsrc) @[Mux.scala 81:61]
    node _imm_T_1 = mux(_imm_T, imm_i, UInt<32>("h0")) @[Mux.scala 81:58]
    node _imm_T_2 = eq(UInt<1>("h1"), io.ctrlImmsrc) @[Mux.scala 81:61]
    node _imm_T_3 = mux(_imm_T_2, imm_s, _imm_T_1) @[Mux.scala 81:58]
    node _imm_T_4 = eq(UInt<2>("h2"), io.ctrlImmsrc) @[Mux.scala 81:61]
    node _imm_T_5 = mux(_imm_T_4, imm_b, _imm_T_3) @[Mux.scala 81:58]
    node _imm_T_6 = eq(UInt<2>("h3"), io.ctrlImmsrc) @[Mux.scala 81:61]
    node _imm_T_7 = mux(_imm_T_6, imm_u, _imm_T_5) @[Mux.scala 81:58]
    node _imm_T_8 = eq(UInt<3>("h4"), io.ctrlImmsrc) @[Mux.scala 81:61]
    node _imm_T_9 = mux(_imm_T_8, imm_j, _imm_T_7) @[Mux.scala 81:58]
    node _imm_T_10 = eq(UInt<3>("h5"), io.ctrlImmsrc) @[Mux.scala 81:61]
    node imm = mux(_imm_T_10, imm_shamt, _imm_T_9) @[Mux.scala 81:58]
    io.imm <= imm @[ImmGen.scala 32:12]

  module Top :
    input clock : Clock
    input reset : UInt<1>
    output io : { addr : UInt<32>, inst : UInt<32>, bundleCtrl : { ctrlJump : UInt<1>, ctrlBranch : UInt<1>, ctrlRegWrite : UInt<1>, ctrlLoad : UInt<1>, ctrlStore : UInt<1>, ctrlALUSrc : UInt<1>, ctrlJAL : UInt<1>, ctrlOP : UInt<4>, ctrlSigned : UInt<1>, ctrlLSType : UInt<2>, ctrlImmsrc : UInt<3>}, resultALU : UInt<32>, rs1 : UInt<32>, rs2 : UInt<32>, imm : UInt<32>, resultBranch : UInt<1>, result : UInt<32>}

    inst pcReg of PCReg @[Top.scala 25:23]
    pcReg.clock <= clock
    pcReg.reset <= reset
    inst memInst of MemInst @[Top.scala 26:25]
    memInst.clock <= clock
    memInst.reset <= reset
    inst decoder of Decoder @[Top.scala 27:25]
    decoder.clock <= clock
    decoder.reset <= reset
    inst registers of Registers @[Top.scala 28:27]
    registers.clock <= clock
    registers.reset <= reset
    inst alu of Alu @[Top.scala 29:21]
    alu.clock <= clock
    alu.reset <= reset
    inst memData of MemData @[Top.scala 30:25]
    memData.clock <= clock
    memData.reset <= reset
    inst controller of Controller @[Top.scala 31:28]
    controller.clock <= clock
    controller.reset <= reset
    inst immGen of ImmGen @[Top.scala 32:24]
    immGen.clock <= clock
    immGen.reset <= reset
    pcReg.io.resultBranch <= alu.io.resultBranch @[Top.scala 35:27]
    pcReg.io.addrTarget <= memData.io.result @[Top.scala 36:25]
    pcReg.io.ctrlBranch <= controller.io.bundleControlOut.ctrlBranch @[Top.scala 37:25]
    pcReg.io.ctrlJump <= controller.io.bundleControlOut.ctrlJump @[Top.scala 38:23]
    memInst.io.addr <= pcReg.io.addrOut @[Top.scala 41:21]
    decoder.io.inst <= memInst.io.inst @[Top.scala 44:21]
    immGen.io.inst <= memInst.io.inst @[Top.scala 46:20]
    immGen.io.ctrlImmsrc <= controller.io.bundleControlOut.ctrlImmsrc @[Top.scala 47:26]
    registers.io.bundleReg <= decoder.io.bundleReg @[Top.scala 49:28]
    registers.io.ctrlRegWrite <= controller.io.bundleControlOut.ctrlRegWrite @[Top.scala 50:31]
    registers.io.ctrlJump <= controller.io.bundleControlOut.ctrlJump @[Top.scala 51:27]
    registers.io.dataWrite <= memData.io.result @[Top.scala 52:28]
    registers.io.pc <= pcReg.io.addrOut @[Top.scala 53:21]
    alu.io.bundleAluControl.ctrlBranch <= controller.io.bundleAluControl.ctrlBranch @[Top.scala 56:29]
    alu.io.bundleAluControl.ctrlSigned <= controller.io.bundleAluControl.ctrlSigned @[Top.scala 56:29]
    alu.io.bundleAluControl.ctrlOP <= controller.io.bundleAluControl.ctrlOP @[Top.scala 56:29]
    alu.io.bundleAluControl.ctrlJAL <= controller.io.bundleAluControl.ctrlJAL @[Top.scala 56:29]
    alu.io.bundleAluControl.ctrlALUSrc <= controller.io.bundleAluControl.ctrlALUSrc @[Top.scala 56:29]
    alu.io.dataRead1 <= registers.io.dataRead1 @[Top.scala 57:22]
    alu.io.dataRead2 <= registers.io.dataRead2 @[Top.scala 58:22]
    alu.io.imm <= immGen.io.imm @[Top.scala 59:16]
    alu.io.pc <= pcReg.io.addrOut @[Top.scala 60:15]
    memData.io.bundleMemDataControl.ctrlLSType <= controller.io.bundleMemDataControl.ctrlLSType @[Top.scala 63:37]
    memData.io.bundleMemDataControl.ctrlSigned <= controller.io.bundleMemDataControl.ctrlSigned @[Top.scala 63:37]
    memData.io.bundleMemDataControl.ctrlStore <= controller.io.bundleMemDataControl.ctrlStore @[Top.scala 63:37]
    memData.io.bundleMemDataControl.ctrlLoad <= controller.io.bundleMemDataControl.ctrlLoad @[Top.scala 63:37]
    memData.io.dataStore <= registers.io.dataRead2 @[Top.scala 64:26]
    memData.io.resultALU <= alu.io.resultAlu @[Top.scala 65:26]
    controller.io.bundleControlIn <= decoder.io.bundleCtrl @[Top.scala 68:35]
    io.addr <= pcReg.io.addrOut @[Top.scala 71:13]
    io.bundleCtrl <= decoder.io.bundleCtrl @[Top.scala 72:19]
    io.inst <= memInst.io.inst @[Top.scala 73:13]
    io.result <= memData.io.result @[Top.scala 74:15]
    io.resultALU <= alu.io.resultAlu @[Top.scala 75:18]
    io.resultBranch <= alu.io.resultBranch @[Top.scala 76:21]
    io.imm <= immGen.io.imm @[Top.scala 77:12]
    io.rs1 <= registers.io.dataRead1 @[Top.scala 78:12]
    io.rs2 <= registers.io.dataRead2 @[Top.scala 79:12]


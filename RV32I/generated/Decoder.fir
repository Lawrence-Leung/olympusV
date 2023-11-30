circuit Decoder :
  module Decoder :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip inst : UInt<32>, bundleCtrl : { ctrlJump : UInt<1>, ctrlBranch : UInt<1>, ctrlRegWrite : UInt<1>, ctrlLoad : UInt<1>, ctrlStore : UInt<1>, ctrlALUSrc : UInt<1>, ctrlJAL : UInt<1>, ctrlOP : UInt<4>, ctrlSigned : UInt<1>, ctrlLSType : UInt<2>}, bundleReg : { rs1 : UInt<5>, rs2 : UInt<5>, rd : UInt<5>}, imm : UInt<32>}

    node _io_bundleReg_rs1_T = bits(io.inst, 19, 15) @[Decoder.scala 21:32]
    io.bundleReg.rs1 <= _io_bundleReg_rs1_T @[Decoder.scala 21:22]
    node _io_bundleReg_rs2_T = bits(io.inst, 24, 20) @[Decoder.scala 22:32]
    io.bundleReg.rs2 <= _io_bundleReg_rs2_T @[Decoder.scala 22:22]
    node _io_bundleReg_rd_T = bits(io.inst, 11, 7) @[Decoder.scala 23:31]
    io.bundleReg.rd <= _io_bundleReg_rd_T @[Decoder.scala 23:21]
    node _imm_i_T = bits(io.inst, 31, 31) @[Decoder.scala 26:35]
    node _imm_i_T_1 = bits(_imm_i_T, 0, 0) @[Bitwise.scala 74:15]
    node _imm_i_T_2 = mux(_imm_i_T_1, UInt<20>("hfffff"), UInt<20>("h0")) @[Bitwise.scala 74:12]
    node _imm_i_T_3 = bits(io.inst, 31, 20) @[Decoder.scala 26:48]
    node imm_i = cat(_imm_i_T_2, _imm_i_T_3) @[Cat.scala 31:58]
    node _imm_s_T = bits(io.inst, 31, 31) @[Decoder.scala 27:35]
    node _imm_s_T_1 = bits(_imm_s_T, 0, 0) @[Bitwise.scala 74:15]
    node _imm_s_T_2 = mux(_imm_s_T_1, UInt<20>("hfffff"), UInt<20>("h0")) @[Bitwise.scala 74:12]
    node _imm_s_T_3 = bits(io.inst, 31, 25) @[Decoder.scala 27:48]
    node _imm_s_T_4 = bits(io.inst, 11, 7) @[Decoder.scala 27:63]
    node imm_s_hi = cat(_imm_s_T_2, _imm_s_T_3) @[Cat.scala 31:58]
    node imm_s = cat(imm_s_hi, _imm_s_T_4) @[Cat.scala 31:58]
    node _imm_b_T = bits(io.inst, 31, 31) @[Decoder.scala 28:35]
    node _imm_b_T_1 = bits(_imm_b_T, 0, 0) @[Bitwise.scala 74:15]
    node _imm_b_T_2 = mux(_imm_b_T_1, UInt<20>("hfffff"), UInt<20>("h0")) @[Bitwise.scala 74:12]
    node _imm_b_T_3 = bits(io.inst, 31, 31) @[Decoder.scala 28:48]
    node _imm_b_T_4 = bits(io.inst, 7, 7) @[Decoder.scala 28:60]
    node _imm_b_T_5 = bits(io.inst, 30, 25) @[Decoder.scala 28:71]
    node _imm_b_T_6 = bits(io.inst, 11, 8) @[Decoder.scala 28:86]
    node imm_b_lo_hi = cat(_imm_b_T_5, _imm_b_T_6) @[Cat.scala 31:58]
    node imm_b_lo = cat(imm_b_lo_hi, UInt<1>("h0")) @[Cat.scala 31:58]
    node imm_b_hi_hi = cat(_imm_b_T_2, _imm_b_T_3) @[Cat.scala 31:58]
    node imm_b_hi = cat(imm_b_hi_hi, _imm_b_T_4) @[Cat.scala 31:58]
    node imm_b = cat(imm_b_hi, imm_b_lo) @[Cat.scala 31:58]
    node _imm_u_T = bits(io.inst, 31, 12) @[Decoder.scala 29:27]
    node _imm_u_T_1 = mux(UInt<1>("h0"), UInt<20>("hfffff"), UInt<20>("h0")) @[Bitwise.scala 74:12]
    node imm_u = cat(_imm_u_T, _imm_u_T_1) @[Cat.scala 31:58]
    node _imm_j_T = bits(io.inst, 31, 31) @[Decoder.scala 30:37]
    node _imm_j_T_1 = bits(_imm_j_T, 0, 0) @[Bitwise.scala 74:15]
    node _imm_j_T_2 = mux(_imm_j_T_1, UInt<12>("hfff"), UInt<12>("h0")) @[Bitwise.scala 74:12]
    node _imm_j_T_3 = bits(io.inst, 31, 31) @[Decoder.scala 30:51]
    node _imm_j_T_4 = bits(io.inst, 19, 12) @[Decoder.scala 30:64]
    node _imm_j_T_5 = bits(io.inst, 20, 20) @[Decoder.scala 30:81]
    node _imm_j_T_6 = bits(io.inst, 30, 21) @[Decoder.scala 30:94]
    node imm_j_lo_hi = cat(_imm_j_T_5, _imm_j_T_6) @[Cat.scala 31:58]
    node imm_j_lo = cat(imm_j_lo_hi, UInt<1>("h0")) @[Cat.scala 31:58]
    node imm_j_hi_hi = cat(_imm_j_T_2, _imm_j_T_3) @[Cat.scala 31:58]
    node imm_j_hi = cat(imm_j_hi_hi, _imm_j_T_4) @[Cat.scala 31:58]
    node imm_j = cat(imm_j_hi, imm_j_lo) @[Cat.scala 31:58]
    node _imm_shamt_T = mux(UInt<1>("h0"), UInt<27>("h7ffffff"), UInt<27>("h0")) @[Bitwise.scala 74:12]
    node _imm_shamt_T_1 = bits(io.inst, 24, 20) @[Decoder.scala 33:47]
    node imm_shamt = cat(_imm_shamt_T, _imm_shamt_T_1) @[Cat.scala 31:58]
    wire imm : UInt<32>
    imm <= UInt<32>("h0")
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
    node _T = bits(io.inst, 6, 2) @[Decoder.scala 50:19]
    node _T_1 = eq(UInt<4>("hd"), _T) @[Decoder.scala 50:25]
    node _T_2 = eq(UInt<3>("h5"), _T) @[Decoder.scala 50:25]
    node _T_3 = or(_T_1, _T_2) @[Decoder.scala 50:25]
    when _T_3 : @[Decoder.scala 50:25]
      ctrlALUSrc <= UInt<1>("h1") @[Decoder.scala 53:24]
      ctrlOP <= UInt<1>("h1") @[Decoder.scala 54:20]
      imm <= imm_u @[Decoder.scala 55:16]
    else :
      node _T_4 = eq(UInt<5>("h1b"), _T) @[Decoder.scala 50:25]
      when _T_4 : @[Decoder.scala 50:25]
        ctrlJAL <= UInt<1>("h1") @[Decoder.scala 59:21]
        ctrlALUSrc <= UInt<1>("h1") @[Decoder.scala 60:24]
        ctrlJump <= UInt<1>("h1") @[Decoder.scala 61:22]
        ctrlOP <= UInt<1>("h1") @[Decoder.scala 62:20]
        imm <= imm_j @[Decoder.scala 63:17]
      else :
        node _T_5 = eq(UInt<5>("h19"), _T) @[Decoder.scala 50:25]
        node _T_6 = eq(UInt<1>("h0"), _T) @[Decoder.scala 50:25]
        node _T_7 = eq(UInt<3>("h4"), _T) @[Decoder.scala 50:25]
        node _T_8 = or(_T_5, _T_6) @[Decoder.scala 50:25]
        node _T_9 = or(_T_8, _T_7) @[Decoder.scala 50:25]
        when _T_9 : @[Decoder.scala 50:25]
          ctrlALUSrc <= UInt<1>("h1") @[Decoder.scala 69:24]
          node _T_10 = bits(io.inst, 6, 2) @[Decoder.scala 71:25]
          node _T_11 = eq(_T_10, UInt<5>("h19")) @[Decoder.scala 71:30]
          when _T_11 : @[Decoder.scala 71:44]
            ctrlJump <= UInt<1>("h1") @[Decoder.scala 72:26]
            ctrlOP <= UInt<1>("h1") @[Decoder.scala 73:24]
            imm <= imm_i @[Decoder.scala 74:20]
          else :
            node _T_12 = bits(io.inst, 6, 2) @[Decoder.scala 75:31]
            node _T_13 = eq(_T_12, UInt<1>("h0")) @[Decoder.scala 75:36]
            when _T_13 : @[Decoder.scala 75:50]
              ctrlLoad <= UInt<1>("h1") @[Decoder.scala 76:26]
              ctrlOP <= UInt<1>("h1") @[Decoder.scala 77:24]
              node _T_14 = bits(io.inst, 14, 12) @[Decoder.scala 78:29]
              node _T_15 = eq(_T_14, UInt<3>("h5")) @[Decoder.scala 78:36]
              node _T_16 = bits(io.inst, 14, 12) @[Decoder.scala 78:57]
              node _T_17 = eq(_T_16, UInt<3>("h4")) @[Decoder.scala 78:64]
              node _T_18 = or(_T_15, _T_17) @[Decoder.scala 78:48]
              when _T_18 : @[Decoder.scala 78:76]
                ctrlSigned <= UInt<1>("h0") @[Decoder.scala 79:31]
              node _T_19 = bits(io.inst, 14, 12) @[Decoder.scala 81:29]
              node _T_20 = eq(_T_19, UInt<1>("h0")) @[Decoder.scala 81:36]
              node _T_21 = bits(io.inst, 14, 12) @[Decoder.scala 81:57]
              node _T_22 = eq(_T_21, UInt<3>("h4")) @[Decoder.scala 81:64]
              node _T_23 = or(_T_20, _T_22) @[Decoder.scala 81:48]
              when _T_23 : @[Decoder.scala 81:76]
                ctrlLSType <= UInt<1>("h0") @[Decoder.scala 82:32]
              node _T_24 = bits(io.inst, 14, 12) @[Decoder.scala 84:29]
              node _T_25 = eq(_T_24, UInt<1>("h1")) @[Decoder.scala 84:36]
              node _T_26 = bits(io.inst, 14, 12) @[Decoder.scala 84:57]
              node _T_27 = eq(_T_26, UInt<3>("h5")) @[Decoder.scala 84:64]
              node _T_28 = or(_T_25, _T_27) @[Decoder.scala 84:48]
              when _T_28 : @[Decoder.scala 84:76]
                ctrlLSType <= UInt<1>("h1") @[Decoder.scala 85:32]
            else :
              node _T_29 = bits(io.inst, 14, 12) @[Decoder.scala 89:30]
              node _T_30 = eq(_T_29, UInt<1>("h1")) @[Decoder.scala 89:37]
              node _T_31 = bits(io.inst, 6, 2) @[Decoder.scala 89:59]
              node _T_32 = eq(_T_31, UInt<3>("h4")) @[Decoder.scala 89:64]
              node _T_33 = and(_T_30, _T_32) @[Decoder.scala 89:49]
              node _T_34 = bits(io.inst, 14, 12) @[Decoder.scala 89:88]
              node _T_35 = eq(_T_34, UInt<3>("h5")) @[Decoder.scala 89:95]
              node _T_36 = or(_T_33, _T_35) @[Decoder.scala 89:78]
              when _T_36 : @[Decoder.scala 89:107]
                imm <= imm_shamt @[Decoder.scala 90:21]
                node _T_37 = bits(io.inst, 30, 30) @[Decoder.scala 91:35]
                node _T_38 = bits(io.inst, 14, 12) @[Decoder.scala 91:47]
                node _T_39 = cat(_T_37, _T_38) @[Cat.scala 31:58]
                node _T_40 = eq(UInt<1>("h1"), _T_39) @[Decoder.scala 91:56]
                when _T_40 : @[Decoder.scala 91:56]
                  ctrlOP <= UInt<4>("h8") @[Decoder.scala 93:32]
                else :
                  node _T_41 = eq(UInt<3>("h5"), _T_39) @[Decoder.scala 91:56]
                  when _T_41 : @[Decoder.scala 91:56]
                    ctrlOP <= UInt<4>("h9") @[Decoder.scala 96:32]
                  else :
                    node _T_42 = eq(UInt<4>("hd"), _T_39) @[Decoder.scala 91:56]
                    when _T_42 : @[Decoder.scala 91:56]
                      ctrlOP <= UInt<4>("hb") @[Decoder.scala 99:32]
              else :
                imm <= imm_i @[Decoder.scala 105:21]
                node _T_43 = bits(io.inst, 14, 12) @[Decoder.scala 106:31]
                node _T_44 = eq(UInt<1>("h0"), _T_43) @[Decoder.scala 106:39]
                when _T_44 : @[Decoder.scala 106:39]
                  ctrlOP <= UInt<1>("h1") @[Decoder.scala 109:31]
                else :
                  node _T_45 = eq(UInt<2>("h2"), _T_43) @[Decoder.scala 106:39]
                  when _T_45 : @[Decoder.scala 106:39]
                    ctrlOP <= UInt<4>("he") @[Decoder.scala 113:31]
                  else :
                    node _T_46 = eq(UInt<2>("h3"), _T_43) @[Decoder.scala 106:39]
                    when _T_46 : @[Decoder.scala 106:39]
                      ctrlOP <= UInt<4>("he") @[Decoder.scala 117:31]
                      ctrlSigned <= UInt<1>("h0") @[Decoder.scala 118:36]
                    else :
                      node _T_47 = eq(UInt<3>("h4"), _T_43) @[Decoder.scala 106:39]
                      when _T_47 : @[Decoder.scala 106:39]
                        ctrlOP <= UInt<3>("h7") @[Decoder.scala 122:31]
                      else :
                        node _T_48 = eq(UInt<3>("h6"), _T_43) @[Decoder.scala 106:39]
                        when _T_48 : @[Decoder.scala 106:39]
                          ctrlOP <= UInt<3>("h5") @[Decoder.scala 126:31]
                        else :
                          node _T_49 = eq(UInt<3>("h7"), _T_43) @[Decoder.scala 106:39]
                          when _T_49 : @[Decoder.scala 106:39]
                            ctrlOP <= UInt<3>("h4") @[Decoder.scala 130:31]
        else :
          node _T_50 = eq(UInt<5>("h18"), _T) @[Decoder.scala 50:25]
          when _T_50 : @[Decoder.scala 50:25]
            ctrlBranch <= UInt<1>("h1") @[Decoder.scala 138:24]
            ctrlALUSrc <= UInt<1>("h0") @[Decoder.scala 139:24]
            ctrlRegWrite <= UInt<1>("h0") @[Decoder.scala 140:26]
            imm <= imm_b @[Decoder.scala 141:17]
            node _T_51 = bits(io.inst, 14, 12) @[Decoder.scala 142:27]
            node _T_52 = eq(UInt<1>("h0"), _T_51) @[Decoder.scala 142:35]
            when _T_52 : @[Decoder.scala 142:35]
              ctrlOP <= UInt<4>("hc") @[Decoder.scala 145:28]
            else :
              node _T_53 = eq(UInt<1>("h1"), _T_51) @[Decoder.scala 142:35]
              when _T_53 : @[Decoder.scala 142:35]
                ctrlOP <= UInt<4>("hd") @[Decoder.scala 149:27]
              else :
                node _T_54 = eq(UInt<3>("h4"), _T_51) @[Decoder.scala 142:35]
                when _T_54 : @[Decoder.scala 142:35]
                  ctrlOP <= UInt<4>("he") @[Decoder.scala 153:27]
                else :
                  node _T_55 = eq(UInt<3>("h5"), _T_51) @[Decoder.scala 142:35]
                  when _T_55 : @[Decoder.scala 142:35]
                    ctrlOP <= UInt<4>("hf") @[Decoder.scala 157:27]
                  else :
                    node _T_56 = eq(UInt<3>("h6"), _T_51) @[Decoder.scala 142:35]
                    when _T_56 : @[Decoder.scala 142:35]
                      ctrlOP <= UInt<4>("he") @[Decoder.scala 161:27]
                      ctrlSigned <= UInt<1>("h0") @[Decoder.scala 162:32]
                    else :
                      node _T_57 = eq(UInt<3>("h7"), _T_51) @[Decoder.scala 142:35]
                      when _T_57 : @[Decoder.scala 142:35]
                        ctrlOP <= UInt<4>("hf") @[Decoder.scala 166:27]
                        ctrlSigned <= UInt<1>("h0") @[Decoder.scala 167:32]
          else :
            node _T_58 = eq(UInt<4>("h8"), _T) @[Decoder.scala 50:25]
            when _T_58 : @[Decoder.scala 50:25]
              ctrlStore <= UInt<1>("h1") @[Decoder.scala 174:23]
              ctrlALUSrc <= UInt<1>("h1") @[Decoder.scala 175:24]
              ctrlRegWrite <= UInt<1>("h0") @[Decoder.scala 176:26]
              ctrlOP <= UInt<1>("h1") @[Decoder.scala 177:20]
              imm <= imm_s @[Decoder.scala 178:17]
              node _T_59 = bits(io.inst, 14, 12) @[Decoder.scala 179:26]
              node _T_60 = eq(_T_59, UInt<1>("h0")) @[Decoder.scala 179:35]
              when _T_60 : @[Decoder.scala 179:49]
                ctrlLSType <= UInt<1>("h0") @[Decoder.scala 180:28]
              node _T_61 = bits(io.inst, 14, 12) @[Decoder.scala 182:26]
              node _T_62 = eq(_T_61, UInt<1>("h1")) @[Decoder.scala 182:35]
              when _T_62 : @[Decoder.scala 182:49]
                ctrlLSType <= UInt<1>("h1") @[Decoder.scala 183:28]
            else :
              node _T_63 = eq(UInt<4>("hc"), _T) @[Decoder.scala 50:25]
              when _T_63 : @[Decoder.scala 50:25]
                ctrlRegWrite <= UInt<1>("h1") @[Decoder.scala 188:26]
                ctrlALUSrc <= UInt<1>("h0") @[Decoder.scala 189:24]
                node _T_64 = bits(io.inst, 14, 12) @[Decoder.scala 190:27]
                node _T_65 = eq(UInt<1>("h0"), _T_64) @[Decoder.scala 190:35]
                when _T_65 : @[Decoder.scala 190:35]
                  node _T_66 = bits(io.inst, 30, 30) @[Decoder.scala 192:33]
                  when _T_66 : @[Decoder.scala 192:38]
                    ctrlOP <= UInt<2>("h2") @[Decoder.scala 193:32]
                  else :
                    ctrlOP <= UInt<1>("h1") @[Decoder.scala 195:32]
                else :
                  node _T_67 = eq(UInt<1>("h1"), _T_64) @[Decoder.scala 190:35]
                  when _T_67 : @[Decoder.scala 190:35]
                    ctrlOP <= UInt<4>("h8") @[Decoder.scala 200:28]
                  else :
                    node _T_68 = eq(UInt<2>("h2"), _T_64) @[Decoder.scala 190:35]
                    when _T_68 : @[Decoder.scala 190:35]
                      ctrlOP <= UInt<4>("he") @[Decoder.scala 204:28]
                    else :
                      node _T_69 = eq(UInt<2>("h3"), _T_64) @[Decoder.scala 190:35]
                      when _T_69 : @[Decoder.scala 190:35]
                        ctrlOP <= UInt<4>("he") @[Decoder.scala 208:28]
                        ctrlSigned <= UInt<1>("h0") @[Decoder.scala 209:32]
                      else :
                        node _T_70 = eq(UInt<3>("h4"), _T_64) @[Decoder.scala 190:35]
                        when _T_70 : @[Decoder.scala 190:35]
                          ctrlOP <= UInt<3>("h7") @[Decoder.scala 213:28]
                        else :
                          node _T_71 = eq(UInt<3>("h5"), _T_64) @[Decoder.scala 190:35]
                          when _T_71 : @[Decoder.scala 190:35]
                            node _T_72 = bits(io.inst, 30, 30) @[Decoder.scala 216:33]
                            when _T_72 : @[Decoder.scala 216:38]
                              ctrlOP <= UInt<4>("hb") @[Decoder.scala 217:32]
                            else :
                              ctrlOP <= UInt<4>("h9") @[Decoder.scala 219:32]
                          else :
                            node _T_73 = eq(UInt<3>("h6"), _T_64) @[Decoder.scala 190:35]
                            when _T_73 : @[Decoder.scala 190:35]
                              ctrlOP <= UInt<3>("h5") @[Decoder.scala 223:28]
                            else :
                              node _T_74 = eq(UInt<3>("h7"), _T_64) @[Decoder.scala 190:35]
                              when _T_74 : @[Decoder.scala 190:35]
                                ctrlOP <= UInt<3>("h4") @[Decoder.scala 226:28]
    io.bundleCtrl.ctrlALUSrc <= ctrlALUSrc @[Decoder.scala 233:30]
    io.bundleCtrl.ctrlBranch <= ctrlBranch @[Decoder.scala 234:30]
    io.bundleCtrl.ctrlJAL <= ctrlJAL @[Decoder.scala 235:27]
    io.bundleCtrl.ctrlJump <= ctrlJump @[Decoder.scala 236:28]
    io.bundleCtrl.ctrlLoad <= ctrlLoad @[Decoder.scala 237:28]
    io.bundleCtrl.ctrlOP <= ctrlOP @[Decoder.scala 238:26]
    io.bundleCtrl.ctrlRegWrite <= ctrlRegWrite @[Decoder.scala 239:32]
    io.bundleCtrl.ctrlSigned <= ctrlSigned @[Decoder.scala 240:30]
    io.bundleCtrl.ctrlStore <= ctrlStore @[Decoder.scala 241:29]
    io.bundleCtrl.ctrlLSType <= ctrlLSType @[Decoder.scala 242:30]
    io.imm <= imm @[Decoder.scala 243:12]


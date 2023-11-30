module ALU(
  input         clock,
  input         reset,
  input         io_bundleAluControl_ctrlALUSrc,
  input         io_bundleAluControl_ctrlJAL,
  input  [3:0]  io_bundleAluControl_ctrlOP,
  input         io_bundleAluControl_ctrlSigned,
  input         io_bundleAluControl_ctrlBranch,
  input  [31:0] io_dataRead1,
  input  [31:0] io_dataRead2,
  input  [31:0] io_imm,
  input  [31:0] io_pc,
  output        io_resultBranch,
  output [31:0] io_resultAlu
);
  wire [31:0] oprand1 = io_bundleAluControl_ctrlJAL ? io_pc : io_dataRead1; // @[ALU.scala 36:19]
  wire [31:0] oprand2 = io_bundleAluControl_ctrlALUSrc ? io_imm : io_dataRead2; // @[ALU.scala 38:19]
  wire [32:0] _resultAlu_T = oprand1 + oprand2; // @[ALU.scala 47:34]
  wire [32:0] _resultAlu_T_1 = oprand1 - oprand2; // @[ALU.scala 50:34]
  wire [31:0] _resultAlu_T_3 = oprand1 & oprand2; // @[ALU.scala 53:34]
  wire [31:0] _resultAlu_T_4 = oprand1 | oprand2; // @[ALU.scala 56:34]
  wire [31:0] _resultAlu_T_5 = oprand1 ^ oprand2; // @[ALU.scala 59:34]
  wire [62:0] _GEN_1 = {{31'd0}, oprand1}; // @[ALU.scala 62:34]
  wire [62:0] _resultAlu_T_7 = _GEN_1 << oprand2[4:0]; // @[ALU.scala 62:34]
  wire [31:0] _resultAlu_T_9 = oprand1 >> oprand2[4:0]; // @[ALU.scala 65:34]
  wire [31:0] _resultAlu_T_10 = io_bundleAluControl_ctrlJAL ? io_pc : io_dataRead1; // @[ALU.scala 68:35]
  wire [31:0] _resultAlu_T_13 = $signed(_resultAlu_T_10) >>> oprand2[4:0]; // @[ALU.scala 68:60]
  wire [31:0] _resultBranch_T_1 = io_bundleAluControl_ctrlALUSrc ? io_imm : io_dataRead2; // @[ALU.scala 71:56]
  wire [32:0] _resultAlu_T_14 = io_pc + io_imm; // @[ALU.scala 72:32]
  wire  _GEN_0 = io_bundleAluControl_ctrlSigned ? $signed(_resultAlu_T_10) < $signed(_resultBranch_T_1) : oprand1 <
    oprand2; // @[ALU.scala 80:53 81:34 83:34]
  wire  _GEN_2 = io_bundleAluControl_ctrlBranch & _GEN_0; // @[ALU.scala 79:49]
  wire [32:0] _GEN_3 = io_bundleAluControl_ctrlBranch ? _resultAlu_T_14 : {{32'd0}, _GEN_0}; // @[ALU.scala 79:49 85:27]
  wire  _GEN_4 = io_bundleAluControl_ctrlSigned ? $signed(_resultAlu_T_10) >= $signed(_resultBranch_T_1) : oprand1 >=
    oprand2; // @[ALU.scala 95:49 96:34 98:34]
  wire [32:0] _GEN_6 = 4'hf == io_bundleAluControl_ctrlOP ? _resultAlu_T_14 : 33'h0; // @[ALU.scala 100:23 40:39]
  wire  _GEN_7 = 4'he == io_bundleAluControl_ctrlOP ? _GEN_2 : 4'hf == io_bundleAluControl_ctrlOP & _GEN_4; // @[ALU.scala 40:39]
  wire [32:0] _GEN_8 = 4'he == io_bundleAluControl_ctrlOP ? _GEN_3 : _GEN_6; // @[ALU.scala 40:39]
  wire  _GEN_9 = 4'hd == io_bundleAluControl_ctrlOP ? $signed(_resultAlu_T_10) != $signed(_resultBranch_T_1) : _GEN_7; // @[ALU.scala 40:39 75:26]
  wire [32:0] _GEN_10 = 4'hd == io_bundleAluControl_ctrlOP ? _resultAlu_T_14 : _GEN_8; // @[ALU.scala 40:39 76:23]
  wire  _GEN_11 = 4'hc == io_bundleAluControl_ctrlOP ? $signed(_resultAlu_T_10) == $signed(_resultBranch_T_1) : _GEN_9; // @[ALU.scala 40:39 71:26]
  wire [32:0] _GEN_12 = 4'hc == io_bundleAluControl_ctrlOP ? _resultAlu_T_14 : _GEN_10; // @[ALU.scala 40:39 72:23]
  wire [32:0] _GEN_13 = 4'hb == io_bundleAluControl_ctrlOP ? {{1'd0}, _resultAlu_T_13} : _GEN_12; // @[ALU.scala 40:39 68:23]
  wire  _GEN_14 = 4'hb == io_bundleAluControl_ctrlOP ? 1'h0 : _GEN_11; // @[ALU.scala 40:39]
  wire [32:0] _GEN_15 = 4'h9 == io_bundleAluControl_ctrlOP ? {{1'd0}, _resultAlu_T_9} : _GEN_13; // @[ALU.scala 40:39 65:23]
  wire  _GEN_16 = 4'h9 == io_bundleAluControl_ctrlOP ? 1'h0 : _GEN_14; // @[ALU.scala 40:39]
  wire [62:0] _GEN_17 = 4'h8 == io_bundleAluControl_ctrlOP ? _resultAlu_T_7 : {{30'd0}, _GEN_15}; // @[ALU.scala 40:39 62:23]
  wire  _GEN_18 = 4'h8 == io_bundleAluControl_ctrlOP ? 1'h0 : _GEN_16; // @[ALU.scala 40:39]
  wire [62:0] _GEN_19 = 4'h7 == io_bundleAluControl_ctrlOP ? {{31'd0}, _resultAlu_T_5} : _GEN_17; // @[ALU.scala 40:39 59:23]
  wire  _GEN_20 = 4'h7 == io_bundleAluControl_ctrlOP ? 1'h0 : _GEN_18; // @[ALU.scala 40:39]
  wire [62:0] _GEN_21 = 4'h5 == io_bundleAluControl_ctrlOP ? {{31'd0}, _resultAlu_T_4} : _GEN_19; // @[ALU.scala 40:39 56:23]
  wire  _GEN_22 = 4'h5 == io_bundleAluControl_ctrlOP ? 1'h0 : _GEN_20; // @[ALU.scala 40:39]
  wire [62:0] _GEN_23 = 4'h4 == io_bundleAluControl_ctrlOP ? {{31'd0}, _resultAlu_T_3} : _GEN_21; // @[ALU.scala 40:39 53:23]
  wire  _GEN_24 = 4'h4 == io_bundleAluControl_ctrlOP ? 1'h0 : _GEN_22; // @[ALU.scala 40:39]
  wire [62:0] _GEN_25 = 4'h2 == io_bundleAluControl_ctrlOP ? {{30'd0}, _resultAlu_T_1} : _GEN_23; // @[ALU.scala 40:39 50:23]
  wire  _GEN_26 = 4'h2 == io_bundleAluControl_ctrlOP ? 1'h0 : _GEN_24; // @[ALU.scala 40:39]
  wire [62:0] _GEN_27 = 4'h1 == io_bundleAluControl_ctrlOP ? {{30'd0}, _resultAlu_T} : _GEN_25; // @[ALU.scala 40:39 47:23]
  wire  _GEN_28 = 4'h1 == io_bundleAluControl_ctrlOP ? 1'h0 : _GEN_26; // @[ALU.scala 40:39]
  wire [62:0] _GEN_29 = 4'h0 == io_bundleAluControl_ctrlOP ? 63'h0 : _GEN_27; // @[ALU.scala 40:39 42:22]
  assign io_resultBranch = 4'h0 == io_bundleAluControl_ctrlOP ? 1'h0 : _GEN_28; // @[ALU.scala 40:39 43:25]
  assign io_resultAlu = _GEN_29[31:0]; // @[ALU.scala 103:18]
endmodule

module Registers(
  input         clock,
  input         reset,
  input         io_ctrlRegWrite,
  input  [31:0] io_datawrite,
  input  [4:0]  io_bundleReg_rs1,
  input  [4:0]  io_bundleReg_rs2,
  input  [4:0]  io_bundleReg_rd,
  output [31:0] io_dataRead1,
  output [31:0] io_dataRead2
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] regs_0; // @[Registers.scala 16:18]
  reg [31:0] regs_1; // @[Registers.scala 16:18]
  reg [31:0] regs_2; // @[Registers.scala 16:18]
  reg [31:0] regs_3; // @[Registers.scala 16:18]
  reg [31:0] regs_4; // @[Registers.scala 16:18]
  reg [31:0] regs_5; // @[Registers.scala 16:18]
  reg [31:0] regs_6; // @[Registers.scala 16:18]
  reg [31:0] regs_7; // @[Registers.scala 16:18]
  reg [31:0] regs_8; // @[Registers.scala 16:18]
  reg [31:0] regs_9; // @[Registers.scala 16:18]
  reg [31:0] regs_10; // @[Registers.scala 16:18]
  reg [31:0] regs_11; // @[Registers.scala 16:18]
  reg [31:0] regs_12; // @[Registers.scala 16:18]
  reg [31:0] regs_13; // @[Registers.scala 16:18]
  reg [31:0] regs_14; // @[Registers.scala 16:18]
  reg [31:0] regs_15; // @[Registers.scala 16:18]
  reg [31:0] regs_16; // @[Registers.scala 16:18]
  reg [31:0] regs_17; // @[Registers.scala 16:18]
  reg [31:0] regs_18; // @[Registers.scala 16:18]
  reg [31:0] regs_19; // @[Registers.scala 16:18]
  reg [31:0] regs_20; // @[Registers.scala 16:18]
  reg [31:0] regs_21; // @[Registers.scala 16:18]
  reg [31:0] regs_22; // @[Registers.scala 16:18]
  reg [31:0] regs_23; // @[Registers.scala 16:18]
  reg [31:0] regs_24; // @[Registers.scala 16:18]
  reg [31:0] regs_25; // @[Registers.scala 16:18]
  reg [31:0] regs_26; // @[Registers.scala 16:18]
  reg [31:0] regs_27; // @[Registers.scala 16:18]
  reg [31:0] regs_28; // @[Registers.scala 16:18]
  reg [31:0] regs_29; // @[Registers.scala 16:18]
  reg [31:0] regs_30; // @[Registers.scala 16:18]
  reg [31:0] regs_31; // @[Registers.scala 16:18]
  wire [31:0] _GEN_1 = 5'h1 == io_bundleReg_rs1 ? regs_1 : regs_0; // @[Registers.scala 27:{18,18}]
  wire [31:0] _GEN_2 = 5'h2 == io_bundleReg_rs1 ? regs_2 : _GEN_1; // @[Registers.scala 27:{18,18}]
  wire [31:0] _GEN_3 = 5'h3 == io_bundleReg_rs1 ? regs_3 : _GEN_2; // @[Registers.scala 27:{18,18}]
  wire [31:0] _GEN_4 = 5'h4 == io_bundleReg_rs1 ? regs_4 : _GEN_3; // @[Registers.scala 27:{18,18}]
  wire [31:0] _GEN_5 = 5'h5 == io_bundleReg_rs1 ? regs_5 : _GEN_4; // @[Registers.scala 27:{18,18}]
  wire [31:0] _GEN_6 = 5'h6 == io_bundleReg_rs1 ? regs_6 : _GEN_5; // @[Registers.scala 27:{18,18}]
  wire [31:0] _GEN_7 = 5'h7 == io_bundleReg_rs1 ? regs_7 : _GEN_6; // @[Registers.scala 27:{18,18}]
  wire [31:0] _GEN_8 = 5'h8 == io_bundleReg_rs1 ? regs_8 : _GEN_7; // @[Registers.scala 27:{18,18}]
  wire [31:0] _GEN_9 = 5'h9 == io_bundleReg_rs1 ? regs_9 : _GEN_8; // @[Registers.scala 27:{18,18}]
  wire [31:0] _GEN_10 = 5'ha == io_bundleReg_rs1 ? regs_10 : _GEN_9; // @[Registers.scala 27:{18,18}]
  wire [31:0] _GEN_11 = 5'hb == io_bundleReg_rs1 ? regs_11 : _GEN_10; // @[Registers.scala 27:{18,18}]
  wire [31:0] _GEN_12 = 5'hc == io_bundleReg_rs1 ? regs_12 : _GEN_11; // @[Registers.scala 27:{18,18}]
  wire [31:0] _GEN_13 = 5'hd == io_bundleReg_rs1 ? regs_13 : _GEN_12; // @[Registers.scala 27:{18,18}]
  wire [31:0] _GEN_14 = 5'he == io_bundleReg_rs1 ? regs_14 : _GEN_13; // @[Registers.scala 27:{18,18}]
  wire [31:0] _GEN_15 = 5'hf == io_bundleReg_rs1 ? regs_15 : _GEN_14; // @[Registers.scala 27:{18,18}]
  wire [31:0] _GEN_16 = 5'h10 == io_bundleReg_rs1 ? regs_16 : _GEN_15; // @[Registers.scala 27:{18,18}]
  wire [31:0] _GEN_17 = 5'h11 == io_bundleReg_rs1 ? regs_17 : _GEN_16; // @[Registers.scala 27:{18,18}]
  wire [31:0] _GEN_18 = 5'h12 == io_bundleReg_rs1 ? regs_18 : _GEN_17; // @[Registers.scala 27:{18,18}]
  wire [31:0] _GEN_19 = 5'h13 == io_bundleReg_rs1 ? regs_19 : _GEN_18; // @[Registers.scala 27:{18,18}]
  wire [31:0] _GEN_20 = 5'h14 == io_bundleReg_rs1 ? regs_20 : _GEN_19; // @[Registers.scala 27:{18,18}]
  wire [31:0] _GEN_21 = 5'h15 == io_bundleReg_rs1 ? regs_21 : _GEN_20; // @[Registers.scala 27:{18,18}]
  wire [31:0] _GEN_22 = 5'h16 == io_bundleReg_rs1 ? regs_22 : _GEN_21; // @[Registers.scala 27:{18,18}]
  wire [31:0] _GEN_23 = 5'h17 == io_bundleReg_rs1 ? regs_23 : _GEN_22; // @[Registers.scala 27:{18,18}]
  wire [31:0] _GEN_24 = 5'h18 == io_bundleReg_rs1 ? regs_24 : _GEN_23; // @[Registers.scala 27:{18,18}]
  wire [31:0] _GEN_25 = 5'h19 == io_bundleReg_rs1 ? regs_25 : _GEN_24; // @[Registers.scala 27:{18,18}]
  wire [31:0] _GEN_26 = 5'h1a == io_bundleReg_rs1 ? regs_26 : _GEN_25; // @[Registers.scala 27:{18,18}]
  wire [31:0] _GEN_27 = 5'h1b == io_bundleReg_rs1 ? regs_27 : _GEN_26; // @[Registers.scala 27:{18,18}]
  wire [31:0] _GEN_28 = 5'h1c == io_bundleReg_rs1 ? regs_28 : _GEN_27; // @[Registers.scala 27:{18,18}]
  wire [31:0] _GEN_29 = 5'h1d == io_bundleReg_rs1 ? regs_29 : _GEN_28; // @[Registers.scala 27:{18,18}]
  wire [31:0] _GEN_30 = 5'h1e == io_bundleReg_rs1 ? regs_30 : _GEN_29; // @[Registers.scala 27:{18,18}]
  wire [31:0] _GEN_33 = 5'h1 == io_bundleReg_rs2 ? regs_1 : regs_0; // @[Registers.scala 28:{18,18}]
  wire [31:0] _GEN_34 = 5'h2 == io_bundleReg_rs2 ? regs_2 : _GEN_33; // @[Registers.scala 28:{18,18}]
  wire [31:0] _GEN_35 = 5'h3 == io_bundleReg_rs2 ? regs_3 : _GEN_34; // @[Registers.scala 28:{18,18}]
  wire [31:0] _GEN_36 = 5'h4 == io_bundleReg_rs2 ? regs_4 : _GEN_35; // @[Registers.scala 28:{18,18}]
  wire [31:0] _GEN_37 = 5'h5 == io_bundleReg_rs2 ? regs_5 : _GEN_36; // @[Registers.scala 28:{18,18}]
  wire [31:0] _GEN_38 = 5'h6 == io_bundleReg_rs2 ? regs_6 : _GEN_37; // @[Registers.scala 28:{18,18}]
  wire [31:0] _GEN_39 = 5'h7 == io_bundleReg_rs2 ? regs_7 : _GEN_38; // @[Registers.scala 28:{18,18}]
  wire [31:0] _GEN_40 = 5'h8 == io_bundleReg_rs2 ? regs_8 : _GEN_39; // @[Registers.scala 28:{18,18}]
  wire [31:0] _GEN_41 = 5'h9 == io_bundleReg_rs2 ? regs_9 : _GEN_40; // @[Registers.scala 28:{18,18}]
  wire [31:0] _GEN_42 = 5'ha == io_bundleReg_rs2 ? regs_10 : _GEN_41; // @[Registers.scala 28:{18,18}]
  wire [31:0] _GEN_43 = 5'hb == io_bundleReg_rs2 ? regs_11 : _GEN_42; // @[Registers.scala 28:{18,18}]
  wire [31:0] _GEN_44 = 5'hc == io_bundleReg_rs2 ? regs_12 : _GEN_43; // @[Registers.scala 28:{18,18}]
  wire [31:0] _GEN_45 = 5'hd == io_bundleReg_rs2 ? regs_13 : _GEN_44; // @[Registers.scala 28:{18,18}]
  wire [31:0] _GEN_46 = 5'he == io_bundleReg_rs2 ? regs_14 : _GEN_45; // @[Registers.scala 28:{18,18}]
  wire [31:0] _GEN_47 = 5'hf == io_bundleReg_rs2 ? regs_15 : _GEN_46; // @[Registers.scala 28:{18,18}]
  wire [31:0] _GEN_48 = 5'h10 == io_bundleReg_rs2 ? regs_16 : _GEN_47; // @[Registers.scala 28:{18,18}]
  wire [31:0] _GEN_49 = 5'h11 == io_bundleReg_rs2 ? regs_17 : _GEN_48; // @[Registers.scala 28:{18,18}]
  wire [31:0] _GEN_50 = 5'h12 == io_bundleReg_rs2 ? regs_18 : _GEN_49; // @[Registers.scala 28:{18,18}]
  wire [31:0] _GEN_51 = 5'h13 == io_bundleReg_rs2 ? regs_19 : _GEN_50; // @[Registers.scala 28:{18,18}]
  wire [31:0] _GEN_52 = 5'h14 == io_bundleReg_rs2 ? regs_20 : _GEN_51; // @[Registers.scala 28:{18,18}]
  wire [31:0] _GEN_53 = 5'h15 == io_bundleReg_rs2 ? regs_21 : _GEN_52; // @[Registers.scala 28:{18,18}]
  wire [31:0] _GEN_54 = 5'h16 == io_bundleReg_rs2 ? regs_22 : _GEN_53; // @[Registers.scala 28:{18,18}]
  wire [31:0] _GEN_55 = 5'h17 == io_bundleReg_rs2 ? regs_23 : _GEN_54; // @[Registers.scala 28:{18,18}]
  wire [31:0] _GEN_56 = 5'h18 == io_bundleReg_rs2 ? regs_24 : _GEN_55; // @[Registers.scala 28:{18,18}]
  wire [31:0] _GEN_57 = 5'h19 == io_bundleReg_rs2 ? regs_25 : _GEN_56; // @[Registers.scala 28:{18,18}]
  wire [31:0] _GEN_58 = 5'h1a == io_bundleReg_rs2 ? regs_26 : _GEN_57; // @[Registers.scala 28:{18,18}]
  wire [31:0] _GEN_59 = 5'h1b == io_bundleReg_rs2 ? regs_27 : _GEN_58; // @[Registers.scala 28:{18,18}]
  wire [31:0] _GEN_60 = 5'h1c == io_bundleReg_rs2 ? regs_28 : _GEN_59; // @[Registers.scala 28:{18,18}]
  wire [31:0] _GEN_61 = 5'h1d == io_bundleReg_rs2 ? regs_29 : _GEN_60; // @[Registers.scala 28:{18,18}]
  wire [31:0] _GEN_62 = 5'h1e == io_bundleReg_rs2 ? regs_30 : _GEN_61; // @[Registers.scala 28:{18,18}]
  wire  _T_3 = io_ctrlRegWrite & io_bundleReg_rd != 5'h0; // @[Registers.scala 30:26]
  assign io_dataRead1 = 5'h1f == io_bundleReg_rs1 ? regs_31 : _GEN_30; // @[Registers.scala 27:{18,18}]
  assign io_dataRead2 = 5'h1f == io_bundleReg_rs2 ? regs_31 : _GEN_62; // @[Registers.scala 28:{18,18}]
  always @(posedge clock) begin
    if (_T_3) begin // @[Registers.scala 31:5]
      if (5'h0 == io_bundleReg_rd) begin // @[Registers.scala 32:31]
        regs_0 <= io_datawrite; // @[Registers.scala 32:31]
      end
    end
    if (_T_3) begin // @[Registers.scala 31:5]
      if (5'h1 == io_bundleReg_rd) begin // @[Registers.scala 32:31]
        regs_1 <= io_datawrite; // @[Registers.scala 32:31]
      end
    end
    if (_T_3) begin // @[Registers.scala 31:5]
      if (5'h2 == io_bundleReg_rd) begin // @[Registers.scala 32:31]
        regs_2 <= io_datawrite; // @[Registers.scala 32:31]
      end
    end
    if (_T_3) begin // @[Registers.scala 31:5]
      if (5'h3 == io_bundleReg_rd) begin // @[Registers.scala 32:31]
        regs_3 <= io_datawrite; // @[Registers.scala 32:31]
      end
    end
    if (_T_3) begin // @[Registers.scala 31:5]
      if (5'h4 == io_bundleReg_rd) begin // @[Registers.scala 32:31]
        regs_4 <= io_datawrite; // @[Registers.scala 32:31]
      end
    end
    if (_T_3) begin // @[Registers.scala 31:5]
      if (5'h5 == io_bundleReg_rd) begin // @[Registers.scala 32:31]
        regs_5 <= io_datawrite; // @[Registers.scala 32:31]
      end
    end
    if (_T_3) begin // @[Registers.scala 31:5]
      if (5'h6 == io_bundleReg_rd) begin // @[Registers.scala 32:31]
        regs_6 <= io_datawrite; // @[Registers.scala 32:31]
      end
    end
    if (_T_3) begin // @[Registers.scala 31:5]
      if (5'h7 == io_bundleReg_rd) begin // @[Registers.scala 32:31]
        regs_7 <= io_datawrite; // @[Registers.scala 32:31]
      end
    end
    if (_T_3) begin // @[Registers.scala 31:5]
      if (5'h8 == io_bundleReg_rd) begin // @[Registers.scala 32:31]
        regs_8 <= io_datawrite; // @[Registers.scala 32:31]
      end
    end
    if (_T_3) begin // @[Registers.scala 31:5]
      if (5'h9 == io_bundleReg_rd) begin // @[Registers.scala 32:31]
        regs_9 <= io_datawrite; // @[Registers.scala 32:31]
      end
    end
    if (_T_3) begin // @[Registers.scala 31:5]
      if (5'ha == io_bundleReg_rd) begin // @[Registers.scala 32:31]
        regs_10 <= io_datawrite; // @[Registers.scala 32:31]
      end
    end
    if (_T_3) begin // @[Registers.scala 31:5]
      if (5'hb == io_bundleReg_rd) begin // @[Registers.scala 32:31]
        regs_11 <= io_datawrite; // @[Registers.scala 32:31]
      end
    end
    if (_T_3) begin // @[Registers.scala 31:5]
      if (5'hc == io_bundleReg_rd) begin // @[Registers.scala 32:31]
        regs_12 <= io_datawrite; // @[Registers.scala 32:31]
      end
    end
    if (_T_3) begin // @[Registers.scala 31:5]
      if (5'hd == io_bundleReg_rd) begin // @[Registers.scala 32:31]
        regs_13 <= io_datawrite; // @[Registers.scala 32:31]
      end
    end
    if (_T_3) begin // @[Registers.scala 31:5]
      if (5'he == io_bundleReg_rd) begin // @[Registers.scala 32:31]
        regs_14 <= io_datawrite; // @[Registers.scala 32:31]
      end
    end
    if (_T_3) begin // @[Registers.scala 31:5]
      if (5'hf == io_bundleReg_rd) begin // @[Registers.scala 32:31]
        regs_15 <= io_datawrite; // @[Registers.scala 32:31]
      end
    end
    if (_T_3) begin // @[Registers.scala 31:5]
      if (5'h10 == io_bundleReg_rd) begin // @[Registers.scala 32:31]
        regs_16 <= io_datawrite; // @[Registers.scala 32:31]
      end
    end
    if (_T_3) begin // @[Registers.scala 31:5]
      if (5'h11 == io_bundleReg_rd) begin // @[Registers.scala 32:31]
        regs_17 <= io_datawrite; // @[Registers.scala 32:31]
      end
    end
    if (_T_3) begin // @[Registers.scala 31:5]
      if (5'h12 == io_bundleReg_rd) begin // @[Registers.scala 32:31]
        regs_18 <= io_datawrite; // @[Registers.scala 32:31]
      end
    end
    if (_T_3) begin // @[Registers.scala 31:5]
      if (5'h13 == io_bundleReg_rd) begin // @[Registers.scala 32:31]
        regs_19 <= io_datawrite; // @[Registers.scala 32:31]
      end
    end
    if (_T_3) begin // @[Registers.scala 31:5]
      if (5'h14 == io_bundleReg_rd) begin // @[Registers.scala 32:31]
        regs_20 <= io_datawrite; // @[Registers.scala 32:31]
      end
    end
    if (_T_3) begin // @[Registers.scala 31:5]
      if (5'h15 == io_bundleReg_rd) begin // @[Registers.scala 32:31]
        regs_21 <= io_datawrite; // @[Registers.scala 32:31]
      end
    end
    if (_T_3) begin // @[Registers.scala 31:5]
      if (5'h16 == io_bundleReg_rd) begin // @[Registers.scala 32:31]
        regs_22 <= io_datawrite; // @[Registers.scala 32:31]
      end
    end
    if (_T_3) begin // @[Registers.scala 31:5]
      if (5'h17 == io_bundleReg_rd) begin // @[Registers.scala 32:31]
        regs_23 <= io_datawrite; // @[Registers.scala 32:31]
      end
    end
    if (_T_3) begin // @[Registers.scala 31:5]
      if (5'h18 == io_bundleReg_rd) begin // @[Registers.scala 32:31]
        regs_24 <= io_datawrite; // @[Registers.scala 32:31]
      end
    end
    if (_T_3) begin // @[Registers.scala 31:5]
      if (5'h19 == io_bundleReg_rd) begin // @[Registers.scala 32:31]
        regs_25 <= io_datawrite; // @[Registers.scala 32:31]
      end
    end
    if (_T_3) begin // @[Registers.scala 31:5]
      if (5'h1a == io_bundleReg_rd) begin // @[Registers.scala 32:31]
        regs_26 <= io_datawrite; // @[Registers.scala 32:31]
      end
    end
    if (_T_3) begin // @[Registers.scala 31:5]
      if (5'h1b == io_bundleReg_rd) begin // @[Registers.scala 32:31]
        regs_27 <= io_datawrite; // @[Registers.scala 32:31]
      end
    end
    if (_T_3) begin // @[Registers.scala 31:5]
      if (5'h1c == io_bundleReg_rd) begin // @[Registers.scala 32:31]
        regs_28 <= io_datawrite; // @[Registers.scala 32:31]
      end
    end
    if (_T_3) begin // @[Registers.scala 31:5]
      if (5'h1d == io_bundleReg_rd) begin // @[Registers.scala 32:31]
        regs_29 <= io_datawrite; // @[Registers.scala 32:31]
      end
    end
    if (_T_3) begin // @[Registers.scala 31:5]
      if (5'h1e == io_bundleReg_rd) begin // @[Registers.scala 32:31]
        regs_30 <= io_datawrite; // @[Registers.scala 32:31]
      end
    end
    if (_T_3) begin // @[Registers.scala 31:5]
      if (5'h1f == io_bundleReg_rd) begin // @[Registers.scala 32:31]
        regs_31 <= io_datawrite; // @[Registers.scala 32:31]
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  regs_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  regs_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  regs_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  regs_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  regs_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  regs_5 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  regs_6 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  regs_7 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  regs_8 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  regs_9 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  regs_10 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  regs_11 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  regs_12 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  regs_13 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  regs_14 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  regs_15 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  regs_16 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  regs_17 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  regs_18 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  regs_19 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  regs_20 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  regs_21 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  regs_22 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  regs_23 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  regs_24 = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  regs_25 = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  regs_26 = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  regs_27 = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  regs_28 = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  regs_29 = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  regs_30 = _RAND_30[31:0];
  _RAND_31 = {1{`RANDOM}};
  regs_31 = _RAND_31[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

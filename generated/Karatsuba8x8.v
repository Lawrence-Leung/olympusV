module Karatsuba2x2(
  input        clock,
  input        reset,
  input  [1:0] io_a,
  input  [1:0] io_b,
  output [3:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [3:0] C; // @[Karatsuba2x2.scala 14:18]
  wire [1:0] _T0_T_2 = io_a[0] * io_b[0]; // @[Karatsuba2x2.scala 16:17]
  wire  _T1_T_3 = io_a[1] + io_a[0]; // @[Karatsuba2x2.scala 17:18]
  wire  _T1_T_7 = io_b[1] + io_b[0]; // @[Karatsuba2x2.scala 17:36]
  wire [1:0] _T1_T_8 = _T1_T_3 * _T1_T_7; // @[Karatsuba2x2.scala 17:27]
  wire [1:0] _T2_T_2 = io_a[1] * io_b[1]; // @[Karatsuba2x2.scala 18:17]
  wire [3:0] T2 = {{2'd0}, _T2_T_2};
  wire [5:0] _C_T = {T2,2'h0}; // @[Cat.scala 31:58]
  wire [3:0] T1 = {{2'd0}, _T1_T_8};
  wire [3:0] T0 = {{2'd0}, _T0_T_2};
  wire [3:0] _C_T_2 = T1 - T0; // @[Karatsuba2x2.scala 20:33]
  wire [3:0] _C_T_4 = _C_T_2 - T2; // @[Karatsuba2x2.scala 20:36]
  wire [4:0] _C_T_5 = {_C_T_4,1'h0}; // @[Cat.scala 31:58]
  wire [5:0] _GEN_0 = {{1'd0}, _C_T_5}; // @[Karatsuba2x2.scala 20:25]
  wire [5:0] _C_T_7 = _C_T + _GEN_0; // @[Karatsuba2x2.scala 20:25]
  wire [5:0] _GEN_1 = {{2'd0}, T0}; // @[Karatsuba2x2.scala 20:50]
  wire [5:0] _C_T_9 = _C_T_7 + _GEN_1; // @[Karatsuba2x2.scala 20:50]
  wire [5:0] _GEN_2 = reset ? 6'h0 : _C_T_9; // @[Karatsuba2x2.scala 14:{18,18} 20:6]
  assign io_out = C; // @[Karatsuba2x2.scala 21:11]
  always @(posedge clock) begin
    C <= _GEN_2[3:0]; // @[Karatsuba2x2.scala 14:{18,18} 20:6]
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
  C = _RAND_0[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Karatsuba4x4(
  input        clock,
  input        reset,
  input  [3:0] io_a,
  input  [3:0] io_b,
  output [7:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  Ka4_1_clock; // @[Karatsuba4x4.scala 11:21]
  wire  Ka4_1_reset; // @[Karatsuba4x4.scala 11:21]
  wire [1:0] Ka4_1_io_a; // @[Karatsuba4x4.scala 11:21]
  wire [1:0] Ka4_1_io_b; // @[Karatsuba4x4.scala 11:21]
  wire [3:0] Ka4_1_io_out; // @[Karatsuba4x4.scala 11:21]
  wire  Ka4_2_clock; // @[Karatsuba4x4.scala 12:21]
  wire  Ka4_2_reset; // @[Karatsuba4x4.scala 12:21]
  wire [1:0] Ka4_2_io_a; // @[Karatsuba4x4.scala 12:21]
  wire [1:0] Ka4_2_io_b; // @[Karatsuba4x4.scala 12:21]
  wire [3:0] Ka4_2_io_out; // @[Karatsuba4x4.scala 12:21]
  wire  Ka4_3_clock; // @[Karatsuba4x4.scala 13:21]
  wire  Ka4_3_reset; // @[Karatsuba4x4.scala 13:21]
  wire [1:0] Ka4_3_io_a; // @[Karatsuba4x4.scala 13:21]
  wire [1:0] Ka4_3_io_b; // @[Karatsuba4x4.scala 13:21]
  wire [3:0] Ka4_3_io_out; // @[Karatsuba4x4.scala 13:21]
  reg [7:0] C; // @[Karatsuba4x4.scala 17:18]
  wire [7:0] T1 = {{4'd0}, Ka4_3_io_out};
  wire [7:0] T0 = {{4'd0}, Ka4_1_io_out};
  wire [7:0] _C_T_2 = T1 - T0; // @[Karatsuba4x4.scala 31:33]
  wire [7:0] _C_T_4 = _C_T_2 - 8'h0; // @[Karatsuba4x4.scala 31:36]
  wire [9:0] _C_T_5 = {_C_T_4,2'h0}; // @[Cat.scala 31:58]
  wire [11:0] _GEN_0 = {{2'd0}, _C_T_5}; // @[Karatsuba4x4.scala 31:25]
  wire [12:0] _C_T_6 = {{1'd0}, _GEN_0}; // @[Karatsuba4x4.scala 31:25]
  wire [11:0] _GEN_1 = {{4'd0}, T0}; // @[Karatsuba4x4.scala 31:50]
  wire [11:0] _C_T_9 = _C_T_6[11:0] + _GEN_1; // @[Karatsuba4x4.scala 31:50]
  wire [11:0] _GEN_2 = reset ? 12'h0 : _C_T_9; // @[Karatsuba4x4.scala 17:{18,18} 31:6]
  Karatsuba2x2 Ka4_1 ( // @[Karatsuba4x4.scala 11:21]
    .clock(Ka4_1_clock),
    .reset(Ka4_1_reset),
    .io_a(Ka4_1_io_a),
    .io_b(Ka4_1_io_b),
    .io_out(Ka4_1_io_out)
  );
  Karatsuba2x2 Ka4_2 ( // @[Karatsuba4x4.scala 12:21]
    .clock(Ka4_2_clock),
    .reset(Ka4_2_reset),
    .io_a(Ka4_2_io_a),
    .io_b(Ka4_2_io_b),
    .io_out(Ka4_2_io_out)
  );
  Karatsuba2x2 Ka4_3 ( // @[Karatsuba4x4.scala 13:21]
    .clock(Ka4_3_clock),
    .reset(Ka4_3_reset),
    .io_a(Ka4_3_io_a),
    .io_b(Ka4_3_io_b),
    .io_out(Ka4_3_io_out)
  );
  assign io_out = C; // @[Karatsuba4x4.scala 32:11]
  assign Ka4_1_clock = clock;
  assign Ka4_1_reset = reset;
  assign Ka4_1_io_a = io_a[1:0]; // @[Karatsuba4x4.scala 19:23]
  assign Ka4_1_io_b = io_b[1:0]; // @[Karatsuba4x4.scala 20:23]
  assign Ka4_2_clock = clock;
  assign Ka4_2_reset = reset;
  assign Ka4_2_io_a = io_a[3:2] + io_a[1:0]; // @[Karatsuba4x4.scala 23:28]
  assign Ka4_2_io_b = io_b[3:2] + io_b[1:0]; // @[Karatsuba4x4.scala 24:28]
  assign Ka4_3_clock = clock;
  assign Ka4_3_reset = reset;
  assign Ka4_3_io_a = io_a[3:2]; // @[Karatsuba4x4.scala 27:23]
  assign Ka4_3_io_b = io_b[3:2]; // @[Karatsuba4x4.scala 28:23]
  always @(posedge clock) begin
    C <= _GEN_2[7:0]; // @[Karatsuba4x4.scala 17:{18,18} 31:6]
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
  C = _RAND_0[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Karatsuba8x8(
  input         clock,
  input         reset,
  input  [7:0]  io_a,
  input  [7:0]  io_b,
  output [15:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  Ka8_1_clock; // @[Karatsuba8x8.scala 11:21]
  wire  Ka8_1_reset; // @[Karatsuba8x8.scala 11:21]
  wire [3:0] Ka8_1_io_a; // @[Karatsuba8x8.scala 11:21]
  wire [3:0] Ka8_1_io_b; // @[Karatsuba8x8.scala 11:21]
  wire [7:0] Ka8_1_io_out; // @[Karatsuba8x8.scala 11:21]
  wire  Ka8_2_clock; // @[Karatsuba8x8.scala 12:21]
  wire  Ka8_2_reset; // @[Karatsuba8x8.scala 12:21]
  wire [3:0] Ka8_2_io_a; // @[Karatsuba8x8.scala 12:21]
  wire [3:0] Ka8_2_io_b; // @[Karatsuba8x8.scala 12:21]
  wire [7:0] Ka8_2_io_out; // @[Karatsuba8x8.scala 12:21]
  wire  Ka8_3_clock; // @[Karatsuba8x8.scala 13:21]
  wire  Ka8_3_reset; // @[Karatsuba8x8.scala 13:21]
  wire [3:0] Ka8_3_io_a; // @[Karatsuba8x8.scala 13:21]
  wire [3:0] Ka8_3_io_b; // @[Karatsuba8x8.scala 13:21]
  wire [7:0] Ka8_3_io_out; // @[Karatsuba8x8.scala 13:21]
  reg [15:0] C; // @[Karatsuba8x8.scala 17:18]
  wire [15:0] T1 = {{8'd0}, Ka8_3_io_out};
  wire [15:0] T0 = {{8'd0}, Ka8_1_io_out};
  wire [15:0] _C_T_2 = T1 - T0; // @[Karatsuba8x8.scala 31:33]
  wire [15:0] _C_T_4 = _C_T_2 - 16'h0; // @[Karatsuba8x8.scala 31:36]
  wire [19:0] _C_T_5 = {_C_T_4,4'h0}; // @[Cat.scala 31:58]
  wire [23:0] _GEN_0 = {{4'd0}, _C_T_5}; // @[Karatsuba8x8.scala 31:25]
  wire [24:0] _C_T_6 = {{1'd0}, _GEN_0}; // @[Karatsuba8x8.scala 31:25]
  wire [23:0] _GEN_1 = {{8'd0}, T0}; // @[Karatsuba8x8.scala 31:50]
  wire [23:0] _C_T_9 = _C_T_6[23:0] + _GEN_1; // @[Karatsuba8x8.scala 31:50]
  wire [23:0] _GEN_2 = reset ? 24'h0 : _C_T_9; // @[Karatsuba8x8.scala 17:{18,18} 31:6]
  Karatsuba4x4 Ka8_1 ( // @[Karatsuba8x8.scala 11:21]
    .clock(Ka8_1_clock),
    .reset(Ka8_1_reset),
    .io_a(Ka8_1_io_a),
    .io_b(Ka8_1_io_b),
    .io_out(Ka8_1_io_out)
  );
  Karatsuba4x4 Ka8_2 ( // @[Karatsuba8x8.scala 12:21]
    .clock(Ka8_2_clock),
    .reset(Ka8_2_reset),
    .io_a(Ka8_2_io_a),
    .io_b(Ka8_2_io_b),
    .io_out(Ka8_2_io_out)
  );
  Karatsuba4x4 Ka8_3 ( // @[Karatsuba8x8.scala 13:21]
    .clock(Ka8_3_clock),
    .reset(Ka8_3_reset),
    .io_a(Ka8_3_io_a),
    .io_b(Ka8_3_io_b),
    .io_out(Ka8_3_io_out)
  );
  assign io_out = C; // @[Karatsuba8x8.scala 32:11]
  assign Ka8_1_clock = clock;
  assign Ka8_1_reset = reset;
  assign Ka8_1_io_a = io_a[3:0]; // @[Karatsuba8x8.scala 19:23]
  assign Ka8_1_io_b = io_b[3:0]; // @[Karatsuba8x8.scala 20:23]
  assign Ka8_2_clock = clock;
  assign Ka8_2_reset = reset;
  assign Ka8_2_io_a = io_a[7:4] + io_a[3:0]; // @[Karatsuba8x8.scala 23:28]
  assign Ka8_2_io_b = io_b[7:4] + io_b[3:0]; // @[Karatsuba8x8.scala 24:28]
  assign Ka8_3_clock = clock;
  assign Ka8_3_reset = reset;
  assign Ka8_3_io_a = io_a[7:4]; // @[Karatsuba8x8.scala 27:23]
  assign Ka8_3_io_b = io_b[7:4]; // @[Karatsuba8x8.scala 28:23]
  always @(posedge clock) begin
    C <= _GEN_2[15:0]; // @[Karatsuba8x8.scala 17:{18,18} 31:6]
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
  C = _RAND_0[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

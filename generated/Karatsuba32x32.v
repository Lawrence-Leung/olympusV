module Karatsuba2x2(
  input  [1:0] io_a,
  input  [1:0] io_b,
  output [3:0] io_out
);
  wire  _temp_T_2 = io_a[1] & io_b[0]; // @[Karatsuba2x2.scala 12:19]
  wire  _temp_T_5 = io_a[0] & io_b[1]; // @[Karatsuba2x2.scala 12:37]
  wire  temp = io_a[1] & io_b[0] & (io_a[0] & io_b[1]); // @[Karatsuba2x2.scala 12:28]
  wire  _io_out_T_3 = temp & (io_a[1] & io_b[1]); // @[Karatsuba2x2.scala 13:22]
  wire  _io_out_T_7 = temp ^ io_a[1] & io_b[1]; // @[Karatsuba2x2.scala 13:45]
  wire  _io_out_T_14 = _temp_T_2 ^ _temp_T_5; // @[Karatsuba2x2.scala 13:81]
  wire  _io_out_T_17 = io_a[0] & io_b[0]; // @[Karatsuba2x2.scala 13:107]
  wire [1:0] io_out_lo = {_io_out_T_14,_io_out_T_17}; // @[Cat.scala 31:58]
  wire [1:0] io_out_hi = {_io_out_T_3,_io_out_T_7}; // @[Cat.scala 31:58]
  assign io_out = {io_out_hi,io_out_lo}; // @[Cat.scala 31:58]
endmodule
module Karatsuba4x4(
  input  [3:0] io_a,
  input  [3:0] io_b,
  output [7:0] io_out
);
  wire [1:0] Ka4_1_io_a; // @[Karatsuba4x4.scala 11:21]
  wire [1:0] Ka4_1_io_b; // @[Karatsuba4x4.scala 11:21]
  wire [3:0] Ka4_1_io_out; // @[Karatsuba4x4.scala 11:21]
  wire [1:0] Ka4_2_io_a; // @[Karatsuba4x4.scala 12:21]
  wire [1:0] Ka4_2_io_b; // @[Karatsuba4x4.scala 12:21]
  wire [3:0] Ka4_2_io_out; // @[Karatsuba4x4.scala 12:21]
  wire [1:0] Ka4_3_io_a; // @[Karatsuba4x4.scala 13:21]
  wire [1:0] Ka4_3_io_b; // @[Karatsuba4x4.scala 13:21]
  wire [3:0] Ka4_3_io_out; // @[Karatsuba4x4.scala 13:21]
  wire [1:0] Ka4_4_io_a; // @[Karatsuba4x4.scala 14:21]
  wire [1:0] Ka4_4_io_b; // @[Karatsuba4x4.scala 14:21]
  wire [3:0] Ka4_4_io_out; // @[Karatsuba4x4.scala 14:21]
  wire [7:0] bc = {{4'd0}, Ka4_3_io_out};
  wire [7:0] ad = {{4'd0}, Ka4_4_io_out};
  wire [7:0] _psum_T_1 = bc + ad; // @[Karatsuba4x4.scala 38:17]
  wire [9:0] _psum_T_2 = {_psum_T_1,2'h0}; // @[Cat.scala 31:58]
  wire [7:0] ac = {{4'd0}, Ka4_2_io_out};
  wire [11:0] _T0_T = {ac,4'h0}; // @[Cat.scala 31:58]
  wire [7:0] bd = {{4'd0}, Ka4_1_io_out};
  wire [7:0] T0 = _T0_T[7:0];
  wire [7:0] _io_out_T_1 = bd + T0; // @[Karatsuba4x4.scala 40:17]
  wire [6:0] psum = _psum_T_2[6:0];
  wire [7:0] _GEN_0 = {{1'd0}, psum}; // @[Karatsuba4x4.scala 40:22]
  Karatsuba2x2 Ka4_1 ( // @[Karatsuba4x4.scala 11:21]
    .io_a(Ka4_1_io_a),
    .io_b(Ka4_1_io_b),
    .io_out(Ka4_1_io_out)
  );
  Karatsuba2x2 Ka4_2 ( // @[Karatsuba4x4.scala 12:21]
    .io_a(Ka4_2_io_a),
    .io_b(Ka4_2_io_b),
    .io_out(Ka4_2_io_out)
  );
  Karatsuba2x2 Ka4_3 ( // @[Karatsuba4x4.scala 13:21]
    .io_a(Ka4_3_io_a),
    .io_b(Ka4_3_io_b),
    .io_out(Ka4_3_io_out)
  );
  Karatsuba2x2 Ka4_4 ( // @[Karatsuba4x4.scala 14:21]
    .io_a(Ka4_4_io_a),
    .io_b(Ka4_4_io_b),
    .io_out(Ka4_4_io_out)
  );
  assign io_out = _io_out_T_1 + _GEN_0; // @[Karatsuba4x4.scala 40:22]
  assign Ka4_1_io_a = io_a[1:0]; // @[Karatsuba4x4.scala 21:23]
  assign Ka4_1_io_b = io_b[1:0]; // @[Karatsuba4x4.scala 22:23]
  assign Ka4_2_io_a = io_a[3:2]; // @[Karatsuba4x4.scala 25:23]
  assign Ka4_2_io_b = io_b[3:2]; // @[Karatsuba4x4.scala 26:23]
  assign Ka4_3_io_a = io_a[1:0]; // @[Karatsuba4x4.scala 29:23]
  assign Ka4_3_io_b = io_b[3:2]; // @[Karatsuba4x4.scala 30:23]
  assign Ka4_4_io_a = io_a[3:2]; // @[Karatsuba4x4.scala 33:23]
  assign Ka4_4_io_b = io_b[1:0]; // @[Karatsuba4x4.scala 34:23]
endmodule
module Karatsuba8x8(
  input  [7:0]  io_a,
  input  [7:0]  io_b,
  output [15:0] io_out
);
  wire [3:0] Ka8_1_io_a; // @[Karatsuba8x8.scala 11:21]
  wire [3:0] Ka8_1_io_b; // @[Karatsuba8x8.scala 11:21]
  wire [7:0] Ka8_1_io_out; // @[Karatsuba8x8.scala 11:21]
  wire [3:0] Ka8_2_io_a; // @[Karatsuba8x8.scala 12:21]
  wire [3:0] Ka8_2_io_b; // @[Karatsuba8x8.scala 12:21]
  wire [7:0] Ka8_2_io_out; // @[Karatsuba8x8.scala 12:21]
  wire [3:0] Ka8_3_io_a; // @[Karatsuba8x8.scala 13:21]
  wire [3:0] Ka8_3_io_b; // @[Karatsuba8x8.scala 13:21]
  wire [7:0] Ka8_3_io_out; // @[Karatsuba8x8.scala 13:21]
  wire [3:0] Ka8_4_io_a; // @[Karatsuba8x8.scala 14:21]
  wire [3:0] Ka8_4_io_b; // @[Karatsuba8x8.scala 14:21]
  wire [7:0] Ka8_4_io_out; // @[Karatsuba8x8.scala 14:21]
  wire [15:0] bc = {{8'd0}, Ka8_3_io_out};
  wire [15:0] ad = {{8'd0}, Ka8_4_io_out};
  wire [15:0] _psum_T_1 = bc + ad; // @[Karatsuba8x8.scala 38:17]
  wire [19:0] _psum_T_2 = {_psum_T_1,4'h0}; // @[Cat.scala 31:58]
  wire [15:0] ac = {{8'd0}, Ka8_2_io_out};
  wire [23:0] _T0_T = {ac,8'h0}; // @[Cat.scala 31:58]
  wire [15:0] bd = {{8'd0}, Ka8_1_io_out};
  wire [15:0] T0 = _T0_T[15:0];
  wire [15:0] _io_out_T_1 = bd + T0; // @[Karatsuba8x8.scala 40:17]
  wire [12:0] psum = _psum_T_2[12:0];
  wire [15:0] _GEN_0 = {{3'd0}, psum}; // @[Karatsuba8x8.scala 40:22]
  Karatsuba4x4 Ka8_1 ( // @[Karatsuba8x8.scala 11:21]
    .io_a(Ka8_1_io_a),
    .io_b(Ka8_1_io_b),
    .io_out(Ka8_1_io_out)
  );
  Karatsuba4x4 Ka8_2 ( // @[Karatsuba8x8.scala 12:21]
    .io_a(Ka8_2_io_a),
    .io_b(Ka8_2_io_b),
    .io_out(Ka8_2_io_out)
  );
  Karatsuba4x4 Ka8_3 ( // @[Karatsuba8x8.scala 13:21]
    .io_a(Ka8_3_io_a),
    .io_b(Ka8_3_io_b),
    .io_out(Ka8_3_io_out)
  );
  Karatsuba4x4 Ka8_4 ( // @[Karatsuba8x8.scala 14:21]
    .io_a(Ka8_4_io_a),
    .io_b(Ka8_4_io_b),
    .io_out(Ka8_4_io_out)
  );
  assign io_out = _io_out_T_1 + _GEN_0; // @[Karatsuba8x8.scala 40:22]
  assign Ka8_1_io_a = io_a[3:0]; // @[Karatsuba8x8.scala 20:23]
  assign Ka8_1_io_b = io_b[3:0]; // @[Karatsuba8x8.scala 21:23]
  assign Ka8_2_io_a = io_a[7:4]; // @[Karatsuba8x8.scala 24:23]
  assign Ka8_2_io_b = io_b[7:4]; // @[Karatsuba8x8.scala 25:23]
  assign Ka8_3_io_a = io_a[3:0]; // @[Karatsuba8x8.scala 28:23]
  assign Ka8_3_io_b = io_b[7:4]; // @[Karatsuba8x8.scala 29:23]
  assign Ka8_4_io_a = io_a[7:4]; // @[Karatsuba8x8.scala 32:23]
  assign Ka8_4_io_b = io_b[3:0]; // @[Karatsuba8x8.scala 33:23]
endmodule
module Karatsuba16x16(
  input  [15:0] io_a,
  input  [15:0] io_b,
  output [31:0] io_out
);
  wire [7:0] Ka16_1_io_a; // @[Karatsuba16x16.scala 11:22]
  wire [7:0] Ka16_1_io_b; // @[Karatsuba16x16.scala 11:22]
  wire [15:0] Ka16_1_io_out; // @[Karatsuba16x16.scala 11:22]
  wire [7:0] Ka16_2_io_a; // @[Karatsuba16x16.scala 12:22]
  wire [7:0] Ka16_2_io_b; // @[Karatsuba16x16.scala 12:22]
  wire [15:0] Ka16_2_io_out; // @[Karatsuba16x16.scala 12:22]
  wire [7:0] Ka16_3_io_a; // @[Karatsuba16x16.scala 13:22]
  wire [7:0] Ka16_3_io_b; // @[Karatsuba16x16.scala 13:22]
  wire [15:0] Ka16_3_io_out; // @[Karatsuba16x16.scala 13:22]
  wire [7:0] Ka16_4_io_a; // @[Karatsuba16x16.scala 14:22]
  wire [7:0] Ka16_4_io_b; // @[Karatsuba16x16.scala 14:22]
  wire [15:0] Ka16_4_io_out; // @[Karatsuba16x16.scala 14:22]
  wire [31:0] bc = {{16'd0}, Ka16_3_io_out};
  wire [31:0] ad = {{16'd0}, Ka16_4_io_out};
  wire [31:0] _psum_T_1 = bc + ad; // @[Karatsuba16x16.scala 38:17]
  wire [39:0] _psum_T_2 = {_psum_T_1,8'h0}; // @[Cat.scala 31:58]
  wire [31:0] ac = {{16'd0}, Ka16_2_io_out};
  wire [47:0] _T0_T = {ac,16'h0}; // @[Cat.scala 31:58]
  wire [31:0] bd = {{16'd0}, Ka16_1_io_out};
  wire [31:0] T0 = _T0_T[31:0];
  wire [31:0] _io_out_T_1 = bd + T0; // @[Karatsuba16x16.scala 40:17]
  wire [24:0] psum = _psum_T_2[24:0];
  wire [31:0] _GEN_0 = {{7'd0}, psum}; // @[Karatsuba16x16.scala 40:22]
  Karatsuba8x8 Ka16_1 ( // @[Karatsuba16x16.scala 11:22]
    .io_a(Ka16_1_io_a),
    .io_b(Ka16_1_io_b),
    .io_out(Ka16_1_io_out)
  );
  Karatsuba8x8 Ka16_2 ( // @[Karatsuba16x16.scala 12:22]
    .io_a(Ka16_2_io_a),
    .io_b(Ka16_2_io_b),
    .io_out(Ka16_2_io_out)
  );
  Karatsuba8x8 Ka16_3 ( // @[Karatsuba16x16.scala 13:22]
    .io_a(Ka16_3_io_a),
    .io_b(Ka16_3_io_b),
    .io_out(Ka16_3_io_out)
  );
  Karatsuba8x8 Ka16_4 ( // @[Karatsuba16x16.scala 14:22]
    .io_a(Ka16_4_io_a),
    .io_b(Ka16_4_io_b),
    .io_out(Ka16_4_io_out)
  );
  assign io_out = _io_out_T_1 + _GEN_0; // @[Karatsuba16x16.scala 40:22]
  assign Ka16_1_io_a = io_a[7:0]; // @[Karatsuba16x16.scala 20:24]
  assign Ka16_1_io_b = io_b[7:0]; // @[Karatsuba16x16.scala 21:24]
  assign Ka16_2_io_a = io_a[15:8]; // @[Karatsuba16x16.scala 24:24]
  assign Ka16_2_io_b = io_b[15:8]; // @[Karatsuba16x16.scala 25:24]
  assign Ka16_3_io_a = io_a[7:0]; // @[Karatsuba16x16.scala 28:24]
  assign Ka16_3_io_b = io_b[15:8]; // @[Karatsuba16x16.scala 29:24]
  assign Ka16_4_io_a = io_a[15:8]; // @[Karatsuba16x16.scala 32:24]
  assign Ka16_4_io_b = io_b[7:0]; // @[Karatsuba16x16.scala 33:24]
endmodule
module Karatsuba32x32(
  input         clock,
  input         reset,
  input  [31:0] io_a,
  input  [31:0] io_b,
  output [63:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [63:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire [15:0] Ka32_1_io_a; // @[Karatsuba32x32.scala 11:22]
  wire [15:0] Ka32_1_io_b; // @[Karatsuba32x32.scala 11:22]
  wire [31:0] Ka32_1_io_out; // @[Karatsuba32x32.scala 11:22]
  wire [15:0] Ka32_2_io_a; // @[Karatsuba32x32.scala 12:22]
  wire [15:0] Ka32_2_io_b; // @[Karatsuba32x32.scala 12:22]
  wire [31:0] Ka32_2_io_out; // @[Karatsuba32x32.scala 12:22]
  wire [15:0] Ka32_3_io_a; // @[Karatsuba32x32.scala 13:22]
  wire [15:0] Ka32_3_io_b; // @[Karatsuba32x32.scala 13:22]
  wire [31:0] Ka32_3_io_out; // @[Karatsuba32x32.scala 13:22]
  wire [15:0] Ka32_4_io_a; // @[Karatsuba32x32.scala 14:22]
  wire [15:0] Ka32_4_io_b; // @[Karatsuba32x32.scala 14:22]
  wire [31:0] Ka32_4_io_out; // @[Karatsuba32x32.scala 14:22]
  reg [31:0] a; // @[Karatsuba32x32.scala 16:18]
  reg [31:0] b; // @[Karatsuba32x32.scala 17:18]
  reg [63:0] C; // @[Karatsuba32x32.scala 18:18]
  wire [63:0] bc = {{32'd0}, Ka32_3_io_out};
  wire [63:0] ad = {{32'd0}, Ka32_4_io_out};
  wire [63:0] _psum_T_1 = bc + ad; // @[Karatsuba32x32.scala 44:17]
  wire [79:0] _psum_T_2 = {_psum_T_1,16'h0}; // @[Cat.scala 31:58]
  wire [63:0] ac = {{32'd0}, Ka32_2_io_out};
  wire [95:0] _T0_T = {ac,32'h0}; // @[Cat.scala 31:58]
  wire [63:0] bd = {{32'd0}, Ka32_1_io_out};
  wire [63:0] T0 = _T0_T[63:0];
  wire [63:0] _C_T_1 = bd + T0; // @[Karatsuba32x32.scala 46:12]
  wire [48:0] psum = _psum_T_2[48:0];
  wire [63:0] _GEN_0 = {{15'd0}, psum}; // @[Karatsuba32x32.scala 46:17]
  wire [63:0] _C_T_3 = _C_T_1 + _GEN_0; // @[Karatsuba32x32.scala 46:17]
  Karatsuba16x16 Ka32_1 ( // @[Karatsuba32x32.scala 11:22]
    .io_a(Ka32_1_io_a),
    .io_b(Ka32_1_io_b),
    .io_out(Ka32_1_io_out)
  );
  Karatsuba16x16 Ka32_2 ( // @[Karatsuba32x32.scala 12:22]
    .io_a(Ka32_2_io_a),
    .io_b(Ka32_2_io_b),
    .io_out(Ka32_2_io_out)
  );
  Karatsuba16x16 Ka32_3 ( // @[Karatsuba32x32.scala 13:22]
    .io_a(Ka32_3_io_a),
    .io_b(Ka32_3_io_b),
    .io_out(Ka32_3_io_out)
  );
  Karatsuba16x16 Ka32_4 ( // @[Karatsuba32x32.scala 14:22]
    .io_a(Ka32_4_io_a),
    .io_b(Ka32_4_io_b),
    .io_out(Ka32_4_io_out)
  );
  assign io_out = C; // @[Karatsuba32x32.scala 47:11]
  assign Ka32_1_io_a = a[15:0]; // @[Karatsuba32x32.scala 26:21]
  assign Ka32_1_io_b = b[15:0]; // @[Karatsuba32x32.scala 27:21]
  assign Ka32_2_io_a = a[31:16]; // @[Karatsuba32x32.scala 30:21]
  assign Ka32_2_io_b = b[31:16]; // @[Karatsuba32x32.scala 31:21]
  assign Ka32_3_io_a = a[15:0]; // @[Karatsuba32x32.scala 34:21]
  assign Ka32_3_io_b = b[31:16]; // @[Karatsuba32x32.scala 35:21]
  assign Ka32_4_io_a = a[31:16]; // @[Karatsuba32x32.scala 38:21]
  assign Ka32_4_io_b = b[15:0]; // @[Karatsuba32x32.scala 39:21]
  always @(posedge clock) begin
    if (reset) begin // @[Karatsuba32x32.scala 16:18]
      a <= 32'h0; // @[Karatsuba32x32.scala 16:18]
    end else begin
      a <= io_a; // @[Karatsuba32x32.scala 24:7]
    end
    if (reset) begin // @[Karatsuba32x32.scala 17:18]
      b <= 32'h0; // @[Karatsuba32x32.scala 17:18]
    end else begin
      b <= io_b; // @[Karatsuba32x32.scala 25:7]
    end
    if (reset) begin // @[Karatsuba32x32.scala 18:18]
      C <= 64'h0; // @[Karatsuba32x32.scala 18:18]
    end else begin
      C <= _C_T_3; // @[Karatsuba32x32.scala 46:6]
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
  a = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  b = _RAND_1[31:0];
  _RAND_2 = {2{`RANDOM}};
  C = _RAND_2[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

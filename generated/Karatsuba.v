module Karatsuba(
  input         clock,
  input         reset,
  input  [31:0] io_a,
  input  [31:0] io_b,
  output [63:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [63:0] C; // @[Karatsuba.scala 14:18]
  wire [31:0] _T0_T_2 = io_a[15:0] * io_b[15:0]; // @[Karatsuba.scala 16:20]
  wire [15:0] _T1_T_3 = io_a[31:16] + io_a[15:0]; // @[Karatsuba.scala 17:22]
  wire [15:0] _T1_T_7 = io_b[31:16] + io_b[15:0]; // @[Karatsuba.scala 17:47]
  wire [31:0] _T1_T_8 = _T1_T_3 * _T1_T_7; // @[Karatsuba.scala 17:34]
  wire [31:0] _T2_T_2 = io_a[31:16] * io_b[31:16]; // @[Karatsuba.scala 18:21]
  wire [63:0] T2 = {{32'd0}, _T2_T_2};
  wire [95:0] _C_T = {T2,32'h0}; // @[Cat.scala 31:58]
  wire [63:0] T1 = {{32'd0}, _T1_T_8};
  wire [63:0] T0 = {{32'd0}, _T0_T_2};
  wire [63:0] _C_T_2 = T1 - T0; // @[Karatsuba.scala 20:34]
  wire [63:0] _C_T_4 = _C_T_2 - T2; // @[Karatsuba.scala 20:37]
  wire [79:0] _C_T_5 = {_C_T_4,16'h0}; // @[Cat.scala 31:58]
  wire [95:0] _GEN_0 = {{16'd0}, _C_T_5}; // @[Karatsuba.scala 20:26]
  wire [95:0] _C_T_7 = _C_T + _GEN_0; // @[Karatsuba.scala 20:26]
  wire [95:0] _GEN_1 = {{32'd0}, T0}; // @[Karatsuba.scala 20:52]
  wire [95:0] _C_T_9 = _C_T_7 + _GEN_1; // @[Karatsuba.scala 20:52]
  wire [95:0] _GEN_2 = reset ? 96'h0 : _C_T_9; // @[Karatsuba.scala 14:{18,18} 20:6]
  assign io_out = C; // @[Karatsuba.scala 21:11]
  always @(posedge clock) begin
    C <= _GEN_2[63:0]; // @[Karatsuba.scala 14:{18,18} 20:6]
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
  _RAND_0 = {2{`RANDOM}};
  C = _RAND_0[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

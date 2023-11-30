module PCReg(
  input         clock,
  input         reset,
  output [31:0] io_addrOut,
  input         io_ctrlJump,
  input         io_ctrlBranch,
  input         io_resultBranch,
  input  [31:0] io_addrTarget
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] regPC; // @[PCReg.scala 15:24]
  wire [31:0] _regPC_T_1 = regPC + 32'h4; // @[PCReg.scala 19:24]
  assign io_addrOut = regPC; // @[PCReg.scala 22:16]
  always @(posedge clock) begin
    if (reset) begin // @[PCReg.scala 15:24]
      regPC <= 32'h0; // @[PCReg.scala 15:24]
    end else if (io_ctrlJump | io_ctrlBranch & io_resultBranch) begin // @[PCReg.scala 16:60]
      regPC <= io_addrTarget; // @[PCReg.scala 17:15]
    end else begin
      regPC <= _regPC_T_1; // @[PCReg.scala 19:15]
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
  regPC = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

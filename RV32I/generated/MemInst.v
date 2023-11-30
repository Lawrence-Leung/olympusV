module MemInst(
  input         clock,
  input         reset,
  input  [3:0]  io_addr,
  output [31:0] io_inst
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
  reg [31:0] mem [0:1023]; // @[MemInst.scala 14:18]
  wire  mem_io_inst_MPORT_en; // @[MemInst.scala 14:18]
  wire [9:0] mem_io_inst_MPORT_addr; // @[MemInst.scala 14:18]
  wire [31:0] mem_io_inst_MPORT_data; // @[MemInst.scala 14:18]
  wire [3:0] _io_inst_T = {{2'd0}, io_addr[3:2]}; // @[MemInst.scala 29:33]
  assign mem_io_inst_MPORT_en = 1'h1;
  assign mem_io_inst_MPORT_addr = {{6'd0}, _io_inst_T};
  assign mem_io_inst_MPORT_data = mem[mem_io_inst_MPORT_addr]; // @[MemInst.scala 14:18]
  assign io_inst = mem_io_inst_MPORT_data; // @[MemInst.scala 29:13]
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
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1024; initvar = initvar+1)
    mem[initvar] = _RAND_0[31:0];
`endif // RANDOMIZE_MEM_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

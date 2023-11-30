module MemData(
  input         clock,
  input         reset,
  input         io_bundleMemDataControl_ctrlLoad,
  input         io_bundleMemDataControl_ctrlStore,
  input         io_bundleMemDataControl_ctrlSigned,
  input  [1:0]  io_bundleMemDataControl_ctrlLSType,
  input  [31:0] io_resultALU,
  input  [31:0] io_dataStore,
  output [31:0] io_result
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
  reg [31:0] mem [0:1023]; // @[MemData.scala 22:18]
  wire  mem_dataLoad_MPORT_en; // @[MemData.scala 22:18]
  wire [9:0] mem_dataLoad_MPORT_addr; // @[MemData.scala 22:18]
  wire [31:0] mem_dataLoad_MPORT_data; // @[MemData.scala 22:18]
  wire [31:0] mem_MPORT_data; // @[MemData.scala 22:18]
  wire [9:0] mem_MPORT_addr; // @[MemData.scala 22:18]
  wire  mem_MPORT_mask; // @[MemData.scala 22:18]
  wire  mem_MPORT_en; // @[MemData.scala 22:18]
  wire [31:0] mem_MPORT_1_data; // @[MemData.scala 22:18]
  wire [9:0] mem_MPORT_1_addr; // @[MemData.scala 22:18]
  wire  mem_MPORT_1_mask; // @[MemData.scala 22:18]
  wire  mem_MPORT_1_en; // @[MemData.scala 22:18]
  wire [31:0] mem_MPORT_2_data; // @[MemData.scala 22:18]
  wire [9:0] mem_MPORT_2_addr; // @[MemData.scala 22:18]
  wire  mem_MPORT_2_mask; // @[MemData.scala 22:18]
  wire  mem_MPORT_2_en; // @[MemData.scala 22:18]
  wire [31:0] _dataLoad_T = {{2'd0}, io_resultALU[31:2]}; // @[MemData.scala 31:39]
  wire  _T = io_bundleMemDataControl_ctrlLSType == 2'h2; // @[MemData.scala 35:49]
  wire  _T_3 = io_bundleMemDataControl_ctrlLSType == 2'h1; // @[MemData.scala 37:55]
  wire [31:0] dataLoad = mem_dataLoad_MPORT_data;
  wire  _GEN_7 = io_bundleMemDataControl_ctrlLSType == 2'h1 ? 1'h0 : 1'h1; // @[MemData.scala 22:18 37:65]
  wire  _GEN_17 = io_bundleMemDataControl_ctrlLSType == 2'h2 ? 1'h0 : _T_3; // @[MemData.scala 22:18 35:59]
  wire  _GEN_22 = io_bundleMemDataControl_ctrlLSType == 2'h2 ? 1'h0 : _GEN_7; // @[MemData.scala 22:18 35:59]
  wire [15:0] _result_T_2 = dataLoad[15] ? 16'hffff : 16'h0; // @[Bitwise.scala 74:12]
  wire [31:0] _result_T_4 = {_result_T_2,dataLoad[15:0]}; // @[Cat.scala 31:58]
  wire [31:0] _result_T_7 = {16'h0,dataLoad[15:0]}; // @[Cat.scala 31:58]
  wire [31:0] _GEN_40 = io_bundleMemDataControl_ctrlSigned ? _result_T_4 : _result_T_7; // @[MemData.scala 48:55 49:24 51:24]
  wire [23:0] _result_T_10 = dataLoad[7] ? 24'hffffff : 24'h0; // @[Bitwise.scala 74:12]
  wire [31:0] _result_T_12 = {_result_T_10,dataLoad[7:0]}; // @[Cat.scala 31:58]
  wire [31:0] _result_T_15 = {24'h0,dataLoad[7:0]}; // @[Cat.scala 31:58]
  wire [31:0] _GEN_41 = io_bundleMemDataControl_ctrlSigned ? _result_T_12 : _result_T_15; // @[MemData.scala 54:55 55:24 57:24]
  wire [31:0] _GEN_42 = _T_3 ? _GEN_40 : _GEN_41; // @[MemData.scala 47:65]
  wire [31:0] _GEN_43 = _T ? dataLoad : _GEN_42; // @[MemData.scala 45:59 46:20]
  assign mem_dataLoad_MPORT_en = 1'h1;
  assign mem_dataLoad_MPORT_addr = _dataLoad_T[9:0];
  assign mem_dataLoad_MPORT_data = mem[mem_dataLoad_MPORT_addr]; // @[MemData.scala 22:18]
  assign mem_MPORT_data = io_dataStore;
  assign mem_MPORT_addr = _dataLoad_T[9:0];
  assign mem_MPORT_mask = 1'h1;
  assign mem_MPORT_en = io_bundleMemDataControl_ctrlStore & _T;
  assign mem_MPORT_1_data = {dataLoad[31:16],io_dataStore[15:0]};
  assign mem_MPORT_1_addr = _dataLoad_T[9:0];
  assign mem_MPORT_1_mask = 1'h1;
  assign mem_MPORT_1_en = io_bundleMemDataControl_ctrlStore & _GEN_17;
  assign mem_MPORT_2_data = {dataLoad[31:8],io_dataStore[7:0]};
  assign mem_MPORT_2_addr = _dataLoad_T[9:0];
  assign mem_MPORT_2_mask = 1'h1;
  assign mem_MPORT_2_en = io_bundleMemDataControl_ctrlStore & _GEN_22;
  assign io_result = io_bundleMemDataControl_ctrlLoad ? _GEN_43 : io_resultALU; // @[MemData.scala 44:45 62:16]
  always @(posedge clock) begin
    if (mem_MPORT_en & mem_MPORT_mask) begin
      mem[mem_MPORT_addr] <= mem_MPORT_data; // @[MemData.scala 22:18]
    end
    if (mem_MPORT_1_en & mem_MPORT_1_mask) begin
      mem[mem_MPORT_1_addr] <= mem_MPORT_1_data; // @[MemData.scala 22:18]
    end
    if (mem_MPORT_2_en & mem_MPORT_2_mask) begin
      mem[mem_MPORT_2_addr] <= mem_MPORT_2_data; // @[MemData.scala 22:18]
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

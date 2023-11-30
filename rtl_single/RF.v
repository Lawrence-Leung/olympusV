module RF(
    input clk,
    input rst_n,
    input rf_we,
    input [1:0] store_sel,
    input [1:0] wd_sel,
    input [2:0] wd_dram_sel,
    input [4:0] rR1,
    input [4:0] rR2,
    input [4:0] wR,
    input [31:0] wD_aluc,
    input [31:0] wD_dram_rd,
    input [31:0] wD_sext_ext,
    input [31:0] wD_npc,
    output[31:0] rD1,
    output[31:0] rD2,
    output[31:0] rD2_s,
    output reg [31:0] wD
    );

    // wd_sel signal
    parameter wd_alu  = 2'b00;
    parameter wd_dram = 2'b01;
    parameter wd_npc  = 2'b10;
    parameter wd_sext = 2'b11;

    // wd_dram_sel
    parameter load_lw =  3'b000;
    parameter load_lh =  3'b001;
    parameter load_lb =  3'b010;
    parameter load_lhu=  3'b011;
    parameter load_lbu=  3'b100;

    // store signal
    parameter store_sw = 2'b00;
    parameter store_sh = 2'b01;
    parameter store_sb = 2'b10;

    // 32 registers
    reg [31:0] rf[31:0];

    // read data
    reg  [31:0] rD2_t;
    assign rD2_s = rD2_t;
    assign rD1 =   (rR1 == 5'b0) ? 32'b0 : rf[rR1];
    assign rD2 =   (rR2 == 5'b0) ? 32'b0 : rf[rR2];

    // rD2 control
    always@(*)begin
        case(store_sel)
            store_sb: begin
                case(offset)
                    2'b00: rD2_t = {wD_dram_rd[31:8],rD2[7:0]};
                    2'b01: rD2_t = {wD_dram_rd[31:16],rD2[7:0],wD_dram_rd[7:0]};
                    2'b10: rD2_t = {wD_dram_rd[31:24],rD2[7:0],wD_dram_rd[15:0]};
                    2'b11: rD2_t = {rD2[7:0],wD_dram_rd[23:0]};
                    default: rD2_t = 32'b0;
                endcase
            end
            store_sh: begin
                case(offset)
                    2'b00: rD2_t = {wD_dram_rd[31:16],rD2[15:0]};
                    2'b10: rD2_t = {rD2[15:0],wD_dram_rd[15:0]};
                    default: rD2_t = 32'b0;
                endcase
            end
            store_sw: rD2_t = rD2;
            default : rD2_t = rD2;
        endcase
    end

    // adr offset
    wire[1:0] offset;
    assign offset = wD_aluc[1:0];


    // loop parameter
    integer i;
    parameter i_end = 31;

    // write back selector
    always @(*) begin
        case(wd_sel)
            wd_alu :   wD = wD_aluc;
            wd_npc :   wD = wD_npc;
            wd_sext:   wD = wD_sext_ext;
            wd_dram: begin
                if (wd_dram_sel == load_lb) begin
                    case(offset) 
                        2'b00: wD = { {24{wD_dram_rd[7]}}  , wD_dram_rd[7:0]  };    
                        2'b01: wD = { {24{wD_dram_rd[15]}} , wD_dram_rd[15:8] };    
                        2'b10: wD = { {24{wD_dram_rd[23]}} , wD_dram_rd[23:16]};    
                        2'b11: wD = { {24{wD_dram_rd[31]}} , wD_dram_rd[31:24]}; 
                        default: wD = 32'b0;   
                    endcase
                end                     
                else if(wd_dram_sel == load_lh) begin
                    case(offset)
                        2'b00: wD = { {16{wD_dram_rd[15]}} , wD_dram_rd[15:0] };      
                        2'b10: wD = { {16{wD_dram_rd[31]}} , wD_dram_rd[31:16]}; 
                        default: wD = 32'b0;  
                    endcase
                end     
                else if(wd_dram_sel == load_lbu) begin
                    case(offset)
                        2'b00: wD = { 24'b0 , wD_dram_rd[7:0]  };    
                        2'b01: wD = { 24'b0 , wD_dram_rd[15:8] };    
                        2'b10: wD = { 24'b0 , wD_dram_rd[23:16]};    
                        2'b11: wD = { 24'b0 , wD_dram_rd[31:24]};
                        default: wD = 32'b0; 
                    endcase
                end
                else if(wd_dram_sel == load_lhu) begin
                    case(offset)
                        2'b00: wD = { 16'b0 , wD_dram_rd[15:0] };      
                        2'b10: wD = { 16'b0 , wD_dram_rd[31:16]}; 
                        default: wD = 32'b0;  
                    endcase
                end
                else if(wd_dram_sel == load_lw)      wD = wD_dram_rd;
                else                                 wD = wD_dram_rd;
            end
            default:   wD = 32'b0;
        endcase
    end

    // wirte back logic
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)         for(i=0;i<=i_end;i=i+1)  rf[i] <= 32'b0; 
        else if (rf_we)                              rf[wR] <=   wD;
        else                                         rf[0] <= 32'b0;
    end

endmodule

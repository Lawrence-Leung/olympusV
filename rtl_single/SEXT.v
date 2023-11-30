module SEXT(
    input [2:0] sext_op,
    input [24:0] din,
    output reg [31:0] ext
    );

    // sext_op signal
    parameter I_ext  = 3'b000;
    parameter Is_ext = 3'b001;
    parameter S_ext  = 3'b010;
    parameter U_ext  = 3'b011;
    parameter B_ext  = 3'b100;
    parameter J_ext  = 3'b101;
 

    // sign bit
    wire sgn = din[24];

    always @(*) begin
        case (sext_op)
            I_ext :  ext = {sgn ? 20'hFFFFF : 20'b0, din[24:13]};
            Is_ext:  ext = {27'b0, din[17:13]};
            S_ext :  ext = {sgn ? 20'hFFFFF : 20'b0, din[24:18], din[4:0]};
            U_ext :  ext = {din[24:5], 12'b0};
            B_ext :  ext = {sgn ? 19'h7FFFF : 19'b0, din[24], din[0], din[23:18], din[4:1], 1'b0};
            J_ext :  ext = {sgn ? 11'h7FF : 11'b0, din[24], din[12:5], din[13], din[23:14], 1'b0};
            default: ext = 32'b0;
        endcase
    end

endmodule

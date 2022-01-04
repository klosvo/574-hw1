`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09/13/2020 03:46:28 PM
// Design Name:
// Module Name: MUL
// Project Name:
// Target Devices:
// Tool Versions:
// Description: Multiplier
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////

module MUL #(parameter DATAWIDTH = 8)(a, b, prod);
    input [DATAWIDTH -1:0] a;
    input [DATAWIDTH -1:0] b;
    output reg [(2 * DATAWIDTH)-1:0] prod;


    always @(a,b) begin
        prod <= a * b;
    end

endmodule

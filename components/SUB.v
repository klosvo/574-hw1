`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09/13/2020 03:46:28 PM
// Design Name:
// Module Name: SUB
// Project Name:
// Target Devices:
// Tool Versions:
// Description: Subtractor
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module SUB #(parameter DATAWIDTH = 8)(a, b, diff);
    input [DATAWIDTH -1:0] a;
    input [DATAWIDTH -1:0] b;
    output reg [DATAWIDTH-1:0] diff;


    always @(a,b) begin
        diff <= a - b;
    end

endmodule

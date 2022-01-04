`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2020 03:46:28 PM
// Design Name: 
// Module Name: COMP 
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Comperator
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module COMP #(parameter DATAWIDTH = 8)(a, b, gt, lt, eq);
    input [DATAWIDTH -1:0] a;
    input [DATAWIDTH -1:0] b;
    output reg gt, lt, eq;
    
    
    always @(a,b) begin
        gt <= 0;
        lt <= 0;
        eq <= 0;
        if (a > b)
            gt <= 1;
        else if (a < b)
            lt <= 1;
        else
            eq <= 1;
    end
    
endmodule

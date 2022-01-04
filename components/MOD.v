`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2020 01:31:40 PM
// Design Name: 
// Module Name: MOD
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module MOD #(parameter DATAWIDTH = 8)(a, b, rem);
    input [DATAWIDTH -1:0] a;
    input [DATAWIDTH -1:0] b;
    output reg [DATAWIDTH-1:0] rem;
    
    
    always @(a,b) begin
        rem <= a % b;
    end
endmodule
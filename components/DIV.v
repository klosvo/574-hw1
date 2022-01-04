`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2020 01:31:40 PM
// Design Name: 
// Module Name: DIV
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

module DIV #(parameter DATAWIDTH = 8)(a, b, quot);
    input [DATAWIDTH -1:0] a;
    input [DATAWIDTH -1:0] b;
    output reg [DATAWIDTH-1:0] quot;
    
    
    always @(a,b) begin
        quot <= a / b;
    end
    
endmodule


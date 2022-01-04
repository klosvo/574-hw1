`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2020 03:46:28 PM
// Design Name: 
// Module Name: MUX2x1 
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 2x1 Multiplexer
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MUX2x1 #(parameter DATAWIDTH = 8)(a, b, sel, d);
    input [DATAWIDTH -1:0] a;
    input [DATAWIDTH -1:0] b;
    input sel;
    output reg [DATAWIDTH -1:0] d;
    
    
    always @(a,b, sel) begin
        if (sel == 1)
            d <= b;
        else
            d <= a;
    end
    
endmodule

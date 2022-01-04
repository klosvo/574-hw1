`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2020 01:31:40 PM
// Design Name: 
// Module Name: INC
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


module INC #(parameter DATAWIDTH = 8)(a, d);
    input [DATAWIDTH -1:0] a;
    output reg [DATAWIDTH-1:0] d;
    
    
    always @(a) begin
        d <= a + 1;
    end
 endmodule
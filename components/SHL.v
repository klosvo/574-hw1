`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2020 03:46:28 PM
// Design Name: 
// Module Name: SHL 
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Shift Left
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SHL #(parameter DATAWIDTH = 8)(a, sh_amt, d);
    input [DATAWIDTH -1:0] a;
    input [DATAWIDTH -1:0] sh_amt;
    output reg [DATAWIDTH -1:0] d;
    
    
    always @(a) begin
        d <= a << sh_amt;
    end
    
endmodule

`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2020 03:46:28 PM
// Design Name: 
// Module Name: 574a_circuit6 
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// input Int64 a, b, c, zero
//
// output Int64 z
//
// wire Int64 e, f, g, zwire
// wire Int1 gEQz  
//
// e = a - 1
// f = c + 1
// g = a % c  
// gEQz = g == zero
// zwire = gEQz ? e : f 
// z = zwire
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module circuit6 (a, b, c, zero, Clk, Rst, z);
    input [63:0] a;
    input [63:0] b;
    input [63:0] c;
    input [63:0] zero;
    input Clk, Rst;
    output[63:0] z;
    wire [63:0] e, f, g, zwire;
    wire gEQz;

    
    DEC #(.DATAWIDTH(64)) dec1 (a, e);
    INC #(.DATAWIDTH(64)) inc1 (c, f);
    MOD #(.DATAWIDTH(64)) mod1 (a, c, g);
    COMP #(.DATAWIDTH(64)) comp1 (g, zero,,, gEQz );
    MUX2x1 #(.DATAWIDTH(64)) mux2x1_1 (f, e, gEQz, zwire);
    REG #(.DATAWIDTH(64)) regz (zwire, Clk, Rst, z);
    
endmodule

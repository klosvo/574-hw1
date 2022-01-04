`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2020 03:46:28 PM
// Design Name: 
// Module Name: 474a_circuit1 
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
//input Int8 a, b, c
//
//output Int8 z
//output Int16 x
//
//wire Int8 d, e
//wire Int16 f, g
//wire Int16 xwire
//
//d = a + b
//e = a + c
//g = d > e
//z = g ? d : e
//f = a * c
//xwire = f - d  
//x = xwire
// Critical path
// 8 bit Add: 5.155
// 8 bit comp: 6.820
// 8 bit Mux: 5.361
// 16 bit SUB : 5.271
// 16 bit REG : 3.419
// Total: 26.026
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module circuit1 (a, b, c, Clk, Rst, z, x);
    input [7:0] a, b, c;
    input Clk, Rst;
    output [7:0] z;
    output [15:0] x;
    wire [7:0] d, e;
    wire [15:0] f, g;
    wire [15:0] xwire;
    wire [7:0] zwire;

    ADD #(.DATAWIDTH(8)) add1 (a, b, d);
    ADD #(.DATAWIDTH (8)) add2 (a, c, e);
    COMP #(.DATAWIDTH(8)) comp1 (d, e, g[0],,);
    MUX2x1 #(.DATAWIDTH(8)) mux2x1_1 (e, d, g[0], zwire);
    MUL #(.DATAWIDTH(8)) mul1 (a, c, f);
    SUB #(.DATAWIDTH(16)) sub1 ({8'b0, f}, {8'b0, d}, xwire);
    REG #(.DATAWIDTH(8)) regz(zwire, Clk, Rst, z);
    REG #(.DATAWIDTH(16)) regx(xwire, Clk, Rst, x);
    
endmodule

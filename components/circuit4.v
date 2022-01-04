`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 10/02/2020 10:31:55 PM
// Design Name:
// Module Name: circuit4
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
//input Int64 a, b, c
//
//output Int32 z, x
//
//wire Int64 d, e, f, g, h
//wire Int1 dLTe, dEQe
//wire Int64 xrin, zrin
//register Int64 greg, hreg
//
//d = a + b
//e = a + c
//f = a - b
//dEQe = d == e
//dLTe = d < e
//g = dLTe ? d : e
//h = dEQe ? g : f
//greg = g
//hreg = h
//xrin = hreg << dLTe
//zrin = greg >> dEQe
//x = xrin
//z = zrin
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module circuit4( a, b, c, Clk, Rst, z, x );
    input [63:0] a, b, c;
    input Clk, Rst;
    output [31:0] z, x;
    
    wire [63:0] d, e, f, g, h; 
    wire dLTe, dEQe, dGTe; 
    wire [63:0] xrin, zrin, gwire, hwire;

    // dummy wires
    wire d1, d2, d3, d4;

    ADD #(.DATAWIDTH(64)) add_1 (a,b,d);
    ADD #(.DATAWIDTH(64)) add_2 (a,c,e);
    SUB #(.DATAWIDTH(64)) sub_1 (a,b,f);
    COMP #(.DATAWIDTH(64)) comp_1 (d,e,d1,d2,dEQe);
    COMP #(.DATAWIDTH(64)) comp_2 (d,e,d3,dLTe,d4);
    MUX2x1 #(.DATAWIDTH(64)) mux_1 (e,d,dLTe,g);
    MUX2x1 #(.DATAWIDTH(64)) mux_2 (f,g,dEQe,h);
    REG #(.DATAWIDTH(64)) greg (g,Clk,Rst,gwire);
    REG #(.DATAWIDTH(64)) hreg (h,Clk,Rst,hwire);
    SHL #(.DATAWIDTH(64)) shl_1 (hwire, {63'b0,dLTe}, xrin);
    SHR #(.DATAWIDTH(64)) shr_1 (gwire, {63'b0,dEQe}, zrin);
    REG #(.DATAWIDTH(32)) xreg (xrin[31:0],Clk,Rst,x);
    REG #(.DATAWIDTH(32)) zreg (zrin[31:0],Clk,Rst,z);
endmodule

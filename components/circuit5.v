`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 10/03/2020 08:45:51 PM
// Design Name:
// Module Name: circuit5
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
// input Int64 a, b, c, d, zero
// output Int64 z
// wire Int64 e, f, g, zwire
// wire Int1 gEQz
// e = a / b
// f = c / d
// g = a % b
// gEQz = g == zero
// zwire = gEQz ? e : f
// z = zwire


//////////////////////////////////////////////////////////////////////////////////


module circuit5( a, b, c, d, zero, Clk, Rst, z);
    input [63:0] a, b, c, d, zero;
    input Clk, Rst;
    output [63:0] z;

    wire [63:0] e, f, g, zwire;
    wire gEQz;
    wire dum1, dum2;

    // e = a/b
    DIV #(.DATAWIDTH(64)) div1 (a, b, e);

    // f = c/d
    DIV #(.DATAWIDTH(64)) div2 (c, d, f);

    // g = a % b
    MOD #(.DATAWIDTH(64)) mod1 (a, b, g);

    // gEQz = g == zero
    COMP #(.DATAWIDTH(64)) comp1 (g, zero, dum1, dum2, gEQz);

    // zwire = gEQz ? e : f
    MUX2x1 #(.DATAWIDTH(64)) mux2x1_1 (f, e, gEQz, zwire);

    // z = zwire
    REG #(.DATAWIDTH(64)) regz (zwire, Clk, Rst, z);

endmodule

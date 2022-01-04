`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2020 12:19:00 PM
// Design Name: 
// Module Name: circuit3
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// input Int16 a, b, c, d, e, f, g, h
// input Int8 sa

// output Int16 avg

// wire Int32 l00, l01, l02, 03, l10, l11, l2, l2div2, l2div4, l2div8

//l00 = a + b
//l01 = c + d
//l02 = e + f
//l03 = g + h
//l10 = l00 + l01
//l11 = l02 + l03
//l2 = l10 + l11
//l2div2 = l2 >> sa
//l2div4 = l2div2 >> sa 
//l2div8 = l2div4 >> sa
//avg = l2div8
//  
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//////////////////////////////////////////////////////////////////////////////////


module circuit3(a, b, c, d, e, f, g, h, sa, Clk, Rst, avg);
    input [15:0] a, b, c, d, e, f, g, h;
    input [7:0] sa;
    input Clk, Rst;
    output [15:0] avg;
    
    wire [31:0] l00, l01, l02, l03, l10, l11, l2, l2div2, l2div4, l2div8;
    
    ADD #(.DATAWIDTH(32)) add1({16'b0,a}, {16'b0,b}, l00);
    ADD #(.DATAWIDTH(32)) add2({16'b0,c}, {16'b0,d}, l01);
    ADD #(.DATAWIDTH(32)) add3({16'b0,e}, {16'b0,f}, l02);
    ADD #(.DATAWIDTH(32)) add4({16'b0,g}, {16'b0,h}, l03);
    ADD #(.DATAWIDTH(32)) add5(l00, l01, l10);
    ADD #(.DATAWIDTH(32)) add6(l02, l03, l11);
    ADD #(.DATAWIDTH(32)) add7(l10, l11, l2);
    
    SHR #(.DATAWIDTH(32)) shr1(l2, {24'b0, sa}, l2div2);
    SHR #(.DATAWIDTH(32)) shr2(l2div2, {24'b0, sa}, l2div4);
    SHR #(.DATAWIDTH(32)) shr3(l2div4, {24'b0, sa}, l2div8);
    REG #(.DATAWIDTH(16)) reg1(l2div8[15:0], Clk, Rst, avg);    

endmodule

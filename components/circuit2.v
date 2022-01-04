`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// 
// Create Date: 09/13/2020 03:46:28 PM
// Design Name: 
// Module Name: 474a_circuit2.v
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// input Int32 a, b, c
// output Int32 z, x
// wire Int32 d, e, f, g, h
// wire Int1 dLTe, dEQe  
// wire Int32 zwire, xwire
// d = a + b
// e = a + c
// f = a - b  
// dEQe = d == e
// dLTe = d < e
// g = dLTe ? d : e 
// h = dEQe ? g : f 
// xwire = g << dLTe
// zwire = h >> dEQe
// x = xwire
// z = zwire
// 
// 474a_circuit2:   EstimatedCriticalPath ActualCriticalPath
// 32-bit
//
// add:     5.503
// add:     5.503
// sub:     5.503
// comp:    7.171
// comp:    7.171
// mux2x1:  5.361
// mux2x1:  5.361
// shl:     7.044
// shr:     7.044
// reg:     3.419
// reg:     3.419
//----------------
//          7.171 + 5.361 + 7.044 + 3.419 = 22.995          
// 
//////////////////////////////////////////////////////////////////////////////////


module circuit2 (a, b, c, Clk, Rst, z, x);
    input [31:0] a, b, c;
    input Clk, Rst;
    output [31:0] z, x;
    
    wire [31:0] d, e, f, g, h;
    wire dLTe, dEQe;
    wire [31:0] zwire, xwire;

    // dummy wires
    wire d1, d2, d3, d4;

        //    d = a + b;
        ADD #(.DATAWIDTH(32)) add1 (a, b, d);
        
        //    e = a + c;
        ADD #(.DATAWIDTH(32)) add2 (a, c, e);
        
        //    f = a - b;  
        SUB #(.DATAWIDTH(32)) sub1 (a, b, f);
    
        //    dEQe = d == e;
        COMP #(.DATAWIDTH(32)) comp1 (d, e, d1, d2, dEQe);
    
        //    dLTe = d < e;
        COMP #(.DATAWIDTH(32)) comp2 (d, e, d3, dLTe, d4);
    
        //    g = dLTe ? d : e; 
        MUX2x1 #(.DATAWIDTH(32)) mux2x1_1 (e, d, dLTe, g);
    
        //    h = dEQe ? g : f; 
        MUX2x1 #(.DATAWIDTH(32)) mux2x1_2 (f, g, dEQe, h);
        
        //    xwire = g << dLTe;
        SHL #(.DATAWIDTH(32)) shl1 (g, {31'b0,dLTe}, xwire);
    
        //    zwire = h >> dEQe;
        SHR #(.DATAWIDTH(32)) shr1 (h, {31'b0,dEQe}, zwire);
        
        //    x = xwire;
        REG #(.DATAWIDTH(32)) regx (xwire, Clk, Rst, x);
        
        //    z = zwire;
        REG #(.DATAWIDTH(32)) regz (zwire, Clk, Rst, z);
    
endmodule

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
// Test bench for circuit 6
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module circuit6_tb ();
    reg [63:0] a0;
    reg [63:0] b0;
    reg [63:0] c0;
    reg [63:0] zero0;
    reg rst, Clk;
    wire [63:0] z0;
    
    circuit6 c6(.a(a0), .b(b0), .c(c0), .Rst(rst), .Clk(clk), .z(z0));
    

    always
        #10 Clk <= ~Clk; //clock procedure
               
    initial begin
        Clk <= 0;		
        
        rst <= 1;
        #20 rst <= 0;
        a0 <= 10; b0 <= 3; c0 <= 3; zero0 <= 0;
    
        @(posedge Clk);
        #25 c0 <= 2;
        #20 zero0 <= 1;
        #20 a0 <= 3;
        #20;

    end

    // DEC #(.DATAWIDTH(64)) dec1 (a, e);
    // INC #(.DATAWIDTH(64)) inc1 (c, f);
    // MOD #(.DATAWIDTH(64)) mod1 (a, c, g);
    // COMP #(.DATAWIDTH(64)) comp1 (g, zero, 0 ,0, gEQz );
    // MUX2x1 #(.DATAWIDTH(64)) mux2x1_1 (f, e, gEQz, zwire);
    // REG #(.DATAWIDTH(64)) regz (zwire, clk, rst, z);
    
endmodule

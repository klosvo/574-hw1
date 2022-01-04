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
// Test bench for circuit 1
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module circuit1_tb ();
    reg [7:0] A, B, C;
    reg Clk, Rst;
    wire [7:0] Z;
    wire [15:0] X;

    
    circuit1 c1(.a(A), .b(B), .c(C), .Rst(Rst), .Clk(Clk), .z(Z), .x(X));
    

    always
        #10 Clk <= ~Clk; //clock procedure               
           
    initial begin
        Clk <= 0;		
        Rst <= 1;
        #20 Rst <= 0;
        A <= 0; B <= 0; C <= 0;
        @(posedge Clk);
        #5 A <= 5; C <= 2;
        #20;
        // d = 5 + 2 = 7
        // e = 5 + 0 = 5
        // g = 7 > 5 = 1
        // z = g ? 7 : 5 = 7
        // f = 5 * 2 = 10
        // xwire =  10 - 7 = 3
        // expect Z = 7
        // expect X = 3
       
        @(posedge Clk)
        #5 B <= 3;
        #20;
        // d = 5 + 2 = 7
        // e = 5 + 3 = 8
        // g = 7 > 8 = 0
        // z = g ? 7 : 8 = 8
        // f = 5 * 2 = 10
        // xwire =  10 - 7 = 3
        //expect Z = 8
        //expect x = 8

        @(posedge Clk)
        #5 C <= 3;
        #20;
        // d = 5 + 3 = 8
        // e = 5 + 3 = 8
        // g = 7 > 8 = 0
        // z = g ? 7 : 8 = 8
        // f = 5 * 3 = 15
        // xwire =  15 - 8 = 7
        //expect Z = 8
        //expect x = 7

        

    end

endmodule

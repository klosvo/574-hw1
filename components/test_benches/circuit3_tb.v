`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2020 01:27:15 PM
// Design Name: 
// Module Name: circuit3_tb
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


module circuit3_tb();
    reg [15:0] a_tb, b_tb, c_tb, d_tb, e_tb, f_tb, g_tb, h_tb;
    reg [7:0] sa_tb;
    reg clk_tb, rst_tb;
    wire [15:0] avg_tb;
    
    circuit3 c3(a_tb, b_tb, c_tb, d_tb, e_tb, f_tb, g_tb, h_tb, sa_tb, clk_tb, rst_tb, avg_tb);
    
    //Clock procedure
    always begin
        clk_tb <= 0;
        #10;
        clk_tb <= 1;
        #10;
    end
    
    //Vector procedure
    initial begin 
        rst_tb <= 1;
        #5;
        @(posedge clk_tb);
        #5 rst_tb <= 0;
        @(posedge clk_tb);
        a_tb <= 'd1;
        b_tb <= 'd1;
        c_tb <= 'd1;
        d_tb <= 'd1;
        e_tb <= 'd1;
        f_tb <= 'd1;
        g_tb <= 'd1;
        h_tb <= 'd1;
        sa_tb <= 'd1;
        @(posedge clk_tb);
        #10;
        @(posedge clk_tb);
        #10;
     end
    
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Create Date: 10/04/2020 01:27:15 PM
// Module Name: circuit5_tb
// Project Name: Assignment 1
// 
//////////////////////////////////////////////////////////////////////////////////

module circuit5_tb();
    reg [63:0] a_tb, b_tb, c_tb, d_tb, zero_tb;
    reg clk_tb, rst_tb;
    wire [63:0] z_tb;
    
    circuit5 c5(a_tb, b_tb, c_tb, d_tb, zero_tb, clk_tb, rst_tb, z_tb);
    
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
        zero_tb <= 'd1;
        @(posedge clk_tb);
        #10;
        @(posedge clk_tb);
        a_tb <= 'd100;
        b_tb <= 'd10;
        c_tb <= 'd8;
        d_tb <= 'd4;
        zero_tb <= 'd0;
        #10;
     end
    
endmodule

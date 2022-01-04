`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE574A
// Assignment 1
// Module - 474a_circuit2_tb.v
// Description - Test the '474a_circuit2.v' module.
////////////////////////////////////////////////////////////////////////////////

module circuit4_tb(); 

	reg [63:0] a_tb, b_tb, c_tb;
	reg Reset, Clk;

	wire [31:0] z_tb, x_tb;
	
	circuit4 c4(a_tb, b_tb, c_tb, Clk, Reset, z_tb, x_tb);

    // clock procedure
	initial begin
		Clk <= 1'b0;
		forever #10 Clk <= ~Clk;
	end

	initial begin

        Reset <= 1;

        @(posedge Clk);
        #10 Reset <= 0;  
        @(posedge Clk);
        a_tb <= 'd1;
        b_tb <= 'd2;
        c_tb <= 'd3;
        @(posedge Clk);
        @(posedge Clk);
        @(posedge Clk);        
        @(posedge Clk);
        @(posedge Clk);
        @(posedge Clk);
        a_tb <= 'd0;
        b_tb <= 'd0;
        c_tb <= 'd0;
        @(posedge Clk);
        @(posedge Clk);
        @(posedge Clk);
        @(posedge Clk);
        @(posedge Clk);
        @(posedge Clk);
        a_tb <= 'd1;
        b_tb <= 'd1;
        c_tb <= 'd1;
        @(posedge Clk);
        @(posedge Clk);
        @(posedge Clk);
        @(posedge Clk);
        @(posedge Clk);
        @(posedge Clk);;
        a_tb <= 'd1000;
        b_tb <= 'd2000;
        c_tb <= 'd3000;
        @(posedge Clk);
        @(posedge Clk);
        @(posedge Clk);
        @(posedge Clk);
        @(posedge Clk);
        @(posedge Clk);
        a_tb <= 'd1;
        b_tb <= 'd2;
        c_tb <= 'd3;
	    @(posedge Clk);
        @(posedge Clk);
        @(posedge Clk);
        @(posedge Clk);
        @(posedge Clk);
        @(posedge Clk);
	    a_tb <= 'd1;
        b_tb <= 'd1;
        c_tb <= 'd1;
        @(posedge Clk);
        @(posedge Clk);
        @(posedge Clk);
        @(posedge Clk);
        @(posedge Clk);
        @(posedge Clk);
	
	end

endmodule

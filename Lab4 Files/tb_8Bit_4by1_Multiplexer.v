/************************************************************
 * AUTHOR:		CYRIL ANDRE B. DURANGO
 *	CLASS:		CPE 3101L - INTRODUCTION TO HDL 
 * SCHEDULE:	Group 4 | FRIDAY | 7:30 AM - 10:30 AM
 * -------------------------------------------------------
 * PROJECT FILE TITLE: tb_8Bit_4by1_Multiplexer.v
 *	PROJECT DESCRIPTION:
 *			A Testbench Verilog File of a 
 *       8-Bit 4X1 Multiplexer				
 *
************************************************************/

`timescale 1 ns/1 ps
module tb_8Bit_4by1_Multiplexer();

	reg 	[7:0]	A,B,C,D;
	reg	[1:0]	S;
	wire	[7:0]	Y;
	
	NBit_4by1_Multiplexer #(.N(8))
		UUT(A,B,C,D,S,Y);
	
	initial begin
	
	A = 8'd255 ; B = 8'd128 ; C = 8'd200 ; D = 8'd171 ; S = 2'd0; #10
	S = 2'd1; #10
	S = 2'd2; #10
	S = 2'd3; #10
	
	$stop;
	end

endmodule

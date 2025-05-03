/************************************************************
 * AUTHOR:		CYRIL ANDRE B. DURANGO
 *	CLASS:		CPE 3101L - INTRODUCTION TO HDL 
 * SCHEDULE:	Group 4 | FRIDAY | 7:30 AM - 10:30 AM
 * -------------------------------------------------------
 * PROJECT FILE TITLE: tb_4Bit_4by1_Multiplexer.v
 *	PROJECT DESCRIPTION:
 *			A Testbench Verilog File of a 
 *       4-Bit 4X1 Multiplexer				
 *
************************************************************/

`timescale 1 ns/1 ps
module tb_4Bit_4by1_Multiplexer();

	reg 	[3:0]	A,B,C,D;
	reg	[1:0]	S;
	wire	[3:0]	Y;
	
	NBit_4by1_Multiplexer #(.N(4))
		UUT(A,B,C,D,S,Y);
	
	initial begin
	
	A = 4'd15 ; B = 4'd10 ; C = 4'd5 ; D = 4'd0 ; S = 2'd0; #10
	S = 2'd1; #10
	S = 2'd2; #10
	S = 2'd3; #10
	
	$stop;
	end

endmodule

/************************************************************
 * AUTHOR:		CYRIL ANDRE B. DURANGO
 *	CLASS:		CPE 3101L - INTRODUCTION TO HDL 
 * SCHEDULE:	Group 4 | FRIDAY | 7:30 AM - 10:30 AM
 * -------------------------------------------------------
 * PROJECT FILE TITLE: tb_Comparator_4bit.v
 *	PROJECT DESCRIPTION:
 *			A Testbench Verilog File of a 
 *       4-bit comparator circuit			
 *
************************************************************/

`timescale 1 ns/1 ps
module tb_Comparator_4bit();

	reg 	[3:0]	A,B;
	wire	[2:0]	R;
	
	Comparator_4bit UUT(A,B,R);
	
	initial begin
	
	A = 4'd15;	B = 4'd14;	#10
	A = 4'd11; 	B = 4'd11; 	#10
	A = 4'd13; 	B = 4'd9; 	#10
	A = 4'd10; 	B = 4'd3; 	#10
	A = 4'd0; 	B = 4'd4; 	#10
	A = 4'd1; 	B = 4'd12; 	#10
	A = 4'd4; 	B = 4'd0; 	#10
	A = 4'd7; 	B = 4'd7; 	#10
	A = 4'd6; 	B = 4'd8; 	#10
	A = 4'd5; 	B = 4'd1; 	#10
	
	$stop;
	end

endmodule

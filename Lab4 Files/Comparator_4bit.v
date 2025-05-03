/************************************************************
 * AUTHOR:		CYRIL ANDRE B. DURANGO
 *	CLASS:		CPE 3101L - INTRODUCTION TO HDL 
 * SCHEDULE:	Group 4 | FRIDAY | 7:30 AM - 10:30 AM
 * -------------------------------------------------------
 * PROJECT FILE TITLE: Comparator_4bit.v
 *	PROJECT DESCRIPTION:
 *			A Verilog File of a 4-bit comparator circuit			
 *
************************************************************/

module Comparator_4bit(
	input		[3:0]		A, B,
	output 	[2:0]		R
);
	
	assign	R[2] = ( A > B ) ? 1 : 0;
	assign	R[1] = ( A == B ) ? 1 : 0;
	assign 	R[0] = ( A < B ) ? 1 : 0;
	
	
endmodule 


/************************************************************
 * AUTHOR:		CYRIL ANDRE B. DURANGO
 *	CLASS:		CPE 3101L - INTRODUCTION TO HDL 
 * SCHEDULE:	Group 4 | FRIDAY | 7:30 AM - 10:30 AM
 * -------------------------------------------------------
 * PROJECT FILE TITLE: Decoder_2by4.v
 *	PROJECT DESCRIPTION:
 *			A Verilog File of a 2x4 Decoder Circuit				
 *
************************************************************/

module Decoder_2by4(A,E,D);

	input 	[1:0] A;
	input 			E;
	
	output 	[3:0]	D;
	
	wire		[1:0]	notA;
	
	not		notA0(notA[0],A[0]);
	not		notA1(notA[1],A[1]);
	
	and		D0(D[0], E, notA[0], notA[1]);
	and		D1(D[1], E, A[0]   , notA[1]);
	and		D2(D[2], E, notA[0], A[1]   );
	and		D3(D[3], E, A[0]   , A[1]   );
	
	

endmodule 

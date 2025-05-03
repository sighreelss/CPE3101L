/************************************************************
 * AUTHOR:		CYRIL ANDRE B. DURANGO
 *	CLASS:		CPE 3101L - INTRODUCTION TO HDL 
 * SCHEDULE:	Group 4 | FRIDAY | 7:30 AM - 10:30 AM
 * -------------------------------------------------------
 * PROJECT FILE TITLE: NBit_4by1_Multiplexer.v
 *	PROJECT DESCRIPTION:
 *			A Verilog File of a N-Bit 4-by-1 
 *			Multiplexer circuit			
 *
************************************************************/

module NBit_4by1_Multiplexer
#(
	parameter N = 4
)
(
	input		[N-1:0]	A, B, C, D,
	input		[1:0]		S,
	output 	[N-1:0]	Y
	
);
	
	
	assign Y = 	(S[0] == 0 && S[1] == 0) ? A :
					(S[0] == 1 && S[1] == 0) ? B :
					(S[0] == 0 && S[1] == 1) ? C :
														D;
	

endmodule 
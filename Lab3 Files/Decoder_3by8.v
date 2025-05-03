/************************************************************
 * AUTHOR:		CYRIL ANDRE B. DURANGO
 *	CLASS:		CPE 3101L - INTRODUCTION TO HDL 
 * SCHEDULE:	Group 4 | FRIDAY | 7:30 AM - 10:30 AM
 * -------------------------------------------------------
 * PROJECT FILE TITLE: Decoder_3by8.v
 *	PROJECT DESCRIPTION:
 *			A Verilog File of a 3x8 Decoder Circuit				
 *
************************************************************/

module Decoder_3by8(A,E,D);

	input 	[2:0] A;
	input 			E;
	
	output 	[7:0]	D;
	
	wire		[1:0] Ain;
	wire		[3:0]	En;
	wire		nA2;
	
	and		A3(Ain[1], 0, A[2]);
	and		A2(Ain[0], 1, A[2]);
	
	Decoder_2by4	En_2by4		(	.A (Ain[1:0]) ,
											.E	(E),
											.D (En[3:0])
	);
	
	Decoder_2by4	D1TO3_2by4	(	.A (A[1:0]) ,
											.E	(En[0]),
											.D (D[3:0])
	);
	
	Decoder_2by4	D4TO7_2by4	(	.A (A[1:0]) ,
											.E	(En[1])  ,
											.D (D[7:4])
	);
	


endmodule 
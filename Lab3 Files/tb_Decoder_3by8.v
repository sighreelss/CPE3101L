/************************************************************
 * AUTHOR:		CYRIL ANDRE B. DURANGO
 *	CLASS:		CPE 3101L - INTRODUCTION TO HDL 
 * SCHEDULE:	Group 4 | FRIDAY | 7:30 AM - 10:30 AM
 * -------------------------------------------------------
 * PROJECT FILE TITLE: tb_Decoder_3by8.v
 *	PROJECT DESCRIPTION:
 *			A Testbench Verilog File of a 
 *       3x8 Decoder Circuit				
 *
************************************************************/

`timescale 1 ns/1 ps
module tb_Decoder_3by8();
	
	reg 	[2:0]	A;
	reg			E;

	wire	[7:0]	D;
	
	Decoder_3by8 UUT(A,E,D);
	
	initial
	begin
	   
		E = 0;	
		A[2] = 0;	A[1] = 0; 	A[0] = 0; 	#10
		A[2] = 0; 	A[1] = 0; 	A[0] = 1; 	#10
		A[2] = 0; 	A[1] = 1; 	A[0] = 0; 	#10
		A[2] = 0; 	A[1] = 1; 	A[0] = 1; 	#10
		A[2] = 1; 	A[1] = 0; 	A[0] = 0; 	#10
		A[2] = 1; 	A[1] = 0; 	A[0] = 1; 	#10
		A[2] = 1; 	A[1] = 1; 	A[0] = 0; 	#10
		A[2] = 1; 	A[1] = 1; 	A[0] = 1; 	#10	
		
		E = 1;	
		A[2] = 0;	A[1] = 0; 	A[0] = 0; 	#10
		A[2] = 0; 	A[1] = 0; 	A[0] = 1; 	#10
		A[2] = 0; 	A[1] = 1; 	A[0] = 0; 	#10
		A[2] = 0; 	A[1] = 1; 	A[0] = 1; 	#10
		A[2] = 1; 	A[1] = 0; 	A[0] = 0; 	#10
		A[2] = 1; 	A[1] = 0; 	A[0] = 1; 	#10
		A[2] = 1; 	A[1] = 1; 	A[0] = 0; 	#10
		A[2] = 1; 	A[1] = 1; 	A[0] = 1; 	#10		
		
		
		$stop;
	end

endmodule 
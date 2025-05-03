/************************************************************
 * AUTHOR:		CYRIL ANDRE B. DURANGO
 *	CLASS:		CPE 3101L - INTRODUCTION TO HDL 
 * SCHEDULE:	Group 4 | FRIDAY | 7:30 AM - 10:30 AM
 * -------------------------------------------------------
 * PROJECT FILE TITLE: tb_Decoder_2by4.v
 *	PROJECT DESCRIPTION:
 *			A Testbench Verilog File of a 
 *       2x4 Decoder Circuit				
 *
************************************************************/

`timescale 1 ns/1 ps
module tb_Decoder_2by4();
	
	reg 	[1:0]	A;
	reg			E;

	wire	[3:0]	D;
	
	Decoder_2by4 UUT(A,E,D);
	
	initial
	begin
		E = 0;	A[1] = 0; 	A[0] = 0; 	#10
		E = 0; 	A[1] = 0; 	A[0] = 1; 	#10
		E = 0; 	A[1] = 1; 	A[0] = 0; 	#10
		E = 0; 	A[1] = 1; 	A[0] = 1; 	#10
		E = 1; 	A[1] = 0; 	A[0] = 0; 	#10
		E = 1; 	A[1] = 0; 	A[0] = 1; 	#10
		E = 1; 	A[1] = 1; 	A[0] = 0; 	#10
		E = 1; 	A[1] = 1; 	A[0] = 1; 	#30	
		
		$stop;
	end

endmodule

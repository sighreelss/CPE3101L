/************************************************************
 * AUTHOR:		CYRIL ANDRE B. DURANGO
 *	CLASS:		CPE 3101L - INTRODUCTION TO HDL 
 * SCHEDULE:	Group 4 | FRIDAY | 7:30 AM - 10:30 AM
 * -------------------------------------------------------
 * PROJECT FILE TITLE: NBit_ALU.v
 *	PROJECT DESCRIPTION:
 *			A Verilog File of a N-Bit
 *			Arithmetic Logic Unit 
 *
************************************************************/

module Nbit_ALU
#(
	parameter N = 4
)
(
	input			[N-1:0]	A, B,
	input						CB_in,
	input 		[2:0]		mode,
	output reg 	[N-1:0]	R,
	output reg				CB_out
	
);
	
	reg [N:0] math;
	always @(*)
	if (mode == 0) begin
			math = A + B + CB_in	;
			R = math[N-1:0]		;
			CB_out = math[N]		;
		end
	
	else if (mode == 1) begin
			math = A - B - CB_in ;
			R = math[N-1:0]		;
			CB_out = math[N]		;
		end
	
	else if (mode == 2) begin
			math = 0		;
			CB_out = 0	;
			R = A & B	;
		end
		
	else if (mode == 3) begin
			math = 0		;
			CB_out = 0	;
			R = A | B	;	
		end
		
	else if (mode == 4) begin
			math = 0		;
			CB_out = 0	;
			R = A ^ B	;
		end
		
	else if (mode == 5) begin
			math = 0		;
			CB_out = 0	;
			R = ~A		;
		end
		
	else if (mode == 6) begin
			math = 0			;
			CB_out = 0		;
			R = A + 1'b1	;
		end
		
	else begin
			math = 0			;
			CB_out = 0		;
			R = A - 1'b1	;
	
		end
		
	

endmodule 
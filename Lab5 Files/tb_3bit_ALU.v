/************************************************************
 * AUTHOR:		CYRIL ANDRE B. DURANGO
 *	CLASS:		CPE 3101L - INTRODUCTION TO HDL 
 * SCHEDULE:	Group 4 | FRIDAY | 7:30 AM - 10:30 AM
 * -------------------------------------------------------
 * PROJECT FILE TITLE: tb_3bit_ALU.v
 *	PROJECT DESCRIPTION:
 *						
 *
************************************************************/

`timescale 1 ns/1 ps
module tb_3bit_ALU();

	reg	[2:0]	A, B	;
	reg			CB_in ;
	reg 	[2:0]	mode	;
	wire	[2:0]	R		;
	wire			CB_out;
	
	Nbit_ALU  #(.N(3))
		UUT(A, B, CB_in, mode, R, CB_out);
	
	initial begin
	
		mode = 3'd0 ; 
		A = 3'd5	;	B = 3'd2	;	CB_in = 0; #10
		A = 3'd3	; 	B = 3'd1	; 	CB_in = 1; #10
		A = 3'd6	; 	B = 3'd7	; 	CB_in = 1; #10
		
		mode = 3'd1 ; 
		A = 3'd5	;	B = 3'd2	;	CB_in = 0; #10
		A = 3'd3	; 	B = 3'd1	; 	CB_in = 1; #10
		A = 3'd6	; 	B = 3'd7	; 	CB_in = 1; #10
		
		mode = 3'd2 ; 
		A = 3'd5	;	B = 3'd2	;	CB_in = 0; #10
		A = 3'd3	; 	B = 3'd1	; 	CB_in = 1; #10
		A = 3'd6	; 	B = 3'd7	; 	CB_in = 1; #10
		
		mode = 3'd3 ; 
		A = 3'd5	;	B = 3'd2	;	CB_in = 0; #10
		A = 3'd3	; 	B = 3'd1	; 	CB_in = 1; #10
		A = 3'd6	; 	B = 3'd7	; 	CB_in = 1; #10
		
		mode = 3'd4 ; 
		A = 3'd5	;	B = 3'd2	;	CB_in = 0; #10
		A = 3'd3	; 	B = 3'd1	; 	CB_in = 1; #10
		A = 3'd6	; 	B = 3'd7	; 	CB_in = 1; #10
		
		mode = 3'd5 ; 
		A = 3'd5	;	B = 3'd2	;	CB_in = 0; #10
		A = 3'd3	; 	B = 3'd1	; 	CB_in = 1; #10
		A = 3'd6	; 	B = 3'd7	; 	CB_in = 1; #10
		
		mode = 3'd6 ; 
		A = 3'd5	;	B = 3'd2	;	CB_in = 0; #10
		A = 3'd3	; 	B = 3'd1	; 	CB_in = 1; #10
		A = 3'd6	; 	B = 3'd7	; 	CB_in = 1; #10
		
		mode = 3'd7 ; 
		A = 3'd5	;	B = 3'd2	;	CB_in = 0; #10
		A = 3'd3	; 	B = 3'd1	; 	CB_in = 1; #10
		A = 3'd6	; 	B = 3'd7	; 	CB_in = 1; #10
	
		
		
	$stop;
	end

endmodule

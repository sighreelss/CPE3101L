/************************************************************
 * AUTHOR:		CYRIL ANDRE B. DURANGO
 *	CLASS:		CPE 3101L - INTRODUCTION TO HDL 
 * SCHEDULE:	Group 4 | FRIDAY | 7:30 AM - 10:30 AM
 * -------------------------------------------------------
 * PROJECT FILE TITLE: tb_HexTo7Seg.v
 *	PROJECT DESCRIPTION:
 *						
 *
************************************************************/

`timescale 1 ns/1 ps
module tb_HexTo7Seg();

	reg	[3:0]	Hex;
	reg			DP;
	
	wire	[7:0] SSeg;
	
	HexTo7Seg UUT(Hex, DP, SSeg);
	
	initial begin
		
		DP = 0 ; Hex = 4'd0; #10
		Hex = 4'd1; #10
		Hex = 4'd2; #10
		Hex = 4'd3; #10
		Hex = 4'd4; #10
		Hex = 4'd5; #10
		Hex = 4'd6; #10
		Hex = 4'd7; #10
		Hex = 4'd8; #10
		Hex = 4'd9; #10
		Hex = 4'd10; #10
		Hex = 4'd11; #10
		Hex = 4'd12; #10
		Hex = 4'd13; #10
		Hex = 4'd14; #10
		Hex = 4'd15; #10
		
		DP = 1 ; Hex = 4'd0; #10
		Hex = 4'd1; #10
		Hex = 4'd2; #10
		Hex = 4'd3; #10
		Hex = 4'd4; #10
		Hex = 4'd5; #10
		Hex = 4'd6; #10
		Hex = 4'd7; #10
		Hex = 4'd8; #10
		Hex = 4'd9; #10
		Hex = 4'd10; #10
		Hex = 4'd11; #10
		Hex = 4'd12; #10
		Hex = 4'd13; #10
		Hex = 4'd14; #10
		Hex = 4'd15; #10

	$stop;
	end

endmodule

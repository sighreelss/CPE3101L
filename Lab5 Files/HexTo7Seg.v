/************************************************************
 * AUTHOR:		CYRIL ANDRE B. DURANGO
 *	CLASS:		CPE 3101L - INTRODUCTION TO HDL 
 * SCHEDULE:	Group 4 | FRIDAY | 7:30 AM - 10:30 AM
 * -------------------------------------------------------
 * PROJECT FILE TITLE: HexTo7Seg.v
 *	PROJECT DESCRIPTION:
 *			A Verilog File of a Hexadecimal Digit to 7-Segment
 *			Conversion Circuit
 *
************************************************************/

module HexTo7Seg(
	input			[3:0]		Hex,
	input						DP,
	output reg 	[7:0]		SSeg
);
	
	reg [6:0] dig; 
	
	always @(*)
	begin	
		case (Hex)
			4'd0	:	dig = 7'b0000001;
			4'd1	:	dig = 7'b1001111;
			4'd2	:	dig = 7'b0010010;
			4'd3	:	dig = 7'b0000110;
			4'd4	:	dig = 7'b1001100;
			4'd5	:	dig = 7'b0100100;
			4'd6	:	dig = 7'b0100000;
			4'd7	:	dig = 7'b0001111;
			4'd8	:	dig = 7'b0000000;
			4'd9	:	dig = 7'b0000100;
			4'd10	:	dig = 7'b0001000;
			4'd11	:	dig = 7'b1100000;
			4'd12	:	dig = 7'b0110001;
			4'd13	:	dig = 7'b1000010;
			4'd14	:	dig = 7'b0110000;
			4'd15	:	dig = 7'b0111000;	
		endcase
		SSeg = {dig, ~DP};
		
	end	
	
endmodule 

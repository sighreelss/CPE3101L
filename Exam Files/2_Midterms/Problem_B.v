/************************************************************
 * AUTHOR:		CYRIL ANDRE B. DURANGO
 *	CLASS:		CPE 3101L - INTRODUCTION TO HDL 
 * SCHEDULE:	Group 4 | FRIDAY | 7:30 AM - 10:30 AM
 * -------------------------------------------------------
 * PROJECT FILE TITLE: Problem_B.v
 *
************************************************************/

module Problem_B
(
	input			[3:0]	BCD_in,
	output reg	[8:0]	BGraph_out
);

	always @(*)
	begin
		casez (BCD_in)
			4'd0 : BGraph_out = 9'b000000000 ;
			4'd1 : BGraph_out = 9'b000000001 ;
			4'd2 : BGraph_out = 9'b000000011 ;
			4'd3 : BGraph_out = 9'b000000111 ;
			4'd4 : BGraph_out = 9'b000001111 ;
			4'd5 : BGraph_out = 9'b000011111 ;
			4'd6 : BGraph_out = 9'b000111111 ;
			4'd7 : BGraph_out = 9'b001111111 ;
			4'd8 : BGraph_out = 9'b011111111 ;
			default: BGraph_out = 9'b111111111 ;
		endcase
		
	end

	
endmodule 
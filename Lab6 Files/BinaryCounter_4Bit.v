/************************************************************
 * AUTHOR:		CYRIL ANDRE B. DURANGO
 *	CLASS:		CPE 3101L - INTRODUCTION TO HDL 
 * SCHEDULE:	Group 4 | FRIDAY | 7:30 AM - 10:30 AM
 * -------------------------------------------------------
 * PROJECT FILE TITLE: BinaryCounter_4Bit.v
 *
************************************************************/

module BinaryCounter_4Bit
(
	input	wire			Count_en, nReset, Clk, Load, Up,
	input			[3:0]	Count_in,
	output reg	[3:0] Count_out 

);

	always @(negedge Clk, negedge nReset)
	begin	
		if (!nReset)
			Count_out <= 4'd0;
			
		else if (Load)
			Count_out <= Count_in;
			
		else if (Count_en && Up)
			Count_out <= Count_out + 1;
			
		else if (Count_en && !Up)
			Count_out <= Count_out - 1;
			
	end

	
endmodule 
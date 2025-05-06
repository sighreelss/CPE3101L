/************************************************************
 * AUTHOR:		CYRIL ANDRE B. DURANGO
 *	CLASS:		CPE 3101L - INTRODUCTION TO HDL 
 * SCHEDULE:	Group 4 | FRIDAY | 7:30 AM - 10:30 AM
 * -------------------------------------------------------
 * PROJECT FILE TITLE: Problem_A.v
 *
************************************************************/

module Problem_A
(
	input		[3:0]	Month_in,
	input				LeapYear_in,
	
	output reg		NumDays28_out, 
	output reg		NumDays29_out, 
	output reg		NumDays30_out, 
	output reg		NumDays31_out
);
	

	
	always @(*)
	begin
		casez ({Month_in,LeapYear_in})
			5'b0001?	:	begin NumDays28_out = 1'b0 ; NumDays29_out = 1'b0 ; NumDays30_out = 1'b0 ; NumDays31_out = 1'b1 ; end
			5'b00100	:	begin NumDays28_out = 1'b1 ; NumDays29_out = 1'b0 ; NumDays30_out = 1'b0 ; NumDays31_out = 1'b0 ; end
			5'b00101	:	begin NumDays28_out = 1'b0 ; NumDays29_out = 1'b1 ; NumDays30_out = 1'b0 ; NumDays31_out = 1'b0 ; end
			5'b0011?	:	begin NumDays28_out = 1'b0 ; NumDays29_out = 1'b0 ; NumDays30_out = 1'b0 ; NumDays31_out = 1'b1 ; end
			5'b0100?	:	begin NumDays28_out = 1'b0 ; NumDays29_out = 1'b0 ; NumDays30_out = 1'b1 ; NumDays31_out = 1'b0 ; end
			5'b0101?	:	begin NumDays28_out = 1'b0 ; NumDays29_out = 1'b0 ; NumDays30_out = 1'b0 ; NumDays31_out = 1'b1 ; end
			5'b0110?	:	begin NumDays28_out = 1'b0 ; NumDays29_out = 1'b0 ; NumDays30_out = 1'b1 ; NumDays31_out = 1'b0 ; end
			5'b0111?	:	begin NumDays28_out = 1'b0 ; NumDays29_out = 1'b0 ; NumDays30_out = 1'b0 ; NumDays31_out = 1'b1 ; end
			5'b1000?	:	begin NumDays28_out = 1'b0 ; NumDays29_out = 1'b0 ; NumDays30_out = 1'b0 ; NumDays31_out = 1'b1 ; end
			5'b1001?	:	begin NumDays28_out = 1'b0 ; NumDays29_out = 1'b0 ; NumDays30_out = 1'b1 ; NumDays31_out = 1'b0 ; end
			5'b1010?	:	begin NumDays28_out = 1'b0 ; NumDays29_out = 1'b0 ; NumDays30_out = 1'b0 ; NumDays31_out = 1'b1 ; end
			5'b1011?	:	begin NumDays28_out = 1'b0 ; NumDays29_out = 1'b0 ; NumDays30_out = 1'b1 ; NumDays31_out = 1'b0 ; end
			5'b1100?	:	begin NumDays28_out = 1'b0 ; NumDays29_out = 1'b0 ; NumDays30_out = 1'b0 ; NumDays31_out = 1'b1 ; end
			default	:	begin NumDays28_out = 1'b0 ; NumDays29_out = 1'b0 ; NumDays30_out = 1'b0 ; NumDays31_out = 1'b0 ; end
		endcase
		
	end

	
endmodule 
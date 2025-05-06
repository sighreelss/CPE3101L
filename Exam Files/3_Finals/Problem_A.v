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
	input	wire	En, nReset, Clk,
	output reg	[5:0] Q 
);
	reg counter;

	always @(negedge Clk, negedge nReset)
	begin
		if (!nReset)
			Q <= 6'd0;
		else if (En) begin
			Q <= {~Q[0], Q[5:1]};
		end
		else if (!En)
			Q <= Q;
			
	end

	
endmodule 
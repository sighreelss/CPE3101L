/************************************************************
 * AUTHOR:		CYRIL ANDRE B. DURANGO
 *	CLASS:		CPE 3101L - INTRODUCTION TO HDL 
 * SCHEDULE:	Group 4 | FRIDAY | 7:30 AM - 10:30 AM
 * -------------------------------------------------------
 * PROJECT FILE TITLE: ProblemCO2.v				
************************************************************/

module ProblemCO2 (
	input x1, x2, x3,
	output f
);
	
	wire 	g, h, k;
	
	not	N1(k, x2);
	and 	A1(g, x1, x2);
	and 	A2(h, k, x3);
	or 	O1(f, g, h);
	
	
endmodule 
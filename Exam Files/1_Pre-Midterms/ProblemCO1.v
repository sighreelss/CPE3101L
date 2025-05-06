/************************************************************
 * AUTHOR:		CYRIL ANDRE B. DURANGO
 *	CLASS:		CPE 3101L - INTRODUCTION TO HDL 
 * SCHEDULE:	Group 4 | FRIDAY | 7:30 AM - 10:30 AM
 * -------------------------------------------------------
 * PROJECT FILE TITLE: ProblemCO1.v				
************************************************************/

module ProblemCO1(G,A,B,C);
	
	input 	A, B, C;
	
	output 	G;
	
	wire 		w1, w2, w3, w4;
	
	not 	N1(w1, C);
	
	or 	OR1(w2, B, C);
	or 	OR2(G, w3, w4);
	
	and	AND1(w3, B, w1);
	and 	AND2(w4, A, w2);

endmodule 


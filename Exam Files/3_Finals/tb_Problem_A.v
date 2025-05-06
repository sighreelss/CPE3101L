/************************************************************
 * AUTHOR:		CYRIL ANDRE B. DURANGO
 *	CLASS:		CPE 3101L - INTRODUCTION TO HDL 
 * SCHEDULE:	Group 4 | FRIDAY | 7:30 AM - 10:30 AM
 * -------------------------------------------------------
 * PROJECT FILE TITLE: tb_Problem_A.v						
 *
************************************************************/

`timescale 1 ns/1 ps
module tb_Problem_A();
	reg			En, nReset, Clk;
	wire	[5:0] Q;

	Problem_A UUT(En, nReset, Clk, Q);
	
	initial 
		Clk = 1'b0;
	
	always 
		#2 Clk = ~ Clk;
		
	initial begin
		nReset = 1'b0;	#16
		nReset = 1'b1;	
	end
	
	
	initial begin
		En = 1'b0; #8
		En = 1'b1; #8
		En = 1'b0; #8
		En = 1'b1; #24
		En = 1'b0; #8
		En = 1'b1; #24
		

		
	$stop;
	end
	


endmodule 
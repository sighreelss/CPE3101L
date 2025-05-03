/************************************************************                  
 * AUTHOR:		CYRIL ANDRE B. DURANGO
 *	CLASS:		CPE 3101L - INTRODUCTION TO HDL 
 * SCHEDULE:	Group 4 | FRIDAY | 7:30 AM - 10:30 AM
 * -------------------------------------------------------
 * PROJECT FILE TITLE: tb_JK_Flipflop.v
 *
************************************************************/
`timescale 1 ns / 1 ps
module tb_JK_Flipflop();
	reg 	J, K, Reset, Clk;
	wire 	Q, Q_bar;
	
	JK_Flipflop UUT(J, K, Reset, Clk, Q, Q_bar);
	
	initial 
		Clk = 1'b0;
	always 
		#4 Clk = ~ Clk;
	
	initial begin
		Reset = 1'b1; #35
		Reset = 1'b0;
	end
	
	initial begin
		J = 1'b0;	K = 1'b0;	#10
		J = 1'b0;	K = 1'b1;	#10
		J = 1'b1;	K = 1'b0;	#8
		J = 1'b1;	K = 1'b1;	#8
		
		J = 1'b0;	K = 1'b0;	#8
		J = 1'b0;	K = 1'b1;	#8
		J = 1'b1;	K = 1'b0;	#8
		J = 1'b1;	K = 1'b1;	#8
	$stop;
	end	
	
endmodule 
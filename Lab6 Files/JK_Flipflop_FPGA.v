/************************************************************
 * AUTHOR:		CYRIL ANDRE B. DURANGO
 *	CLASS:		CPE 3101L - INTRODUCTION TO HDL 
 * SCHEDULE:	Group 4 | FRIDAY | 7:30 AM - 10:30 AM
 * -------------------------------------------------------
 * PROJECT FILE TITLE: JK_Flipflop_FPGA.v
 *	PROJECT DESCRIPTION:
 *
************************************************************/

module JK_Flipflop_FPGA(
	input wire	J, K, Reset, Clk_FPGA,
	output wire Q, Q_bar
);

	wire Clk;
	
	Clock_converter Clk1(Clk_FPGA, Clk);
	JK_Flipflop	JKFF1(J, K, Reset, Clk, Q, Q_bar);
	


endmodule 
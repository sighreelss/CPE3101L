/************************************************************
 * AUTHOR:		CYRIL ANDRE B. DURANGO
 *	CLASS:		CPE 3101L - INTRODUCTION TO HDL 
 * SCHEDULE:	Group 4 | FRIDAY | 7:30 AM - 10:30 AM
 * -------------------------------------------------------
 * PROJECT FILE TITLE: Binary_4bitcounter_FPGA.v
 *
************************************************************/

module Binary_4bitcounter_FPGA(
	input	wire		Count_en, nReset, Clk_FPGA, Load, Up,
	input	wire		[3:0]	Count_in,
	output wire		[3:0] Count_out 
);

	wire Clk;
	
	Clock_converter 		Clk1(Clk_FPGA, Clk);
	BinaryCounter_4Bit	BinaryCount(Count_en, nReset, Clk, Load, Up, Count_in, Count_out);
	


endmodule 
/************************************************************
 * AUTHOR:		CYRIL ANDRE B. DURANGO
 *	CLASS:		CPE 3101L - INTRODUCTION TO HDL 
 * SCHEDULE:	Group 4 | FRIDAY | 7:30 AM - 10:30 AM
 * -------------------------------------------------------
 * PROJECT FILE TITLE: tb_BinaryCounter_4Bit.v						
 *
************************************************************/

`timescale 1 ns/1 ps
module tb_BinaryCounter_4Bit();
	reg			Count_en, nReset, Clk, Load, Up;
	reg	[3:0]	Count_in;
	wire	[3:0] Count_out;

	BinaryCounter_4Bit UUT(Count_en, nReset, Clk, Load, Up, Count_in, Count_out);
	
	initial 
		Clk = 1'b0;
	
	always 
		#2 Clk = ~ Clk;
		
	initial begin
		nReset = 1'b0;	#67
		nReset = 1'b1;	
	end
	
	initial begin
		Load = 1'b1;	#35
		Load = 1'b0;	#32
		Load = 1'b1;	#32
		Load = 1'b0;	
	end
	
	initial begin
		Count_en = 1'b0;	#19
		Count_en = 1'b1;	#16
		Count_en = 1'b0;	#16
		Count_en = 1'b1;	#16
		Count_en = 1'b0;	#16
		Count_en = 1'b1;	#16
		Count_en = 1'b0;	#16
		Count_en = 1'b1;	
	end
	
	initial begin
		Count_in = 4'd8; 
		Up = 1'b0;	#9
		Up = 1'b1;	#10
		Up = 1'b0;	#8
		Up = 1'b1;	#8
		Up = 1'b0;	#8
		Up = 1'b1;	#8
		Up = 1'b0;	#8
		Up = 1'b1;	#8
		
		Up = 1'b0;	#8
		Up = 1'b1;	#8
		Up = 1'b0;	#8
		Up = 1'b1;	#8
		Up = 1'b0;	#8
		Up = 1'b1;	#8
		Up = 1'b0;	#16
		Up = 1'b1;	#16

		
	$stop;
	end
	


endmodule 
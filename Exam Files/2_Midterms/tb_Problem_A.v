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

	reg		[3:0]	Month_in;
	reg				LeapYear_in;
	
	wire		NumDays28_out; 
	wire		NumDays29_out; 
	wire		NumDays30_out; 
	wire		NumDays31_out;
	

	Problem_A UUT(Month_in,LeapYear_in,NumDays28_out,NumDays29_out,NumDays30_out,NumDays31_out);
	initial begin
		LeapYear_in = 0 ; Month_in = 4'd0; #10
		Month_in = 4'd1; #10
		Month_in = 4'd2; #10
		Month_in = 4'd3; #10
		Month_in = 4'd4; #10
		Month_in = 4'd5; #10
		Month_in = 4'd6; #10
		Month_in = 4'd7; #10
		Month_in = 4'd8; #10
		Month_in = 4'd9; #10
		Month_in = 4'd10; #10
		Month_in = 4'd11; #10
		Month_in = 4'd12; #10
		Month_in = 4'd13; #10
		Month_in = 4'd14; #10
		Month_in = 4'd15; #10
		
		LeapYear_in = 1 ; Month_in = 4'd0; #10
		Month_in = 4'd1; #10
		Month_in = 4'd2; #10
		Month_in = 4'd3; #10
		Month_in = 4'd4; #10
		Month_in = 4'd5; #10
		Month_in = 4'd6; #10
		Month_in = 4'd7; #10
		Month_in = 4'd8; #10
		Month_in = 4'd9; #10
		Month_in = 4'd10; #10
		Month_in = 4'd11; #10
		Month_in = 4'd12; #10
		Month_in = 4'd13; #10
		Month_in = 4'd14; #10
		Month_in = 4'd15; #10
		
		$stop;
	end

	
endmodule 
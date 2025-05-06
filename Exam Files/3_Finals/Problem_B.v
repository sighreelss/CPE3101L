/************************************************************
 * AUTHOR:		CYRIL ANDRE B. DURANGO
 *	CLASS:		CPE 3101L - INTRODUCTION TO HDL 
 * SCHEDULE:	Group 4 | FRIDAY | 7:30 AM - 10:30 AM
 * -------------------------------------------------------
 * PROJECT FILE TITLE: Problem_B.v
************************************************************/
module Problem_B(
	input 				Clk_FPGA,
	input wire	[1:0] A,
	output wire	[4:0] Z
);
	wire Clk;
	
	Clock_converter Clk1(Clk_FPGA, Clk);
	Problem_B_Code	PBC1(Clk, A, Z);
	
endmodule 

module Problem_B_Code(
	input 				Clk,
	input wire	[1:0] A,
	output reg	[4:0] Z
);
	always @(posedge Clk)
	begin	
		if (A == 2'd3)
			Z <= 4'd0;
			
		else if (A == 0) begin
			Z <= Z + 4'd2;
			if (Z == 30)
				Z <= Z;
		end
		else if (A == 1) begin
			Z <= Z - 4'd2;
			if (Z == 0)
				Z <= Z;
		end
		else if (A == 2)
			Z <= Z;		
	end
	
endmodule 

module Clock_converter(
	input wire	Clk_FPGA,
	output reg	Clk_converted
);

	reg	[25:0] 	counter;

	always @(posedge Clk_FPGA)
	begin
		counter <= counter + 1;
		if (counter == 25'd25000000) begin
			Clk_converted <= ~Clk_converted;
			counter <= 0;
		end
	end

endmodule 
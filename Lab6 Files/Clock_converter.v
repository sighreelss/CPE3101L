/************************************************************
 * AUTHOR:		CYRIL ANDRE B. DURANGO
 *	CLASS:		CPE 3101L - INTRODUCTION TO HDL 
 * SCHEDULE:	Group 4 | FRIDAY | 7:30 AM - 10:30 AM
 * -------------------------------------------------------
 * PROJECT FILE TITLE: Clock_converter.v
 *
************************************************************/

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
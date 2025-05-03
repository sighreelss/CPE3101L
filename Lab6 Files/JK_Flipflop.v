/************************************************************
 * AUTHOR:		CYRIL ANDRE B. DURANGO
 *	CLASS:		CPE 3101L - INTRODUCTION TO HDL 
 * SCHEDULE:	Group 4 | FRIDAY | 7:30 AM - 10:30 AM
 * -------------------------------------------------------
 * PROJECT FILE TITLE: JK_Flipflop.v
 *
************************************************************/
module JK_Flipflop
(
	input	wire	J, K, Reset, Clk,
	output reg	Q, 
	output		Q_bar
);
	assign Q_bar = ~Q;
	always @(negedge Clk, posedge Reset)
	begin
		
		if (Reset)
			Q <= 1'b0;
		else
			begin
				if (!J & !K)
					Q <= Q;
					
				else if (!J & K)
					Q <= 1'b0;
			
				else if (J & !K)
					Q <= 1'b1;
				
				else
					Q <= ~Q;
		
			end
	end

	
endmodule 
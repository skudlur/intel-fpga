// d-latch

module d_latch(
					clk,
					d,
					q
					);
					
	input logic clk, d;
	output logic q;
	
	always @(clk) begin
		if(clk)
			q <= d;
	end
endmodule
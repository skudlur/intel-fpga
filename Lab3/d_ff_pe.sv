// d-ff pe

module d_ff_pe(
					clk,
					d,
					q
					);
	input logic clk, d;
	output logic q;
	
	always @(posedge clk) begin
		q <= d;
	end
endmodule
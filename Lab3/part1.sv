// rs latch

module part1(
				clk,
				r,
				s,
				q
				);
	input logic clk;
	input logic r,s;
	
	output logic q;
	
	logic y1, y2, qa, qb;
	
	assign y1 = r & clk;
	assign y2 = s & clk;
	assign qa = ~(y1 | qb);
	assign qb = ~(y2 | qa);
	
	assign q = qa;
	
endmodule
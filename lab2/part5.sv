// bcd adder improved

module part5(
				a,
				b,
				c0,
				to,
				s0,
				s1
				);
	
	input logic [3:0] a, b;
	input logic c0;

	output logic [3:0] to;
	output logic [3:0] s0;
	output logic s1;
	
	logic [3:0] z0;
	logic c1;
	
	assign to = a + b + c0;
	assign z0 = (to > 4'd9) ? 4'd10: 4'd0;
	assign c1 = (to > 4'd9) ? 1: 0;
	
	assign s0 = to - z0;
	assign s1 = c1;
endmodule
// 4to1 mux

module part3(
				a,
				b,
				c,
				d,
				s1,
				s2,
				y
				);
				
	input logic [1:0] a, b, c, d;
	input logic s1,s2;
	
	output logic [1:0] y;
	
	logic y1, y2;
	
	assign y1 = s1 ? b: a;
	assign y2 = s1 ? d: c;
	assign y = s2 ? y1: y2;
	
endmodule

// toggle ff

module toggle_ff(
					clk,
					rst,
					t,
					q
					);
	input logic clk,rst;
	input logic t;
	
	output logic q;
	
	logic r,s,qb;
	
	and g1 (r,t,clk,qa);
	and g2 (s,t,clk,qb);
	nor g3 (q,qb,r);
	nor g4 (qb,q,s);
			
endmodule
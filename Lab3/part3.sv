//part3 d-ff

module part3(
				clk,
				d,
				q
				);
	input logic clk;
	input logic d;
	
	output logic q;
	
	logic qm;
	
	part2 l1 (~clk,d,qm);
	part2 l2 (clk,qm,q);
endmodule
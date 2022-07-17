// part4

module part4(
				clk,
				d,
				qa,
				qb,
				qc
				);
	input logic d;
	input logic clk;
	
	output logic qa,qb,qc;
	
	d_latch d1 (clk,d,qa);
	part3 d2 (clk,d,qb);
	part3 d3 (~clk,d,qc);
	
endmodule
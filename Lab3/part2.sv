// part2 dlatch

module part2(
				clk,
				d,
				q
				);
				
	input logic clk;
	input logic d;
	
	output logic q;
	
	logic y1, y2, qa, qb;
	
	nand g1 (y1,d,clk);
	nand g2 (y2,~d,clk);
	nand g3 (qa,y1,qb);
	nand g4 (qb,y2,qa);
	
	assign q = qa;
endmodule

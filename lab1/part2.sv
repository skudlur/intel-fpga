module part2 (sel, x, y, out);
	input logic sel;
	input logic [3:0] x,y;
	
	output logic [3:0] out;
	
	assign out = sel ? y: x;
	
endmodule

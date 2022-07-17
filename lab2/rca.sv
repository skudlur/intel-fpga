module rca(
			a,
			b,
			cin,
			s,
			cout
			);
			
	input logic [3:0] a, b;
	input logic cin;
	output logic cout;
	output logic [3:0] s;
	
	logic [2:0] c;
	logic [3:0] y1;
	
	assign y1[0] = a[0] ^ b[0];
	assign s[0] = a[0] & b[0];
	assign c[0] = y1[0] ? cin: b[0];
	
	assign y1[1] = a[1] ^ b[1];
	assign s[1] = a[1] & b[1];
	assign c[1] = y1[1] ? c[0]: b[1];
	
	assign y1[2] = a[2] ^ b[2];
	assign s[2] = a[2] & b[2];
	assign c[2] = y1[2] ? c[1]: b[2];
	
	assign y1[3] = a[3] ^ b[3];
	assign s[3] = a[3] & b[3];
	assign cout = y1[3] ? c[2]: b[3];
endmodule
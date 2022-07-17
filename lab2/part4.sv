// bcd adder

module part4(
				a,
				b,
				cin,
				s,
				cout
				);
				
	input logic [3:0] a, b;
	input logic cin;
	
	output logic [3:0] s;
	output logic cout;
	
	logic [3:0] y1;
	logic z1, z2, c1out;
	logic [3:0] ain1;
	
	part3 a1 (a, b, cin, y1, c1out); // first adder
	assign z1 = y1[3] & y1[2];
	assign z2 = y1[3] & y1[1];
	assign cout = c1out | z1 | z2;
	
	assign ain1[0] = 0;
	assign ain1[1] = cout;
	assign ain1[2] = cout;
	assign ain1[3] = 0;
	
	part3 a2 (ain1,y1,0,s,0); // second adder
endmodule
	
// part3 adder test

module part3_tb();
	reg [3:0]a,b;
	reg c;
	wire [3:0]s;
	wire cout;
	
	part3 dut (a,b,c,s,cout);
	
	initial begin
		a = 4'd4;
		b = 4'd1;
		c = 0;
		#10;
		a = 4'd10;
		b = 4'd2;
		c = 0;
		#10;
		a = 4'd11;
		b = 4'd5;
		c = 1;
		#10;
		a = 4'd5;
		b = 4'd8;
		c = 1;
		#10;
		$finish;
	end
endmodule
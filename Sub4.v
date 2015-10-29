module Sub4( A[3:0], B[3:0], carryOut, result2[3:0], carryIn);
	
	input [3:0] A, B;
	output [3:0] result2;
	input carryIn;
	output carryOut;
	wire [3:0] negative;
	wire carryIn2;
	
	xor(carryIn2, 1);
	
	xor(negative[3], B[3], 1);
	xor(negative[2], B[2], 1);
	xor(negative[1], B[1], 1);
	xor(negative[0], B[0], 1);

	Adder4 addProcess( A, negative, carryOut, result2, carryIn2);

endmodule
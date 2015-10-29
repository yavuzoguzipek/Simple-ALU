module Adder4( A[3:0], B[3:0], carryOut, result[3:0], carryIn);

	input carryIn;
	input [3:0] A, B;
	output carryOut;
	output [3:0] result;
	
	wire c1, c2, c3;

	Adder1 addr1(A[0], B[0], result[0], c1, carryIn);
	Adder1 addr2(A[1], B[1], result[1], c2, c1);
	Adder1 addr3(A[2], B[2], result[2], c3, c2);
	Adder1 addr4(A[3], B[3], result[3], carryOut, c3);


endmodule
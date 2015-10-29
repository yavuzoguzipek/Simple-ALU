module MyXor(	 A[3:0] , B[3:0] , result4[3:0]  );

   input  [3:0] A;
	input  [3:0] B;
	output [3:0] result4;

	xor(result4[0], A[0], B[0]);
	xor(result4[1], A[1], B[1]);
	xor(result4[2], A[2], B[2]);
	xor(result4[3], A[3], B[3]);
	
endmodule




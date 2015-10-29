module MyAnd(	 A[3:0] , B[3:0] , result3[3:0]  );

   input  [3:0] A;
	input  [3:0] B;
	output [3:0] result3;

	and(result3[0], A[0], B[0]);
	and(result3[1], A[1], B[1]);
	and(result3[2], A[2], B[2]);
	and(result3[3], A[3], B[3]);

endmodule


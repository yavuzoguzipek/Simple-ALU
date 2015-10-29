module Adder1( x, y, result, carryOut, carryIn);

	input  x, y, carryIn;
	output result, carryOut;
	wire   temp, temp2, temp3;

	xor(temp, x, y);
	xor(result, temp, carryIn);


	and(temp2, temp, carryIn);
	and(temp3, x, y);
	or(carryOut, temp2, temp3);


endmodule
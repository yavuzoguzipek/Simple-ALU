module Proje( led[9:0], hex0[6:0], sw[9:0]);

	input  [9:0] sw;	
	output [9:0] led;	
	output [6:0] hex0;	
	
	wire [3:0]result1;
	wire [3:0]result2;
   wire [3:0]result3;
   wire [3:0]result4;
	wire carryOut, carryIn;
	wire carryOut2, carryIn2;
	
	and(carryIn, 0);
	
	Adder4 myAdd( sw[3:0], sw[7:4], carryOut, result1, carryIn );
	Sub4   mySub( sw[3:0], sw[7:4], carryOut2, result2, carryIn2 );
	MyAnd  my_And( sw[3:0], sw[7:4], result3 );
	MyXor  my_Xor( sw[3:0], sw[7:4], result4 );
	
	mux_full testme (led[3:0], sw[9:8], result1, result2, result3, result4); 
   and(led[4], 0);	
   and(led[5], 0);
   and(led[6], 0);	
   and(led[7], 0);
   and(led[8], 0);	
   and(led[9], 0);	 
	SevenSegment mySS( hex0, led[3:0]);
	//and(led[4], 0);	
								
endmodule
module SevenSegment( hex0[6:0], led[3:0] );

        input  [3:0] led;
        output [6:0] hex0;
		  wire [6:0] hex1;
		 //reg [6:0] hex0;
		  

		wire temp, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11, temp12, temp13, temp14, temp15, temp16;
		wire temp17, temp18, temp19, temp20, temp21, temp22, temp23, temp24, temp25, temp26, temp27, temp28, temp29;
		wire temp2, temp30 , temp31, temp32, temp33, temp34, temp35, temp36, temp37, temp38, temp39, temp40, temp41;
		wire temp3;  //  hex0[], ~
		
		
		// a
		xor(temp , led[3], led[0] );  and(temp5, temp, led[2]);
		xor(temp2 , led[3], led[1]); and(temp6, temp2, ~led[2]);
		and(temp3, ~led[2], ~led[0]); 
		and(temp4, led[2], led[1]);
		or(hex1[6], temp5, temp6, temp3, temp4);

		
		// b
	 	xor(temp7 , led[3], led[1] );  and(temp8, temp7, led[0]);
		and(temp9 , ~led[2], ~led[0]); 
		and(temp10, ~led[3], ~led[2]); 
		and(temp11, ~led[3], ~led[1]); and(temp12, temp11, ~led[0]);
		or(hex1[5], temp8, temp9, temp10, temp12);
		
		// c
	 	xor(temp28 , led[3], led[2] );  
		or(temp13 , ~led[3], ~led[1]);  and(temp14, led[0], temp13); 
		and(temp15, ~led[3], ~led[1]); 
		or(hex1[4], temp28, temp14, temp15);
		
		///////////////////////////////////////////////////////////////
	   // d
		and(temp16, led[3], ~led[1]);
		and(temp17, ~led[3], ~led[2], ~led[0]);
		and(temp18,  ~led[2], led[1], led[0]);
		and(temp19, led[2], ~led[1], led[0]);
		and(temp20, led[2], led[1], ~led[0]);
		or(hex1[3], temp16, temp17, temp18, temp19, temp20);
		/*
	 	and(temp16 , ~led[2], ~led[1] );    and(temp17 , led[3], led[2] );
		or(temp18, temp16, temp17 );   and(temp19, temp18, ~led[0]);
		xor(temp20 , led[3], led[1]);  and(temp21, temp20, ~led[2]); 
		xor(temp22 , led[2], led[1]); and(temp23, temp22, led[0]); 
		or(hex1[3], temp19, temp21, temp23);
		*/
		
    	// e
	 	and(temp24 , led[1], ~led[0] );  
		and(temp25 , ~led[2], ~led[0]);  
		and(temp26, led[3], led[1]); 
		and(temp27, led[3], led[2]); 
		or(hex1[2], temp24, temp25, temp26, temp27);
		
		
		// f
		and(temp29, ~led[1], ~led[0]);
		and(temp30, led[2], ~led[0]);
		and(temp31, led[3], ~led[2]);
		and(temp32, led[3], led[1]);
		and(temp33, ~led[3], led[2], ~led[1]);
		or(hex1[1], temp29, temp30, temp31, temp32 , temp33);
		/*
	 	and(temp29 , ~led[2], ~led[1] );    and(temp30 , led[3], led[2] );
		or(temp31, temp29, temp30 );   and(temp32, temp31, ~led[0]);
		and(temp33 , ~led[3], ~led[1]);  and(temp34, temp33, led[2]); 
		and(temp35, led[3], led[2]);
		or(hex1[1], temp35, temp34, temp32);
		*/
		
   	// g
		and(temp36,  ~led[2], led[1]);
		and(temp37,  led[1], ~led[0]);
		and(temp38,  led[3], ~led[2] );
		and(temp39,  led[3],  led[0]);
		and(temp40,  ~led[3], led[2], ~led[1] );
		or(hex1[0], temp36, temp37, temp38, temp39, temp40);
		/*
	 	xor(temp36 , led[2], led[1] );   and(temp37 , ~led[3], temp36); 
		and(temp38 , ~led[3], ~led[0] );   and(temp39 , led[2], temp38); 	
		and(temp40 , led[3], ~led[2]);  
		and(temp41, led[3], led[1]); 
		or(hex1[0], temp41, temp40, temp39, temp37);
		*/
		
 
		
		xor(hex0[6], hex1[6], 1);
		xor(hex0[5], hex1[5], 1);
		xor(hex0[4], hex1[4], 1);
		xor(hex0[3], hex1[3], 1);
		xor(hex0[2], hex1[2], 1);
		xor(hex0[1], hex1[1], 1);
		xor(hex0[0], hex1[0], 1);
		
		
	
		
		

		


endmodule
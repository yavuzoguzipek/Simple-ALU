module demo2();
	wire [6:0] selector;
	reg [3:0] subtractor;

	
	SevenSegment test_Me ( selector,  subtractor );
	initial begin $monitor(
		//"x=%b y=%b a=%b b=%b c=%b", x, y, a, b, c); 
		"selector[6]=%b selector[5]=%b selector[4]=%b selector[3]=%b selector[2]=%b selector[1]=%b; selector[0]=%b;", selector[6], selector[5], selector[4], selector[3], selector[2], selector[1], selector[0]);
	
		subtractor[0]=0; subtractor[1]=0; subtractor[2]=0; subtractor[3]=1; 
	
	
		#20
		subtractor[0]=1; subtractor[1]=0; subtractor[2]=0; subtractor[3]=1; 
	
		#20
		subtractor[0]=0; subtractor[1]=1; subtractor[2]=0; subtractor[3]=1; 
	
	   #20
		subtractor[0]=1; subtractor[1]=1; subtractor[2]=0; subtractor[3]=1; 
	
	/*	subtractor[0]=0; subtractor[1]=0; subtractor[2]=0; subtractor[3]=0; 
		
		#20
		subtractor[0]=1; subtractor[1]=0; subtractor[2]=0; subtractor[3]=0; 
		
		#20
		subtractor[0]=0; subtractor[1]=1; subtractor[2]=0; subtractor[3]=0; 
		
		#40
		subtractor[0]=1; subtractor[1]=1; subtractor[2]=0; subtractor[3]=0; 
		
		#40
		subtractor[0]=0; subtractor[1]=0; subtractor[2]=1; subtractor[3]=0; 
		
		#40
		subtractor[0]=1; subtractor[1]=0; subtractor[2]=1; subtractor[3]=0; 
		
		#40
		subtractor[0]=0; subtractor[1]=1; subtractor[2]=1; subtractor[3]=0; 
		
      #40
		subtractor[0]=1; subtractor[1]=1; subtractor[2]=1; subtractor[3]=0; 
		
		#40
		subtractor[0]=0; subtractor[1]=0; subtractor[2]=0; subtractor[3]=1; 
		
		#40
		subtractor[0]=1; subtractor[1]=0; subtractor[2]=0; subtractor[3]=1; 
		
		#40
		subtractor[0]=0; subtractor[1]=1; subtractor[2]=0; subtractor[3]=1; 
		
		#40
		subtractor[0]=1; subtractor[1]=1; subtractor[2]=0; subtractor[3]=1; */
	/*	
		adder[0] = 1; adder[1] = 1; adder[2] = 1; adder[3] = 1;
		subtractor[0] = 0; subtractor[1] = 0; subtractor[2] = 0; subtractor[3] = 0;
		andop[0] = 1; andop[1] = 0; andop[2] = 1; andop[3] = 0;
		xorop[0] = 0; xorop[1] = 0; xorop[2] = 1; xorop[3] = 1;
		
		selector[1] = 0; selector[0] = 0;
		#20  selector[1] = 0; selector[0] = 1;
		#20  selector[1] = 1; selector[0] = 0;
		#20  selector[1] = 1; selector[0] = 1; */
	end	




endmodule
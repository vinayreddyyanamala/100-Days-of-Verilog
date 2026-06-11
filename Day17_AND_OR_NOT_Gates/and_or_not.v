DESIGN CODE :
  module and_or_not(input a,b,c, output x,y,z );
  assign x= a & b ;
  assign y= a | b;
  assign z= !c ;
endmodule

TESTBENCH CODE:
  module tb;
  reg a,b,c;
  wire x,y,z;
  and_or_not u1(a,b,c,x,y,z);
  initial begin
    $dumpvars(0, tb);
 $monitor($time,
         " | AND: a=%b b=%b -> x=%b | OR: a=%b b=%b -> y=%b | NOT: c=%b -> z=%b",a,b,x,a,b,y,c,z);
            a=0;b=0;c=0;#10 ;
    		    a=0;b=1;c=1;#10 ;
    	    	a=1;b=0;c=0;#10 ;
 		      	a=1;b=1;c=1;#10 ; 		
    	$finish ;
  end
endmodule


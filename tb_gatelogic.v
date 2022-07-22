`timescale 1ns/100ps //timescale ??

module tb_gatelogic(); //testbench module ??

reg a,b,s; //register value a,b,s
wire z; //wire value z

gatelogic gtlg(a,b,s,z); //?? instantiation

initial
begin 
	a=0;b=1;s=0; //a=0, b=1, s=0 ??. b? ? ??
#10	a=1;b=0; //10 delay ? a=1,b=0
#10	a=0;b=1;s=1; //10 delay ? a=0, b=1, s=1. a? ? ??
#10	a=1;b=0; //10 delay ? a=1, b=0 

end
endmodule

`timescale 1ns/100ps//timescale ??

module tb_halfadd();//testbench module ??

reg a,b;//register vlaue a,b
wire s,cout;//wire value s,cout

halfadd hfadd(a,b,s,cout);//?? instantation

initial
begin

		a=0; b=0;//?? a=0,b=0??
	#10	a=0; b=1;//10 delay ? ?? a=0,b=1??
	#10	a=1; b=0;//10 delay ? ?? a=1,b=0??
	#10	a=1; b=1;//10 delay ? ?? a=1,b=1??
end
endmodule

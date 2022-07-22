`timescale 1ns/100ps//timescale ??

module tb_fulladd();//testbench module ??

reg x,y,z;//regeister value x,y,z
wire n1,n2,n3;//wire value n1,n2,n3
wire SUM,COUT;//wire value SUM,COUT

fulladd fladd(x,y,z,SUM,COUT);//?? instantation

initial
begin
		x=0;y=0;z=0;//??? ??
	#10	x=1;y=0;z=0;//10delay ? ? ??
	#10	x=0;y=1;z=0;
	#10	x=1;y=1;z=0;
	#10	x=0;y=0;z=1;
	#10	x=1;y=0;z=1;
	#10	x=0;y=1;z=1;
	#10	x=1;y=1;z=1;

end
endmodule
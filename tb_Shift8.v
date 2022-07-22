`timescale 1ns/100ps//timescale??
module tb_Shift8();//testbench?? ??

reg clk,reset_n,en,dir,ld,sd;//1bit reg vlaue clk, reset_n, en, dir, ld, sd
reg[7:0] d;//8bit reg value d
wire[7:0] q;//8bit wire vlaue q

Shift8 shift8(clk,reset_n,en,dir,ld,sd,d,q);//Shift8 module instantiation
initial 
begin//10???? ??? ??
	clk=0;reset_n=1;dir=0;en=0;ld=0;sd=0;d=8'b00001111;
#10	clk=1;
#10	clk=0;reset_n=0;
#10	clk=1;
#10	clk=0;reset_n=1;ld=1;
#10	clk=1;
#10	clk=0;ld=0;sd=1;en=1;
#10	clk=1;
#10	clk=0;sd=0;
#10	clk=1;
#10	clk=0;
#10	clk=1;
#10	clk=0;dir=1;sd=1;
#10	clk=1;
#10	clk=0;sd=0;
#10	clk=1;
#10	clk=0;en=0;
#10	clk=1;
#10	clk=0;dir=0;
#10	clk=1;
end
endmodule
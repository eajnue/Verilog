`timescale 1ns/100ps//timescale ??

module tb_four_fulladd();//testbench module ??

reg[3:0] a,b;//4bit a,b register value
reg cin;//register value cin;
wire cout,s0,s1,s2,s3;//wire value cout,s0,s1,s2,s3

four_fulladd ffad(a,b,cin,cout,s0,s1,s2,s3);//four_fulladd instantiation

initial

begin//input? ? ??
	a=4'd0;b=4'd0;cin=0;//a=0, b=0, cin=0?? a,b 4bit 10??
#10	a=4'd5;//a=5??
#10	b=4'd8;cin=1;//b=8,cin=1??
#10	a=4'd9;//a=9??
end

endmodule
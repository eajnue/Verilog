`timescale 1ns/100ps//timescale ??

module tb_BCD_count();//testbench ??

wire[3:0] q;//4bit wire vlaue q
reg clk, reset_n;//1bit reg vlaue clk, reset_n

BCD_count bcdcount(clk, reset_n, q);//module instantiation

initial
begin
	clk=0;reset_n=1;//10???? ?? clk, reset_n? ? ??
#10	clk=1;
#10	clk=0;reset_n=0;
#10	clk=1;
#10	clk=0;reset_n=1;
#10	clk=1;
#10	clk=0;
#10	clk=1;
#10	clk=0;
#10	clk=1;
#10	clk=0;
#10	clk=1;
#10	clk=0;
#10	clk=1;
#10	clk=0;
#10	clk=1;
#10	clk=0;
#10	clk=1;
#10	clk=0;
#10	clk=1;
#10	clk=0;
#10	clk=1;
#10	clk=0;
#10	clk=1;
#10	clk=0;
#10	clk=1;
#10	clk=0;
#10	clk=1;
#10	clk=0;
#10	clk=1;
#10	clk=0;
#10	clk=1;

end
endmodule
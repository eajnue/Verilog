`timescale 1ns/100ps//timescale ??

module tb_D_FF();//testbench ?? ??

reg clk,reset_n,d;//1bit reg value clk, reset_n, d
wire q;//1bit wire vlaue q

D_FF DFF(clk, reset_n, d, q);//D_FF ?? instatiation

initial
begin//#10? ???? input?? ? ??
	clk=0;reset_n=1;d=0;
#10	clk=1;reset_n=0;
#10	clk=0;d=1;reset_n=1;
#10	clk=1;
#10	clk=0;
#10	clk=1;
#10	clk=0;d=0;
#10	clk=1;
#10	clk=0;d=1;
#10	clk=1;
#10	clk=0;
#10	clk=1;
#10	clk=0;d=0;
#10	clk=1;
#10	clk=0;d=1;
#10	clk=1;

end
endmodule

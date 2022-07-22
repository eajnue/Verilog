`timescale 1ns/100ps//timescale ??

module tb_Johnson_count();//tesetbench ?? ??

reg clk, reset_n;//1bit reg value clk, reset_n
wire[4:0] q;//5bit wire value q

Johnson_count jcount(clk, reset_n, q);//module instantiation
initial 
begin//??? ? ?
	clk=0;reset_n=1;
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
end
endmodule

`timescale 1ns/100ps//timescale ?? 

module tb_Reg8();//testtbench ?? ??

reg clk, reset_n, en;//1bit reg value clk, reset_n, en
reg[7:0] d;//8bit reg vlaue d
wire[7:0] q;//8bit wire value q

Reg8 reg8(clk, reset_n, en, d, q);//?? instantiation

initial
begin//10???? ??? ??
	clk=0;reset_n=1;en=0;d=8'b01001000;
#10	clk=1;
#10	clk=0;reset_n=0;d=8'b00001001;
#10	clk=1;
#10	clk=0;reset_n=1;en=1;d=8'b01011100;
#10	clk=1;
#10	clk=0;d=8'b00010001;
#10	clk=1;
#10	clk=0;en=0;d=8'b01101100;
#10	clk=1;
#10	clk=0;d=8'b01001100;
#10	clk=1;

end
endmodule
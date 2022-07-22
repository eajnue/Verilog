`timescale 1ns/100ps//timescale

module tb_D_latchsr();//testbanch module ??

reg set_n,reset_n,d,g;//reg value set_n, reset_n
wire q,q_n;//wire value q, q_n

D_latchsr D_lat(set_n,reset_n,d,g,q,q_n);//?? instantation

initial
begin
//10? ???? input? ??
	d=0;g=0;set_n=0;reset_n=1;
#10	d=1;set_n=1;
#10	d=0;reset_n=0;
#10	d=1;
#10	d=0;reset_n=1;
#10	d=1;
#10	d=0;g=1;
#10	d=1;
#10	d=0;
#10	d=1; 
#10	d=0;
#10	d=1;g=0;
#10	d=0;
#10	d=1;

end 
endmodule
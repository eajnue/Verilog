module D_FF(clk, reset_n, d, en, q);//?? ??

input clk, reset_n, d, en;//1 bit input clk, reset_n, d
output q;//1 bit output q
reg q;//1bit reg value q

always@(posedge clk or negedge reset_n)//clk? rising edge? reset_n? falling edge?? ??

begin

if(~reset_n) q<=0;//reset_n=0??  q=0
else if(en) q<=d;//reset_n=1?? en=1??  q=d
		
end

endmodule

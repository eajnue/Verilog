module Shift8(clk,reset_n,en,dir,ld,sd,d,q);//?? ??

input clk,reset_n,en,dir,ld,sd;//1bit input clk, reset_n, en, dir, ld, sd
input[7:0] d;//8bit input d
output[7:0] q;//8bit output q
reg[7:0] q;//8bti reg value q

always@(posedge clk or negedge reset_n)//posedge clk or negedge reset_n?? ?? 
begin
if(~reset_n)
	q=8'b00000000;//reset_n=0?? q=00000000
else//reset_n=1
begin
	if(ld)
	q=d;//ld=1? ? q? ?? d ??
	else if(en)
		begin //reset_n=1, ld=0, en=1
			if(dir==1)
				begin //dir=1, shift right
				q[6:0]<=q[7:1];
				q[7]=sd;
				end
			else
				begin//dir=0, shift left
				q[7:1]<=q[6:0];
				q[0]=sd;
				end
		end
end
end
endmodule
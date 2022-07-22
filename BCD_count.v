module BCD_count(clk, reset_n, q);//?? ??

input clk, reset_n;//1bit input clk, reset_n
output[3:0] q;//4bit output q
reg[3:0] q;//4bit reg vlaue q

always@(posedge clk or negedge reset_n)//clk? ????, reset_n? ?????? ??
begin

if(reset_n && (q!=9))//reset_n=1?? q!=9? ? ??? ??
begin
q[0]<=~q[0];
q[1]<=(~q[0])*q[1]+q[0]*(~q[1]);
if(&q[1:0]) q[2]<=~q[2];
if(&q[2:0]) q[3]<=~q[3];
end//? ??? ??? ??

else q=4'b0000;//reset_n=0 or q=9?? q=0

end
endmodule
module Johnson_count(clk, reset_n, q);//?? ??

input clk, reset_n;//1bit input clk, reset_n
output[4:0] q;//5bit output q
reg[4:0] q;//5bit reg value q

always@(posedge clk or negedge reset_n)//clk? ????? reset_n? ?????? ??
begin

if(reset_n)// reset_n? 1? ? ???
begin
q[0]<=~q[4]; 
q[1]<=q[0];
q[2]<=q[1];
q[3]<=q[2];
q[4]<=q[3];//? ??? ??? ??
end
else q=5'b00000;//rset_n=0?? q=0

end
endmodule
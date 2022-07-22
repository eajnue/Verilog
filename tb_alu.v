`timescale 1ns/100ps //timescale ??

module tb_alu();

reg[7:0] a,b; //8bit reg value a,b
wire[7:0] z; //8bit wire value z
reg[2:0] s; //3bit reg vlaue s

alu ALU(a,b,s,z); //module alu instantation

initial 

begin

	a=5;b=3;s=3'b000;//??? a=5,b=3,s=0,clear
#10	s=3'b001;//s=1,subtract
#10	s=3'b010;//s=2,subtract
#10	s=3'b011;//s=3,add
#10	s=3'b100;//s=4,exclusive or
#10	s=3'b101;//s=5,logical or
#10	s=3'b110;//s=6,logical and
#10	s=3'b111;//s=7,preset

end

endmodule


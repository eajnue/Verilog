`timescale 1ns/100ps //timescale ??

module tb_mux();

reg[3:0] a,b,c,d; //4bit a,b,c,d ????
reg[1:0] sel;//2bit sel ????
reg en;//en ????
wire[3:0] z;//4bit z ???

mux mb(a, b, c, d, en, sel, z); //?? instantiation

initial
begin
 
	en=0; sel=2'b00; a=4'h4; b=4'h0; c=4'h1; d=4'hD; //en=0, sel=00 ? ? a,b,c,d? ??
#10	en=0; sel=2'b01; 
#10	en=0; sel=2'b10; a=4'h8; b=4'hD; c=4'hF; d=4'h0; //en=0, sel=10 ? ? a,b,c,d? ??
#10	en=0; sel=2'b11; 
#10	en=1; sel=2'b00; a=4'h0; b=4'h4; c=4'h4; d=4'hB; //en=1, sel=00 ? ? a,b,c,d? ??
#10	en=1; sel=2'b01; 
#10	en=1; sel=2'b10; a=4'h9; b=4'hC; c=4'hD; d=4'h2; //en=1, sel=10 ? ? a,b,c,d? ??
#10	en=1; sel=2'b11; 
#10	$finish;
end
endmodule

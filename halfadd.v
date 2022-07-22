module halfadd(a,b,s,cout); //???? ??

input a,b; //input a,b
output s,cout;//output s,cout

wire s,cout;//wire s,cout

xor xg(s,a,b);//xor gate? ?? s, ?? a,b
and ag(cout,a,b);//and gate? ?? cout, ?? a,b

endmodule;

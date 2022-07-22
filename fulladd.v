module fulladd(x,y,z,SUM,COUT);//??????

input x,y,z;//input x,y,z
output SUM,COUT;//output SUM,COUT
wire n1, n2, n3;//wire n1,n2,n3

wire SUM,COUT;//wire SUM,COUT


halfadd g1(x,y,n2,n1);
halfadd g2(n2,z,SUM,n3);//halfadd instantation
or org(COUT,n1,n3);//or gate? ?? COUT, ?? n1,n3

endmodule
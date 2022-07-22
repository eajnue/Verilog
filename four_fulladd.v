module four_fulladd(a,b,cin,cout,s0,s1,s2,s3);//???? ??

input[3:0] a,b;//4bit input a,b
input cin;//1bit input cin
output cout,s0,s1,s2,s3;//1bit output, cin,s0,s1,s2,s3
wire c1,c2,c3;//wire c1,c2,c3

fulladd fa1(a[0],b[0],cin,s0,c1);
fulladd fa2(a[1],b[1],c1,s1,c2);
fulladd fa3(a[2],b[2],c2,s2,c3);
fulladd fa4(a[3],b[3],c3,s3,cout);//full adder 4?? ???? 4bit full adder ??

endmodule

// herman’s STORM 11

// gxn/dxp 13/07/02



// the procotol is synchronous with no nondeterminism (a DTMC)

dtmc



const double p1;

const double p2;

const double p3;

const double p4;

const double p5;

const double p6;

const double p7;

const double p8;

const double p9;

const double p10;

const double p11;

global m : [0..10] init 0;



module process1

x1 : [0..1]init 1;

[]  (x1=x11) & (m=0) -> p1 : (x1'=0) & (m'=1)+ 1-p1 : (x1'=1)& (m'=1);

[] !(x1=x11) & (m=0)-> (x1'=1)& (m'=1);



endmodule



module process2

x2 : [0..1]init 1;

[]  (x2=x1) & (m=1) -> p2 : (x2'=0) & (m'=2)+ 1-p2 : (x2'=1)& (m'=2);

[] !(x2=x1) & (m=1)-> (x2'=1)& (m'=2);



endmodule



module process3

x3 : [0..1]init 1;

[]  (x3=x2) & (m=2) -> p3 : (x3'=0) & (m'=3)+ 1-p3 : (x3'=1)& (m'=3);

[] !(x3=x2) & (m=2)-> (x3'=1)& (m'=3);



endmodule





module process4

x4 : [0..1]init 1;

[]  (x4=x3) & (m=3) -> p4 : (x4'=0) & (m'=4)+ 1-p4 : (x4'=1) & (m'=4);

[] !(x4=x3) & (m=3)-> (x4'=1)& (m'=4);



endmodule



module process5

x5 : [0..1]init 1;

[]  (x5=x4) & (m=4) -> p5 : (x5'=0) & (m'=5)+ 1-p5 : (x5'=1)& (m'=5);

[] !(x5=x4) & (m=4)-> (x5'=1)& (m'=5);



endmodule





module process6

x6 : [0..1]init 1;

[]  (x6=x5) & (m=5) -> p6 : (x6'=0) & (m'=6)+ 1-p6 : (x6'=1) & (m'=6);

[] !(x6=x5) & (m=5)-> (x6'=1)& (m'=6);



endmodule



module process7

x7 : [0..1]init 1;

[]  (x7=x6) & (m=6) -> p7 : (x7'=0) & (m'=7)+ 1-p7 : (x7'=1)& (m'=7);

[] !(x7=x6) & (m=6)-> (x7'=1)& (m'=7);



endmodule





module process8

x8 : [0..1]init 1;

[]  (x8=x7) & (m=7) -> p8 : (x8'=0) & (m'=8)+ 1-p8 : (x8'=1) & (m'=8);

[] !(x8=x7) & (m=7)-> (x8'=1)& (m'=8);



endmodule



module process9

x9 : [0..1]init 1;

[]  (x9=x8) & (m=8) -> p9 : (x9'=0) & (m'=9)+ 1-p9 : (x9'=1)& (m'=9);

[] !(x9=x8) & (m=8)-> (x9'=1)& (m'=9);



endmodule



module process10

x10 : [0..1]init 1;

[]  (x10=x9) & (m=9) -> p10 : (x10'=0) & (m'=10)+ 1-p10 : (x10'=1)& (m'=10);

[] !(x10=x9) & (m=9)-> (x10'=1)& (m'=10);



endmodule



module process11

x11 : [0..1]init 1;

[]  (x11=x10) & (m=10) -> p11 : (x11'=0) & (m'=0)+ 1-p11 : (x11'=1)& (m'=0);

[] !(x11=x10) & (m=10)-> (x11'=1)& (m'=0);



endmodule



rewards "steps"

true : 1;

endrewards



formula num = x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11;

label "stable" = num<=5;


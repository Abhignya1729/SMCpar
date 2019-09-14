// Hermans CODE 5

mdp

param int p1;
param int p2;
param int p3;
param int p4;
param int p5;
global m : [0..4] init 0;

module process1
x1  : [0..1];
x2  : [0..1];
x3  : [0..1];
x4  : [0..1];
x5  : [0..1];
[]  (x1=x5) & (m=0) -> p1 : (x1'=0) & (m'=1)+ 1-p1 : (x1'=1)& (m'=1);
[] !(x1=x5) & (m=0)-> (x1'=1)& (m'=1);
endmodule

module process2
x1  : [0..1];
x2  : [0..1];
x3  : [0..1];
x4  : [0..1];
x5  : [0..1];
[]  (x2=x1) & (m=1) -> p2 : (x2'=0) & (m'=2)+ 1-p2 : (x2'=1)& (m'=2);
[] !(x2=x1) & (m=1)-> (x2'=1)& (m'=2);

endmodule

module process3
x1  : [0..1];
x2  : [0..1];
x3  : [0..1];
x4  : [0..1];
x5  : [0..1];
[]  (x3=x2) & (m=2) -> p3 : (x3'=0) & (m'=3)+ 1-p3 : (x3'=1)& (m'=3);
[] !(x3=x2) & (m=2)-> (x3'=1)& (m'=3);

endmodule

module process4
x1  : [0..1];
x2  : [0..1];
x3  : [0..1];
x4  : [0..1];
x5  : [0..1];
[]  (x4=x3) & (m=3) -> p4 : (x4'=0) & (m'=4)+ 1-p4 : (x4'=1)& (m'=4);
[] !(x4=x3) & (m=3)-> (x4'=1)& (m'=4);

endmodule

module process5
x1  : [0..1];
x2  : [0..1];
x3  : [0..1];
x4  : [0..1];
x5  : [0..1];
[]  (x5=x4) & (m=4) -> p5 : (x5'=0) & (m'=0)+ 1-p5 : (x5'=1)& (m'=0);
[] !(x5=x4) & (m=4)-> (x5'=1)& (m'=0);

endmodule

rewards

[]x1+x2+x3+x4+x5=1 : 1;

endrewards

init
x1 = 1 & x2 = 1 & x3 = 1 & x4 = 1 & x5 = 1
endinit

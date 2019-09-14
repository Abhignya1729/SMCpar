// Hermans CODE 3

mdp

param int p;
global m : [0..3] init 0;

module process1
x1  : [0..1];
x2  : [0..1];
x3  : [0..1];
[]  (x1=x3) & (m=0) -> p : (x1'=0) & (m'=1)+ 1-p : (x1'=1)& (m'=1);
[] !(x1=x3) & (m=0)-> (x1'=1)& (m'=1);
endmodule

module process2

x1 : [0..1];
x2 : [0..1];
x3 : [0..1];
[]  (x2=x1) & (m=1) -> q : (x2'=0) & (m'=2)+ 1-q : (x2'=1)& (m'=2);
[] !(x2=x1) & (m=1)-> (x2'=1)& (m'=2);

endmodule

module process3

x1 : [0..1];
x2 : [0..1];
x3 : [0..1];
[]  (x3=x2) & (m=2) -> r : (x3'=0) & (m'=0)+ 1-r : (x3'=1)& (m'=0);
[] !(x3=x2) & (m=2)-> (x3'=1)& (m'=0);

endmodule

rewards

[]x1+x2+x3=1 : 1;

endrewards

init
x1 = 1 & x2 = 1 & x3 = 1
endinit

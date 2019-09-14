//modified 4 parameters IJ CODE

mdp

param int x1;
param int x2;
param int x3;
param int x4;

module schd
p   : [0..4] ;
[] (p=0) -> 1/4 : (p'=1) + 1/4 : (p'=2) + 1/4 : (p'=3) + 1/4 : (p'=4) ;

endmodule

module process1
q1  : [0..1];
q2  : [0..1];
q3  : [0..1];
q4  : [0..1];
p   : [0..4] ;
[] (p=1) & (q1=1) -> x1 : (q1'=0) & (q4'=1) & (p'=0) + 1-x1 : (q1'=0) & (q2'=1) & (p'=0);
endmodule

module process2
q1  : [0..1];
q2  : [0..1];
q3  : [0..1];
q4  : [0..1];
p   : [0..4] ;
[] (p=2) & (q2=1) -> x2 : (q2'=0) & (q1'=1) & (p'=0) + 1-x2 : (q2'=0) & (q3'=1) & (p'=0);
endmodule

module process3
q1  : [0..1];
q2  : [0..1];
q3  : [0..1];
q4  : [0..1];
p   : [0..4] ;
[] (p=3) & (q3=1) -> x3 : (q3'=0) & (q2'=1) & (p'=0) + 1-x3 : (q3'=0) & (q4'=1) & (p'=0);
endmodule


module process4
q1  : [0..1];
q2  : [0..1];
q3  : [0..1];
q4  : [0..1];
p   : [0..4] ;
[] (p=4) & (q4=1) -> x4 : (q4'=0) & (q3'=1) & (p'=0) + 1-x4 : (q4'=0) & (q1'=1) & (p'=0);
endmodule


rewards

[]q1+q2+q3+q4=1 : 1;

endrewards

init
q1 = 1 & q2 = 1 & q3 = 1 & q4 = 1
endinit

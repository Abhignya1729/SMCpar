//modified 6 parameters IJ CODE

mdp

param int x1;
param int x2;
param int x3;
param int x4;
param int x5;
param int x6;

module schd
p   : [0..6] ;
[] (p=0) -> 1/6 : (p'=1) + 1/6 : (p'=2) + 1/6 : (p'=3) + 1/6 : (p'=4) + 1/6 : (p'=5) + 1/6 : (p'=6) ;

endmodule

module process1
q1  : [0..1];
q2  : [0..1];
q3  : [0..1];
q4  : [0..1];
q5  : [0..1];
q6  : [0..1];
p   : [0..6] ;
[] (p=1) & (q1=1) -> x1 : (q1'=0) & (q6'=1) & (p'=0) + 1-x1 : (q1'=0) & (q2'=1) & (p'=0);
endmodule

module process2
q1  : [0..1];
q2  : [0..1];
q3  : [0..1];
q4  : [0..1];
q5  : [0..1];
q6  : [0..1];
p   : [0..6] ;
[] (p=2) & (q2=1) -> x2 : (q2'=0) & (q1'=1) & (p'=0) + 1-x2 : (q2'=0) & (q3'=1) & (p'=0);
endmodule

module process3
q1  : [0..1];
q2  : [0..1];
q3  : [0..1];
q4  : [0..1];
q5  : [0..1];
q6  : [0..1];
p   : [0..6] ;
[] (p=3) & (q3=1) -> x3 : (q3'=0) & (q2'=1) & (p'=0) + 1-x3 : (q3'=0) & (q4'=1) & (p'=0);
endmodule


module process4
q1  : [0..1];
q2  : [0..1];
q3  : [0..1];
q4  : [0..1];
q5  : [0..1];
q6  : [0..1];
p   : [0..6] ;
[] (p=4) & (q4=1) -> x4 : (q4'=0) & (q3'=1) & (p'=0) + 1-x4 : (q4'=0) & (q5'=1) & (p'=0);
endmodule


module process5
q1  : [0..1];
q2  : [0..1];
q3  : [0..1];
q4  : [0..1];
q5  : [0..1];
q6  : [0..1];
p   : [0..6] ;
[] (p=5) & (q5=1) -> x5 : (q5'=0) & (q4'=1) & (p'=0) + 1-x5 : (q5'=0) & (q6'=1) & (p'=0);
endmodule


module process6
q1  : [0..1];
q2  : [0..1];
q3  : [0..1];
q4  : [0..1];
q5  : [0..1];
q6  : [0..1];
p   : [0..6] ;
[] (p=6) & (q6=1) -> x6 : (q6'=0) & (q5'=1) & (p'=0) + 1-x6 : (q6'=0) & (q1'=1) & (p'=0);
endmodule


rewards

[]q1+q2+q3+q4+q5+q6=1 : 1;

endrewards

init
q1 = 1 & q2 = 1 & q3 = 1 & q4 = 1 & q5 = 1 & q6 = 1
endinit

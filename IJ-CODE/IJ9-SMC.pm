//modified 9 parameters IJ CODE

mdp

param int x1;
param int x2;
param int x3;
param int x4;
param int x5;
param int x6;
param int x7;
param int x8;
param int x9;

module schd
p   : [0..9] ;
[] (p=0) -> 1/9 : (p'=1) + 1/9 : (p'=2) + 1/9 : (p'=3) + 1/9 : (p'=4) + 1/9 : (p'=5) + 1/9 : (p'=6) + 1/9 : (p'=7) + 1/9 : (p'=8) + 1/9 : (p'=9);

endmodule

module process1
q1  : [0..1];
q2  : [0..1];
q3  : [0..1];
q4  : [0..1];
q5  : [0..1];
q6  : [0..1];
q7  : [0..1];
q8  : [0..1];
q9  : [0..1];
p   : [0..9] ;
[] (p=1) & (q1=1) -> x1 : (q1'=0) & (q9'=1) & (p'=0) + 1-x1 : (q1'=0) & (q2'=1) & (p'=0);
endmodule

module process2
q1  : [0..1];
q2  : [0..1];
q3  : [0..1];
q4  : [0..1];
q5  : [0..1];
q6  : [0..1];
q7  : [0..1];
q8  : [0..1];
q9  : [0..1];
p   : [0..9] ;
[] (p=2) & (q2=1) -> x2 : (q2'=0) & (q1'=1) & (p'=0) + 1-x2 : (q2'=0) & (q3'=1) & (p'=0);
endmodule

module process3
q1  : [0..1];
q2  : [0..1];
q3  : [0..1];
q4  : [0..1];
q5  : [0..1];
q6  : [0..1];
q7  : [0..1];
q8  : [0..1];
q9  : [0..1];
p   : [0..9] ;
[] (p=3) & (q3=1) -> x3 : (q3'=0) & (q2'=1) & (p'=0) + 1-x3 : (q3'=0) & (q4'=1) & (p'=0);
endmodule


module process4
q1  : [0..1];
q2  : [0..1];
q3  : [0..1];
q4  : [0..1];
q5  : [0..1];
q6  : [0..1];
q7  : [0..1];
q8  : [0..1];
q9  : [0..1];
p   : [0..9] ;
[] (p=4) & (q4=1) -> x4 : (q4'=0) & (q3'=1) & (p'=0) + 1-x4 : (q4'=0) & (q5'=1) & (p'=0);
endmodule


module process5
q1  : [0..1];
q2  : [0..1];
q3  : [0..1];
q4  : [0..1];
q5  : [0..1];
q6  : [0..1];
q7  : [0..1];
q8  : [0..1];
q9  : [0..1];
p   : [0..9] ;
[] (p=5) & (q5=1) -> x5 : (q5'=0) & (q4'=1) & (p'=0) + 1-x5 : (q5'=0) & (q6'=1) & (p'=0);
endmodule


module process6
q1  : [0..1];
q2  : [0..1];
q3  : [0..1];
q4  : [0..1];
q5  : [0..1];
q6  : [0..1];
q7  : [0..1];
q8  : [0..1];
q9  : [0..1];
p   : [0..9] ;
[] (p=6) & (q6=1) -> x6 : (q6'=0) & (q5'=1) & (p'=0) + 1-x6 : (q6'=0) & (q7'=1) & (p'=0);
endmodule

module process7
q1  : [0..1];
q2  : [0..1];
q3  : [0..1];
q4  : [0..1];
q5  : [0..1];
q6  : [0..1];
q7  : [0..1];
q8  : [0..1];
q9  : [0..1];
p   : [0..9] ;
[] (p=7) & (q7=1) -> x7 : (q7'=0) & (q6'=1) & (p'=0) + 1-x7 : (q7'=0) & (q8'=1) & (p'=0);
endmodule

module process8
q1  : [0..1];
q2  : [0..1];
q3  : [0..1];
q4  : [0..1];
q5  : [0..1];
q6  : [0..1];
q7  : [0..1];
q8  : [0..1];
q9  : [0..1];
p   : [0..9] ;
[] (p=8) & (q8=1) -> x8 : (q8'=0) & (q7'=1) & (p'=0) + 1-x8 : (q8'=0) & (q9'=1) & (p'=0);
endmodule

module process9
q1  : [0..1];
q2  : [0..1];
q3  : [0..1];
q4  : [0..1];
q5  : [0..1];
q6  : [0..1];
q7  : [0..1];
q8  : [0..1];
q9  : [0..1];
p   : [0..9] ;
[] (p=9) & (q9=1) -> x9 : (q9'=0) & (q8'=1) & (p'=0) + 1-x9 : (q9'=0) & (q1'=1) & (p'=0);
endmodule

rewards

[]q1+q2+q3+q4+q5+q6+q7+q8+q9=1 : 1;

endrewards

init
q1 = 1 & q2 = 1 & q3 = 1 & q4 = 1 & q5 = 1 & q6 = 1 & q7 = 1 & q8 = 1 & q9 = 1
endinit

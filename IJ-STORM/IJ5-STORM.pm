// 5 parameters STORM


dtmc


const double x1;

const double x2;

const double x3;

const double x4;

const double x5;



global q1  : [0..1] init 1;

global q2  : [0..1] init 1;

global q3  : [0..1] init 1;

global q4  : [0..1] init 1;

global q5  : [0..1] init 1;

global p   : [0..5] init 0;



module schd



[] (p=0) -> 1/5 : (p'=1) + 1/5 : (p'=2) + 1/5 : (p'=3) + 1/5 : (p'=4) + 1/5 : (p'=5) ;



endmodule



module process1

[] (q1=1) & (p=1) -> x1 : (q1'=0) & (q5'=1) & (p'=0) + 1-x1 : (q1'=0) & (q2'=1) & (p'=0);

endmodule



module process2

[] (q2=1) & (p=2) -> x2 : (q2'=0) & (q1'=1) & (p'=0) + 1-x2 : (q2'=0) & (q3'=1) & (p'=0);

endmodule



module process3

[] (q3=1) & (p=3) -> x3 : (q3'=0) & (q2'=1) & (p'=0) + 1-x3 : (q3'=0) & (q4'=1) & (p'=0);

endmodule



module process4

[] (q4=1) & (p=4) -> x4 : (q4'=0) & (q3'=1) & (p'=0) + 1-x4 : (q4'=0) & (q5'=1) & (p'=0);

endmodule



module process5

[] (q5=1) & (p=5) -> x5 : (q5'=0) & (q4'=1) & (p'=0) + 1-x5 : (q5'=0) & (q1'=1) & (p'=0);

endmodule



// cost - 1 in each state (expected steps)

rewards "steps"

true : 1;

endrewards



// formula, for use here and in properties: number of tokens

formula num_tokens = q1+q2+q3+q4+q5;



// label - stable configurations (1 token)

label "stable" = num_tokens=1;


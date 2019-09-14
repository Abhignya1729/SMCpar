// herman's STORM 3

// gxn/dxp 13/07/02

// the procotol is synchronous with no nondeterminism (a DTMC)

dtmc

const double p1;

const double p2;

const double p3;

global m : [0..2] init 0;



// module for process 1

module process1

// Boolean variable for process 1

x1 : [0..1]init 1;

//m1 : [0..4] ;

[]  (x1=x3) & (m=0) -> p1 : (x1'=0) & (m'=1)+ 1-p1 : (x1'=1)& (m'=1);

[] !(x1=x3) & (m=0)-> (x1'=1)& (m'=1);

endmodule

module process2

// Boolean variable for process 1

x2 : [0..1]init 1;

//m1 : [0..4] ;

[]  (x2=x1) & (m=1) -> p2 : (x2'=0) & (m'=2)+ 1-p2 : (x2'=1)& (m'=2);

[] !(x2=x1) & (m=1)-> (x2'=1)& (m'=2);

endmodule

module process3

// Boolean variable for process 1

x3 : [0..1]init 1;

//m1 : [0..4] ;

[]  (x3=x2) & (m=2) -> p3 : (x3'=0) & (m'=0)+ 1-p3 : (x3'=1)& (m'=0);

[] !(x3=x2) & (m=2)-> (x3'=1)& (m'=0);

endmodule

rewards "steps"

true : 1;

endrewards

//formula num = (x1=x2?1:0)+(x2=x3?1:0)+(x3=x4?1:0)+(x4=x5?1:0)+(x5=x1?1:0);

formula num = x1+x2+x3;

label "stable" = num=1;


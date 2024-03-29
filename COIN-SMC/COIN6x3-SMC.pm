//CODE COIN 6X3

dtmc

param int p1;
param int p2;
param int p3;
param int p4;
param int p5;
param int p6;


module One
sa1 : [0..2];
sa2 : [0..2];
sa3 : [0..2];
sa4 : [0..2];
sa5 : [0..2];
sa6 : [0..2];
x1 : [0..6] ;
[] sa1=0 & (x1=0) -> p1 : (sa1'=1) & (x1'=1) + 1-p1 : (sa1'=2) & (x1'=1) ;
[] sa2=0 & (x1=1) -> p2 : (sa2'=1) & (x1'=2) + 1-p2 : (sa2'=2) & (x1'=2) ;
[] sa3=0 & (x1=2) -> p3 : (sa3'=1) & (x1'=3) + 1-p3 : (sa3'=2) & (x1'=3) ;
[] sa4=0 & (x1=3) -> p4 : (sa4'=1) & (x1'=4) + 1-p4 : (sa4'=2) & (x1'=4) ;
[] sa5=0 & (x1=4) -> p5 : (sa5'=1) & (x1'=5) + 1-p5 : (sa5'=2) & (x1'=5) ;
[] sa6=0 & (x1=5) -> p6 : (sa6'=1) & (x1'=6) + 1-p6 : (sa6'=2) & (x1'=6) ;
endmodule

module two
sb1 : [0..2];
sb2 : [0..2];
sb3 : [0..2];
sb4 : [0..2];
sb5 : [0..2];
sb6 : [0..2];
x2 : [0..6] ;
[] sb1=0 & (x2=0) -> p1 : (sb1'=1) & (x2'=1) + 1-p1 : (sb1'=2) & (x2'=1) ;
[] sb2=0 & (x2=1) -> p2 : (sb2'=1) & (x2'=2) + 1-p2 : (sb2'=2) & (x2'=2);
[] sb3=0 & (x2=2) -> p3 : (sb3'=1) & (x2'=3) + 1-p3 : (sb3'=2) & (x2'=3);
[] sb4=0 & (x2=3) -> p4 : (sb4'=1) & (x2'=4) + 1-p4 : (sb4'=2) & (x2'=4) ;
[] sb5=0 & (x2=4) -> p5 : (sb5'=1) & (x2'=5) + 1-p5 : (sb5'=2) & (x2'=5) ;
[] sb6=0 & (x2=5) -> p6 : (sb6'=1) & (x2'=6) + 1-p6 : (sb6'=2) & (x2'=6);
endmodule

module three
sc1 : [0..2];
sc2 : [0..2];
sc3 : [0..2];
sc4 : [0..2];
sc5 : [0..2];
sc6 : [0..2];
x3 : [0..6] ;
[] sc1=0 & (x3=0) -> p1 : (sc1'=1) & (x3'=1) + 1-p1 : (sc1'=2) & (x3'=1) ;
[] sc2=0 & (x3=1) -> p2 : (sc2'=1) & (x3'=2) + 1-p2 : (sc2'=2) & (x3'=2);
[] sc3=0 & (x3=2) -> p3 : (sc3'=1) & (x3'=3) + 1-p3 : (sc3'=2) & (x3'=3);
[] sc4=0 & (x3=3) -> p4 : (sc4'=1) & (x3'=4) + 1-p4 : (sc4'=2) & (x3'=4) ;
[] sc5=0 & (x3=4) -> p5 : (sc5'=1) & (x3'=5) + 1-p5 : (sc5'=2) & (x3'=5) ;
[] sc6=0 & (x3=5) -> p6 : (sc6'=1) & (x3'=6) + 1-p6 : (sc6'=2) & (x3'=6);
endmodule

formula sum = sa1+sa2+sa3+sa4+sa5+sa6+sb1+sb2+sb3+sb4+sb5+sb6+sc1+sc2+sc3+sc4+sc5+sc6;

rewards

[]sum=27 & x1=6 & x2=6 & x3=6: 1;

endrewards

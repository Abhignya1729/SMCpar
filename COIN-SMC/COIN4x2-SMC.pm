//CODE COIN 4X2

dtmc

param int p1;
param int p2;
param int p3;
param int p4;

module One
sa1 : [0..2];
sa2 : [0..2];
sa3 : [0..2];
sa4 : [0..2];
x1 : [0..4] ;
[] sa1=0 & (x1=0) -> p1 : (sa1'=1) & (x1'=1) + 1-p1 : (sa1'=2) & (x1'=1) ;
[] sa2=0 & (x1=1) -> p2 : (sa2'=1) & (x1'=2) + 1-p2 : (sa2'=2) & (x1'=2) ;
[] sa3=0 & (x1=2) -> p3 : (sa3'=1) & (x1'=3) + 1-p3 : (sa3'=2) & (x1'=3) ;
[] sa4=0 & (x1=3) -> p4 : (sa4'=1) & (x1'=4) + 1-p4 : (sa4'=2) & (x1'=4) ;
endmodule

module two
sb1 : [0..2];
sb2 : [0..2];
sb3 : [0..2];
sb4 : [0..2];
x2 : [0..4] ;
[] sb1=0 & (x2=0) -> p1 : (sb1'=1) & (x2'=1) + 1-p1 : (sb1'=2) & (x2'=1) ;
[] sb2=0 & (x2=1) -> p2 : (sb2'=1) & (x2'=2) + 1-p2 : (sb2'=2) & (x2'=2);
[] sb3=0 & (x2=2) -> p3 : (sb3'=1) & (x2'=3) + 1-p3 : (sb3'=2) & (x2'=3);
[] sb4=0 & (x2=3) -> p4 : (sb4'=1) & (x2'=4) + 1-p4 : (sb4'=2) & (x2'=4) ;
endmodule


formula sum = sa1+sa2+sa3+sa4+sb1+sb2+sb3+sb4;

rewards

[]sum=12 & x1=4 & x2=4: 1;

endrewards

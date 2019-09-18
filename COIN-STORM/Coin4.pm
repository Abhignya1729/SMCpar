//STORM COIN 4X2
dtmc

const double p1;

const double p2;

const double p3;

const double p4;


module one

sa1 : [0..2];

sa2 : [0..2];

sa3 : [0..2];

sa4 : [0..2];


x1 : [0..4];

[] sa1=0 & (x1=0) -> p1 : (sa1'=1) & (x1'=1)+ 1-p1 : (sa1'=2) & (x1'=1);

[] sa2=0 & (x1=1) -> p2 : (sa2'=1) & (x1'=2)+ 1-p2 : (sa2'=2) & (x1'=2);

[] sa3=0 & (x1=2) -> p3 : (sa3'=1) & (x1'=3)+ 1-p3 : (sa3'=2) & (x1'=3);

[] sa4=0 & (x1=3) -> p4 : (sa4'=1) & (x1'=4)+ 1-p4 : (sa4'=2) & (x1'=4);

//[] sa5=0 & (x1=4) -> p5 : (sa5'=1) & (x1'=5)+ 1-p5 : (sa5'=2) & (x1'=5);

//[] sa6=0 & (x1=5) -> p6 : (sa6'=1) & (x1'=6)+ 1-p6 : (sa6'=2) & (x1'=6);

//[] sa7=0 & (x1=6) -> p7 : (sa7'=1) & (x1'=7)+ 1-p7 : (sa7'=2) & (x1'=7);

//[] sa8=0 & (x1=7) -> p8 : (sa8'=1) & (x1'=8)+ 1-p8 : (sa8'=2) & (x1'=8);


endmodule


module two = one [ sa1=sb1, sa2=sb2, sa3=sb3, sa4=sb4, x1=x2] endmodule

module three = one [ sa1=sc1, sa2=sc2, sa3=sc3, sa4=sc4, x1=x3] endmodule

module four = one [ sa1=sd1, sa2=sd2, sa3=sd3, sa4=sd4, x1=x4] endmodule

module five = one [ sa1=se1, sa2=se2, sa3=se3, sa4=se4, x1=x5] endmodule

module six = one [ sa1=sf1, sa2=sf2, sa3=sf3, sa4=sf4, x1=x6] endmodule


formula sum = sa1+sa2+sa3+sa4+sb1+sb2+sb3+sb4+sc1+sc2+sc3+sc4+sd1+sd2+sd3+sd4+se1+se2+se3+se4+sf1+sf2+sf3+sf4;

//formula sum = sa1+sa2+sa3+sa4+sb1+sb2+sb3+sb4+sc1+sc2+sc3+sc4+sd1+sd2+sd3+sd4+se1+se2+se3+se4;
// sa1+sa2+sa3+sa4+sa5+sa6+sa7+sa8+sb1+sb2+sb3+sb4+sb5+sb6+sb7+sb8+sc1+sc2+sc3+sc4+sc5+sc6+sc7+sc8;

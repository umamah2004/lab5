module lab5_tb;
logic [3:0]num1;
logic [2:0]sel1;
logic segA1;
logic segB1;
logic segC1;
logic segD1;
logic segE1;
logic segF1;
logic segG1;
logic an00;
logic an11;
logic an22;
logic an33;
logic an44;
logic an55;
logic an66;
logic an77;

lab5 DUT(
.num(num1),
.sel(sel1),
.segA(segA1),
.segB(segB1),
.segC(segC1),
.segD(segD1),
.segE(segE1),
.segF(segF1),
.segG(segG1),
.an0(an00),
.an1(an11),
.an2(an22),
.an3(an33),
.an4(an44),
.an5(an55),
.an6(an66),
.an7(an77)
);
initial
begin
sel1  = 3'b000;
#160;
sel1 = 3'b001;
#160;
sel1 = 3'b010;
#160;
sel1 = 3'b011;
#160;
sel1 = 3'b100;
#160;
sel1 = 3'b101;
#160;
sel1 = 3'b110;
#160;
sel1 = 3'b111;
#160;
$stop;
end

initial
begin
num1 = 4'b0000; 
#10;
num1 = 4'b0001;
#10;
num1 = 4'b0010;
#10;
num1 = 4'b0011;
#10;
num1 = 4'b0100;
#10;
num1 = 4'b0101;
#10;
num1 = 4'b0110;
#10;
num1 = 4'b0111;
#10;
num1 = 4'b1000;
#10;
num1 = 4'b1001;
#10;
num1 = 4'b1010;
#10;
num1 = 4'b1011;
#10;
num1 = 4'b1100;
#10;
num1 = 4'b1101;
#10;
num1 = 4'b1110;
#10;
num1 = 4'b1111;
#10;
$stop;
end

endmodule
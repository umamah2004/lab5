module lab5( input [3:0] num, [2:0] sel,
        output logic an0, an1, an2, an3, an4, an5, an6, an7,
        output logic segA, segB, segC, segD, segE, segF, segG
            );
logic a, b, c, d;
logic A, B, C, D;
always_comb
begin
    A = sel[2];
    B = sel[1];
    C = sel[0];
end
always_comb
begin
        d = num[0];
        c = num[1];
        b = num[2];
        a = num[3];
end

assign an0 = A | B | C;
assign an1 = (!C) | A | B;
assign an2 = (!B) | C | A;
assign an3 = (!(B & C)) | A;
assign an4 = C | (!A) | B;
assign an5 = B | !(C & A);
assign an6 = C | !(A & B);
assign an7 = !(B & C & A);

assign segA = ((!(a | c)) & (b ^ d)) | ((a & d) &(b ^ c));
assign segB = (a&c&d) | (b&c&(!d)) | (a&b&(!d)) | ((!a)&b&(!c)&d);
assign segC = (a&b&c) | (a&b&(!d)) | ((!a)&(!b)&c&(!d));
assign segD = (b&c&d) | ((!(a | c))&(b ^ d)) | (a&(!b)&c&(!d));
assign segE = ((!a)&d) | ((!a)&b&(!c)) | ((!b)&(!c)&d);
assign segF = ((!a)&(!b)&d) | ((!a)&c&d) | ((!a)&(!b)&c) | (a&b&(!c)&d);
assign segG = (!(a | b | c)) | (a&b&(!c)&(!d)) | ((!a)&b&c&d);

endmodule
X = input ("Girdi giriniz")
Y = input ("Girdi giriniz")
Cin = input ("Girdi giriniz")



module FourBit_fulladder(Sum ,Cout , Cin , X ,Y);

input  Cin;
input  [3:0]X,Y;
output [3:0]Sum;
output  Cout;
wire C1,C2,C3;

AdderModul Z1(Sum[0],C1,X[0],Y[0],Cin);
AdderModul Z2(Sum[1],C2,X[1],Y[1],C1);
AdderModul Z3(.S(Sum[2]),.Cout(C3),.A(X[2]),.B(Y[2]),.Cin(C2));
AdderModul Z4(.S(Sum[3]),.Cout(Cout),.A(X[3]),.B(Y[3]),.Cin(C3));

endmodule

module AdderModul( input A,
       input B,
       input CIN,
       output S,
       output COUT
       );
       assign S = A^B^CIN;
       assign COUT = (A&B) | (CIN&(A^B));

endmodule

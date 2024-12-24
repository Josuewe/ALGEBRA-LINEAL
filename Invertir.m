function Inv = Invertir(A)
e1 = [1;0;0;0;0;0;0;0;0];
e2 = [0;1;0;0;0;0;0;0;0];
e3 = [0;0;1;0;0;0;0;0;0];
e4 = [0;0;0;1;0;0;0;0;0];
e5 = [0;0;0;0;1;0;0;0;0];
e6 = [0;0;0;0;0;1;0;0;0];
e7 = [0;0;0;0;0;0;1;0;0];
e8 = [0;0;0;0;0;0;0;1;0];
e9 = [0;0;0;0;0;0;0;0;1];
%DECLARAMOS LAS MATRICES A y b%
[L,U,P,Q] = FactLUPMM (A);
y=FSub(L,P*e1);
z=BSub(U,y);
x1=Q*z;

y=FSub(L,P*e2);
z=BSub(U,y);
x2=Q*z;

y=FSub(L,P*e3);
z=BSub(U,y);
x3=Q*z;

y=FSub(L,P*e4);
z=BSub(U,y);
x4=Q*z;

y=FSub(L,P*e5);
z=BSub(U,y);
x5=Q*z;

y=FSub(L,P*e6);
z=BSub(U,y);
x6=Q*z;

y=FSub(L,P*e7);
z=BSub(U,y);
x7=Q*z;

y=FSub(L,P*e8);
z=BSub(U,y);
x8=Q*z;

y=FSub(L,P*e9);
z=BSub(U,y);
x9=Q*z;

Inv= [x1,x2,x3,x4,x5,x6,x7,x8,x9];

endfunction

%%Para resolver cada coso

FactLUPM:
*DECLARAMOS LAS MATRICES A y b*
[L,U,P,Q] = FactLUPMM (A)
y=FSub(L,P*b)
z=BSub(U,y)
x=Q*z

FactLUPC:
*DECLARAMOS LAS MATRICES A y b*
[L,U,P] = FactLUPC (A)
y=FSub(L,P*b)
x=BSub(U,y)

FactLU:
*DECLARAMOS LAS MATRICES A y b*
[L,U] =FactLU (A)
y=FSub(L,b)
x=BSub(U,y)

%Calculo de la inversa:
%Es igual a cada resolucion pero sustituyendo la b por cada e(i)
%Cada e(i) sera una columna de la matriz inversa
e1=[1;0;0;0...]
e2=[0;1;0...]
e(i)=[0;0;0;0....]
Por ejemplo calculo de la inversa con FactLUPM:
**supongo q es 3x3**
e1=[1;0;0]
e2=[0;1;0]
e3=[0,0,1]
*DECLARAMOS LAS MATRICES A y b*
[L,U,P,Q] = FactLUPMM (A)
y=FSub(L,P*e1)
z=BSub(U,y)
x1=Q*z
//////
y=FSub(L,P*e2)
z=BSub(U,y)
x2=Q*z
/////
y=FSub(L,P*e3)
z=BSub(U,y)
x3=Q*z
////
Inversa= [x1,x2,x3]

%%CALCULO DETERMINANTE mediante LU
como ejemplo usare LUPM
*DECLARAMOS LAS MATRICES A*
[L,U,P,Q] = FactLUPMM (A)
det(A)=det(P)×det(U)×det(Q)'



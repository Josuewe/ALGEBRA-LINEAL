
function [A,b,w] =GaussPM (A,b)
n= length (b);
w=1:n;
w

for j = 1:n-1;


   max=A(j,j);
   filamax=j;
   columnamax=j;
   for k=j:n;
     for i=k:n;
     if (abs(A(k,i))>abs(max))
       max=A(k,i);
       filamax=k;
       columnamax=i;
     endif
     endfor
   endfor
   for k=j:n;
     aux=A(j,k);
     A(j,k)=A(filamax,k);
     A(filamax,k)=aux;
   endfor
   aux=b(j);
   b(j)=b(filamax);
   b(filamax)=aux;

   for k=1:n;
     aux=A(k,j);
     A(k,j)=A(k,columnamax);
     A(k,columnamax)=aux;
     aux=w(columnamax);
     w(columnamax)=w(j);
     w(j)=aux;
   endfor
A

   for k = j+1:n;
     al= -A(k,j)/A(j,j);
     for m = j:n;
       A(k,m) = A(k,m)+al*A(j,m);
     endfor
     b(k)=b(k)+al*b(j);
   endfor


w

endfor


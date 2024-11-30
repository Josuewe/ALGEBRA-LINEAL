
function [A,b] =GaussPC (A,b)

n= length (b);
 for j = 1:n-1;
   A
   b
   max=A(j,j);
   indexMax=j;
   for k=j+1:n;
     if (abs(A(k,j))>abs(max))
       max=A(k,j);
       indexMax=k;
     endif
   endfor
   for k=j:n;
     aux=A(j,k);
     A(j,k)=A(indexMax,k);
     A(indexMax,k)=aux;
   endfor
   aux=b(j);
   b(j)=b(indexMax);
   b(indexMax)=aux;

   A
   b

   for k = j+1:n;
     al= -A(k,j)/A(j,j);
     for m = j:n;
       A(k,m) = A(k,m)+al*A(j,m);
     endfor
     b(k)=b(k)+al*b(j);
   endfor
 endfor

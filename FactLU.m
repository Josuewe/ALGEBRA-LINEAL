
function [L,U] =FactLU (A)

n= rows(A);
U=A;
L=eye(n);
 for j = 1:n-1
   for k = j+1:n
     al= -U(k,j)/U(j,j);
     L(k,j)=-al;
     for m = j:n;
       U(k,m) = U(k,m)+al*U(j,m);
     endfor

   endfor
 endfor

 #posar [An, bn]= Gauss [A, b]
 #pq me doni sa solució de les dues matrius

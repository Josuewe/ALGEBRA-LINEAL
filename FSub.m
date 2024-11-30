function x=FSub(A,b)
  [m,n]=size(A);
  x=zeros(n,1);

  for i=1:n
    S=0;
    for j=1:i-1
      S=S+A(i,j)*x(j);
    endfor
    x(i)=(b(i)-S)/A(i,i);

  endfor



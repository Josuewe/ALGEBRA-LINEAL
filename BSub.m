function x=BSub(A,b)
  [n,m] = size(A);
  x = zeros (m,1);
  x(n) = b(n) / A(n,n);
  for i=n-1: -1: 1;
    S = 0;
    for j= i+1:n;
      S = S + A(i,j)*x(j);
    endfor
    if A(i,i)== 0
      disp("no se pot fer la divisio");
      return;

    endif
    x(i)=(b(i)-S)/A(i,i);

  endfor



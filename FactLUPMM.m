function [L,U,P,Q] = FactLUPMM (A)
    n = length(A);
    L = eye(n);
    P = eye(n);
    Q = eye(n);
    U = A;
    for j = 1:n-1
        % Inicializar el máximo y sus posiciones
        max_val = 0;
        filamax = j;
        colmax = j;
        % Búsqueda del elemento máximo en la submatriz U(j:n, j:n)
        for k = j:n
            for i = j:n
                if abs(U(k,i)) > abs(max_val)
                    max_val = U(k,i);
                    filamax = k;
                    colmax = i;
                endif
            endfor
        endfor
        % Intercambio de filas en U y P
        U([j, filamax], :) = U([filamax, j], :);
        P([j, filamax], :) = P([filamax, j], :);
        % Intercambio de filas en L (solo hasta la columna j-1)
        if j > 1
            L([j, filamax], 1:j-1) = L([filamax, j], 1:j-1);
        endif
        % Intercambio de columnas en U y Q
        U(:, [j, colmax]) = U(:, [colmax, j]);
        Q(:, [j, colmax]) = Q(:, [colmax, j]);
        % Eliminación gaussiana
        for i = j+1:n
            L(i,j) = U(i,j) / U(j,j);
            U(i,j:n) = U(i,j:n) - L(i,j) * U(j,j:n);
        endfor
    endfor
    % Mostrar resultados
    disp('L = '), disp(L)
    disp('P = '), disp(P)
    disp('Q = '), disp(Q)
    disp('U = '), disp(U)
endfunction

%[L,U,P,Q] = FactLUPMM (A);%

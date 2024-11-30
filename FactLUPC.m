function [L,U,P] = FactLUPC (A)
    n = length(A);
    L = eye(n);
    P = eye(n);
    U = A;
    for j = 1:n-1
        % Inicializar el máximo y su posición
        max_val = 0;
        filamax = j;
        % Búsqueda del elemento máximo en la columna j desde la fila j hasta n
        for k = j:n
            if abs(U(k,j)) > abs(max_val)
                max_val = U(k,j);
                filamax = k;
            endif
        endfor
        % Intercambio de filas en U y P
        if filamax != j
            U([j, filamax], :) = U([filamax, j], :);
            P([j, filamax], :) = P([filamax, j], :);
            % Intercambio de filas en L (solo hasta la columna j-1)
            if j > 1
                L([j, filamax], 1:j-1) = L([filamax, j], 1:j-1);
            endif
        endif
        % Eliminación gaussiana
        for i = j+1:n
            L(i,j) = U(i,j) / U(j,j);
            U(i,j:n) = U(i,j:n) - L(i,j) * U(j,j:n);
        endfor
    endfor
    % Mostrar resultados
    disp('L = '), disp(L)
    disp('P = '), disp(P)
    disp('U = '), disp(U)
endfunction

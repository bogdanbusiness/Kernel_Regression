function [K] = build_kernel (X, f, f_param)
    [n m] = size(X);
    K = zeros(n, n);
    
    # Calculations
    for i = 1:n
        for j = 1:n
            K(i, j) = f(X(i,:), X(j,:), f_param);
        endfor
    endfor
endfunction

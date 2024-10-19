function [L] = Cholesky(A)
    # Setup
    [size size] = size(A);
    L = zeros(size, size);
    
    # Calculation
    for j = 1:size
        L(j, j) = sqrt(A(j, j) - (L(j, 1:j - 1) * L(j,1:j - 1)' ));
        L(j + 1:size, j) = (A(j, j + 1:size) - L(j, 1:j - 1) * L(j + 1:size, 1:j - 1)' ) / L(j, j);
    endfor
endfunction

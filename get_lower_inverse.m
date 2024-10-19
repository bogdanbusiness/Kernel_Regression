function [P] = get_lower_inverse (L)
    # Setup
    n = size(L, 1); 
    b = eye(n, n);
    
    for i = 1:n
        P(:, i) = SIT(L, b(:, i)); 
    endfor
    
endfunction

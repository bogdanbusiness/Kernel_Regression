function [a] = get_prediction_params (K, y, lambda)
    
    # Calculation
    n = size(K, 1);
    A = lambda * eye(n, n) + K;
    [L] = cholesky(A);
    [P] = get_lower_inverse(L);
    
    # Calculation
    a = lambda * P' * P * y;
endfunction

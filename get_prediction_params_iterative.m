function [a] = get_prediction_params_iterative (K, y, lambda)
    # Setup
    n = size(K, 1);
    A = lambda * eye(n, n) + K;
    # b = eye(n, n);
    b = zeros(n, 1);
        
    # Calculating a
    [a] = conjugate_gradient(A, y, b, 1e-6, 1000);
    
    # TO DO: folosind metode iterative, implementati logica
    # pentru a obtine vectorul coloana a, asa cum este descris in enuntul temei
endfunction

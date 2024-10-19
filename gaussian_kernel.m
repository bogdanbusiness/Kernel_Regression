function retval = gaussian_kernel (x, y, sigma)
    # Setup
    [n m] = size(x);
    norm = 0;
    
    # Sum calculation
    for i = 1:m
        norm = norm + abs(x(1, i) - y(1, i))^2;
    endfor
    
    # Kernel calculation
    retval = exp(- norm / (2 * sigma^2));
endfunction

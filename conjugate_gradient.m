function [x] = conjugate_gradient (A, b, x0, tol, max_iter)
    # Setup
    x = x0;
    r = b - A * x;
    v = r;
    tolerance = tol^2;
    k = 1;
    
    # Calculations
    while (k <= max_iter && r' * r > tolerance)
        t = r' * r / (v' * A * v);
        x = x + t * v;
        
        future_r = r - t * A * v;
        s = future_r' * future_r / (r' * r);
        r = future_r;
        
        v = r + s * v;
        
        k = k + 1;
    endwhile
    
endfunction
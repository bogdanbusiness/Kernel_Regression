function [X_train, y_train, X_pred, y_pred] = split_dataset (X, y, percentage)
    # Setup
    [n m] = size(X);
    n_percent = floor(n * percentage);
    
    # Splitting
    for i = 1:n_percent
        X_train(i, :) = X(i, :);
        y_train(i, :) = y(i, :);
    endfor
    for i = 1:(n - n_percent)
        X_pred(i, :) = X(n_percent + i, :);
        y_pred(i, :) = y(n_percent + i, :);
    endfor
   
endfunction

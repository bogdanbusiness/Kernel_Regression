function pred = eval_value(x, X, f, f_param, a)
   # TO DO: pentru un vector de input x, preziceti valoarea acestuia in
   # in functie de toti vectorii de input folositi pentru a antrena modelul
   # folosind functia de kernel f care are ca al 3-lea parametru f_param
   # si vectorul coloana a
   
   # Setup
   n = size(X, 1);
   sum_of_ker = 0;
   
   # Calculation
   for i = 1:n;
       sum_of_ker = sum_of_ker + a(i, :) * f(X(i, :), x, f_param);
   endfor
   
   pred = sum_of_ker;
   
endfunction
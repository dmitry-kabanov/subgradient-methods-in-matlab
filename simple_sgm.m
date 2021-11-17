function [x, f_hist, f_best_hist] = simple_sgm(f_g_fun, x0, K, h)
%SIMPLE_SGM Solves optimization problem using simple subgradient method.
%   Implements algorithm from
%   https://web.stanford.edu/class/ee392o/subgrad_method.pdf
%   
%   f_g_fun function that accepts argument `x` and returns function and its
%   subgradient.
%   x0 initial guess for x
%   K  number of iterations to run
%
%   Returns
%   x last value of x
%   f_hist History of values of f
%   f_best_hist History of best values of x

x = x0;
f_best = +Inf;

f_hist = zeros(K, 1);
f_best_hist = zeros(K, 1);

for k = 1:K
    [f, g] = f_g_fun(x);

    % Step size. Use diminishing step size.
    alpha = h / sqrt(k);

    x = x - alpha * g;

    f_best = min(f, f_best);
    f_best_hist(k) = f_best;
    f_hist(k) = f;
end

end
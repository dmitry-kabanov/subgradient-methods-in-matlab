function [f, g] = pwlin_problem(x, A, b)   
%PWLIN_PROBLEM Piecewise linear minimization problem
%    Is taken from
%    https://web.stanford.edu/class/ee392o/subgrad_method.pdf
%    section 4
[~, nA] = size(A);
[mx, ~] = size(x);
assert(iscolumn(x));
assert(iscolumn(b));

assert(nA == mx);

[f, j] = max(A*x + b);
g = A(j, :)';
end
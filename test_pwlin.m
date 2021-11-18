%% Solve piecewise linear problem

%% Setup

M = 100;
N = 10;

% Number of iterations
K = 500;

% Constant that bounds step size.
h1 = 0.05;
h2 = 0.005;

% Initial guess for x.
x0 = randn(N, 1);

%% Problem statement.

A = randn(M, N);
b = randn(M, 1);

pwlin_fn = @(x) pwlin_problem(x, A, b);

%% Solve the problem with simple SGM with diminishing step size.
[x1, fh1, fbh1] = simple_sgm(pwlin_fn, x0, K, h1);
[x2, fh2, fbh2] = simple_sgm(pwlin_fn, x0, K, h2);

%% Plot figures.
figure()
hold;
plot(1:K, fh1, '-');
plot(1:K, fh2, '--');

%% Solve the problem with LMBM.
% [x, fval, niter, nfeval, term, time] = lmbm_driver('pwlin_fn', 10*ones(1000,1), 1000, 1);
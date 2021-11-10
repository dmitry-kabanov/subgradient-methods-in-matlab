clear all;
clc;

x = linspace(-5,7,100);

% f = zeros(1,length(x));
% 
% for i=1:length(x)
%     if x(i) > 2
%         f(i) = 5*(x(i)-2);
%     else
%         f(i) = (x(i)-2).^2;
%     end
% end
% f
% plot(x,f)


g = NSfun(x);
plot(x,g)

x0 = 0;
%[x_opt,fval,exitflag,output] = fminunc(@NSfun,x0);
%disp(x_opt)
%disp(fval)

% [x_opt,fval] = fminbnd(@NSfun,0,5);
% disp(x_opt)
% disp(fval)
%rpar = [ 0, 0, 0, 1e-5, 0, 0.5, 0, 0 ];
%ipar = [ 0, 5000000, 5000000, 0, -1, 0, 0 ];

%[x,fval,niter,nfeval,term,time]=lmbm_driver(@NSfun,x0,1,1) 

%[x,fval,niter,nfeval,term,time]=lmbm_driver('testfunc',10*ones(1000,1), 1000, 1);
[x,fval,niter,nfeval,term,time]=lmbm_driver('testfunc1',10*ones(1000,1), 1000, 1);

% x0 = 2;
% gamma = 0.01;
% m = 0.01;
% delta = 0.01;
% epsilon = 0.01;
% omega = 0.01;
% n = 1;
% [optval, Ys] = bundle_method(x0, @NSfun, @NSfun_subgrad, gamma, m, delta, epsilon, omega, n)
rpar = [ 0, 0, 0, 1e-5, 0, 0.5, 0, 0 ];
ipar = [ 0, 5000000, 5000000, 0, -1, 0, 0 ];
[x,fval,niter,nfeval,term,time]=lmbm_driver('NSfun',x0, 1, 1, 300, 10, 7, 7, rpar, ipar);
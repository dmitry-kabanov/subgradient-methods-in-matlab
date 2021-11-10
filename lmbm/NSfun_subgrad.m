function sub = NSfun_subgrad(x)
    for i=1:length(x)
        if x(i) > 2
%            func(i) = 5*(x(i)-2);
            sub(i) = 5;
        else
%            func(i) = (x(i)-2).^2;
            sub(i) = 2*x(i);
        end
    end
%    x

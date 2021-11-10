function [func, sub] = NSfun(x)
    for i=1:length(x)
        if x(i) > 2
            func(i) = 5*(x(i)-2);
            sub(i) = 5;
        else
            func(i) = (x(i)-2).^2;
            sub(i) = 2*x(i)-4;
        end
    end
disp(length(func))
end
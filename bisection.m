function [mid] = bisection(a,b,iteration)
% function [x e] = mybisect(f,a,b,n)
% Does n iterations of the bisection method for a function f
% Inputs: f -- an inline function
%         a,b -- left and right edges of the interval
%         n -- the number of bisections to do.
% Outputs: x -- the estimated solution of f(x) = 0
%          e -- an upper bound on the error

format long
FA = exp(-a/5)- sin(a); %this is f(a).
 FB = exp(-b/5)- sin(b);  %this is f(b).

%if FA*FB > 0.0
    %error('There is no zeros between these endpoints.')
%end

for i = 1:iteration
    mid = (a + b)/2;
    y = exp(-mid/5)- sin(mid) ;
  
    if y == 0.0     % the solution is exact.
        
        break      % leave the loop.
    end
    if FA*y < 0
        b=mid;
    else
        a=mid;
    end
end

     



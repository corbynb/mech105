
function[root,fx,ea,iter] = falsePosition(func,xl,xu,es,maxiter,varargin)
%falsePosition.m will take any givin function and use the false position
%method to estimate the function's roots.
%   The iuts for the function are:
        %func: The function that will be evaluated.
        %xl: The lower guess for a root.
        %xu: The upper guess for a root.
        %es: The desired relative error produced.
        %maxiter: The number of iterations the function will run.
%   The outputs will be:
        %root: The estimated location of the root.
        %fx: The function evaluated at the root location.
        %ea: The approximate relative error produced from the calculations.
        %iter: How many iterastions were performed.

test = func(xl,varargin{:})*func(xu,varargin{:});
if test>0
    error('error, no sign change')  %The IF statement is used to find the interval
                                    %where the root can be.
end
if nargin<4||isempty(es)        %These IF statements set the parameters for 
                                %error and iterations based on the values
                                %the user inputs.
    es = 0.0001;
end
if nargin<5||isempty(maxiter)
    maxiter = 200;
end
iter = 0;
xr = xl;
ea = 100;
while (1)
    xrold = xr;
    num=double(func(xu))*(xl-xu);
    den=double(func(xl))-double(func(xu));  %The false position function.
    xr = xu-((num)/(den));
    iter = iter+1               %Tells matlab to increase the value for iterations 
                                %every time it runs.
    if xr ~= 0
        ea = abs((xrold-xr)/xr)*100;        %The calculated error.
    end
    test=func(xl,varargin{:})*func(xr,varargin{:});
    if test<0
        xu = xr;
    elseif test>0
        xl = xr;
    else
        ea = 0;
    end
    if ea<=es||iter>=maxiter
        break
    end
end
   root = xr
   fx = func(xr,varargin{:});   %The outputs of the function.
end


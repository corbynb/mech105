%HW9
%Musaab AL-Mabali    ID/830238774
%Develop a function namedfalsePosition.m
function [root,fx,ea,iter]=falsePosition_peer1(func,xl,xu,es,maxit,varargin)
%input
%•func = the function being evaluated
%•xl= the lower guess
%•xu= the upper guess
%•es = the desired relative error (should default to 0.0001%)
%•maxiter - the number of iterations desired (should default to 200)
%output
%•root = the estimated root location
%•fx = the function evaluated at the root location
%•ea = the approximate relative error (%)
%•iter = how many iterations were performed
%using nargin test (same with bisection)
if nargin<3,error('at least 3 input arguments required'),end
test = func(xl,varargin{:})*func(xu,varargin{:});
if test>0,error('no sign change'),end
if nargin<4||isempty(es), es=0.0001;end
if nargin<5||isempty(maxit), maxit=200;end
iter = 0; xr = xl;
while(1)
    xrld=xr;
    %using varargin (Variable-length input argument list) in false-position formula.
    xr=xu-func(xu,varargin{:})*(xl-xu)/(func(xl,varargin{:})-func(xu,varargin{:}));
    iter=iter+1;
    if xr ~= 0,ea = abs((xr-xrld)/xr) * 100;end
    %approximate relative error test
test = func(xl,varargin{:})*func(xr,varargin{:});
if test < 0
xu = xr;
elseif test > 0
xl = xr;
else
ea = 0;
end
if ea <= es||iter >= maxit,break,end
end
root = xr; fx = func(xr, varargin{:});

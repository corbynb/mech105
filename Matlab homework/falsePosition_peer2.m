function [root,fx,ea,iter] = falsePosition_peer2(func,xl,xu,es,maxiter)
%This function will estimate the roots of a given function using the false
%position method
%Inputs
%   func - the function being evaluated
%   xl - the lower guess
%   xu - the upper guess
%   es - the desired relative error 
%   maxiter - the number of iterations desired 
%Outputs  
%   root - the estimated root function
%   fx - the function evaluated at the root location
%   ea - the approximate relative error (%)
%   iter - how many iterations were performed


if nargin < 3 %there needs to be at least 3 input values
    error('Please enter at least 3 variable')
elseif nargin > 5 %there can only be at max 5 input values
    error('Too many inputs; Please try again')
elseif nargin < 4 % if there are less than four inputs, then we have to initialize
    %the last two inputs value
    es = 0.0001;
    maxiter = 200;
elseif nargin < 5 %if there are less than 5 inputs, then we have to initialize
    %the last input value
    maxiter = 200;
end

signtest = func(xl) * func(xu); %the sign of the root should be negative based 
%on bound brackets when multiplied together
if signtest > 0
    error('No sign change, your roots both have the same sign') %your bounds 
    %are either both negative or both positive
elseif signtest == 0
    disp('YAY YOU, YOU GUESSED A ROOT') %if either one of the guessed roots was 
    %correct, or miraculously both were correct, when multiplied, you would get zero
else
end
    
iter = 0; %initializes number of iterations
oldroot = 0;    
while iter <= maxiter %iterations will continue until is equal to max number of iterations
  root = xu - (((func(xu))*(xl - xu))/((func(xl)) - func(xu))); %false position root equation
  fx = func(root); %function value at the root location
  iter = iter + 1; %increases the iteration after each run through
  if root ~= 0
      ea = abs((root - oldroot)/root) * 100; %calculates approximate error
      oldroot = root; %reassigns the root for next while loop run through
  end
 
  if (func(root) * func(xl)) < 0 %multiplies root by lower guess to see if negative
    xu = root; %since negative, we reevaluate the upper guess as the root
  elseif (func(root) * func(xu)) < 0 %multiplies root by upper guess to see if postive
    xl = root; %since positive, we reevaluate the lower guess as the root
  else
    ea = 0; %the guesses were right and the error is zero
  end
  if ea <= es || iter >= maxiter %if max number of iterations are met or relative error
      %equals the desired error the while loop will break
      break %stops loop
  end

end
fprintf ('Root: %d\n', root) %root
fprintf ('Function value at root location: %d\n', fx) %function value at root
fprintf('Number of iterations: %d\n', iter) %number of iterations
fprintf('Relative error: %d\n', ea) %relative error

end

%when calling function, use syms x, then f(x) = your function, then when
%calling use: falsePosition(f,xl,xu)
function [I] = Simpson(x,y)
%This is a function for the Simpson's 1/3 composite rule for integration.
%The Simpson rule will take a vector of length x and y and integrate within
%the bounds x and y. If the length of x is an even number, the Simpson's
%1/3 rule will be used for integration. If it is odd, the trapiziod
%integration rule will be added on the end, making it a compisite simpson's
%rule.
%   Inputs:
    %x - given data from user
    %y - given data from user
    
    %Outputs:
    %I - Estimated Integral
    
% Corbyn Berg 
% 4-8-2018

%assigning variables for x and y
a = length(x);
b = length(y);

%Checks that x and y equal eachother for the function to run
if a ~= b      
    error('Vector lengths must be equal')
end

%confirms that x intervals are equal
n = diff(x);
if min(n) ~= max(n) 
    error('Intervals must be spaced evenly')
end

%tests if there will be an even or odd number of intervals.
evens = mod(a,2);

%Tells user trapiziod integration will be used as well if an odd # of intervals 
%is present, otherwise only Simpson's will be used.
if evens == 0
    disp('Warning, trapizoid integration will be used due to odd numb of intervals')
    T = a - 1;
else 
    T = a;      %Simpson's will be used if intervals are odd.
end

%h is variable for step-size.
h = (max(x)-min(x))/T;
I = sum(y(1:2:T-2) + 4*y(2:2:T-1) + y(3:2:T))*h/3  %Simpson's 1/3 integration.
if evens == 0
    I = I + ((y(a-1) + y(a))/2)*h  %adds on trapiziod integration to simpson's if needed
end
end


function [nd] = days(mo,da,leap)
%function nd is used to determine the elapsed days in a year. 
% Inputs
%   mo=months in a year, spanning 1-12.
%   da=days in a month, spanning 1-31.
%   leap=leap year, enter 0 for non-leap year and 1 for a leap year.
% Outputs
%   nd=elapsed days in a year

 % Created January 30 2017
 % Corbyn Berg
 input(nargin);
 if nargin > 3 && nargin < 3
     error('number of arguments must be 3') %This function can only
                                            %take 3 arguments
 else nargin == 3
     input(mo,da,leap)
end


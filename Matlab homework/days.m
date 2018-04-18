function [nd] = days(mo,da,leap)
%function nd is used to determine the elapsed days in a year. 
% Inputs
%   mo=months in a year, spanning 1-12.
%   da=days in a month, spanning 1-31.
%   leap=leap year, enter 0 for non-leap year and 1 for a leap year.
% Outputs
%   nd=elapsed days in a year

 % Created January 30 2017
 % By Corbyn Berg
x=input('Enter the number for the month, ex. january=1, march=3,etc.');
    %User imputs the month
da=input('Enter the day of the month');
    %User inputs the day of the month
if x>12
    error('error, month cannot be greater than 12, there are inly 12 months');
    %Displays error messages if the user types in a 0 or negative month, or
    %a month greater than 12, becasue we only have 12 months on our
    %calender
elseif x<1
    error('error, month cannot be less than 1');
elseif da<1 || da>31
    error('error, da is var for days, please input a number 1 though 31');
end
%%
calander=[0 31 59 90 120 151 181 212 243 273 304 334];
    %Array created to be used in calculating the total number of days. If a
    %leap year occurs, array changes to compensate for extra day.
leap=input('Type 1 if it is a leap year, otherwise type 0');
if x==2 && da==29 && leap==0
    error('If there are 29 days in month 2, a leap year exists');
end
if leap==1
    calander=[0 31 60 91 121 152 182 213 244 274 305 335];
elseif leap==0
    calander=[0 31 59 90 120 151 181 212 243 273 304 334];
else
    error('error, type in 0 for a non-leap year or 1 for a leap year');
end
%%
mo=calander(1,x);
days=mo+da

end
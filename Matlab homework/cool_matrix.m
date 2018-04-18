function [cool_matrix] = cool_matrix(r,c)
% cool_matrix will display a matrix with "k" number of rows and "h" number of
% columns. 
% The matrix will have the following values:
%   The value of each first row element will be the number of the column.
%   The value of each first column element will be the number of the row.
%   The rest of the elements' values will be the sum of the element above
%       it and the element to the left.
%  Inputs:
%       r is the number of the row
%       c is the number of the column
%  Outputs:
%       cool_matrix will be the output.
% January 30 2018
% Created by Corbyn Berg

r=input('r rows');      % User types in the number of rows desired
c=input('c columns');       % User types in the number of columns desierd
for  k=1:r
    for h=1:c
        if k==1
            cool_matrix(k,h)=h; % The value of the first row will be the
                                % number of the column.
        elseif h==1
            cool_matrix(k,h)=k; % The value of the first column will be the
                                % number of the row.
        else 
            cool_matrix(k,h)=cool_matrix(k-1,h)+cool_matrix(k,h-1);
                        %The element is the sum of the element above and to
                        %the left.
        end
    end
end
disp(cool_matrix)       % Displays the matrix in the command window

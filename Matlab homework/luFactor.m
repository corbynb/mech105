function [L,U,P] = luFactor(A)
%luFactor is an algorithm that uses LU factorization and partial pivoting
%to find the lower and upper matrixes of matrix A, which must be a square
%matrix.
%
%   Inputs
%   A - The matrix for the system of equations, must be square.
%  
%   Outputs
%   L - The lower output matrix for A.
%   U - The upper output matrix for A.
%   P - The pivot matrix.
%Corbyn Berg
%3-25-2018
[n,m] = size(A);        %rows and columns for matrix A
if nargin > 1
    error('There are too many input arguments') %error becuase only 1 input needed
end
if n ~= m
    error('A must be a square matrix, n must equal m')  %error because A must be square
end

[m,n] = size(A);
L = eye(n); %Makes L an identity matrix
P = eye(n); %Makes P an identity matrix
U = A;

for b = 1:m-1
    pivot = max(abs(U(b:m,b))); %pivoting
    for a = b:m
        if (abs(U(a,b)) == pivot)   %Used to find the largest coefficent, and pivot 
                                    %the largest coefficent to the top.
            ind = a;
        end
    end
    U([b,ind],b:m) = U([ind,b],b:m)	%Change rows
    L([b,ind],1:b-1) = L([ind,b],1:b-1);    %Change rows
    P([b,ind],:) = P([ind,b],:);    %Change rows
    for a = b+1:m
        L(a,b) = U(a,b)/U(b,b); %The L matrix of A
        U(a,b:m) = U(a,b:m)-L(a,b)*U(b,b:m);    %The U matrix of A
    end
end

P = P   %Disply the final L,U, and P matrixes for user.
L = L
U = U
end


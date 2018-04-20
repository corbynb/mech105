# LU function
LU factor is an algorithm created to find the lower and upper matricies for a matrix A. This function uses LU factorization and pivoting to create the matricies L and U from inputted matrix A. A user would want to use this function's outputs to solve for a system of equations, for L and U can be used with an inverse matrix and a few other variations of A to find rates and relationships in a system of equations.
## Inputs
### A
A is the only input for this function. The user must input a matrix A to matlab in order to LU factor it. A must be a square matrix for this algorithm to work, so the matrix must have the same number of rows as columns. 
## Outputs 
### L
L is the lower output matrix of matrix A. L was found by pivoting A to create a lower triangular matrix. A user would want to find L to further use it to solve for systems of equations with a matrix's inverse.
### U
U is the opposite of L, for it's an upper output matrix for matrix A. U is an upper triangualr matrix, anf can also be used to solve for systems of equations, jsut like L.
### P
P is the pivot matrix. P shows the user how A was pivoted in order to derive L and U. 

function [L,b] = lower_triangulisation(A,b)
% The function computes the lower triangularisation of a given square matrix A using the Gauss elimination method (GEM).
% A - the coefficient matrix
% n - the size of the matrix A
%lines 8-20: initialisation of the identity (I) 
%and lower-triangular (L) matrices
n=max(size(A));
L=A;
I=eye(n);
for k=1:n-1 % the main loop of the GEM starts here
 [L,b] = Permutation_Lower(L,I,k,n,b);
 [gv,b] = gauss_vector_L(L,k,n,b); %  construct Gauss vector
 evec = e_vector_L(k,n); %e vector for the corresponding stage of the GEM
 LE = outer_product(gv,evec,n); %outer product
 J = matrix_subtraction(I,LE,n); %Gauss transformation matrix 
 L = matrix_matrix_mult(J,L,n); %lower-triangular matrix
end 



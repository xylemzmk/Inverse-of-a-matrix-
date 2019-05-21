function [gv,b] = gauss_vector_L(U,k,n,b)
% The function constructs the Gauss vector of a given step of Gauss elimination method.
% U - the coefficient matrix
% k - the step number of Gauss elimination
% n - the size of the matrix A
% b - destinate solution matix 
gv=zeros(n,1); %initialisation of the Gauss vector

ref=n-(k-1); %reference factorization row
%computation of Gauss vector components according to the 
%formula given in the lecture 3, page 10.

for j=1:n-k 
gv(ref-j) = U(ref-j,ref)/U(ref,ref); %obtain factorization value
end
gvedit=-1*gv; 
 if isempty(b)==0 %check user input
  bref=b(ref)*ones(n,1);
  b=bref.*gvedit+b;   %obtain factorized b
elseif isempty(b)==1
  b=[];
 end

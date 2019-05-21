function [invA] = INverse(A)
%this function compute a inverse of matrix A using LU factorization and
%forward substitution
n=max(size(A)); 
if n~=1 %check if the input is a matrix or a single value
I=eye(n);
invA=zeros(size(A));
for i=1:n
 b=I(:,i);
[L,b] = lower_triangulisation(A,b); %compute the LU factorization
[ x_L ] = for_sub(L,b,n); %find the result using forward substitution
invA(:,i)=x_L; %allocate the result
end
elseif n==1 %if the input if a single value
    invA=1/A;  %return its inverse
end


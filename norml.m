function [u] = norml(u,k)
%this function normalise a input matrix u by 
%if k=1 --- its first entry in every column 
%and returns the normlised [u] with its first row = 1s
%if k=2 --- its magnitude and returns [u]'s each column as unit vector
[~,m]=size(u);
if k==1
for i=1:m
    u(:,i)=u(:,i)/u(1,i);
end
elseif k==2
for i=1:m
    x=u(:,i);
    [magx] = magnitude(x);
    u(:,i)=x/magx;
end
end
end


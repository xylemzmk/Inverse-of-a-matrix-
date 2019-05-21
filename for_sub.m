function [ x_L ] = for_sub(L,b,n)
%this function compute Lx=b using forward substitution
x=zeros(size(b));  %initialize array
if isempty(b)==0 %check user input
x(1)=b(1)/L(1,1);
for i=2:n %formulas from lecture note 3
   x(i)=(b(i)-L(i,1:i-1)*x(1:i-1))/L(i,i);  
end
    x_L=x;
elseif isempty(b)==1
    x_L=[];
end
end


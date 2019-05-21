function [L,b] = Permutation_Lower(L,I,k,n,b)
%this fucntion permuting matrix U according to the largest entry in the
%column as well as the targeting solution b for lower_triangulisation
largest=0;index=0;%initializing parameters
ref=n-(k-1);  %find reference element
bnew=b;
fcol=L(:,ref); %extract reference column
for i=1:ref
   if abs(fcol(i))>=largest
       largest=abs(fcol(i)); %find the largest element in the column 
       index=i;
   end
end
 P=I;%initializing permutation matrix
 P(ref,:)=I(index,:);
 P(index,:)=I(ref,:); %swep rows
 Lnew=P*L; %obtain permutated U matrix
 L=Lnew;
  
 if isempty(b)==0 %check user input
 bnew(ref,:)=b(index,:); % permuting b matrix
 bnew(index,:)=b(ref,:);
 b=bnew;
 elseif isempty(b)==1
     b=[];
 end
end


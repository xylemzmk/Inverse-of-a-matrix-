function evec = e_vector_L(k,n)
% This function constructs the e evector for the given Gauss elimination step
% m - the step number of Gauss elimination method
% n - the size of the matrix A
ref=n-(k-1); % obtain the reference row
for i=1:n %lines 5-7: initialisation of the e-vector
evec(i) = 0.0;
end
evec(ref)=1.0; %e-vector denotes to the m_th column of identity matrix
               %make the refernce entry in e-vector as 1.0

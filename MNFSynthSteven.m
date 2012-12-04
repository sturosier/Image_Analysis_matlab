function [PC1 PC2 MNF1 MNF2] = MNFSynthSteven(S,N,X1,X2) 

[row1 col1] = size(X1);
[row2 col2] = size(X2);


% calculate the covariance matrices
covariance = cov(X1);
covariance2 = cov(X2);

% find the eigenvectors and eigenvalues
[PC1, V] = eig(covariance);

[PC2, V2] = eig(covariance2);

sigma1 = (cov(N))*inv(cov(X1)); 

sigma2 = (cov(N))*inv(cov(X2));

[MNF1 d] = eig(sigma1);

[MNF2 d] = eig(sigma2);
 
end

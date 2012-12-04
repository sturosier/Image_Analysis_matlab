function [PC  MNF] = MNFSteven(im) 

%we first convert the image to a matrix.

im = struct2cell(im);
im = cell2mat(im);

[row1,col1,band1] = size(im);

im = reshape(im,[row1*col1 band1]);
covariance = cov(im);

%We calculate the MAF since we don't have noise covariaance.
[row1 col1] = size(im);

C=(im'*im)/row1;
D=im(1+1:end,:)-im(1:end-1,:);
V=(D'*D)/(row1-1);
[N,E]=eig(inv(C)*V);  %we get noise covariance in N.


% find the eigenvectors and eigenvalues
[PC, V] = eig(covariance);

sigma1 = (N)*inv(cov(im));

[MNF d] = eig(sigma1);
 
end

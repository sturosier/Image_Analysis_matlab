function [PC V] = LookAtPCASteven(data,down)

data = struct2cell(data);
data = cell2mat(data);
data =  downsample(data,down);

[M,N,O] = size(data);

data = reshape(data,[M*N O]);


% subtract off the mean for each dimension
the_mean = mean(data,2);
data = data - repmat(the_mean,1,O);
% calculate the covariance matrix
covariance = 1 / (O-1)* data * data';
% find the eigenvectors and eigenvalues
[PC, V] = eig(covariance);

PC = [PC(:,1) PC(:,2) PC(:,3)];
mapcaplot(PC);
image(covariance);  %show covariance as an image.
imagesc(PC(:,1));   %plot the first 3 principal components.
imagesc(PC(:,2));
imagesc(PC(:,3))
V = (diag(V))'; %get the eigenvalues as vectors.
L = [V(:,1) V(:,2) V(:,3)];
bar(L);  %plot the eigenvalues
 

end
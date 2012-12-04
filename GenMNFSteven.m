function [S N X1 X2]= GenMNFSteven(mu,covS,covN)

%this function produce sets of 500 samples.

[row,col]= size(covS);   %get the number of rows and columns.

  S = mvnrnd(mu,covS,500);    %construct data via sampling using mvnrnd.
  zero = zeros(row,1);
  N= mvnrnd(zero,covN,500);
  X1= mvnrnd(mu,covN+covS,500);
  X2 = zeros(500,1);
  
  
  for i =1:500
      
      X2(i,1)=S(i,1)+N(i,1);
  end
  
  
  
  
  



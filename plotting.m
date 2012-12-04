function s =plotting(data1, data2)

%this function plots the Eigenvalues, first three components of
%each transform as images,and scatter plots of the first three transforms.
    
    [v1 e1] = eig(data1);     %get the eigenvalues in e1 and e2.
    [v2 e2] = eig(data2);
    
    figure;
   plot(real(e1),'r*');    %plot the eigenvalues.
    figure;
   plot(real(v2),'r*');
    
   data1 = [data1(:,1) data1(:,2) data1(:,3)];
   data2 = [data2(:,1) data2(:,2) data2(:,3)];
    data1= real(data1);
    data2= real(data2);
    
    figure;
   imagesc(data1);    %plot first 3 components as images.
    
   figure;
   imagesc(data2);
   
   figure;
   plotmatrix(data1,'*r');   %plotmatrix plots first 3 components as scatt.
   figure;
   plotmatrix(data2,'*r');
    
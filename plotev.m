 function [e] = plotev(n)
   %  [e] = plotev(n)
   %
   %  This function creates a random matrix of square
   %  dimension (n).  It computes the eigenvalues (e) of 
   %  the matrix and plots them in the complex plane.
   %
 
   A = rand(n);   % Generate A
   e = eig(A);    % Get the eigenvalues of A
 
   close all    % Closes all currently open figures.
   figure(1)
     bar(e) %   Plot real and imaginary parts
     
    
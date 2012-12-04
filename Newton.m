function X = Newton(a,b,iteration)

  X = b-a;   %this is p0
  
  for i=1:iteration     %the loop for going up to the required accuracy.
                         %p(n+1) = Xn - F(Xn)/F'(Xn)
      
      X = X - ( exp(-X/5)-sin(X) )/( (-1/5)*exp(-X/5)-cos(X) );    
  end
  

end
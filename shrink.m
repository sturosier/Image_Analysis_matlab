function S=shrink(A)
[m,n] = size(A);
L = lead(A);
[p,q] = size(L);
counter = 0;
 for i = 1: q
     if L(1,i) == 1
         counter = counter + 1;
     end
 end
 
 sRow = 1;
 sCol = 1;
 
 for j = 1: q
    
     if L(1,j) == 1
          
         for k =1: m
             S(sRow, sCol) = A(k,j);
              sRow = sRow +1;
            
             
         end
           sCol = sCol +1;
           sRow = 1;
     end
 end

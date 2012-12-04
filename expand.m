function E=expand(A)
[m,n] = size(A);
L = lead(A);
[p,q] = size(L);
counter = 0;
 for i = 1: q
     if L(1,i) == 1
         counter = counter + 1;
     end
 end
  inc = 1;
  colCounter = 1;
 if counter ~= n
     disp('Error: Columns of matrix are linearly dependant. Cannot process your request!');
 
 else
     E = eye(m);
     eRow = 1;
     eCol = 1;
     
     for j = 1: q
         if L(1,j) == 1
             for k =1: m
                 if colCounter <= q
                    E(eRow, eCol) = A(k,colCounter);
                    eRow = eRow +1;
                    
                 else
                 end
             end
             eCol = eCol +1;
             eRow = 1;
             inc = inc +1;
             colCounter = colCounter +1;
         else
             colCounter = colCounter +1;
         end
     end
     
 end
 

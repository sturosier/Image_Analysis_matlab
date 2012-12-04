function p= eigbasis(A)
[aRow,aCol] = size(A);
eiVals= disteig(A);
[eRow,eCol] = size(eiVals);
p = zeros(aRow);

temp = 0;
for i = 1:eRow

    tempMatrix = newnullbase(A - eiVals(i,1)*eye(aRow));
    
    if temp == 0
        p = tempMatrix;
        temp = temp+1;
    elseif temp~=0
        p = [tempMatrix p];
    end
end

[pRow,pCol] = size(p);

if pCol ~= aRow
   
 p = 'The matrix is not diagonalizable.';
end
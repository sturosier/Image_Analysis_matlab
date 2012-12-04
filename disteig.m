function d=disteig(A)

d = eig(A);


[m,n] = size(d);

temp1 = 1; %%this is the row of d
compareVal = 2;  %%this is the row from which i start comparing.

while compareVal<=m
    
    for i =compareVal:m
        if abs(d(temp1,1)- d(i,1))< 0.0000001
            d(i,1) = d(temp1,1);
        end
    end
    temp1 = temp1 + 1;
    
    compareVal = compareVal + 1;
end

 d = unique(d);
end
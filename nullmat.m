function N = nullmat(A)
[m,n] = size(A);
I = eye(m);
M = [A -I];
K = rref(M);
N = zeros(1,m);
[p,q] = size(K);
nCol = 1;
for i = n+1: q
N(1,nCol) = K(m, i);
nCol = nCol + 1;
end
end
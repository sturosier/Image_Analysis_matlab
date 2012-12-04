function v = pieceWise(x,y,xi,n)
v= 0;
for k = 1:n
%Lagrange function k at u

for j = [1:k-1 k+1:n]
w = (xi-x(j))./(x(k)-x(j));
end
v = v + w*y(k);
end
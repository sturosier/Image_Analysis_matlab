function m = mult(A,ev)

vec = eig(A);

[x,y] = size(vec);

m = 0;

for t =1:x
    if ev == vec(t,1)
        m = m+1;
    end
end

for s =1:x
    if abs((ev-vec(s,1)))<0.0000001
        m = m+1;
    end
end


end
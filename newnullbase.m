function B=newnullbase(A)
[m,n]=size(A);
[R,jb]=rref(A,10^(-7));
r=length(jb);
d=n-r;
l=zeros(1,n);
l(1,jb)=ones(1,r);
l=logical(l);
k=~l;
B=zeros(n,d);
if d>0,
B(l,:)=-1*R(1:r,k);
B(k,:)=eye(d);
end
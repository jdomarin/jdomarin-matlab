function[A]=matriceA(t,n,T)
m = length(t);
A = zeros(m,n);
for i = 1:m
    for j=1:n
        A(i,j)=phi(j,t(i),T);
    end
end
function[m]=mediane_ex2(s,L)
n = length(s);
m = zeros(size(s));
for k=1:L-1
    m(k) = median(m(1:k));
end
for k=L:n
    m(k)= median(m(k-L+1:n));
end

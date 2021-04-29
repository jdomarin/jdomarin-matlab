function [m]=mediane_coulissante(s,L)
n = length(s);
m = zeros(size(s));
for k=1:L-1
    m(k) = median(s(1:k));
end
for k=L:n
    m(k)= median(s(k-L+1:k));
end
plot(m)
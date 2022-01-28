function[m]=ex11b(sb,L)
n = length(sb);
m = sb;
m(1:L)=exercice11(sb(1:L));
for k=1:n-L
   m(k+L) = m(k+L-1)+(sb(k+L-1)-sb(k))/L;
end

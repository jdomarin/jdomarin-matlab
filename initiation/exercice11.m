function[m]=exercice11(sb)
n = length(sb);
 m = [sb(1) zeros(1,length(sb)-1)];
for k=1:n-1
    m(k+1) = n*m(k)+sb(k+1)+m(k+1);
    m(k+1) = m(k+1)/(n+1);
end

function[s] = energieex1(x)
N = length(x);
s = 0;
for k=1:N
    s = s + x(k)^2;
end
E1 = s ; disp(['E1=' num2str(E1)]);
E2 = sum(x.^2); disp(['E2=' num2str(E2)]);
E3 = x*x'; disp(['E3=' num2str(E3)]);
E4 = cov(x) * (N-1); disp(['E4=' num2str(E4)]); 
% E4 est la puissance théorique multipliée par le nombre d'échantillons

%pour comparer les énergies à E4
abs(E1-E4)
abs(E2-E4)
abs(E3-E4)
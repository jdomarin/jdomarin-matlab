function [x] = ondecarree(p, nh, td, tf)
%ce signal permet de reconstruire une onde carrée à partir du développement
%en série de Fourier calculé à la question précédente
t = td:p:tf;% td : temps de début ; tf : temps de fin
x = zeros(size(t));
for n = 1:nh
    x = x + sin((2*n-1)*t)/(2*n-1);
end
x = (4/pi)*x;
plot(t,x), grid, title('onde carrée')
function [x] = ondecarree(p, nh, td, tf)
%ce signal permet de reconstruire une onde carr�e � partir du d�veloppement
%en s�rie de Fourier calcul� � la question pr�c�dente
t = td:p:tf;% td : temps de d�but ; tf : temps de fin
x = zeros(size(t));
for n = 1:nh
    x = x + sin((2*n-1)*t)/(2*n-1);
end
x = (4/pi)*x;
plot(t,x), grid, title('onde carr�e')
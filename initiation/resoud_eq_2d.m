function[x1,x2]=resoud_eq_2d(a,b,c)
delta = b^2-4*a*c;
if delta > 0 && a~=0
    x1 = (-b+sqrt(delta))/(2*a);
    x2 = (-b-sqrt(delta))/(2*a);
elseif delta < 0 && a~=0
    x1 = (-b+1i*sqrt(-delta))/(2*a);
    x2 = (-b-1i*sqrt(-delta))/(2*a);
elseif delta == 0 && a~=0
    x1 = -b/(2*a);
    x2 = x1;
else
    disp('erreur : a ne peut pas etre nul')
end
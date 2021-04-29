%TP2 exercice 2 Maths num
%question 1
function[y]=phi(i,t,T)
if(mod(i,2) == 0)
    y = sin((i*pi*t)/T);
else
    y = cos(((i-1)*pi*t)/T);
end
end

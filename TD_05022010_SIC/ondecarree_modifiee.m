function [x] = ondecarree_modifiee(p, nh)
t = 0:p:pi;
x = zeros(size(t));
for n = 1:nh
    x = x + sin((2*n-1)*t)/(2*n-1);
    X(n,:) = x; %on stocke les approximations successives de x dans une même ligne d'une matrice X
    plot(t,x,t,X'), grid, title('approximations successives du signal')
end
x = (4/pi)*x;
mesh(X)
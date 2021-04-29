%question 2
function [y] = signal_per(t,x,T)
y = zeros(size(t));
for i = 1:length(x)
    y = y + x(i)*phi(i,t,T);
end
end

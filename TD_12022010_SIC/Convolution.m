x = [1 2 3 4];
y = [5 4 3 2 1];
M = length(x) + length(y) - 1;

x = [x zeros(1, length(y)-1)];
y = [y zeros(1, length(x)-1)];
% on met x et y à la même dimension
z = zeros(1,M);
for k = 1:M
   for n = 0:k-1
        z(k) = z(k) + x(n+1)* y(k-n); 
   end
end
disp(['z=' num2str(z)])
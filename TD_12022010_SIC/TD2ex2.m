x = [1 2 3 4];
y = [5 4 3 2 1];
x = [x zeros(1, length(y)-1)];
y = [y zeros(1, M-length(y))];

z1 = zeros(1, M);
X = fft(x);
Y = fft(y);

z1 = X.*Y;
Z = ifft(z1);
disp(['Z=' num2str(Z)])
z2 = ifft(z); %z=conv(x,y)
disp(['z2=' num2str(z2)])
dif = z-z2;
disp(['dif=' num2str(dif)])
N=64;
Te=1/128;
fe = 1/Te;
k=0:N-1;
x=[sin(2*pi*19*k*Te) zeros(1,50)];
X = fft(x);
magX=abs(X);
figure(1);
plot(k,magX), title('module de la TF'), xlabel('k'),grid
figure(2);
stem(k,magX), title('module de la TF'), xlabel('k'),grid
figure(3);
Z = fftshift(X);
magZ = abs(Z);
t = -fe/2:fe/N:fe/2-fe/N;
plot(t,magZ), title('spectre ameliore'), xlabel('Hz'), grid
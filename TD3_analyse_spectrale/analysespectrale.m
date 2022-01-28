N=64;
Te=1/128;
fe = 1/Te;
k = 0:N-1;
h = k*fe/N; %graduer axe de frequence
%h = k/N en Hz relatifs par rapport à fe
x = sin(2*pi*20*k*Te);
m = 64*N; % détermination de la longueur du signal pour le zero padding
X = fft(x);
X1 = fft(x,m); %pour faire du zero padding
magX = abs(X);
magX1 = abs(X1);
figure(1);
plot(h,magX), title('module de la TF de x'), xlabel('k'),grid
figure(2);
plot(h,magX1), title('module de la TF de x1'), xlabel('h'),grid

%si on ne veut travailler que sur les fréquences strictement positives
%fftshift non utilisé
X = fft(x);
magX = abs(X);
h = k*fe/N;
plot(h(1:N/2), magX(1:N/2))

% avec fftshift
%X = fft(x);
%magX=fftshift(abs(X));
%h=k*(fe/N);
plot(h(1:N/2), magX(N/2+1:N))

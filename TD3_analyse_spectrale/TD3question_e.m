N=64;
nfft = 100*N; % détermination de la longueur du signal pour le zero padding
Te = 1/128;
fe = 1/Te;
k = 0:N-1;
x = sin(2*pi*20*k*Te);
X1 = fft(x,nfft);
magX1 = abs(X1);
h = (0:nfft-1)*fe/nfft; %graduer axe de frequence
plot(h,magX1), title('TFD de x avec echantillonnage'), xlabel('h'),grid
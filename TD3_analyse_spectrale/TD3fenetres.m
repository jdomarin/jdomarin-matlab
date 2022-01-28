N = 32;
M = 15*N;
hshift = -1/2:1/M:1/2-1/M; % axe de frequence en Hz relatifs à fe
%creation des fenetres
f1 = bartlett(N);
f2 = blackman(N);
f3 = kaiser(N,5);
f4 = chebwin(N,20);
f = rectwin(N);
%calcul des TFD
F1 = fftshift(abs(fft(f1,M)));
F2 = fftshift(abs(fft(f2,M)));
F3 = fftshift(abs(fft(f3,M)));
F4 = fftshift(abs(fft(f4,M)));
F = fftshift(abs(fft(f,M)));
%trace des graphes
subplot(3,2,1)
plot(hshift,F1), title('fenetre de Bartlett'), xlabel('hshift'),grid;
subplot(3,2,2)
plot(hshift,F2), title('fenetre de Blackman'), xlabel('hshift'),grid;
subplot(3,2,3)
plot(hshift,F3), title('fenetre de Kaiser'), xlabel('hshift'),grid;
subplot(3,2,4)
plot(hshift,F4), title('fenetre de Chebychev'), xlabel('hshift'),grid;
subplot(3,2,5)
plot(hshift,F), title('fenetre rectangulaire'), xlabel('hshift'),grid;

[Y2, FS2, NBITS]=wavread('signal.wav');
N = length(Y2);
nfft = 2^nextpow2(8*N);
echelle = 0:FS2/nfft:FS2-FS2/nfft;
magY2 = abs(fft(Y2,nfft));
subplot(2,1,1)
plot(Y2), grid, title('Analyse temporelle du signal bruité')
subplot(2,1,2)
plot(echelle, magY2), grid, title('Analyse fréquentielle du signal bruité')

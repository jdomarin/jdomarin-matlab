[Y,FS,NBITS]=wavread('sigmoz.wav');%Y est le signal, FS la fréquence d'échantillonnage et NBITS le nombre de bits
N = length(Y);
nfft = 2^nextpow2(8*N);
echelle = 0:FS/nfft:FS-FS/nfft;
magY1 = abs(fft(Y,nfft));
subplot(2,1,1)
plot(Y), grid, title('Analyse temporelle du signal de Mozart')
subplot(2,1,2)
plot(echelle, magY1), grid, title('Analyse fréquentielle du signal de Mozart')





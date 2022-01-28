fcoupure = 4000; %fr�quence de coupure
fc = 2*fcoupure/fe; %fr�quence de coupure normalis�e comprise entre 0 et 1
[B,A] = butter(20,fc);
[B1,A1] = cheby2(20,60,fc);

figure(3);
dbode(B,A,1/fe)
figure(4);
dbode(B1,A1,1/fe)

%question 4
signalfiltre = filter(B,A,Y); %signal filtr� li� � 'sigmoz.wav'
signalfiltre2 = filter(B1,A1,Y2); %signal filtr� li� � 'signal.wav'
wavplay(signalfiltre2,fe)

N = length(signalfiltre2);
nfft = 2^nextpow2(8*N);
echelle = 0:fe/nfft:fe-fe/nfft;
magsignalfiltre2 = abs(fft(Y2,nfft));
subplot(2,1,1)
plot(signalfiltre2), grid, title('Analyse temporelle du signal bruit�')
subplot(2,1,2)
plot(echelle, magsignalfiltre2), grid, title('Analyse fr�quentielle du signal bruit�')

%question 5
k = 32;
sdecime = signalfiltre2(1:k:end);
Nd = length(sdecime);
Md = 2^nextpow2(8*Nd);
Xd = fftshift(abs(fft(sdecime,Md)));
hd = (-Md/2:Md/2-1)*fe/Md;
figure(5);
plot(hd(Md/2+1:Md),Xd(Md/2+1:Md)), title('Analyse fr�quentielle du signal d�cim�')
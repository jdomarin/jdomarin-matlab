function[sr] = sonar(E, d, fi, alpha, ret, att, rsb)
N = 10;
fe = N*fi;
Te = 1/fe;
t = 0:1/fe:d;%cree vecteur de 0 à durée d par pas de Te
A = sqrt(2*E/d);
s = A*sin(2*pi*fi*t).*exp(-alpha*t);%sinusoide amortie
t2 = 0:Te:ret+d;
M = length(t2)-length(t);
sr = [zeros(1,M) s]/att;%signal retard
se = [s zeros(1,M)];%signal emis
b = randn(size(t2));% cree signal bruité
b = b-mean(b);
b = b/std(b);
sigma = att/(sqrt(2*10^(rsb/10)));
b = b*sigma;
sr = sr + b;
figure(1);
plot(t2,se,t2,sr), grid, title('signal emis et signal retarde'), xlabel('t')
%1ere methode
retest = xcorr(sr,se);
figure(2);
plot(retest), grid, title('intercorrelation brute'), xlabel('t')
%2eme methode
magSR = abs(fft(sr,M));
h = (0:M-1)*fe/M; %graduer axe de frequence
figure(2);
plot(h,magSR), title('module de la TF de sr'), xlabel('h'),grid
end
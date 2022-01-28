f = 20%;
fe = 100;
Te = 1/fe;
t = 0:Te:10;
x= sin(2*pi*f*t);
plot(t,x), grid, title('signal sinusoidal'), pause
ac = xcorr(x, 60, 'unbiased');
plot(ac), grid, title('fonction autocorrelation de la sinusoide'), pause
b = randn(size(x)); b = sqrt(7)*b/std(b); %sqrt(7) s'obtient par 2*sigma^2=14
xb = x+b;
plot(t, xb), grid, title('sinusoide bruitee'), pause
acb = xcorr(xb, 60, 'unbiased');
plot([ac' acb']), grid, title('fonctions autocorrelation du signal'), pause

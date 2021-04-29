f = 100;
fe = 500;
Te = 1/fe;
t = 0:Te:2;
b = randn(size(t));
b = b-mean(b);
b = b/std(b);
A = sqrt(10);
sinusoide = A*sin(2*pi*f*t);
sb = sinusoide + b;
figure(1);
plot(t,sinusoide,t,b)
figure(2);
plot(t(1:100), sb(1:100), t(1:100), sinusoide(1:100))

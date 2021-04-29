%question 3
%test
T = 1;
m = 3000; %nombre de mesures
t = linspace(0,T,m);
x1 = [2 1 9 -2 -5 8 ];

figure(1)
plot(t,signal_per(t,x1,T)),grid, title('x1')

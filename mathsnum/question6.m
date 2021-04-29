%6.a
T = 1;
m = 500; %nombre de mesures
p = 3; %coefficient de perturbation
t = linspace(0,T,m)';
n = 10;

%for i=1:n
%t(i) = (i-1)*T/(m-1); % calcul des mesures t_i
%end

x = [1 2 3 4]; % x vecteur aléatoire
s = signal_per(t,x,T);
s_obs = s + p*randn(size(s));
%6.b
figure(1);
plot(t,s,t,s_obs), grid, title('signal pur et signal perturbé')

%6.c
A = matriceA(t,n,T);
x_ret = A\s_obs;

%6.d.
subplot(2,1,1);
plot(t,s,t,s_obs), grid, title('signal pur et signal perturbé')
subplot(2,1,2);
plot(t,s,t,signal_per(t,x_ret,T)), grid, title('signal pur et signal retrouvé')
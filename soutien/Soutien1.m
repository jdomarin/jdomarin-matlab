T = 8;
t=-T:0.01:T;
A=2;
Te = 0.01;
t=-T:Te:T;
x=zeros(size(t));
x(1:round(T/(4*Te)))=A;
x(round(T/(4*Te)):round((3*T)/(4*Te)))=0;
x(round((3*T)/(4*Te)):round((5*T)/(4*Te)))=A;
x(round((5*T)/(4*Te)):round((7*T)/(4*Te)))=0;
x(round((7*T)/(4*Te)):round((2*T)/Te))=A;
a0 = A/2;
xr = a0*ones(size(t));

nmax=3;
for n=1:nmax
    an=A*sinc(n/2);
    bn=0;
    xr = xr+an*cos(2*pi*n*t/T)+bn*sin(2*pi*n*t/T);
end
plot(t,x,t,xr)
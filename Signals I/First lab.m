t=linspace(0,4*pi,1000);
x=sin(t);
plot(t,x) %para tiempo continuo.

stem(t,x)%para tiempo discreto.
n=linspace(0,4*pi,20);
x=sin(n);
stem(n,x)

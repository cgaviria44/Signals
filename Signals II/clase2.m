close all

n=-10:10;
logico=n>=-3 & n<=2;
xp=exp(-.5*n);
x=xp.*logico;
stem(n,x)
hold on

xr=exp(.5*n).*(-n>=-3 & -n<2);
stem(n,xr)

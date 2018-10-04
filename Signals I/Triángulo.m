t=linspace(-4,4,1000);
x=3*tri(t/4);
plot(t,x)
syms t;
E=(int((3*(1-t/4)).^2,0,4))*2
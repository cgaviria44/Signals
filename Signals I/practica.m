t=linspace(-5,5,1000);
x=u(t);
plot(t,x)

t=linspace(-5,5,1000);
x=u(t-4);
plot(t,x)

t=linspace(-5,5,1000);
x = 8*u(t - 4);
plot(t,x)

t=linspace(-100e-9,100e-9,1000);
w=4*pi*10^7;
y=20*sin(w*t);
plot(t,y)
x=u(t).*y;
plot(t,x)

t=linspace(-1,1,1000);
y = rect(t);
y = u(t+0.5) - u(t-0.5);
plot(t,y)

a=2;
x=triang(t,a);
plot(t,x)

t=linspace(-1,1,1000);
plot(t,ramp(t))

t=linspace(-1,1,1000);
plot(t,ramp(-t))

t=linspace(-10,10,1000);
plot(t,ramp(t-6))
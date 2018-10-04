close all
clear vars
tfinal=input('Ingrese tiempo final [s]: ');
t=linspace(0,tfinal,1e4);
x=10*cos(2*pi/10*t);
plot(t,x)
xlabel 'Tiempo [s]', ylabel 'Amplitud'
Ts=10;
n=0:tfinal/Ts;
xd=10*cos(2*pi/10*(n*Ts));
hold on
stem(n*Ts,xd)
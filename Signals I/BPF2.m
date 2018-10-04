clear vars, clc, close all

Fs=1e3; %Frecuencia de muestro
fc=10;
fs=15; %Frecuencia de rechazo
Rp=0.5;
Rs=40;

t=linspace(0,1,Fs);
x=5*cos(2*pi*3*t)+cos(2*pi*100*t)+1.5*cos(2*pi*20*pi*t);

n=buttord(2*pi*fc,2*pi*fs,Rp,Rs,'s');
[num,den]=butter(5,2*pi*fc,'s');
[numz,denz]=bilinear(num,den,Fs);
y=filter(numz,denz,x);

subplot(211)
plot(t,x,t,y)
legend('Señal original','Señal filtrada')
xlabel 'Tiempo [s]', ylabel 'Amplitud'

subplot(212)
w=linspace(0,20,1e3)*2*pi;
H=freqs(num,den,w);
Hdb=20*log10(abs(H));
plot(w/(2*pi),Hdb)
xlabel 'Frecuencia [Hz]',ylabel 'Magnitud [dB]'
title 'Respuesta en frecuencia de magnitud'
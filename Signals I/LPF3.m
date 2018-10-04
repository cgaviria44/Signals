%Filtro cuando no se conoce el orden 'n'
clear vars, clc, close all

fp=800;
fs=1e3;
Rp=1;
Rs=40;

n=ellipord(2*pi*fp,2*pi*fs,Rp,Rs,'s')
[b,a]=ellip(n,Rp,Rs,2*pi*fp,'s');
w=2*pi*linspace(0,1500,1e4);
H=freqs(b,a,w);
Hdb=20*log10(abs(H));
plot(w/(2*pi),Hdb)
grid on
xlabel 'Frecuencia [Hz]'
ylabel 'Magnitud [dB]'
title 'Respuesta en frecuencia del LPF'
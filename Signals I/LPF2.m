clear vars, clc, close all
%Filtro pasa bajas
n=[5 10 30 50];
fc=2e9;
Rp=3; %[dB]
Rs=30; %[dB]

wp=2*pi*fc;
w=2*pi*linspace(0,6e9,1e4);

for i=1:4
    [b,a]=butter(n(i),wp,'low','s'); %[b,a] numerador y denominador de la función de transferencia.
    H=freqs(b,a,w); %H(jw)
    Hdb=20*log10(abs(H));
    plot(w/(2*pi*1e9),Hdb)
    hold on
end

legend('n=5','n=10','n=30','n=50')

grid on
xlabel 'Frecuencia [GHz]'
ylabel 'Magnitud [dB]'
title 'Respuesta en frecuencia del filtro'
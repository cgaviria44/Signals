clear vars, clc, close all
%Filtro pasa bajas
n=5;
fc=2e9;
Rp=3; %[dB]
Rs=30; %[dB]

wp=2*pi*fc;
w=2*pi*linspace(0,6e9,1e4);

[b,a]=butter(n,wp,'low','s'); %[b,a] numerador y denominador de la función de transferencia.
H=freqs(b,a,w); %H(jw)
Hdb=20*log10(abs(H));
plot(w/(2*pi*1e9),Hdb)
hold on

[b,a]=cheby1(n,Rp,wp,'s');
H=freqs(b,a,w); %H(jw)
Hdb=20*log10(abs(H));
plot(w/(2*pi*1e9),Hdb)

[b,a]=cheby2(n,Rs,wp,'low','s');
H=freqs(b,a,w); %H(jw)
Hdb=20*log10(abs(H));
plot(w/(2*pi*1e9),Hdb)

[b,a]=ellip(n,Rp,Rs,wp,'low','s');
H=freqs(b,a,w); %H(jw)
Hdb=20*log10(abs(H));
plot(w/(2*pi*1e9),Hdb)

legend('Butterworth','Chebyshov I','Chebyshowv II','Elíptico')

grid on
xlabel 'Frecuencia [GHz]'
ylabel 'Magnitud [dB]'
title 'Respuesta en frecuencia del filtro'
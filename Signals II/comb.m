close all 
clc,clearvars

a=input('Ingrese parametro alfa: ');
N=input('Ingrese orden filtro comb: ');
w=linspace(-2*pi,2*pi,1e3);
Hw=1-a*cos(w*N)+1i*a*sin(w*N);
Hmag=abs(Hw);
Hfase=angle(Hw);

subplot(121)
plot(w,Hmag)
xlabel '\omega [rad]', ylabel '|H(\omega)|'
title 'Respuesta en frecuencia de magnitud'

subplot(122)
plot(w,Hfase)
xlabel '\omega [rad]', ylabel '|\angleH(\omega)|'
title 'Respuesta en frecuencia de fase'
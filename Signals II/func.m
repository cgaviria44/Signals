b=input('Ibngrese [bm ... b1 b0]: ');
b=fliplr(b);
a=input('Ingrese [an ... a1 a0]: ');
a=fliplr(a);

M=length(b)+1;
N=length(a)+1;
w=linspace(-2*pi,2*pi,1e3);

Hw=polyval(b,exp(1i*w))./polyval(a,exp(1i*w)).*exp(1i*w*(N-M));
Hmag=abs(Hw);
Hfase=angle(Hw);

subplot(211)
plot(w,Hmag), axis tight
xlabel '\omega [rad]', ylabel '|H(\omega)|'
title 'Respuesta en frecuencia de magnitud'

subplot(212)
plot(w,Hfase), axis tight
xlabel '\omega [rad]', ylabel '|\angleH(\omega)|'
title 'Respuesta en frecuencia de fase'
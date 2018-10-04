ft=fft(signal);
Fs=2000;
L=lenght(signal);
n=2.^nexpow2(L); %lo pone en siguiente potencia de 2 
f=Fs*linspace(0,n/2,length(signal);
absft=abs(ft/n);
plot(f,absft)

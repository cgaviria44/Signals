n=-4:10;
N=length(n);
x=n.*(n>0 & n<5);
stem(n,x)
xlabel 'Muestras'
ylabel 'x[n]'
E=0;

for i=1:N
    E=E+x(i).^2;
end
title(['Energía=',num2str(E),'J'])
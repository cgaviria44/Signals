n=0:5;
N=length(n);
x=n.*(n>0 & n<5);
stem(n,x)
xlabel 'Muestras'
ylabel 'x[n]'
Px=0;

for i=1:N
    Px=Px+(x(i).^2)/N;
    end

title(['Potencia=',num2str(Px),'W'])

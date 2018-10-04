x=randn(1,10);
n=-6:3;
figure,stem(n,x)

close all
subplot(211),stem(n,x)
xlabel 'n'
subplot(212),stem(-n,x)
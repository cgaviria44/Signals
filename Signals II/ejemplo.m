close all
n=0:5;
x=n;
xp=[];
for contp=1:5
    xp=[xp x];
end
n=0:length(xp)-1;
subplot(211),stem(n,xp)
xlabel 'n', ylabel 'Amplitud'

xd=xp(2:2:end);
subplot(212),stem(xd)

%xr=fliplr(xd); %inversion
n=0:length(xd)-1;
subplot(212),stem(4-n,xd)
xlabel 'n'
title 'x[2(4-n)]'
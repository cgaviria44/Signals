close all
clearvars, clc
r=[.83 .96 .99];
for i=1:length(r)
    [H,f]=freqz([1 0 -1],[1 sqrt(2)*r(i) abs(r(i))^2],1024,1e3);
    subplot(121),plot(f,abs(H))
    axis tight, hold on
    subplot(122),plot(f,angle(H))
    axis tight, hold on
end
legend(['\gamma=',num2str(r(1))],['\gamma'])
    
load sensorData
t1 = (0:length(s1)-1)/Fs;
t2 = (0:length(s2)-1)/Fs;

subplot(2,1,1)
plot(t1,s1)
title('s_1')

subplot(2,1,2)
plot(t2,s2)
title('s_2')
xlabel('Time (s)')

[R,lags]=xcorr(s1,s2);
figure
plot(lags,R)
xlabel 'lag', ylabel 'r_[xy]'
title 'correlacion cruzada'

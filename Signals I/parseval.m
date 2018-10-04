function [BW,cont]=parseval(beta,tau,tol)

X_2=@(w,TAU) (tau*sin(w*TAU/2)./(w*TAU/2)).^2;
E=tau;
Ed=beta*E;

step=0.5; %frecuencia base o semilla
BW=0;
error=1;
cont=0;
w=linspace(-10,10,1e3);
plot(w,X_2(w,tau))
hold on, axis tight
xlabel 'Frecuencia angular'
while abs(error)>tol
    if error>0
        BW=BW+step;
    else
        step=step/2;
        BW=BW-step;
    end
    Er=1/pi*integral(@(w) X_2(w,tau),0,BW);
    error=(Ed-Er)/Ed;
    line([BW BW],[0 4])
    line([-BW -BW],[0 4])
    title(['Ed=',num2str(Ed),',Er=', num2str(Er),'Error=',num2str(error)])
    pause
    cont=cont+1;
end
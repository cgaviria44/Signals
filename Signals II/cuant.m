function [xq]=cuant(x,xm,b,method)
% x = input signal
% xm = signal range
% b = number of bits
% method = strings 'sim' or 'asim'
if (nargin<3)
disp('Not sufficient input arguments');
return
elseif (nargin==3)
method='sim';
elseif (nargin>4)
disp('Maximum number of input arguments is 4')
return
end

switch lower(method) % SIM, sim, Sim
case 'asim'
offset=1/2;
case 'sim'
offset=0;
otherwise
disp('Non recognized quantization method')
return
end
q=floor(2^b*((x+xm)/(2*xm))+offset);
i=find(q>2^b-1);q(i)=2^b-1;
i=find(q<0);q(i)=0;
xq=(q-(2^(b-1)-(1/2-offset)))*2*xm/(2^b);
figure
plot(x,xq)
grid on
xlabel('Quantizer input')
ylabel('Quantizer output')

figure
plot(x)
hold on
plot(xq)
hold off
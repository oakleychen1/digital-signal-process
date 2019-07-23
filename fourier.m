fs=1000;
N=1000;

f0=50;
A=1;
fai=0;
w=2*pi*f0;
n=0:N-1;
t=n/fs;
% xn=A*sin(w*t+fai);
% xn=rand(1,N);
xn=chirp(t,50,1,200);

figure(1)
plot(t,xn)

% win=hann(length(xn));
% X=fft(xn.*win');
X=fft(xn);

T=N/fs;
df=1/T;
f=0:df:fs/2;
XA=abs(X);
XP=angle(X);

figure(2)
subplot(211)
% hold on
% plot(f,20*log10(XA(1:length(f))));
plot(f,XA(1:length(f)));
subplot(212)
hold on
plot(f,XP(1:length(f)));




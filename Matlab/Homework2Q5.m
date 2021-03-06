%Ahmed Al-Ramadhani 
%ID: 11613158
%MATH300 
%HomeWork2 

%%Question5
t=linspace(-2*pi,2*pi,100);
x=1+cos(2*t);
y=-1+3*sin(4*t);
plot(t,x,'--b')
hold on
plot(t,y,'-r')
xlabel('time -2pi<t<2pi')
ylabel('function')
legend({'x=1+cos(2t)','y=-1+3sin(4t)'},'location','southwest')
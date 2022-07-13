%% conditional statments and loops 
a=-1;
if a>0
    x=0
elseif a<0
    x=1
else 
    x=2
end

%%

A=[1 2 ; 1 2];
%%
%D=randi([1 6],1,6);
%E=randi([1,6],1,6);
n=1000;
D1=0;
D2=0;

x=0;

while D1~=6 || D2~=6 %the condition of the while loop ...
    % (it loop will keep on going until the condition is met%...
    %when D1,D2 aren't equal to 6 then it will keep going 
    D1=randi(6); %makes this equation keep on going%
    D2=randi(6); 
    x=x+1; %counts how many times it took !%
end
disp(x)
disp([D1,D2])

%% day 5 of coding
x = -pi:0.1:pi;
plot(x,sin(x),'-xb');
hold on 
plot(x,cos(x),'--or');

%% 
l=10; %length of interval
N=10;%number of steps
x(1)=0;
f(1)=0;
h=l/N;


for n=1:N
    f(n+1)=f(n)+h*(n^2+n+1);
end
x=linspace(0,l,N+1);
plot(x,f);
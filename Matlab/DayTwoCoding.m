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
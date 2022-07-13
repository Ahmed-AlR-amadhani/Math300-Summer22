%Ahmed Al-Ramadhani 
%ID: 11613158
%MATH300 
%HomeWork2 

%%Question4

D1=0;
D=0;

x=0;

while D<20 %the condition of the while loop ...
    % (it loop will keep on going until the condition is met%...
    %when D1,D2 aren't equal to 6 then it will keep going 
    D1=rand(1); %makes this equation keep on going%
    D=D+D1;
    x=x+1; %counts how many times it took !%
end
disp(x)
disp(D)
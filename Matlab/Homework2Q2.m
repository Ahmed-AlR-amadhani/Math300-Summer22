%Ahmed Al-Ramadhani 
%ID: 11613158
%MATH300 
%HomeWork2 

%% Question2:

A=[1 1 1; 1 2 3;1 3 6];
B=[1;-5;2];
%------solving for x------%
x=A\B;
disp(x)
x1=inv(A)*B;
disp(x1)
%-------------finding the determinate of A----%
C=det(A);
disp(C)
%---------finding the rank of A-------%
D=rank(A);
disp(D)


A=[1 2 ; 3 4];
B=[5 6 ; 7 8];
A111=A*B
A1111=A.*B

C1=A^2
C2=A.^2
A1=[1 2 ;3 4 ; 5 6];
A11=A1'
C1=A^2




%when solving Ax=B
% use A\B to solve it 
det= det(A)

%% 
A=ones(3,3)
B=zeros(3,3)
C=zeros(3)
D=eye(3,3)

%part(b)
r=(1:3);
c=(1:3);
if r==c
    C(r,c)=1
else
    C(r,c)=0
end
disp(C)

%% 
v=1:2:10;
v1=1:10;
A=[1:3 ;4:6; 7:9];
B=A(2,2);
disp(B)
disp(A(3,:))
disp(A(:,3))
a=rand;
message=['the results is:' num2str(a)]
b=linspace(1,5,1)

%%
%part(b)
C=zeros(3);
r=(1:3);
c=(1:3);
if r==c
    C(r,c)=1
else 
     C(r,c)=0
end
%% 
a=zeros(3);
r=(1:3);
c=(1:3);
if a>0
    c=0
    elsif a<0
    x=1
else 
    x=2
end




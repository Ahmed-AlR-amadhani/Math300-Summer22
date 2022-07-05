% Ahmed Al-Ramadhani
%ID:11613158
%July5th 2022
%% 

%the example we did in class

%m*x_dot + c*x_dot + k*x = f
m=2
c=1
k=3

%x_dot =Ax+Bu
%y= Cx+Du
A=[0 1;-k/m -c/m] % state matrix
B=[0;1]  % input matrix
C=[1 0;0 1] % output matrix 
D=[0 ; 0]  % rotational matrix  ((direct transmission matrix)) 

system1 = ss(A,B,C,D)

x0=[0.5;0.2]

initial(system1,x0)

t = linspace(0,5,1000)
u = cos(t) 
lsim(system1,u,t)
%% first day

C1=[1 2 ; 3 4];
D1=[5 6 ; 7 8];
disp(C1);
disp(D1);
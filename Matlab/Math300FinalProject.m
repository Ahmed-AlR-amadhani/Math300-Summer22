% Ahmed Al-Ramadhani
%ID:11613158
%Math 300 final Project 
%% given variables
k1=50000;
k2=50000;
k3=200000;
k4=200000;
M=1300;
m1=20;
m2=20;
b1=1000;
b2=1000;
l1=1;   % legnth from the first wheel to the center of mass
l2=2;   % legnth from the second wheel to the center of mass
I=2500;     



%state vector X_dot=A*X+B*u
%X=[Z;Z_dot;theta;theta_dot;z1;z1_dot;z2;z2_dot];
A=[      0                  1                     0                        0                    0               0       0         0;...
    (-(k1+k2)/M)       (-(b1+b2)/M)      ((k1*l1-k2*l2)/M)         ((b1*l1-b2*l2)/M)        ((k1)/M)       ((b1)/M) ((k2)/M)    ((b2)/M)...
    ;    0                  0                     0                        1                    0               0       0           0;...
    ((k1*l1-k2*l2)/I) ((b1*l1-b2*l2)/I) (-(k1*l1^2+k2*l2^2)/I)     (-(b1*l1^2+b2*l2^2)/I) -(k1*l1)/I (-(b1*l1)/I) (k2*l2)/I      (b2*l2)/I ; ...
         0                  0                     0                        0                    0               1       0             0; ... 
      (k1/m1)             b1/m1              (-k1*l1)/m1             (-b1*l1)/m1           (-(k1+k3)/m1)     -b1/m1     0            0 ; ...
         0                  0                     0                        0                    0               0       0            1; ...
       k2/m2              b2/m2               (k2*l2)/m2             (b2*l2)/m2                 0               0 (-(k2+k4)/m2) (-(b2)/m2)];

% output equation Y=Cx+DU
B=[0 0; 0 0 ; 0 0;0 0;0 0; k3/m1 0;0 0;0 k4/m2];

C=[1 0 0 0 0 0 0 0; 0 0 1 0 0 0 0 0 ]; 
D=[0 0 ;0 0]

mysys=ss(A,B,C,D);

% u1 and u2 calcualtions
% 
t=0:0.0001:5;
tu=0:0.0001:0.5;
R=0.05;
W=2*R;
DP=125;                 %Data points
w=0:W/DP:W
v=8;
t_wheelonbump=W/v;      %time of the wheel on the bump
DP=125;                 %Data points
delay=0.375;            % delay time between the two wheels
delayterms=3750;        %delayed terms between the two wheels
H=sqrt((R^2)-(w-R).^2); % height of the wheel


u1=zeros(1,length(t));  
u1(1,1:DP)=H(1,1:DP);
u2=zeros(1,length(t));
u2(1,1+delayterms:125+delayterms)=H(1,1:125);
U=[u1;u2];

%ploting
[Y,T1]=lsim(mysys,U,t);
Y1=Y*[1;0];
Y2=Y*[0;1];

%u1 plot with respect to time
subplot(4,1,1);
plot(tu,u1(1,1:length(tu)));
grid;
ylabel('U1 in meters');
xlabel('time in seconds');
title('input of u1');

%u2 plot with respect to time (after the delay)
subplot(4,1,2);
plot(tu,u2(1,1:length(tu)));
grid;
ylabel('U2 in meters');
xlabel('time in seconds');
title('input of u2');


subplot(4,1,3);
plot(T1,Y1);
grid ;
ylabel('Z in meters');
xlabel('time in seconds');
title('z output');

subplot(4,1,4);
plot(T1,Y2);
grid;
ylabel('theta in radias');
xlabel('time in seconds');
title('output of theta');
%% changing b to 2000

% given variables
k1=50000;
k2=50000;
k3=200000;
k4=200000;
M=1300;
m1=20;
m2=20;
b1=2000;
b2=2000;
l1=1;   % legnth from the first wheel to the center of mass
l2=2;   % legnth from the second wheel to the center of mass
I=2500;     



%state vector X_dot=A*X+B*u
%X=[Z;Z_dot;theta;theta_dot;z1;z1_dot;z2;z2_dot];
A=[      0                  1                     0                        0                    0               0       0         0;...
    (-(k1+k2)/M)       (-(b1+b2)/M)      ((k1*l1-k2*l2)/M)         ((b1*l1-b2*l2)/M)        ((k1)/M)       ((b1)/M) ((k2)/M)    ((b2)/M)...
    ;    0                  0                     0                        1                    0               0       0           0;...
    ((k1*l1-k2*l2)/I) ((b1*l1-b2*l2)/I) (-(k1*l1^2+k2*l2^2)/I)     (-(b1*l1^2+b2*l2^2)/I) -(k1*l1)/I (-(b1*l1)/I) (k2*l2)/I      (b2*l2)/I ; ...
         0                  0                     0                        0                    0               1       0             0; ... 
      (k1/m1)             b1/m1              (-k1*l1)/m1             (-b1*l1)/m1           (-(k1+k3)/m1)     -b1/m1     0            0 ; ...
         0                  0                     0                        0                    0               0       0            1; ...
       k2/m2              b2/m2               (k2*l2)/m2             (b2*l2)/m2                 0               0 (-(k2+k4)/m2) (-(b2)/m2)];

% output equation Y=Cx+DU
B=[0 0; 0 0 ; 0 0;0 0;0 0; k3/m1 0;0 0;0 k4/m2];

C=[1 0 0 0 0 0 0 0; 0 0 1 0 0 0 0 0 ]; 
D=[0 0 ;0 0]

mysys=ss(A,B,C,D);

% u1 and u2 calcualtions
% 
t=0:0.0001:5;
tu=0:0.0001:0.5;
R=0.05;
W=2*R;
DP=125;                 %Data points
w=0:W/DP:W
v=8;
t_wheelonbump=W/v;      %time of the wheel on the bump
DP=125;                 %Data points
delay=0.375;            % delay time between the two wheels
delayterms=3750;        %delayed terms between the two wheels
H=sqrt((R^2)-(w-R).^2); % height of the wheel


u1=zeros(1,length(t));  
u1(1,1:DP)=H(1,1:DP);
u2=zeros(1,length(t));
u2(1,1+delayterms:125+delayterms)=H(1,1:125);
U=[u1;u2];

%ploting
[Y,T1]=lsim(mysys,U,t);
Y1=Y*[1;0];
Y2=Y*[0;1];

%u1 plot with respect to time
subplot(4,1,1);
plot(tu,u1(1,1:length(tu)));
grid;
ylabel('U1 in meters');
xlabel('time in seconds');
title('input of u1');

%u2 plot with respect to time (after the delay)
subplot(4,1,2);
plot(tu,u2(1,1:length(tu)));
grid;
ylabel('U2 in meters');
xlabel('time in seconds');
title('input of u2');


subplot(4,1,3);
plot(T1,Y1);
grid ;
ylabel('Z in meters');
xlabel('time in seconds');
title('z output');

subplot(4,1,4);
plot(T1,Y2);
grid;
ylabel('theta in radias');
xlabel('time in seconds');
title('output of theta');

%% changing B to 6400

% given variables
k1=50000;
k2=50000;
k3=200000;
k4=200000;
M=1300;
m1=20;
m2=20;
b1=6400;
b2=6400;
l1=1;   % legnth from the first wheel to the center of mass
l2=2;   % legnth from the second wheel to the center of mass
I=2500;     



%state vector X_dot=A*X+B*u
%X=[Z;Z_dot;theta;theta_dot;z1;z1_dot;z2;z2_dot];
A=[      0                  1                     0                        0                    0               0       0         0;...
    (-(k1+k2)/M)       (-(b1+b2)/M)      ((k1*l1-k2*l2)/M)         ((b1*l1-b2*l2)/M)        ((k1)/M)       ((b1)/M) ((k2)/M)    ((b2)/M)...
    ;    0                  0                     0                        1                    0               0       0           0;...
    ((k1*l1-k2*l2)/I) ((b1*l1-b2*l2)/I) (-(k1*l1^2+k2*l2^2)/I)     (-(b1*l1^2+b2*l2^2)/I) -(k1*l1)/I (-(b1*l1)/I) (k2*l2)/I      (b2*l2)/I ; ...
         0                  0                     0                        0                    0               1       0             0; ... 
      (k1/m1)             b1/m1              (-k1*l1)/m1             (-b1*l1)/m1           (-(k1+k3)/m1)     -b1/m1     0            0 ; ...
         0                  0                     0                        0                    0               0       0            1; ...
       k2/m2              b2/m2               (k2*l2)/m2             (b2*l2)/m2                 0               0 (-(k2+k4)/m2) (-(b2)/m2)];

% output equation Y=Cx+DU
B=[0 0; 0 0 ; 0 0;0 0;0 0; k3/m1 0;0 0;0 k4/m2];

C=[1 0 0 0 0 0 0 0; 0 0 1 0 0 0 0 0 ]; 
D=[0 0 ;0 0]

mysys=ss(A,B,C,D);

% u1 and u2 calcualtions
% 
t=0:0.0001:5;
tu=0:0.0001:0.5;
R=0.05;
W=2*R;
DP=125;                 %Data points
w=0:W/DP:W
v=8;
t_wheelonbump=W/v;      %time of the wheel on the bump
DP=125;                 %Data points
delay=0.375;            % delay time between the two wheels
delayterms=3750;        %delayed terms between the two wheels
H=sqrt((R^2)-(w-R).^2); % height of the wheel


u1=zeros(1,length(t));  
u1(1,1:DP)=H(1,1:DP);
u2=zeros(1,length(t));
u2(1,1+delayterms:125+delayterms)=H(1,1:125);
U=[u1;u2];

%ploting
[Y,T1]=lsim(mysys,U,t);
Y1=Y*[1;0];
Y2=Y*[0;1];

%u1 plot with respect to time
subplot(4,1,1);
plot(tu,u1(1,1:length(tu)));
grid;
ylabel('U1 in meters');
xlabel('time in seconds');
title('input of u1');

%u2 plot with respect to time (after the delay)
subplot(4,1,2);
plot(tu,u2(1,1:length(tu)));
grid;
ylabel('U2 in meters');
xlabel('time in seconds');
title('input of u2');


subplot(4,1,3);
plot(T1,Y1);
grid ;
ylabel('Z in meters');
xlabel('time in seconds');
title('z output');

subplot(4,1,4);
plot(T1,Y2);
grid;
ylabel('theta in radias');
xlabel('time in seconds');
title('output of theta');
%% changing B to 8000

% given variables
k1=50000;
k2=50000;
k3=200000;
k4=200000;
M=1300;
m1=20;
m2=20;
b1=8000;
b2=8000;
l1=1;   % legnth from the first wheel to the center of mass
l2=2;   % legnth from the second wheel to the center of mass
I=2500;     



%state vector X_dot=A*X+B*u
%X=[Z;Z_dot;theta;theta_dot;z1;z1_dot;z2;z2_dot];
A=[      0                  1                     0                        0                    0               0       0         0;...
    (-(k1+k2)/M)       (-(b1+b2)/M)      ((k1*l1-k2*l2)/M)         ((b1*l1-b2*l2)/M)        ((k1)/M)       ((b1)/M) ((k2)/M)    ((b2)/M)...
    ;    0                  0                     0                        1                    0               0       0           0;...
    ((k1*l1-k2*l2)/I) ((b1*l1-b2*l2)/I) (-(k1*l1^2+k2*l2^2)/I)     (-(b1*l1^2+b2*l2^2)/I) -(k1*l1)/I (-(b1*l1)/I) (k2*l2)/I      (b2*l2)/I ; ...
         0                  0                     0                        0                    0               1       0             0; ... 
      (k1/m1)             b1/m1              (-k1*l1)/m1             (-b1*l1)/m1           (-(k1+k3)/m1)     -b1/m1     0            0 ; ...
         0                  0                     0                        0                    0               0       0            1; ...
       k2/m2              b2/m2               (k2*l2)/m2             (b2*l2)/m2                 0               0 (-(k2+k4)/m2) (-(b2)/m2)];

% output equation Y=Cx+DU
B=[0 0; 0 0 ; 0 0;0 0;0 0; k3/m1 0;0 0;0 k4/m2];

C=[1 0 0 0 0 0 0 0; 0 0 1 0 0 0 0 0 ]; 
D=[0 0 ;0 0]

mysys=ss(A,B,C,D);

% u1 and u2 calcualtions
% 
t=0:0.0001:5;
tu=0:0.0001:0.5;
R=0.05;
W=2*R;
DP=125;                 %Data points
w=0:W/DP:W
v=8;
t_wheelonbump=W/v;      %time of the wheel on the bump
DP=125;                 %Data points
delay=0.375;            % delay time between the two wheels
delayterms=3750;        %delayed terms between the two wheels
H=sqrt((R^2)-(w-R).^2); % height of the wheel


u1=zeros(1,length(t));  
u1(1,1:DP)=H(1,1:DP);
u2=zeros(1,length(t));
u2(1,1+delayterms:125+delayterms)=H(1,1:125);
U=[u1;u2];

%ploting
[Y,T1]=lsim(mysys,U,t);
Y1=Y*[1;0];
Y2=Y*[0;1];

%u1 plot with respect to time
subplot(4,1,1);
plot(tu,u1(1,1:length(tu)));
grid;
ylabel('U1 in meters');
xlabel('time in seconds');
title('input of u1');

%u2 plot with respect to time (after the delay)
subplot(4,1,2);
plot(tu,u2(1,1:length(tu)));
grid;
ylabel('U2 in meters');
xlabel('time in seconds');
title('input of u2');


subplot(4,1,3);
plot(T1,Y1);
grid ;
ylabel('Z in meters');
xlabel('time in seconds');
title('z output');

subplot(4,1,4);
plot(T1,Y2);
grid;
ylabel('theta in radias');
xlabel('time in seconds');
title('output of theta');
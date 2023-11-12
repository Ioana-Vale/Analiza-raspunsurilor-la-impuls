%%ordin 1
load('lab4_order1_5.mat')

u=data.InputData
y=data.OutputData

figure
subplot(2,1,1)
plot(t,u)
subplot(2,1,2)
plot(t,y)

u_id=u(1:100);
y_id=y(1:100);
t_id=t(1:100);

%plot(t_id,[u_id y_id])

y_ss=0.05;
u_ss=0.5
%u_max=25.5
y_max=0.24;
T1=0.368*(y_max-y_ss)+y_ss;
t1=1.8;
t2=2.3;
T=t2-t1;
K=y_ss/u_ss

figure
plot(t_id,y_id)
hold on
plot(t_id,0.368*(y_max-y_ss)+y_ss*ones(length(t_id)));

[A B C D]=tf2ss(K,[T 1])

ssH=ss(A,B,C,D);
%y2=lsim(ssH,val)
%figure
%step(ssH)

u_val=u(111:end)
y_val=y(111:end)
t_val=t(111:end)
y2=lsim(ssH,u_val,t_val,y_ss)
e=y2-y_val;
MSE=1/length(y_val)*sum(e.^2);
fprintf('MSE este: %.5f\n ',MSE)

figure
plot(t_val,[y_val,y2])

%%ordin 2
load('lab4_order2_5.mat')
u=data.InputData
y=data.OutputData

figure
subplot(2,1,1)
plot(t,u)
subplot(2,1,2)
plot(t,y)

u_id=u(1:100);
y_id=y(1:100);
t_id=t(1:100);
u_val=u(111:end)
y_val=y(111:end)
t_val=t(111:end)

y_ss=1;
u_ss=0.5;
x1=[y_ss 0];
figure
plot(t_id,y_id)
hold on
plot(t_id,y_ss*ones(length(t_id)));

K=y_ss/u_ss;
i1=30;
i2=54;
i3=76;
T1=2*(t(i3)-t(i2))
A1=T1*sum(y(i1:i2)-y_ss);
A2=T1*sum(y(i2:i3)-y_ss);
M=abs(A2)/A1;
zeta=(-log(M))/sqrt(pi^2+(log(M))^2);
wn=2*pi/(T1*sqrt(1-zeta^2));

A = [0,1;
     -wn^2,-2*zeta*wn];
 B = [0;K*wn^2];
 C= [1,0];
 D= 0;
  H=tf([K*wn^2],[1 2*zeta*wn wn^2]);
y_sim=lsim(H,u_val,t_val,x1)

e=y_val-y_sim;
MSE=(1/length(y_val))*sum(e.^2)
figure
plot(t_val,[y_val,y_sim]);









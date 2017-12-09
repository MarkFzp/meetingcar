clear;clc;
o=1;p=2;q=3;ok=4;op=5;oq=6;
l=6;m=5;n=4;lk=3;mk=2;nk=1;
%h1'*B*h2=0;%h1'*B*h1=h2'*B*h2=1
syms B11 B12 B13 B22 B23 B33 o p q i j k ok pk qk ik jk kk
[B11,B12,B13,B22,B23,B33]=solve((o*B11+p*B12+q*B13)*l+(o*B12+p*B22+q*B23)*m+(o*B13+p*B23+q*B33)*n==0,...
(o*B11+p*B12+q*B13)*o+(o*B12+p*B22+q*B23)*p+(o*B13+p*B23+q*B33)*q==1,...
(l*B11+m*B12+n*B13)*l+(l*B12+m*B22+n*B23)*m+(n*B13+m*B23+n*B33)*n==1,...
(ok*B11+pk*B12+qk*B13)*lk+(ok*B12+pk*B22+qk*B23)*mk+(ok*B13+pk*B23+qk*B33)*nk==0,...
(ok*B11+pk*B12+qk*B13)*ok+(ok*B12+pk*B22+qk*B23)*pk+(ok*B13+pk*B23+qk*B33)*qk==1,...
(lk*B11+mk*B12+nk*B13)*lk+(lk*B12+mk*B22+nk*B23)*mk+(lk*B13+mk*B23+nk*B33)*nk==1,B11,B12,B13,B22,B23,B33);
B=[B11,B12,B13;B12,B22,B23;B13,B23,B33];
B=eval(B)
%内参算法
%v0=( B(1,2)*B(1,3)-B(1,1)*B(2,3) )./( B(1,1)*B(2,2)-B(1,2)*B(1,2) );
%alpha=sqrt(1/B(1,1));
%beta=sqrt( B(1,1)/( B(1,1)*B(2,2) - B(1,2)*B(1,2) ));
%gama=-B(1,2)*alpha*alpha*beta;
%u0=gama*v0/alpha-B(1,3)*alpha*alpha;
%A=[alpha gama u0;0 beta v0;0 0 1];%得出内参
%计算外参
%r1=h1/A;%inv(A)*h1;
%r2=h2/A;
%t=h3/A;
%E=[r1 r2 t];%得出外参
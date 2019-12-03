function [ key ] = hyperchaos( m,n )
%Function takes the size of image. Iterate the equation m*n times
%%A New 4-D Chaotic System with Self-Excited Two-Wing
%%Attractor, its Dynamical Analysis and Circuit Realization
%%A Sambas 1,S Vaidyanathan2, S Zhang3, Mujiarto1, M Mamat4, Subiyanto5 and W. S. Mada Sanjaya6
% x=a*(y-x)-w;
% y=x*z;
% z=b-xy;
% w=x-w;
%%
mn=m*n;
x=0.2;
y=0.2;
z=0.2;
w=0.2;
%%
%%Init Params
a=5;
b=50;
%%
%Range Kutta 4th order repeatition, suggested in (NL4DLM_DNA)Shalini Stalin
%2019. Without this range will increase too high to handle, step size of .001 will take 72x72 and will go out of range%
fx=10; h=0.00001;
for i = 1:(fx+mn)

a1=a*(y(1,i)-x(1,i))-w(1,i);
a2=a*((y(1,i)+h/2*a1)-(x(1,i)+h/2*a1))-(w(1,i)+h/2*a1);
a3=a*((y(1,i)+h/2*a2)-(x(1,i)+h/2*a2))-(w(1,i)+h/2*a2);
a4=a*((y(1,i)+h*a3)-(x(1,i)+h*a3))-(w(1,i)+h*a3);
x(1,i+1)=x(1,i)+h/6*(a1+2*a2+2*a3+a4);   

b1=x(1,i)*z(1,i);
b2=(x(1,i)*h/2*b1)*(z(1,i)*h/2*b1);
b3=(x(1,i)*h/2*b2)*(z(1,i)*h/2*b2);
b4=(x(1,i)*h*b3)*(z(1,i)*h*b3);
y(1,i+1)=y(1,i)+h/6*(b1+2*b2+2*b3+b4);

c1=b-(x(1,i)*y(1,i));
c2=b-((x(1,i)*h/2*c1)*(y(1,i)*h/2*c1));
c3=b-((x(1,i)*h/2*c2)*(y(1,i)*h/2*c2));
c4=b-((x(1,i)*h*c2)*(y(1,i)*h*c2));
z(1,i+1)=z(1,i)+h/6*(c1+2*c2+2*c3+c4);   

d1=x(1,i)-w(1,i);
d2=(x(1,i)*h/2*d1)-(w(1,i)*h/2*d1);
d3=(x(1,i)*h/2*d2)-(w(1,i)*h/2*d2);
d4=(x(1,i)*h*d3)-(w(1,i)*h*d3);
w(1,i+1)=w(1,i)+h/6*(d1+2*d2+2*d3+d4);
end
%Without this loop, repeatition will be found in the key%
v = 1:fx;
x(:,v) = [];
y(:,v) = [];
z(:,v) = [];
w(:,v) = [];
clear v
%%
k = [];
for j = 1:mn    
%     mid1 = mod(floor(((abs(x(1,j))-floor(abs(x(1,j))))*10^15)/10^8),256);
%     mid2 = mod(floor(((abs(y(1,j))-floor(abs(y(1,j))))*10^15)/10^8),256);
%     mid3 = mod(floor(((abs(z(1,j))-floor(abs(z(1,j))))*10^15)/10^8),256);
%     mid4 = mod(floor(((abs(w(1,j))-floor(abs(w(1,j))))*10^15)/10^8),256);
%     k = [k mid1 mid2 mid3 mid4]; 
mid1 = mod(floor((floor(abs(x(1,j)))-(abs(x(1,j)))*10^14)/10^7),256);
mid2 = mod(floor((floor(abs(y(1,j)))-(abs(y(1,j)))*10^14)/10^7),256);
mid3 = mod(floor((floor(abs(z(1,j)))-(abs(z(1,j)))*10^14)/10^7),256);
mid4 = mod(floor((floor(abs(w(1,j)))-(abs(w(1,j)))*10^14)/10^7),256);
k = [k mid1 mid2 mid3 mid4]; 
end
key=k;
end


function [ key ] = hyperchaos( m,n )
%Function takes the size of image. Iterate the equation m*n times


% x1 = y,
% y1 = z,
% z1 = w,
% w1 = -c*x - b*y - exp(y) - exp(z) - a*w.

%%
mn=m*n;

x1(1,1)=0;
y1(1,1)=-.5;
z1(1,1)=.1;
w1(1,1)=-1;

%%
%%Init Params

a=2;
b=4;
c=6;

%%

for i = 1:mn
  
x1(1,i+1) = y1(1,i);
y1(1,i+1) = z1(1,i);
z1(1,i+1) = w1(1,i);
w1(1,i+1) = -c*x1(1,i) - b*y1(1,i) - exp(y1(1,i)) - exp(z1(1,i)) - a*w1(1,i);

end

end


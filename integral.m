format long 
clc
x = 0:0.000001:5;
y = x.*((exp(x)-exp(-x))/2);
z = trapz(x,y);

quad('x.*( exp(x)-exp(-x) )/2',0,1)

quadl('x.*( exp(x)-exp(-x) )/2',0,1)
format short
p = [2 -1 -3]; 
x = roots(p);
disp('x = ');
disp(x);

clear, clc
 
f = inline('x.^3+cos(11*x)');
 
x = -100:0.01:100;

y = f(x);
plot(x,y); grid
% Метод простых итераций
 
eps = 1e-4;
x0 = 1;
% значение производной в начальной точке:
L0 = 2e-6./(f(x0+1e-6)-f(x0-1e-6)); 
iter = 0; 
x = x0;
razn = 100;
while abs(razn)>eps
    xn = x - L0*f(x);
    razn=xn-x;
    x=xn;
    iter=iter+1;
end
x
iter
hold on
plot(x,f(x),'or')
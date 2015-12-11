clear
clc
 
% входные данные
h=0.5;
x = 1:h:10*pi;
y = sin(x);
 
hold on
plot(x,y,'x')
 
 
n=length(x);
A=zeros(n-2,n-2);
for k=1:n-2
    for p=1:n-2
        if k==p
            A(k,p)=4;
        elseif (k==p+1 || k==p-1)
            A(k,p)=1;
        else
            A(k,p)=0;
        end
    end
end
 
 
del = diff(y);
del2 = diff(del);
 
b = inv(A)*del2'*3/(h^2);
b = [0;b;0] ;% b(1) = 0 т.к. S0=0 и b(n) = 0 т.к. Sk''(xn)=0
a = diff(b)/(3*h);
 
c=zeros(1,n-1);
for k=1:n-1
    c(k)=del(k)/h-(b(k+1)+2*b(k))*h/3;
end
hold on, grid on;
 
for k=1:n-1
    T = 0:h/10:h;
    g = a(k)*T.^3 + b(k)*T.^2 + c(k)*T + y(k);
    plot(x(k)+T, g, 'r');
end
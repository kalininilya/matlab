clc;
clear;
% Основные условия
% метод половинного деления
f=@(x) cos(2*x)+x-5; %это искомая функция
a=5;
b=6;
e=0.0001;

% Осноной цикл 
while abs(b-a)>e
    c=(b+a)/2;
    if sign(f(c))==sign(f(a))
        a=c;
    else
        b=c;
    end
end
disp(['Ответ x=' num2str(c,8)]);
disp('для проверки точный ответ =');
syms x;
disp(solve(f(x)));
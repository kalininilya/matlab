clc;
clear;
% �������� �������
% ����� ����������� �������
f=@(x) cos(2*x)+x-5; %��� ������� �������
a=5;
b=6;
e=0.0001;

% ������� ���� 
while abs(b-a)>e
    c=(b+a)/2;
    if sign(f(c))==sign(f(a))
        a=c;
    else
        b=c;
    end
end
disp(['����� x=' num2str(c,8)]);
disp('��� �������� ������ ����� =');
syms x;
disp(solve(f(x)));
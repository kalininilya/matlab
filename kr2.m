%solve(, sqr(x+2) + 0.5*sqr(y) -1)
clear
clc

ezplot('1/x-cos(x)-y = 0')
hold on
grid on
ezplot('(x+2)^2 + 0.5*y^2 -1 = 0')

R = solve('1/x-cos(x)-y = 0', '(x+2)^2 + 0.5*y^2 -1 = 0');
x0 = double(R.x)
y0 = double(R.y)

plot (x0, y0, 'or')

%y1 = fzero('(x+2)^2 + 0.5*(1/x - cos(x))^2-1', 0)
%x1 = -2 + sqrt(1-0.5*y^2)


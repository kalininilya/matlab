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


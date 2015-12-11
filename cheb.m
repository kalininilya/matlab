function res = cheb(a, b, n)
res = zeros(1, n);
c1 = (a+b)/2;
c2 = (b-a)/2;
for i=1:n
    t = cos((pi+2*pi*(i-1))/(2*(n-1)+2));
    res(1, i) = c1 + c2*t;
end
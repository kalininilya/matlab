 
x=input('x='); 
n=input('n='); 
k = (-n:n); 
a = arrayfun(@(x) nchoosek(2*n, x), n+k) 
b = a./(x-k) 
c = b .* (-1).^(n-k) 
sum(c)



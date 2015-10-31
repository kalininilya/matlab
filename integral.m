x = 0:0.001:2;
y = x.*((exp(x)-exp(-x))/2);
z = trapz(x,y)
 
quad('x.*( exp(x)-exp(-x) )/2',0,2)

A = [1 2 3; 4 5 6]
B = [11 12; -2 -10]

x=A(:)'
y=B(:)'


C = [sin(x+y(1)) ; sin(x+y(2)) ; sin(x+y(3)) ; sin(x+y(4))]

c = max(max(C))
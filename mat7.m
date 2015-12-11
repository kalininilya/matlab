n = input('n=')
A = zeros(n)
for i=1:n
    for j=1:n
        A(i,j) = i;
    end
end
disp(A)
A = zeros(n)
[b, i] = sort(A)
A = i
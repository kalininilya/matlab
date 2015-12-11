
function [A, b] = create(x, a)
n = length(a)

A=eye(n) + diag(zeros(1,n-1) - x, 1)

A(n, :) = a
disp(A)
end

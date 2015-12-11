function res = f1(X, Y, x)
n = size(X, 2);
A = repmat(X, n-1, 1);
A = cumprod(A);
tmp = ones(1, n);
A = [tmp; A];
A = A';

alfa = A\Y';

m = size(x);
res = zeros(m(1,1), m(1,2));
for i=1:m(1, 1)
   for j=1:m(1, 2)
       M = ones(n-1, 1);
       M = x(i, j)*M;
       x1 = cumprod(M);
       x1 = [1; x1];
       res(i, j) = (alfa')*x1;
   end
end

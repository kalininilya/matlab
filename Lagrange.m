function res = Lagrange(X, Y, x)
n = size(X, 2);
m = size(x);
res = zeros(m(1,1), m(1,2));
for i = 1:m(1,1)
    for j = 1:m(1, 2)
        one = ones(n, n);
        E = eye(n, n);
        tmp = one - E;
        A = (x(i, j)*one).*tmp;
        B = repmat(X, n, 1);
        D = B.*tmp;
        A = A - D;
        C = repmat(X', 1, n);
        C = C - B;
        C = C.*tmp + E;
        A = A./C + E;
        A = A';
        l = cumprod(A);
        l = (l(n, :))';
        res(i, j) = Y*l;
    end
end
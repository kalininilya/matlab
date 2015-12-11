a = [2 4 5 6 2 1 3 2 1 1];

[x, i] = find(a == min(a));
[b, x] = sort(x);
a = 0;
a(i) = x
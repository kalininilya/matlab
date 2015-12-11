A = magic(4)

a = A(:)'

p = isprime(a)
a = a.*p
m = max(a)
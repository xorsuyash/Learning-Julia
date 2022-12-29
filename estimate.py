import math
def estimate(n):
    s=1.0
    for i in range(1,n+1):
        s+=(-1 if i%2 else 1)/(2*i+1)
    return 4*s
p=estimate(100)
print(f"pi is approximate to {p}")
print(f"error is {p-math.pi}")
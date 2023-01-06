function estimate(n)
    s=1.0
    for i in 1:n
        s+=(isodd(i) ? -1 : 1)/(2i+1)
    end
    return 4s
end
p=estimate(100_000_000)
println("pi is approximate to $p ")

using PyCall
py"""
import math

def estimate_pi(n):
    s = 1.0
    for i in range(1, n + 1):
        s += (-1 if i % 2 else 1) / (2 * i + 1)
    return 4 * s

p = estimate_pi(100_000_000)
print(f"π ≈ {p}") # f-strings are available in Python 3.6+
print(f"Error is {p - math.pi}")
"""
println(py"p"-p)
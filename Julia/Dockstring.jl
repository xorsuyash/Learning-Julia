" compute the square of x"
square(x::Number)=x^2
@doc square 

""" 
    cube(x::Number)
compute the cube of 'x'

# Examples
```julia-repl
julia>cube(5)
125
julia>cube(im)
0-1im

"""
cube(x)=x^3
@doc cube
macro addtosub(x)
    if x.head==:call & x.arge[1]== :+ && length(x.arge) ==3
        Expr(:call,:-,x.args[2],x.args[3])
    else
        x
    end
end 

@addtosub 10 + 2

#=the macro works because the parser converts 10 + 2 to Expr(:call, :+, 10, 2) and passes this expression to the macro (before compilation). 
The if statement checks that the expression is a function call, where the called function is the + function, 
with two arguments. If so, then the macro returns a new expression, corresponding to a call to the - function, 
with the same arguments. So a + b becomes a - b.
=#
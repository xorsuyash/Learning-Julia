function func_foo(n::Int)
    for i=1:n
        println("foo")
    end 
end 

 func_foo(10) 

 function func_bar(n::Int)
    for i=1:n
        println("bar")
    end 
end 

function func_barz(n::Int)
    for i=1:n
        println("barz")
    end 
end 

#there must be some way  to automate this 

for sym in [:foo, :bar, :barz]
    @eval function $(Symbol(string("func_",sym)))(n::Int)
        println("* ",$(string(sym)))
    end 
end 

func_foo(2)


#macros 

#time macro 

@time sleep(1)

macro add(a,b,c)
    println("after adding $(a+b+c)")
end

@add 1 2 3 



#generated function in julia 

@generated function foo(x)
    Core.println(x)
    return :(x*x)
end 

x=foo(2)

y=foo("bar")
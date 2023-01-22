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
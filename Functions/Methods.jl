struct Person
    name
    age
end 
function greetings(greeter)
    println("hello $(greeter.name) your age is $(greeter.age)")
end 
p=Person("suyash",20)
greetings(p)
struct city 
    name 
    country 
    age 
end 
using Dates 
c=city("banaras","india",year(now())-1840)
greetings(c)


#single dispatch 
struct Developer 
    name
    age 
    techstack
end 
#=function greetings(dev::Developer)
    println("hello $(dev.name) your age is $(dev.age) you are pretty good at $(dev.techstack)")
end =#
#println(methods(greetings))

#=When you call the greetings() function, 
Julia automatically dispatches the call to the appropriate method, depending on the type of the argument.
 If Julia can determine at compile time what the type of the argument will be, then it optimizes the compiled code so that there’s no choice to be made at runtime. 
 This is called static dispatch, and it can significantly speed up the program. If the argument’s type can’t be determined at compile time, 
 then Julia makes the choice at runtime, just like in Python: this is called dynamic dispatch.=#



 #multiple Dispatch 
 multipldisp(a::Int64,b::Int64)=1
 multipldisp(a::Float64,b::Int64)=1
 multipldisp(a::Int64,b::Int64)=1
 
#calling super 
super(dev::Developer)=Person(dev.name,dev.age)
function greetings(dev::Developer)
    greetings(super(dev))
    println("you are good at $(dev.techstack)")
end 
s=Developer("Srijan",20,"Backend")
greetings(s)

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
function greetings(dev::Developer)
    println("hello $(dev.name) your age is $(dev.age) you are pretty good at $(dev.techstack)")
end 
d=Developer("Srijan",20,"Backend")
greetings(d)

println(methods(greetings))
struct Person
    name
    age
end 
function greetings(greeter)
    println("hello $(greeter.name) your age is $(greeter.age)")
end 

struct Developer 
    name
    age 
    techstack
end 
function greetings(dev::Developer)
    invoke(greetings,Tuple{Any},dev)
    println("you are good at $(dev.techstack)")
end 
d=Developer("Srijan",20,"Backend")
greetings(d)
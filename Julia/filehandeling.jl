open("SmallConcepts.txt","w") do f
    write(f,"This is a test.\n")
    write(f,"I repeat.,this is a test'\n")
end 
open("SmallConcepts.txt") do f
    for line in eachline(f)
        println("[$line]")
    end
end

s=read("SmallConcepts.txt",String)
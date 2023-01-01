#Anonymus functions 
# map(x->x^2,1:4)
#map(x->(println("number =$x");x^2),1:4)
#map(x->begin
#         println("Number $x )
#         x^2
#       end ,1:4)
#map(function(x)
#        println("number $x")
#        x^2
#    end ,1:4 )
function my_for(func , collection)
    for i in collection
        func(i)
    end
end
my_for(1:4) do i 
    println("the squatre of $i is $(i^2)")
end 
#=struct Prism
    length::Real
    width::Real
    height::Real
    function Prism()
        new(1,1,1)
    end

    function Prism(l::Real,w::Real,h::Real)
        if l<0||w<0||h<0 
            error("cant have negative Values")
        elseif w<l
            error("Cant have shorter width than length")
        else a=
            new(l,w,h)
        end 
    end 
end 
=#

struct Suyash
    name 
    age 

    function Suyash(exp::Suyash )
        println("Hello $(Suyash.name) your age is $(Suyash.age) ")
    end 
end 
a=Suyash("suyash",20)
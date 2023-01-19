module Circle

struct circle 
    radius::Real 
end 

function area_circle(cir::circle)
    area_c=3.14*(cir.radius)^2
    println("area of circle is $(area_c)")
end 
export circle,area_circle
end 
module Rectangle 
struct rectangle 
    length::Real
    width::Real 
end 

function area_rect(rect::rectangle )
    area=rect.length*rect.width
    println("area of rectangle is $(area)")
end 
export rectangle,area_rect
end 

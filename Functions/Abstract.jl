abstract type AbstractShape end 
abstract type AbstractRectangle <: AbstractShape end 
abstract type AbstractSquare <: AbstractRectangle end 
 struct rectangle <: AbstractRectangle
    width
    height
 end 
 struct square <: AbstractSquare
    length

 end 
 width(rect::rectangle)=rect.width
 height(rect::rectangle)=rect.height
 width(sq::square)=sq.length
 height(sq::square)=sq.length
 area(rect)=width(rect)*height(rect)

 area(square(5))
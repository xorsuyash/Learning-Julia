struct rectangle
    width
    height 
end 
width(rect::rectangle)=rect.width
height(rect::rectangle)=rect.height
area(rect)=width(rect)*height(rect)
struct square
    length
end
width(sq::square)=sq.length
height(sq::square)=sq.length


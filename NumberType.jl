struct MyRational <: Real 
    num
    den 
end 
MyRational(2,3)
function ⨸(num,den)
    MyRational(num,den)
end 
2⨸3
import Base.+
function +(r1::MyRational,r2::MyRational)
    (r1.num*r2.den+r2.num*r1.den)⨸(r1.den*r2.den)
end 
2⨸3+5⨸4
import Base.show 
function show(io::IO,r::MyRational)
    print(io,"$(r.num)⨸$(r.den)")
end 
2⨸3+5⨸4
#conversion
import Base.convert 
MyRational(x::Int64)=MyRational(x,1)
convert(::MyRational,x::Int64)=MyRational(x)
convert(MyRational,41)
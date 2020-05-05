program HW111
    !2点間の距離の算出
    type point
        real::x,y
    end type point
    type(point)::a,b
    a=point(2.0,3.0)
    b=point(5.0,2.0)
    call distance(a,b,t)
    write(6,*)t
end program HW111
subroutine distance(p,q,r)
    type point
        real::x,y
    end type point
    type(point) p,q
    r=sqrt((p%x-q%x)**2+(p%y-q%y**2))
end subroutine distance
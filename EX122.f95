program EX122
    use timem
    type(time)::x,y,z
    write(6,*)'x,y'
    read(5,*) x,y
    call out_time('x  =',x)
    call out_time('y  =',y)
    call jikansa(x,y,z)
    call out_time('x-y=',z)
end program EX122
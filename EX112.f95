program EX112
    type nhw
        character(12)::name
        real         ::h,w
    end type nhw
    type(nhw),dimension(10)::dat
    write(6,*)'n>>'
    read(5,*)n
    do i = 1, n
        read(5,*) dat(i)
    end do
    hm=dat(1)%h
    m=1
    do i = 2, n
        if ( hm<dat(i)%h ) then
            hm=dat(i)%h
            m=i
        end if
    end do
    write(6,*)dat(m)
end program EX112
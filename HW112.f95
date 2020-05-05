program HW112
    !成績データのソート
    type student
        character(32)::name
        integer ::tensu
    end type student
    type(student),dimension(100)::s
    type(student)::mx,wk
    read(5,*) n
    do i = 1, n
        read(5,*) s(i)
    end do
    do k=1,n-1
        mx=s(k)
        im=k
        do j = k+1, n
            if ( mx%tensu<s(j)%tensu ) then
                mx=s(j)
                im=j
            end if
        end do
        wk=s(k)
        s(k)=mx
        s(im)=wk
    end do
    do i=1,n
        write(6,*)s(i)
    end do
end program HW112
module timem
    type time
        integer::h,m,s
    end type time
contains
    subroutine jikansa(x,y,z)
        type(time)::x,y,z
        it=x%s-y%s
        ic=0
        if ( it<0 ) then
            it=it+60
            ic=1
        end if
        z%s=it
        it=x%m-y%m-ic
        ic=0
        if ( it<0 ) then
            it=it+60
            ic=1
        end if
        z%m=it
        it=x%h-y%h-ic
        z%h=it
    end subroutine jikansa
    subroutine out_time(titl,x)
        character ::titl
        type(time)::x
        write(6,"(a,i3,':',i2.2,':',i2.2)")titl,x
    end subroutine out_time
end module timem
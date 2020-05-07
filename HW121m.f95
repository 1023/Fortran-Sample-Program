module time_module
    type time
    integer::hh,mm,ss
    end type time
contains
    subroutine time_add(x,y,z)
        type(time)::x,y,z
        integer::cr
        z%ss=X%ss+y%ss
        cr=0
        if ( z%ss>=60 ) then
            z%ss=z%ss-60
            cr=1
        end if
        z%mm=X%mm+y%mm+cr
        cr=0
        if(z%mm>60)then
            z%mm=z%mm-60
            cr=1
        end if
        z%hh=y%hh+X%hh+cr
    end subroutine time_add
end module time_module
program EX111
    !時間の加算
    !gfortran8.1だとなぜかcall time_addのところのxの型が違うとエラーになる。
    !実際には正しく実行できる(原因不明)
    type time
        integer::hh,mm,ss
    end type time
    type(time)::X,y,z
    y= time(2,18,25)
    X= time(1,56,48)
    call time_add(x,y,z)
    write(6,*)z%hh,':',z%mm,':',z%ss
end program EX111
subroutine time_add(X,y,z)
    type time
        integer::hh,mm,ss
    end type time
    type(time)::X,y,z
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

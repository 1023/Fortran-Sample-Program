program EX84
    !カレンダーの印刷
 10 write(6,*)' input year mounth '
    read(5,*) iy,im
    if ( iy<=0 ) stop
    call calendar(iy,im)
    go to 10
end program EX84
subroutine calendar(y,m)
    integer y,m,d,youbi
    dimension mon(12)
    data mon /31,28,31,30,31,30,31,31,30,31,30,31/
    d=1
    call day_of_week
    nissu=mon(m)
    if ( m==2 ) then
        if ( mod(y,4)==0 ) then
            if ( mod(y,100)==0 ) then
                if ( mod(y,400) ==0) then
                    nisuu=nisuu+1
                end if
            else
                nisuu=nisuu+1
            end if
        end if
    end if 
    write(6,60)
 60 format(2x)
    write(6,62)y,m
 62 format(12x,i5,'nen',i4,'gatsu')
    write(6,64)
 64 format(6x,'sun mon tue wed thu fri sat')
    write(6,66)(0,i=1,youbi),(i,i=1,nissu)
 66 format(6x,7i4.0)
    write(6,60)
contains
    subroutine day_of_week
        if(m<3)then
            jy=y-1
            jm=m+12
        else
            jy=y
            jm=m
        end if
        k=365*jy+jy/4-jy/100+jy/400
        l=(306*(jm-3)+5)/10
        k=k+l+d-657377
        youbi=mod(k+2,7)
    end subroutine day_of_week
end subroutine calendar



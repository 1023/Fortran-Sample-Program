program HW81
     !摂氏と華氏の変換 
    real,dimension(3)::cdata=(/-10.0,0.0,36.0/)
    do i = 1, 3
        c=cdata(i)
        call kassi(c,f)
        write(6,60)c,f
     60 format(' ',f5.1,f10.2)
    end do
end program HW81
subroutine kassi(c,f)
    f=9.0/5.0*c+32.0
end
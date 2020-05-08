program HW92
    !文字の暗号化(アルファベットを1つ前に戻す)
    CHARACTER(120)::in,out
    write(6,*)'name>>'
    read(5,'(a)')in
    l=len_trim(in)
    call encip(in(1:l),out)
    write(6,*)in(1:l)
    write(6,*)out(1:l)
end program HW92
subroutine encip(in, out)
    character(*)::in,out  
    CHARACTER::w1
    l=len(in)
    do i=1,l
        w1=in(i:i)
        if ( lle(w1,'Z') .and. lge(w1,'A')) then
            if ( w1=='A' )then
                out(i:i)='Z'
            else
                out(i:i)=char(ichar(w1)-1)
            end if
        else if ( lle(w1,'z') .and. lge(w1,'a')) then 
            if ( w1=='a' )then
                out(i:i)='z'
            else
                out(i:i)=char(ichar(w1)-1)
            end if
        else
            out(i:i)=w1
        end if
    end do
end subroutine encip
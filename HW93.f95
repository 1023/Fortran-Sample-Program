program HW93
    !金額表示に変換
    CHARACTER(32)::num
    write(6,*)'n>>'
    read(5,'(a)') num
    num=adjustr(num)
    n=32
    j=n
    do i = n, 1,-1
        if ( num(j:j)==' ' ) then
            num(j:j)='\'
            num=num(j:)
            exit
        else if ( mod(n+1-i,3)==1 .and. i /= n ) then
            num(1:j)=num(2:j)//','
            j=j-2
        else
            j=j-1 
        end if
    end do
    write(6,"(' ',A20 )") NUM 
end program HW93
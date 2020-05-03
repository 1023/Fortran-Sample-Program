program HW84    
    !トレースの計算
    real,dimension(10,10)::a
    write(6,*)'n >>'
    read(5,*) n
    write(6,*)'a no youso'
    read(5,*)((a(i,j),j=1,n),i=1,n)
    call trace(a,n,tr)
    write(6,60)tr
 60 format('  trace = ',f8.3)
end program HW84
subroutine trace(a,n,tr)
    real,dimension(10,10)::a
    tr=0
    do i = 1, n
        tr=tr+a(i,i)
    end do
end
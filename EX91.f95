program EX91
    !アルファベットの並び替え処理
    CHARACTER(16),dimension(20)::animal
    CHARACTER(16)::tc
    write(6,*)'n >>'
    read(5,*) n
    read(5,*) animal(1:n)
    write(6,90)animal(1:n)
 90 format(' original    ',5a10)
    do i = 1, n-1
        tc=animal(i)
        ic=i
        do j = i+1, n
            if ( tc>animal(j) ) then
                tc=animal(j)
                ic=j
            end if
        end do
        animal(ic)=animal(i)
        animal(i)=tc
    end do
    write(6,91)animal(1:n)
 91 format(' sorted      ',5a10)
end program EX91
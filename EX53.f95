program EX53
    !3行3列の行列2つの和と差の計算
    real,DIMENSION(3,3)::a,b,c,d
    write(6,*)'a >>'
    read(5,*) ((a(i,j),j=1,3),i=1,3)
    write(6,*)'b >>'
    read(5,*) ((b(i,j),j=1,3),i=1,3)  
    write(6,60)
 60 format(' ',10X,'    a    ',30X,'    b')
    do i = 1, 3
        write(6,62)a(i,1:3),b(i,1:3)        
    end do
    write(6,64)
 64 format(' ',10X,'   a+b  ',30x,'    a-b')
    c=a+b
    d=a-b
    do i=1,3
        write(6,62)c(i,1:3),d(i,1:3)
    end do
 62 format(' ',3F10.2,10x,3f10.2)
end program EX53
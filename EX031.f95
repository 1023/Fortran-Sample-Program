program EX31
    !点（X,Y）が半径5の円の内部にあるかどうかの判定
    real X,Y,R2
    N=0
 10 write(6,*)'X,Y?'
    read(5,*)X,Y
    N=N+1
    R2=X*X+Y*Y
    if (R2<25.0) then
        write(6,*)'in'
    else
        write(6,*)'out'
    end if
    if(N<4) go to 10
end
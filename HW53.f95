program HW53
    !最小二乗法
    real,dimension(4)::x,y
    x=(/1,2,3,5/)
    y=(/2,4,5,9/)
    xb=sum(x)/4
    yb=sum(y)/4
    b=sum((x-xb)*(y-yb))/sum((x-xb)*(x-xb))
    a=yb-b*xb
    write(6,*)'a=',a
    write(6,*)'b=',b
end program HW53
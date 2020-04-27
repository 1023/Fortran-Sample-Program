program HW52   
    !2つの3次元ベクトルの外積を算出
    integer,dimension(3)::x,y,z
    x=(/1,-2,3/)
    y=(/-5,2,1/)
    z(1)=x(2)*y(3)-x(3)*y(2)
    z(2)=x(3)*y(1)-x(1)*y(3)
    z(3)=x(1)*y(2)-x(2)*y(1)
    write(6,*)z
end program HW52
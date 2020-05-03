program EX81
    !半径rの球の体積と表面積の算出
    r=3.0
    call kyu(r,v,s)
    write(6,*)'r=',r,' v=',v,' s=',s
    r=8.5
    call kyu(r,v,s)
    write(6,*)'r=',r,' v=',v,' s=',s   
end program EX81
subroutine kyu(r,v,s)
    pi=3.14159265
    v=4.0/3.0*pi*r**3
    s=4.0*pi*r**2
end
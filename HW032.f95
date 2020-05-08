program HW32
    !ド・モルガンの定理が成立するかどうかの確認
    implicit none
    logical :: a,b,sahen,uhen
    write(6,60)
 60 format(' ','a b sahen uhen')
    a=.true.
    b=.true.
    sahen=.not.(a.and.b)
    uhen=.not.a.or. .not.b
    write(6,70)a,b,sahen,uhen
 70 format(' ',4L7)
    b=.false.
    sahen=.not.(a.and.b)
    uhen=.not.a.or..not.b
    write(6,70)a,b,sahen,uhen
    a=.false.
    b=.true.
    sahen=.not.(a.and.b)
    uhen=.not.a.or..not.b
    write(6,70)a,b,sahen,uhen
    b=.false.
    sahen=.not.(a.and.b)
    uhen=.not.a.or..not.b
    write(6,70)a,b,sahen,uhen
end program HW32
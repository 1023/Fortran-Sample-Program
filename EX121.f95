program EX121
    use v2d
    type(vec2d)::a,b,wa,sa
    write(6,*)'a,b >>'
    read(5,*) a,b
    call vec_out('a',a)
    call vec_out('b',b)
    wa= vec_add(a,b)
    call vec_out('wa',wa)
    sa= vec_sub(a,b)
    call vec_out('sa',sa)
end program EX121

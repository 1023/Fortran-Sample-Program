module v2d
    type vec2d
        real::x,y
    end type vec2d
contains
    function vec_add(a,b)
        type(vec2d)::a,b,vec_add
        vec_add%x=a%x+b%x
        vec_add%y=a%y+b%y
    end function vec_add
    function vec_sub(a,b)
        type(vec2d)::a,b,vec_sub
        vec_sub%x=a%x+b%x
        vec_sub%y=a%y+b%y
    end function vec_sub
    subroutine vec_out(vec_nam,a)
        character(*)::vec_nam
        type(vec2d)::a
        write(6,"(a,'=(',f10.3,',',f10.3,')')")vec_nam,a
    end subroutine vec_out
end module v2d
module student_module
    type student
        character(32)::name
        integer ::tensu
    end type student
contains
    subroutine sort(n,s)
        type(student),dimension(100)::s
        type(student)::mx,wk
        do k=1,n-1
            mx=s(k)
            im=k
            do j = k+1, n
                if ( mx%tensu<s(j)%tensu ) then
                    mx=s(j)
                    im=j
                end if
            end do
            wk=s(k)
            s(k)=mx
            s(im)=wk
        end do
    end subroutine sort
end module student_module
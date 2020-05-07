program HW122
    !成績データのソート(モジュールstudent_moduleを使用)
    use student_module
    type(student),dimension(100)::s
    read(5,*) n
    do i = 1, n
        read(5,*) s(i)
    end do
    call sort(n,s)
    do i=1,n
        write(6,*)s(i)
    end do
end program HW122
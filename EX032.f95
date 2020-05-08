program EX32 
    !10人分の成績判定
    integer tensu,bangou
    na=0 !成績A判定の人数
    nb=0
    nc=0
    ninzu=0
    goukei=0
 10 write(6,*)'bangou , tensu'
    read(5,*)bangou , tensu
    ninzu=ninzu+1
    goukei=goukei+tensu
    select case(tensu)
        case(80:100)
            write(6,*) bangou,tensu,'a'
            na=na+1
        case(60:79)
            write(6,*) bangou,tensu,'b'
            nb=nb+1
        case default
            write(6,*) bangou,tensu,'c'
            nc=nc+1    
    end select
    if(ninzu<10) go to 10
    heikin=goukei/ninzu
    write(6,*) 'a=',na
    write(6,*) 'b=',nb
    write(6,*) 'c=',nc
    write(6,60)heikin
 60 format(' ','heikin',F8.3,'ten')
    end
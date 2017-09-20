
program deepak


    implicit none


    integer :: i, n, clock
    integer, dimension(:), allocatable :: seed
      
    character(len=20), dimension(4) :: starts
    character(len=20), dimension(4) :: middles
    character(len=20), dimension(4) :: qualifiers
    character(len=20), dimension(4) :: finishes

    real :: r


    call random_seed(size = n)
    allocate(seed(n))
  
    call system_clock(count=clock)
  
    seed = clock + 37 * (/ (i - 1, i = 1, n) /)
    call random_seed(put = seed)
  
    deallocate(seed)


    starts(1) = 'Experiential truth '
    starts(2) = 'The physical world '
    starts(3) = 'Non-judgment '
    starts(4) = 'Quantum physics '

    call random_number(r)
    write(*,*) starts(int(r*size(starts)) + 1)


    middles(1) = 'nurtures an '
    middles(2) = 'projects onto '
    middles(3) = 'imparts reality to '
    middles(4) = 'constructs with '

    call random_number(r)
    write(*,*) middles(int(r*size(middles)) + 1)


    qualifiers(1) = 'abundance of '
    qualifiers(2) = 'the barrier of '
    qualifiers(3) = 'self-righteous '
    qualifiers(4) = 'potential '

    call random_number(r)
    write(*,*) qualifiers(int(r*size(qualifiers)) + 1)


    finishes(1) = 'marvel.'
    finishes(2) = 'choices.'
    finishes(3) = 'creativity.'
    finishes(4) = 'actions.'

    call random_number(r)
    write(*,*) finishes(int(r*size(finishes)) + 1)


end program deepak

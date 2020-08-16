      program fizzBuzz
      integer i
            
      do 10 i = 1, 100
           if ((mod(i,3) .EQ. 0) .AND. (mod(i,5) .NE. 0)) then
                write(*,*) "Fizz!"
           else if ((mod(i,5) .EQ. 0) .AND. (mod(i,3) .NE. 0)) then 
                write(*,*) "Buzz!"
           else if ((mod(i,5) .EQ. 0) .AND. (mod(i,3) .EQ. 0)) then
                write(*,*) "FizzBuzz!"
           else
                write(*,100) i
100             format(I3)
           end if
10    continue
      stop
      end 
      

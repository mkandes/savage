! ======================================================================
! The Savage Benchmark
! 
! R. Duncan, "16-bit Software Toolbox", Dr. Dobb’s Journal, Number 83,
! September 1983, p. 120
! ----------------------------------------------------------------------

      program savage

!     load standard iso_fortran_env module
      use, intrinsic :: iso_fortran_env

!     disable implicit variable types
      implicit none

!     declare a character-valued input buffer variable that will be
!     utilized to read in the number of savage loop iterations, n, from 
!     the command-line; 20 characters is the max length of a signed 
!     64-bit integer
      character(20) :: buffer

!     declare integer-valued variables that will be utilized to store:
!     length and info variables for get_command_argument subroutine, the 
!     loop index, i, and the number of savage loop iterations, n.
      integer :: length, info
      integer :: i, n

!     declare a real-valued variable for the accumulated sum, a.
      real :: a 

!     read in the number of savage loop iterations from the command-line
      call get_command_argument(1, buffer, length, info)
      read(unit=buffer, fmt=*) n

!     write the number of savage loop iterations to standard output
      write(unit=output_unit, fmt=*) 'n = ', n

!     initialize a to 1
      a = 1.0

!     perform the savage benchmark loop and compute the accumulated sum
      do i = 1, n-1
         a = tan(atan(exp(log(sqrt(a*a))))) + 1.0;
      end do

!     write the accumulated sum to standard output
      write(unit=output_unit, fmt=*) 'a = ', a

      stop

      end program savage
! ======================================================================

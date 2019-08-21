# Start of the makefile
# Defining variables
f90compiler = gfortran
debugOp = 
#-fcheck=all -Wall -Wextra -pedantic -fimplicit-none -Og -fbacktrace -Waliasing -Wsurprising -Wconversion-extra -Wextra -Wrealloc-lhs-all

# Makefile

fileNumberLoop:	fileNumberLoop.o
	$(f90compiler) -o fileNumberLoop fileNumberLoop.o

fileNumberLoop.o:	fileNumberLoop.f90
	$(f90compiler) -c -g $(debugOp) fileNumberLoop.f90

# Cleaning everything
clean:
	rm fileNumberLoop.o
	rm fileNumberLoop
# End of the makefile
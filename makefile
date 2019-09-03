# Start of the makefile
# Defining variables
codeConcepts_objects =	fileNumberLoop.o \
						variableNumberSize.o \
						formatOutput.o \
						readTerminalInput.o
f90compiler = gfortran
debugOp = 
#-fcheck=all -Wall -Wextra -pedantic -fimplicit-none -Og -fbacktrace -Waliasing -Wsurprising -Wconversion-extra -Wextra -Wrealloc-lhs-all

# Makefile

codeConcepts:	codeConcepts.o $(codeConcepts_objects)
	$(f90compiler) -o codeConcepts codeConcepts.o $(codeConcepts_objects)

fileNumberLoop.o:	fileNumberLoop.f90
	$(f90compiler) -c -g $(debugOp) fileNumberLoop.f90

variableNumberSize.o:	variableNumberSize.f90
	$(f90compiler) -c -g $(debugOp) variableNumberSize.f90

formatOutput.o:	formatOutput.f90
	$(f90compiler) -c -g $(debugOp) formatOutput.f90

readTerminalInput.o:	readTerminalInput.f90
	$(f90compiler) -c -g $(debugOp) readTerminalInput.f90

codeConcepts.o:	codeConcepts.f90 $(codeConcepts_objects)
	$(f90compiler) -c -g $(debugOp) codeConcepts.f90

# Cleaning everything
clean:
	rm $(codeConcepts_objects)
	rm codeConcepts.o
	rm codeConcepts
# End of the makefile
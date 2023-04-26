# all : #target name
# 	gcc  addition.c subtraction.c multiplication.c division.c main.c -o main

all : calculator

calculator : add.o subtract.o multiply.o divide.o power.o modulus.o main.o
	gcc -o calculator add.o subtract.o multiply.o divide.o power.o modulus.o main.o

add.o : addition.c myHeader.h
	gcc -c addition.c -o add.o

multiply.o : multiplication.c myHeader.h
	gcc -c multiplication.c -o  multiply.o

subtract.o : subtraction.c myHeader.h
	gcc -c subtraction.c -o subtract.o

divide.o : division.c myHeader.h
	gcc -c division.c -o divide.o

power.o : power.c myHeader.h
	gcc -c power.c

modulus.o :modulus.c myHeader.h
	gcc -c modulus.c

main.o : main.c myHeader.h
	gcc -c main.c
	
clean : 
	rm -f *.o calculator
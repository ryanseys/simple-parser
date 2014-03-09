all: compile

compile:
	bison -dt -o gram.c gram.y
	flex -t scan.l > scan.c
	cc -c -o main.o main.c
	cc -c -o scan.o scan.c
	cc -c -o gram.o gram.c
	cc -o add.out main.o gram.o scan.o

run: compile
	./add.out

test: compile
	./tests.sh

clean:
	rm -rf *o hello
	rm add
	rm gram.c
	rm gram.h
	rm scan.c

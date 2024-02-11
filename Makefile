CC     = gcc
LIBS   = include
CFLAGS = -g -Wall -pedantic -std=c11
FILES  = $(wildcard src/*.c)
OUT    = a.out

all:
	$(CC) main.c ./test/test.c $(FILES) -o $(OUT) -I $(LIBS) $(CFLAGS)
	./$(OUT)

compile:
	$(CC) $(FILES) -o $(OUT) -I $(LIBS) $(CFLAGS)

run:
	./$(OUT)

clean:
	rm -rf $(OUT)

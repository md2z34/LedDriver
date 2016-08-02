SRC = LedDriver
CC = gcc

$(SRC).o: $(SRC).c
	$(CC) -c $(SRC).c

default: $(SRC).o
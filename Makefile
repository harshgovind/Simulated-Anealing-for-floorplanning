

CC = gcc
CFLAGS = -g -Wall
OBJS = SA_helper.o SA_placement.o
SRC = SA_helper.c SA_placement.c SA_helper.h
#LIBS = lm

all : SA_placement

SA_placement : $(OBJS)
	$(CC) $(CFLAGS) -o SA_placement $(OBJS) -lm

$(OBJS) : $(SRC)
	$(CC) $(CFLAGS) -c $*.c

clean :
	rm $(OBJS)


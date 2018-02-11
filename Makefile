IDIR =./include
CC=g++
CFLAGS=-std=c++11 -Wall -lm -fopenmp -I$(IDIR)

ODIR=./obj
LDIR =./lib
LFLAGS   = -Wall -lm

SRC=./src

_DEPS = nodestructures.h nodebinsearch.h nodequicksort.h readnodes.h readways.h astar.h astarqueues.h heuristic.h monitoring.h closestpoint.h
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

_OBJ = nodebinsearch.o nodequicksort.o readnodes.o readways.o astar.o astarqueues.o heuristic.o monitoring.o closestpoint.o
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

$(ODIR)/%.o: $(SRC)/%.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS) 

main: main.cpp
	$(CC) -o $@ $^ $(CFLAGS) $(OBJ) 	


.PHONY: clean

clean:
	rm -if $(ODIR)/*.o


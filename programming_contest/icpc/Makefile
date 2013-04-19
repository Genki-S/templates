CC=g++
WARNCPPFLAGS=-Wall -W -Wshadow -Wpointer-arith -Wcast-qual -Wcast-align -Wold-style-cast -Woverloaded-virtual
LDFLAGS=-g
# LOADLIBS=-lefence
LOADLIBS=

SOURCES=solve.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXE=a.out

.PHONY: all build exec test clean cleanest

all: build exec test

build: $(EXE)

$(EXE): $(OBJECTS)
	$(CC) $(LOADLIBS) $(OBJECTS) -o $@

%.o: %.cpp
	$(CC) -c $(WARNCPPFLAGS) $(LDFLAGS) $< -o $@

exec:
	@ echo "Executing program..."
	@ ./$(EXE) < in.txt > out.txt

test:
# Suppress error by "|| true"
	@ echo "Running test..."
	@ diff out.txt ans.txt > /dev/null || true
	@ if [[ $$? -ne 0 ]] ; then echo "WA" ; else echo "AC!" ; fi

clean:
	rm -f $(OBJECTS)

cleanest: clean
	rm -f $(EXE) out.txt

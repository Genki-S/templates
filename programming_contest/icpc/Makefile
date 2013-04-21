CC=g++
WARNCPPFLAGS=-Wall -W -Wshadow -Wpointer-arith -Wcast-qual -Wcast-align -Wold-style-cast -Woverloaded-virtual
LDFLAGS=-g
# LOADLIBS=-lefence
LOADLIBS=

SOURCES=solve.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXE=a.out

.PHONY: all build exec test clean cleanest

all: build exec test clean

build: $(EXE)

$(EXE): $(OBJECTS)
	$(CC) $(LOADLIBS) $(OBJECTS) -o $@

%.o: %.cpp
	$(CC) -c $(WARNCPPFLAGS) $(LDFLAGS) $< -o $@

exec:
	@ echo "Executing program..."
	@ ./$(EXE) < in.txt > out.txt

test:
	@ echo "Running test..."
	@ diff out.txt ans.txt > /dev/null && echo "\033[32mAC!\033[0m" || echo "\033[31mWA\033[0m"

clean:
	rm -f $(OBJECTS)

cleanest: clean
	rm -f $(EXE) out.txt

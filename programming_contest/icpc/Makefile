CC=g++
WARNCPPFLAGS=-Wall -W -Wshadow -Wpointer-arith -Wcast-qual -Wcast-align -Wold-style-cast -Woverloaded-virtual
LDFLAGS=-g
# LOADLIBS=-lefence
LOADLIBS=

SOURCES=$(wildcard *.cpp)
OBJECTS=$(SOURCES:.cpp=.o)
EXE=a.out

.PHONY: all build exec test clean cleanest

all: build exec test

build: $(EXE)

$(EXE): $(OBJECTS)
	$(CC) $(LOADLIBS) $(OBJECTS) -o $@

%.o: %.cpp
	$(CC) -c $(LDFLAGS) $(WARNCPPFLAGS) $< -o $@

exec:
	@ echo "Executing program..."
	@ mkdir -p out
	@ for f in in/* ; do \
		./$(EXE) < $$f > $${f/in/out}; \
	done

test:
	@ echo "Running test..."
	@ for f in out/*; do \
		echo "\n$$f"; \
		diff $$f $${f/out/ans} > /dev/null \
			&& echo "\033[32mAC!\033[0m" \
			|| echo "\033[31mWA\033[0m"; \
	done

clean:
	rm -f $(OBJECTS)

cleanest: clean
	rm -f $(EXE)

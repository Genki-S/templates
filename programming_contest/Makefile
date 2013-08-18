CC := g++
WARNCPPFLAGS := -Wall -W -Wshadow -Wpointer-arith -Wcast-qual -Wcast-align -Wold-style-cast -Woverloaded-virtual
LDFLAGS := -g
# LOADLIBS := -lefence
LOADLIBS :=
EXE := a.out


.PHONY: all prepare build test clean cleanest

all: test

# Start a new Problem
new: prepare
	oj --$(JUDGE) -c $(PNO)
	make edit

# Edit the program file
edit: prepare
	$(EDITOR) $(PNO).cpp

# Execute test
test: prepare
	oj --$(JUDGE) $(PNO)

# Debugging
debug: build
	mkdir -p in
	rm -rf in/*
	i=0; while [[ -f $(PNO).$$i.in.txt ]]; do \
		cp $(PNO).$$i.in.txt in/$$i; \
		i=`expr $$i + 1`; \
	done
	cgdb $(EXE)

build: $(EXE)

$(EXE): prepare $(OBJ)
	make $(OBJ)
	$(CC) $(LOADLIBS) $(OBJ) -o $@

# Add test case
add: prepare
	oj --add-test-case-template $(PNO)

# Submit
submit: prepare
	oj --$(JUDGE) $(PNO) -s

# Helpers

prepare:
ifndef PNO
	$(error PNO (problem number) is not specified)
endif
	$(eval OBJ := $(PNO).o)
	$(eval JUDGE := $(shell pwd | sed 's!.*/!!'))

clean:
	rm -f $(OBJ)

cleanest: clean
	rm -f $(EXE)

%.o: %.cpp
	$(CC) -c $(LDFLAGS) $(WARNCPPFLAGS) $< -o $@


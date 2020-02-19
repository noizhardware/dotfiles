SRC = 
DEST = 

all: $(SRC)
	gcc -std=c99 -g -Wall -pedantic-errors -o $(DEST) $(SRC)

clean:
	rm $(DEST)

go:
	./$(DEST)

edit:
	nano $(SRC)

emk:
	nano Makefile

.PHONY: all
.PHONY: clean
.PHONY: go
.PHONY: edit
.PHONY: emk

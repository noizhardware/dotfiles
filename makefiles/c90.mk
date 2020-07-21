SRC = 
DEST = 
includePath = ~/s/i

.PHONY: all
all: $(SRC)
	gcc -std=c90 -g0 -Wall -pedantic-errors -o $(DEST) $(SRC) -I $(includePath)

.PHONY: debug
debug:
	gcc -std=c90 -Wall -pedantic-errors -o $(DEST) $(SRC) -I $(includePath)
	./$(DEST)

.PHONY: clean
clean:
	rm $(DEST)
	
.PHONY: go
go:
	./$(DEST)

.PHONY: edit
edit:
	nano $(SRC)

.PHONY: emk
emk:
	nano Makefile
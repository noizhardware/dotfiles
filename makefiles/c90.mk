SRC = .c
DEST = .exe
DESTnix = 
includePath = R:/s/c/i
includePathNix = ~/c/i

.PHONY: all
all: $(SRC)
	gcc -ansi -g0 -O3 -Wall -Wextra -Wshadow -Wvla -pedantic-errors -o $(DEST) $(SRC) -I $(includePath)

.PHONY: debug
debug:
	gcc -ansi -g3 -static-libasan -fsanitize=address -Wall -Wextra -Wshadow -Wvla -pedantic-errors -o $(DESTnix) $(SRC) -I $(includePathNix) -Wno-long-long
	./$(DESTnix)

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
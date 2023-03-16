PROJECT=operational_systems

# arquivos .cc
CC_SOURCE=$(wildcard ./src/*.cc)

# arquivos .h
H_SOURCE=$(wildcard ./src/*.h)

# arquivos objeto
OBJ=$(subst .cc,.o,$(subst src,lib,$(CC_SOURCE)))

# compilador
CC=g++

RM = rm -rf

# Flags for compiler
CC_FLAGS=-c         \
         -W         \
         -Wall      \
         -ansi      \
         -pedantic

# -----------
# compilacao
all: objFolder $(PROJECT)

$(PROJECT): $(OBJ)
	@ echo 'Building binary using G++'
	$(CC) -o $@ $^
	@ echo 'Finished building binary: $@'
	@echo ' '

./lib%.o: ./src/%.c ./src/%.h
	@ echo 'Building target using G++' 
	$(CC) $< $(CC_FLAGS) -o $@
	@ echo 'Finished building target'

./lib/main.o: ./src/main.cc $(H_SOURCE)
	@ echo 'Building main'
	$(CC) $< $(CC_FLAGS) -o $@
	@ echo ' '

objFolder:
	@ mkdir -p lib
clean:
	@ $(RM) ./lib/*.o $(PROJECT) *~
	@ rmdir lib

.PHONY: all clean

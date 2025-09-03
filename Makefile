# Compiler
CC  ?= gcc
CXX ?= g++

# Settings
SRC_DIR   = ./src
TEST_DIR  = ./tests
BUILD_DIR = .
NAME      = app.elf

# Include paths
CFLAGS += -I$(SRC_DIR)/average -Wall

# Source files
CSOURCES = $(SRC_DIR)/main.c
CSOURCES += $(wildcard $(SRC_DIR)/average/*.c)

# Object files (mirror source structure)
COBJECTS = $(CSOURCES:.c=.o)

# Default rule
.PHONY: all
all: $(NAME)

# Compile src/*.c
$(SRC_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

# Compile src/average/*.c
$(SRC_DIR)/average/%.o: $(SRC_DIR)/average/%.c
	$(CC) $(CFLAGS) -c $< -o $@

# Link objects into final app
$(NAME): $(COBJECTS)
	$(CC) $(COBJECTS) -o $(BUILD_DIR)/$(NAME) $(LDFLAGS)

# Clean build
.PHONY: clean
clean:
	rm -f $(COBJECTS) $(NAME)

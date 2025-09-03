# Total Definition 
CC	?= gcc 
CXX ?= g++

#Settings 
SRC_DIR	  = ./src 
TEST_DIR  = ./tests
BUILD_DIR = .
NAME	  = app.elf

# Search path for header files 
CFLAGS += -I$(SRC_DIR)/average

# List modules sources Files 
CSOURCES = $(SRC_DIR)/main.c
CSOURCES += $(wildcard $(SRC_DIR)/average/*.c)

#COMPILE FALGS 
CFLAGS += -Wall

#LINKER FALGS 
LDFLAGS += 

#Generate names for output objects files (*.o)
#COBJECTS = $(patsubst %.c,%.o,$(CSOURCES))
COBJECTS = $(CSOURCES:.c=.o)

#defult Rule : Build application 

.PHONY: all
all: $(NAME)	

# Build components 
#$(COBJECTS): %.o : %.c 
#%.o: %.c	
#	$(CC) $(CFLAGS) -c $< -o $@
	
./src/%.o: ./src/%.c
	$(CC) $(CFLAGS) -c $< -o $@

./src/average/%.o: ./src/average/%.c
	$(CC) $(CFLAGS) -c $< -o $@

#Build the target application
.PHONY: $(NAME)
$(NAME): $(COBJECTS)
	$(CC) $(COBJECTS) -o $(BUILD_DIR)/$(NAME) $(LDFLAGS)

# Remove comiled files 
.PHONY: clean
clean:
	rm -f $(COBJECTS) $(NAME)		
		
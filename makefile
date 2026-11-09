CC = gcc

# Targets
TARGET = mtbl
TEST_TAR = tests

# Flags
CFLAGS = -Wall -Werror -Wextra

# File Categories
MAIN = main.c
TESTS = tests.c
SRC = mtbl.c

.PHONY: all run test clean

all: $(TARGET)

$(TARGET): $(MAIN) $(SRC)
	$(CC) -o $@ $(CFLAGS) $^

$(TEST_TAR): $(TESTS) $(SRC)
	$(CC) -o $@ $(CFLAGS) $^

run: $(TARGET)
	./$<

test: $(TEST_TAR)
	./$<

clean:
	$(RM) $(TARGET) $(TEST_TAR)

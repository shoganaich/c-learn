CC      := gcc
CFLAGS  ?= -std=c17 -Wall -Wextra -Wpedantic -g

SRCS := $(wildcard */*.c)
BINS := $(patsubst %.c,build/%,$(SRCS))

.PHONY: all clean run
all: $(BINS)

# Each .c file is its own program: 01-basics/hello.c -> build/01-basics/hello
build/%: %.c
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) $< -o $@

# Usage: make run F=01-basics/hello
run: build/$(F)
	./build/$(F)

clean:
	rm -rf build

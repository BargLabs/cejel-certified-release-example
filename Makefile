CC ?= cc
CFLAGS ?= -std=c11 -O2 -Wall -Wextra -Werror
ARTIFACT := dist/cejel-certified-release-example-linux-x86_64
TEST_BINARY := dist/greeting-test

.PHONY: release test clean

release: $(ARTIFACT)

$(ARTIFACT): src/main.c src/greeting.c src/greeting.h
	mkdir -p dist
	$(CC) $(CFLAGS) -o $@ src/main.c src/greeting.c

$(TEST_BINARY): tests/greeting_test.c src/greeting.c src/greeting.h
	mkdir -p dist
	$(CC) $(CFLAGS) -Isrc -o $@ tests/greeting_test.c src/greeting.c

test: release $(TEST_BINARY)
	$(TEST_BINARY)

clean:
	rm -rf dist

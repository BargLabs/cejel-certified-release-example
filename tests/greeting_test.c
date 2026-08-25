#include <assert.h>
#include <string.h>

#include "greeting.h"

int main(void) {
  assert(strcmp(greeting(), "hello from a Cejel certified release") == 0);
  return 0;
}

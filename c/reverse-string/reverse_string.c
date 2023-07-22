#include "reverse_string.h"
#include <stdlib.h>
#include <string.h>

char *reverse(const char *value) {
    int i;
    char *result = malloc (sizeof (char) * strlen(value));
    int j = 0;
    for (i = strlen(value)-1; i >= 0 ; i--) {
        result[j] = value[i];
        j++;
    }
    return result;
}
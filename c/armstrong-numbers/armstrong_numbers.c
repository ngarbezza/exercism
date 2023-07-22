#include "armstrong_numbers.h"
#include <math.h>

int number_of_digits(int number) {
    int temp = number;
    int digits = 0;
    while(temp) {
        digits++;
        temp /= 10;
    }
    return digits;
}

bool is_armstrong_number(int candidate) {
    int digits = number_of_digits(candidate);
    int temp = candidate;
    int sum = 0;
    while(temp) {
        sum += pow(temp % 10, digits);
        temp /= 10;
    }
    return sum == candidate;
}
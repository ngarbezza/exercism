#include "resistor_color.h"

int color_code(resistor_band_t resistor) {
    return resistor;
}

resistor_band_t* colors() {
    static resistor_band_t result[] = { BLACK, BROWN, RED, ORANGE, YELLOW, GREEN, BLUE, VIOLET, GREY, WHITE };
    return result;
}
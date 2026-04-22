#include <iostream>
#include "ap_int.h"

void sw_led(ap_uint<8> sw, ap_uint<8> &led);

int main() {
    
    ap_uint<8> sw, led;
    sw = 0b00000000; // num1=0, num2=0, opcode=0 (addition)
    sw_led(sw, led);
    printf("Test 1 - Addition: sw = %02X, led = %02X\n", (unsigned)sw, (unsigned)led);
    sw = 0b00011000; // num1=0, num2=3, opcode=0 (addition)
    sw_led(sw, led);
    printf("Test 2 - Addition: sw = %02X, led = %02X\n", (unsigned)sw, (unsigned)led);
    sw = 0b00101000; // num1=0, num2=5, opcode=0 (addition)
    sw_led(sw, led);
    printf("Test 3 - Addition: sw = %02X, led = %02X\n", (unsigned)sw, (unsigned)led);
    sw = 0b01000000; // num1=0, num2=0, opcode=1 (subtraction)
    sw_led(sw, led);
    printf("Test 4 - Subtraction: sw = %02X, led = %02X\n", (unsigned)sw, (unsigned)led);
    sw = 0b01011000; // num1=0, num2=3, opcode=1 (subtraction)
    sw_led(sw, led);
    printf("Test 5 - Subtraction: sw = %02X, led = %02X\n", (unsigned)sw, (unsigned)led);
    sw = 0b10001000; // num1=0, num2=5, opcode=2 (Multiplication)
    sw_led(sw, led);
    printf("Test 6 - Multiplication: sw = %02X, led = %02X\n", (unsigned)sw, (unsigned)led);
    sw = 0b11110011; // num1=0, num2=0, opcode=3 (Division)
    sw_led(sw, led);
    printf("Test 7 - Division: sw = %02X, led = %02X\n", (unsigned)sw, (unsigned)led);

    return 0;


}

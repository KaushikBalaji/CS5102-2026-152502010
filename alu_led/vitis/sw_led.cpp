#include "ap_int.h"

void alu_led(ap_uint<8> sw, ap_uint<8> &led){

#pragma HLS INTERFACE ap_none port=sw
#pragma HLS INTERFACE ap_none port=led
#pragma HLS INTERFACE ap_ctrl_none port=return

	ap_uint<3> num1 = sw.range(2, 0), num2 = sw.range(5, 3);
	ap_uint<2> opcode = sw.range(7, 6);
	ap_uint<8> result = 0;

	switch (opcode)
	{
	case 0:
		result = num1 + num2;
		break;
	case 1:
		result = num1 - num2;
		break;
	case 2:
		result = num1 * num2;
		break;
	case 3:
		if(num2 != 0)
			result = num1 / num2;
		else
			result = 0;
		break;
	}

	led = result;
	
}

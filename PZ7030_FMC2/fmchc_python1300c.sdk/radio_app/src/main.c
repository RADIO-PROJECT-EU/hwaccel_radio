/*
 * main.c
 *
 *  Created on: 09.02.2018
 *      Author: Fynn
 */

#include "radio.h"

radio_struct base;
radio_struct *p_base;
int main()
{
	xil_printf("\n\r");
	xil_printf("------------------------------------------------------\n\r");
	xil_printf("--             RADIO-CAM + HW-IP                    --\n\r");
	xil_printf("--             Standanlone Design                   --\n\r");
	xil_printf("------------------------------------------------------\n\r");
	xil_printf("\n\r");

	p_base = &base;
	p_base->psquare_check = &(p_base->square_check);

	demo_start_radio(p_base);


	return 0;
}


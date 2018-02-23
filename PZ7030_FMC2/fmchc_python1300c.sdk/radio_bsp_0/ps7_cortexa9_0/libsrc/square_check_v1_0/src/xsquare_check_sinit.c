// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xsquare_check.h"

extern XSquare_check_Config XSquare_check_ConfigTable[];

XSquare_check_Config *XSquare_check_LookupConfig(u16 DeviceId) {
	XSquare_check_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSQUARE_CHECK_NUM_INSTANCES; Index++) {
		if (XSquare_check_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSquare_check_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSquare_check_Initialize(XSquare_check *InstancePtr, u16 DeviceId) {
	XSquare_check_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSquare_check_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSquare_check_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif


// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xinsertion_sort_axis.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XInsertion_sort_axis_CfgInitialize(XInsertion_sort_axis *InstancePtr, XInsertion_sort_axis_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XInsertion_sort_axis_Start(XInsertion_sort_axis *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInsertion_sort_axis_ReadReg(InstancePtr->Control_BaseAddress, XINSERTION_SORT_AXIS_CONTROL_ADDR_AP_CTRL) & 0x80;
    XInsertion_sort_axis_WriteReg(InstancePtr->Control_BaseAddress, XINSERTION_SORT_AXIS_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XInsertion_sort_axis_IsDone(XInsertion_sort_axis *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInsertion_sort_axis_ReadReg(InstancePtr->Control_BaseAddress, XINSERTION_SORT_AXIS_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XInsertion_sort_axis_IsIdle(XInsertion_sort_axis *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInsertion_sort_axis_ReadReg(InstancePtr->Control_BaseAddress, XINSERTION_SORT_AXIS_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XInsertion_sort_axis_IsReady(XInsertion_sort_axis *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInsertion_sort_axis_ReadReg(InstancePtr->Control_BaseAddress, XINSERTION_SORT_AXIS_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XInsertion_sort_axis_EnableAutoRestart(XInsertion_sort_axis *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInsertion_sort_axis_WriteReg(InstancePtr->Control_BaseAddress, XINSERTION_SORT_AXIS_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XInsertion_sort_axis_DisableAutoRestart(XInsertion_sort_axis *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInsertion_sort_axis_WriteReg(InstancePtr->Control_BaseAddress, XINSERTION_SORT_AXIS_CONTROL_ADDR_AP_CTRL, 0);
}

void XInsertion_sort_axis_InterruptGlobalEnable(XInsertion_sort_axis *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInsertion_sort_axis_WriteReg(InstancePtr->Control_BaseAddress, XINSERTION_SORT_AXIS_CONTROL_ADDR_GIE, 1);
}

void XInsertion_sort_axis_InterruptGlobalDisable(XInsertion_sort_axis *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInsertion_sort_axis_WriteReg(InstancePtr->Control_BaseAddress, XINSERTION_SORT_AXIS_CONTROL_ADDR_GIE, 0);
}

void XInsertion_sort_axis_InterruptEnable(XInsertion_sort_axis *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XInsertion_sort_axis_ReadReg(InstancePtr->Control_BaseAddress, XINSERTION_SORT_AXIS_CONTROL_ADDR_IER);
    XInsertion_sort_axis_WriteReg(InstancePtr->Control_BaseAddress, XINSERTION_SORT_AXIS_CONTROL_ADDR_IER, Register | Mask);
}

void XInsertion_sort_axis_InterruptDisable(XInsertion_sort_axis *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XInsertion_sort_axis_ReadReg(InstancePtr->Control_BaseAddress, XINSERTION_SORT_AXIS_CONTROL_ADDR_IER);
    XInsertion_sort_axis_WriteReg(InstancePtr->Control_BaseAddress, XINSERTION_SORT_AXIS_CONTROL_ADDR_IER, Register & (~Mask));
}

void XInsertion_sort_axis_InterruptClear(XInsertion_sort_axis *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInsertion_sort_axis_WriteReg(InstancePtr->Control_BaseAddress, XINSERTION_SORT_AXIS_CONTROL_ADDR_ISR, Mask);
}

u32 XInsertion_sort_axis_InterruptGetEnabled(XInsertion_sort_axis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XInsertion_sort_axis_ReadReg(InstancePtr->Control_BaseAddress, XINSERTION_SORT_AXIS_CONTROL_ADDR_IER);
}

u32 XInsertion_sort_axis_InterruptGetStatus(XInsertion_sort_axis *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XInsertion_sort_axis_ReadReg(InstancePtr->Control_BaseAddress, XINSERTION_SORT_AXIS_CONTROL_ADDR_ISR);
}


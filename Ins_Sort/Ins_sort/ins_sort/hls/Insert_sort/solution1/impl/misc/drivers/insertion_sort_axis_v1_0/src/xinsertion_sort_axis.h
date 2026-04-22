// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XINSERTION_SORT_AXIS_H
#define XINSERTION_SORT_AXIS_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xinsertion_sort_axis_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XInsertion_sort_axis_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XInsertion_sort_axis;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XInsertion_sort_axis_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XInsertion_sort_axis_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XInsertion_sort_axis_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XInsertion_sort_axis_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XInsertion_sort_axis_Initialize(XInsertion_sort_axis *InstancePtr, u16 DeviceId);
XInsertion_sort_axis_Config* XInsertion_sort_axis_LookupConfig(u16 DeviceId);
int XInsertion_sort_axis_CfgInitialize(XInsertion_sort_axis *InstancePtr, XInsertion_sort_axis_Config *ConfigPtr);
#else
int XInsertion_sort_axis_Initialize(XInsertion_sort_axis *InstancePtr, const char* InstanceName);
int XInsertion_sort_axis_Release(XInsertion_sort_axis *InstancePtr);
#endif

void XInsertion_sort_axis_Start(XInsertion_sort_axis *InstancePtr);
u32 XInsertion_sort_axis_IsDone(XInsertion_sort_axis *InstancePtr);
u32 XInsertion_sort_axis_IsIdle(XInsertion_sort_axis *InstancePtr);
u32 XInsertion_sort_axis_IsReady(XInsertion_sort_axis *InstancePtr);
void XInsertion_sort_axis_EnableAutoRestart(XInsertion_sort_axis *InstancePtr);
void XInsertion_sort_axis_DisableAutoRestart(XInsertion_sort_axis *InstancePtr);


void XInsertion_sort_axis_InterruptGlobalEnable(XInsertion_sort_axis *InstancePtr);
void XInsertion_sort_axis_InterruptGlobalDisable(XInsertion_sort_axis *InstancePtr);
void XInsertion_sort_axis_InterruptEnable(XInsertion_sort_axis *InstancePtr, u32 Mask);
void XInsertion_sort_axis_InterruptDisable(XInsertion_sort_axis *InstancePtr, u32 Mask);
void XInsertion_sort_axis_InterruptClear(XInsertion_sort_axis *InstancePtr, u32 Mask);
u32 XInsertion_sort_axis_InterruptGetEnabled(XInsertion_sort_axis *InstancePtr);
u32 XInsertion_sort_axis_InterruptGetStatus(XInsertion_sort_axis *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif

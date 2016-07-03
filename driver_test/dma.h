#ifndef DMA_H
#define DMA_H

#include <string>

#define USED_FRAMEBUFFERS 3

#define MM2S_VDMACR			0x00/sizeof(unsigned int)
#define MM2S_VDMASR 		0x04/sizeof(unsigned int)
#define MM2S_VSIZE			0x50/sizeof(unsigned int)
#define MM2S_HSIZE			0x54/sizeof(unsigned int)
#define MM2S_STARTADDR_1 	0x5C/sizeof(unsigned int)
#define MM2S_FRMDLY_STRIDE	0x58/sizeof(unsigned int)



#define S2MM_VDMACR			0x30/sizeof(unsigned int)
#define S2MM_VDMASR			0x34/sizeof(unsigned int)
#define S2MM_VSIZE			0xA0/sizeof(unsigned int)
#define S2MM_HSIZE			0xA4/sizeof(unsigned int)
#define S2MM_STARTADDR_1 	0xAC/sizeof(unsigned int)
#define S2MM_FRMDLY_STRIDE 	0xA8/sizeof(unsigned int)


#define LENGTH 0x28

void configDMA(unsigned int *base,
		unsigned int inputBase, unsigned int outputBase,
		unsigned int in_hsize, unsigned int in_vsize,
		unsigned int out_hsize, unsigned int out_vsize);
void resetDMA(unsigned int *base);
unsigned int getStatusRegister_MM2S(unsigned int* base);
unsigned int getStatusRegister_S2MM(unsigned int* base);
unsigned int getControlRegister_MM2S(unsigned int* base);
unsigned int getControlRegister_S2MM(unsigned int* base);
void showDMADebug(unsigned int *vdma_base);
std::string intToBin(unsigned int val);
#endif

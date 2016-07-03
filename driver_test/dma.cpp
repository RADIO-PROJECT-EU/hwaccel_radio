#include <string>
#include <iostream>
#include <sstream>
#include "reg_defines.h"
#include "dma.h"



void showDMADebug(unsigned int *vdma_base){
	std::cout << "---setConfig---" << std::endl;	
	// --MM2S DEBUG OUT
	std::cout << "MM2S_VDMACR: " << REG_READ(vdma_base, MM2S_VDMACR) << std::endl;	
	std::cout << "MM2S_VDMASR: " << intToBin(REG_READ(vdma_base, MM2S_VDMASR)) << std:: endl;	
	for(int i=0; i < USED_FRAMEBUFFERS; i++){		
		std::cout << "MM2S_STARTADDR_" << i << ": " << (unsigned int *)REG_READ(vdma_base, (MM2S_STARTADDR_1 + i)) << std::endl;
	}	
	std::cout << "MM2S_FRMDLY_STRIDE: " << REG_READ(vdma_base, MM2S_FRMDLY_STRIDE) << std::endl;
	std::cout << "MM2S_HSIZE: " << REG_READ(vdma_base, MM2S_HSIZE) << std::endl;
	std::cout << "MM2S_VSIZE: " << REG_READ(vdma_base, MM2S_VSIZE) << std::endl;
	// -- MM2S END
	// -- S2MM DEBUG OUT
	std::cout << "S2MM_VDMACR: " << REG_READ(vdma_base, S2MM_VDMACR) << std::endl;	
	std::cout << "S2MM_VDMASR: " << intToBin(REG_READ(vdma_base, S2MM_VDMASR)) << std:: endl;
	for(int i=0; i < USED_FRAMEBUFFERS; i++){
		std::cout << "S2MM_STARTADDR_" << i << ": " << (unsigned int *)REG_READ(vdma_base, (S2MM_STARTADDR_1 + i)) << std::endl;
	}
	std::cout << "S2MM_FRMDLY_STRIDE: " << REG_READ(vdma_base, S2MM_FRMDLY_STRIDE) << std::endl;
	std::cout << "S2MM_HSIZE: " << REG_READ(vdma_base, S2MM_HSIZE) << std::endl;	
	std::cout << "S2MM_VSIZE: " << REG_READ(vdma_base, S2MM_VSIZE) << std::endl;
	std::cout << std::endl;
	// S2MM END
}

void configDMA(unsigned int *vdma_base, 
		unsigned int input_base_addr, unsigned int output_base_addr, 
		unsigned int in_vsize, unsigned int in_hsize, 
		unsigned int out_vsize, unsigned int out_hsize){

	// IN	
	REG_WRITE(vdma_base, MM2S_VDMACR, 			0x10003 );	
	REG_WRITE(vdma_base, MM2S_FRMDLY_STRIDE, (in_hsize ) ); // Mask so only the lower 16 bits are passed
	
	for(int i=0; i < USED_FRAMEBUFFERS; i++){
		REG_WRITE(vdma_base, (MM2S_STARTADDR_1 + i), input_base_addr);
	}	
	REG_WRITE(vdma_base, MM2S_HSIZE, in_hsize);
	REG_WRITE(vdma_base, MM2S_VSIZE, in_vsize);

	// OUT
	REG_WRITE(vdma_base, S2MM_VDMACR, 			0x10003 );
	REG_WRITE(vdma_base, S2MM_FRMDLY_STRIDE, 	out_hsize  ); // Mask so only the lower 16 bits are passed
	for(int i=0; i < USED_FRAMEBUFFERS; i++){
		REG_WRITE(vdma_base, S2MM_STARTADDR_1 + i, output_base_addr);
	}
	REG_WRITE(vdma_base, S2MM_HSIZE, out_hsize);
	REG_WRITE(vdma_base, S2MM_VSIZE, out_vsize);	
	
	showDMADebug(vdma_base);
}


void resetDMA(unsigned int *base){
	unsigned int original_state_mm2s = REG_READ(base, MM2S_VDMACR);
	REG_WRITE(base, MM2S_VDMACR, original_state_mm2s | 0x4);
	unsigned int original_state_s2mm = REG_READ(base, S2MM_VDMACR);
	REG_WRITE(base, S2MM_VDMACR, original_state_s2mm | 0x4);
	while( 
		(  (original_state_mm2s & 0x4) != 0 ) 
		&&((original_state_s2mm & 0x4) != 0 )
	){
		usleep(100);
		original_state_mm2s = REG_READ(base, MM2S_VDMACR);
		original_state_s2mm = REG_READ(base, S2MM_VDMACR);
	}
}


unsigned int getStatusRegister_MM2S(unsigned int* base){
	return REG_READ(base, MM2S_VDMASR);
}

unsigned  int getStatusRegister_S2MM(unsigned int* base){
	return REG_READ(base, S2MM_VDMASR);
}

unsigned int getControlRegister_MM2S(unsigned int* base){
	return REG_READ(base, MM2S_VDMACR);
}

unsigned int getControlRegister_S2MM(unsigned int* base){
	return REG_READ(base, MM2S_VDMACR);
}

std::string intToBin(unsigned int val){
		std::stringstream ss;
		for(int i=31; i >= 0; i--){
			ss << ((val >> i) & 1);
			if((i%4) == 0){
				ss << " ";
			}
		}
		return ss.str();
}


/*
uint32_t dma_status(void *instance, uint32_t dmaId) {
	return REG_READ(base_addr, dmaId+DMASR);
}

void dma_set_src(void *instance, void *dataptr, uint32_t data_len) {
	REG_WRITE(base_addr, MM2S_DMA+MM2S_SA, (uint32_t) dataptr);
	REG_WRITE(base_addr, MM2S_DMA+LENGTH, data_len);
}

void dma_set_dst(void *instance, void *dataptr, uint32_t data_len) {
	REG_WRITE(base_addr, S2MM_DMA+S2MM_DA, (uint32_t) dataptr);
	REG_WRITE(base_addr, S2MM_DMA+LENGTH, data_len);
}

void dma_reset(void *instance, uint32_t dmaId) {
	uint32_t reg = dmaId+DMACR;
	printf ("Reg: %02x: setting RESET BIT 0b100\n",reg);
	REG_WRITE(base_addr,reg,0b100);

	while ((REG_READ(base_addr, reg) & 0b100) == 0b100) {
		continue;
	}

	printf ("Reg: %02x: Reset complete.\n", reg);
}

void dma_start(void *instance, uint32_t dmaId, uint32_t val) {
	uint32_t reg = dmaId+DMACR;
	REG_WRITE(base_addr, reg,val&0x01);
}

unsigned int dma_internal_error(void *instance, uint32_t dmaId) {
	uint32_t reg = dmaId+DMASR;
	return REG_READ(base_addr, reg) >> 4 &  0x1;
}

unsigned int dma_idle(void *instance, uint32_t dmaId) {
	uint32_t reg = dmaId+DMASR;
	return REG_READ(base_addr, reg) >> 1 & 0x1;
}
unsigned int dma_halted(void *instance,uint32_t dmaId) {
	uint32_t reg = dmaId+DMASR;
	return REG_READ(base_addr, reg) &  0x1;
}
*/

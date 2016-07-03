#include "videoBaseModule.h"
#include "reg_defines.h"

VideoBaseModule::VideoBaseModule(volatile unsigned int *base_addr){
	this->base_addr = base_addr;
}

VideoBaseModule::~VideoBaseModule(){
	
}

void VideoBaseModule::start(){
	unsigned int original_state = REG_READ(this->base_addr, XTOGRAY_SAXI_CONTROL_ADDR_AP_CTRL );
	REG_WRITE(this->base_addr, XTOGRAY_SAXI_CONTROL_ADDR_AP_CTRL, original_state | 0x1);
}

void VideoBaseModule::setFrameSize(const unsigned int height, const unsigned int width){
	REG_WRITE(this->base_addr, XTOGRAY_SAXI_CONTROL_ADDR_ROWS_DATA, height);
	REG_WRITE(this->base_addr, XTOGRAY_SAXI_CONTROL_ADDR_COLS_DATA, width);	
}

bool VideoBaseModule::isReady(){
	unsigned int original_state = REG_READ(this->base_addr, XTOGRAY_SAXI_CONTROL_ADDR_AP_CTRL );
	return (((original_state >> 3) & 0x1) == 1);
}

bool VideoBaseModule::isIdle(){
	unsigned int original_state = REG_READ(this->base_addr, XTOGRAY_SAXI_CONTROL_ADDR_AP_CTRL );
	return (((original_state >> 2) & 0x1) == 1);  
}

bool VideoBaseModule::isDone(){
	unsigned int original_state = REG_READ(this->base_addr, XTOGRAY_SAXI_CONTROL_ADDR_AP_CTRL );
	return (((original_state >> 1) & 0x1) == 1);
}

void VideoBaseModule::setAutoRestart(){
	unsigned int original_state = REG_READ(this->base_addr, XTOGRAY_SAXI_CONTROL_ADDR_AP_CTRL );
	REG_WRITE(this->base_addr, XTOGRAY_SAXI_CONTROL_ADDR_AP_CTRL, original_state | (1 << 7));	
}	
unsigned int VideoBaseModule::getControlRegister(){
	return REG_READ(this->base_addr, XTOGRAY_SAXI_CONTROL_ADDR_AP_CTRL );
}

void VideoBaseModule::stop(){
	REG_WRITE(this->base_addr, XTOGRAY_SAXI_CONTROL_ADDR_AP_CTRL, 0);	
}

unsigned int VideoBaseModule::getFrameHeight(){
	return REG_READ(this->base_addr, XTOGRAY_SAXI_CONTROL_ADDR_ROWS_DATA);
}

unsigned int VideoBaseModule::getFrameWidth(){
	return REG_READ(this->base_addr, XTOGRAY_SAXI_CONTROL_ADDR_COLS_DATA);
}
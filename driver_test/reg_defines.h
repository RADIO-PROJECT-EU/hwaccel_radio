#ifndef REG_DEFINES_H
#define REG_DEFINES_H
#define REG_WRITE(addr, off, val) (*(volatile unsigned int*)(addr+off)=(val))
#define REG_READ(addr,off) (*(volatile unsigned int*)(addr+off))

#endif

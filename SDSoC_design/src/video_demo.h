#ifndef VIDEO_DEMO_H_
#define VIDEO_DEMO_H_
#ifdef __cplusplus
extern "C" {
#endif

#include "xil_types.h"

#define MAX_FRAME (640*480*2)
#define STRIDE (640 * 2)

// extra defines

#define REDV   0
#define GREENV 1
#define BLUEV  2

#define SENSITIVITY 30
#define STANDING_PERSON_HEIGHT 390
#define OUTOFBED_LEFT 20
#define OUTOFBED_RIGHT 500



void DemoInitialize();
void DemoRun();

void gravity_center(unsigned char *SDSoC_FRAME1, unsigned char *SDSoC_FRAME2) {

#pragma SDS data mem_attribute(srcFrame:PHYSICAL_CONTIGUOUS|NON_CACHEABLE, destFrame:PHYSICAL_CONTIGUOUS|NON_CACHEABLE)
#pragma SDS data access_pattern(srcFrame:SEQUENTIAL, destFrame:SEQUENTIAL)

void DemoISR(void *callBackRef, void *pVideo);


#ifdef __cplusplus
};
#endif
#endif /* VIDEO_DEMO_H_ */

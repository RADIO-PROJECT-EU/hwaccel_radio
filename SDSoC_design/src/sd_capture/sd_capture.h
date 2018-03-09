#ifndef SD_CAPTURE_H_
#define SD_CAPTURE_H_
#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/

#include "xparameters.h"	/* SDK generated parameters */
#include "xsdps.h"		/* SD device driver */
#include "xil_printf.h"
#include "ff.h"
#include "xil_cache.h"
#include "xplatform_info.h"
#include <string.h>
#include "video_demo.h"

/************************** Function Prototypes ******************************/
int Sd_capture_Applications(struct Apps *apps);
void TakePicture();
void TakePicturePress(u16 destFrame[DEMO_PIXELS], int width, int height);

/************************** Variable Definitions *****************************/
static FIL fil;		/* File object */
static FATFS fatfs;
static char FileName[32] = "TEST.TXT";
static char PicName[32]="PIC.jpg";
static char PicName2[32]="PICfilter.jpg";
static char *SD_File;
static char *SD_Pic;
u32 Platform;

#ifdef __ICCARM__
#pragma data_alignment = 32
u8 DestinationAddress[10*1024*1024];
u8 SourceAddress[10*1024*1024];
#pragma data_alignment = 4
#else
u8 DestinationAddress[10*1024*1024] __attribute__ ((aligned(32)));
u8 SourceAddress[10*1024*1024] __attribute__ ((aligned(32)));
#endif

#define TEST 7
#define	_USE_STRFUNC	1

#ifdef __cplusplus
};
#endif /*SD_CAPTURE_H_ */
#endif


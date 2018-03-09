#include "video_demo.h"
#include "video_capture/video_capture.h"
#include "display_ctrl/display_ctrl.h"
#include "intc/intc.h"
#include <stdio.h>
#include "xuartps.h"
#include "math.h"
#include <ctype.h>
#include <stdlib.h>
#include "xil_types.h"
#include "xil_cache.h"
#include "xil_io.h"
#include "timer_ps/timer_ps.h"
#include "xparameters.h"
#include "xtime_l.h"
#include "sd_capture/sd_capture.h"

#include <string.h>

#define DYNCLK_BASEADDR XPAR_AXI_DYNCLK_0_BASEADDR
#define VGA_VDMA_ID XPAR_AXIVDMA_0_DEVICE_ID
#define DISP_VTC_ID XPAR_VTC_0_DEVICE_ID
#define VID_VTC_ID XPAR_VTC_1_DEVICE_ID
#define VID_GPIO_ID XPAR_AXI_GPIO_VIDEO_DEVICE_ID
#define VID_VTC_IRPT_ID XPS_FPGA3_INT_ID
#define VID_GPIO_IRPT_ID XPS_FPGA4_INT_ID
#define SCU_TIMER_ID XPAR_SCUTIMER_DEVICE_ID
#define UART_BASEADDR XPAR_PS7_UART_1_BASEADDR

#define ABS(x)          ((x>0)? x : -x)

DisplayCtrl dispCtrl;
XAxiVdma vdma;
VideoCapture videoCapt;
INTC intc;
int width;
int height;

// SDSoC Files
struct Apps applications;
int n_applications;

// Framebuffers for video data
u16 frameBuf[DISPLAY_NUM_FRAMES][640 * 480] __attribute__((aligned(0x100)));
u16 *pFrames[DISPLAY_NUM_FRAMES] __attribute__((aligned(0x100))); 

// Interrupt vector table
const ivt_t ivt[] = {
	videoGpioIvt(VID_GPIO_IRPT_ID, &videoCapt),
	videoVtcIvt(VID_VTC_IRPT_ID, &(videoCapt.vtc))
};

// extra global variables
unsigned int v_STANDING_PERSON_HEIGHT;
unsigned int v_OUTOFBED_LEFT;
unsigned int v_OUTOFBED_RIGHT;

int placed;

unsigned int x1p,x2p,y1p,y2p,cxp, cyp;
unsigned int top, centerx, centery;





int main(void)
{
	DemoInitialize();

	DemoRun();

	return 0;
}

void DemoInitialize()
{
	int Status;
	XAxiVdma_Config *vdmaConfig;
	int i;


	// yes we need triple buffering 
	for (i = 0; i < DISPLAY_NUM_FRAMES; i++)  pFrames[i] = frameBuf[i];

	TimerInitialize(SCU_TIMER_ID);  // timer to generate simple delays 

	// initialization of VDMA driver 
	vdmaConfig = XAxiVdma_LookupConfig(VGA_VDMA_ID);
	if (!vdmaConfig)
	{
		xil_printf("ERROR1\n");
		return;
	}
	Status = XAxiVdma_CfgInitialize(&vdma, vdmaConfig, vdmaConfig->BaseAddress);
	if (Status != XST_SUCCESS)
	{
		xil_printf("ERROR2\n");
		return;
	}

	// start xilinx display controller 
	Status = DisplayInitialize(&dispCtrl, &vdma, DISP_VTC_ID, DYNCLK_BASEADDR, (u8**) pFrames, STRIDE);
	if (Status != XST_SUCCESS)
	{
		xil_printf("ERROR3\n");
		return;
	}
	Status = DisplayStart(&dispCtrl);
	if (Status != XST_SUCCESS)
	{
		xil_printf("ERROR4\n");
		return;
	}

	// start xilinx Interrupt controllel 
	Status = fnInitInterruptController(&intc);
	if(Status != XST_SUCCESS) {
		xil_printf("ERROR5");
		return;
	}
	fnEnableInterrupts(&intc, &ivt[0], sizeof(ivt)/sizeof(ivt[0]));

	// start video 
	Status = VideoInitialize(&videoCapt, &intc, &vdma, VID_GPIO_ID, VID_VTC_ID, VID_VTC_IRPT_ID, (u8**) pFrames , STRIDE, 1);
	if (Status != XST_SUCCESS)
	{
		xil_printf("ERROR6\n");
		return;
	}

	// in case of resolution problem -- 
	VideoSetCallback(&videoCapt, DemoISR, &fRefresh);

	return;
}

void DemoRun()
{
	// Flush UART FIFO 
	while (XUartPs_IsReceiveData(UART_BASEADDR))
	{
		XUartPs_ReadReg(UART_BASEADDR, XUARTPS_FIFO_OFFSET);
	}

	while (1)
	{
		fRefresh = 0;
		DemoPrintMenu();

		// Wait for data on UART 
		while (!XUartPs_IsReceiveData(UART_BASEADDR) && !fRefresh)
		{}

		/* Store the first character in the UART receive FIFO and echo it */
		if (XUartPs_IsReceiveData(UART_BASEADDR))
		{
			userInput = XUartPs_ReadReg(UART_BASEADDR, XUARTPS_FIFO_OFFSET);
			xil_printf("%c", userInput);
		}
		else  //Refresh triggered by video detect interrupt
		{
			userInput = 'r';
		}

		switch (userInput)
		{
		case '1':
			DemoChangeRes();
			break;
		case '2':
			if (videoCapt.state == VIDEO_STREAMING)
				VideoStop(&videoCapt);
			else
				VideoStart(&videoCapt);
			break;
		case '3':
			if (videoCapt.state == VIDEO_DISCONNECTED)
			{
				xil_printf("\n\rERROR: HDMI Disconnected!");
				TimerDelay(500000);
			}
			else
				DemoStream();
			break;
		case 'q':
			break;
		case 'r':
			break;
		default :
			xil_printf("\n\rInvalid Selection");
			TimerDelay(500000);
		}
	}

	return;
}

/* processes two frames
 *
 * SDSoC_FRAME1     = the first frame  ( array[640*480*3] )
 * SDSoC_FRAME2     = the second frame ( array[640*480*3] )
 *
 */

void gravity_center(unsigned char *SDSoC_FRAME1, unsigned char *SDSoC_FRAME2) {
    
    unsigned int height, SDSoC_OUT1, SDSoC_OUT3;

    unsigned int SDSoC_OUT2 = 0 ;
    
// START of *OLD* process function 
    	unsigned int x,y;
	unsigned char tempframe[640*480*3];
                     
    	unsigned long int cx, cy, x1,x2,y1,y2,n,nn;

                unsigned int xx,yy;   
                unsigned int s;
                int tmpi;
                
                x1=638; x2=1;
                y1=438; y2=1;
                 
                cx = 0; cy = 0; nn = 0;
                 
                // Store rgb in tempframe (make sure we do not loose it due to annotation)
                for (y=0;y<480;y++) {
                  for (x=0;x<640;x++) {
	#pragma AP PIPELINE II = 1
                    tempframe[(x*480+y)*3+REDV  ] = SDSoC_FRAME1[(x*480+y)*3+REDV  ];
                    tempframe[(x*480+y)*3+GREENV] = SDSoC_FRAME1[(x*480+y)*3+GREENV];
                    tempframe[(x*480+y)*3+BLUEV ] = SDSoC_FRAME1[(x*480+y)*3+BLUEV ];
                  }
                }

                s=5; // size of each block
                
                // find diff in squares of size s, and find top,bot,right,left
                for (yy=s;yy<480-s;yy+=2*s) {
                  for (xx=s;xx<640-s;xx+=2*s) {
	#pragma AP PIPELINE II = 1
                                    
                    n=0;
                    
                    for (x=xx-s;x<xx+s;x++) {
                    for (y=yy-s;y<yy+s;y++) {

                    if ((abs(SDSoC_FRAME1[(x*480+y)*3+REDV  ] - SDSoC_FRAME2[(x*480+y)*3+REDV  ] ))>40) { 
                        SDSoC_FRAME1[(x*480+y)*3+REDV  ] = 70; 
                        n = n + abs(SDSoC_FRAME1[(x*480+y)*3+REDV  ] - SDSoC_FRAME2[(x*480+y)*3+REDV  ] );
                    }
                    else 
                        SDSoC_FRAME1[(x*480+y)*3+REDV  ] = SDSoC_FRAME1[(x*480+y)*3+REDV  ] /4;
                    
                    if ((abs(SDSoC_FRAME1[(x*480+y)*3+GREENV] - SDSoC_FRAME2[(x*480+y)*3+GREENV] ))>40) {
                        SDSoC_FRAME1[(x*480+y)*3+GREENV] = 70; 
                        n = n + abs(SDSoC_FRAME1[(x*480+y)*3+GREENV ] - SDSoC_FRAME2[(x*480+y)*3+GREENV ] );
                    }
                    else 
                        SDSoC_FRAME1[(x*480+y)*3+GREENV] = SDSoC_FRAME1[(x*480+y)*3+GREENV] /4;
                        
                    if ((abs(SDSoC_FRAME1[(x*480+y)*3+BLUEV ] - SDSoC_FRAME2[(x*480+y)*3+BLUEV ] ))>40) {
                        SDSoC_FRAME1[(x*480+y)*3+BLUEV ] = 70; 
                        n = n + abs(SDSoC_FRAME1[(x*480+y)*3+BLUEV  ] - SDSoC_FRAME2[(x*480+y)*3+BLUEV ] );
                    }
                    else 
                        SDSoC_FRAME1[(x*480+y)*3+BLUEV ] = SDSoC_FRAME1[(x*480+y)*3+BLUEV ] /4;
                        
                    }
                    }
                                    
                    n = n / (s*s*4);
                                    
                    if (n>SENSITIVITY) {
                        if (x<x1) x1=x;
                        if (x>x2) x2=x;
                        if (y<y1) y1=y;
                        if (y>y2) y2=y;
                        
                        cx = cx + x;
                        cy = cy + y;
                        nn = nn + 1;
                        
                        for (x=xx-s;x<xx+s;x++) {
                           for (y=yy-s;y<yy+s;y++) {
	#pragma AP PIPELINE II = 1
                                if (SDSoC_FRAME1[(x*480+y)*3+BLUEV ]<128)
                                    SDSoC_FRAME1[(x*480+y)*3+BLUEV ] = SDSoC_FRAME1[(x*480+y)*3+BLUEV ] + 128;
                                else
                                    SDSoC_FRAME1[(x*480+y)*3+BLUEV ] = 255;
                            }
                        }
                    }
                  }
                }

                
           
                // highlight bounding rectangle (top left , bot right)
                
                if ((x2>x1)&&(y2>y1)) //valid rectangle
                {
                    x1p=x1; y1p=y1; x2p=x2; y2p=y2;  top = y2p;
                    if (nn>0) { cxp=cx/nn; cyp=cy/nn; centerx=cxp; centery=cyp;}
                    
                }
                //else use previous

                //make sure we will not get crazy values for edges of rect
                if ((x1p<1)||(x2p>639)||(y1p<1)||(y2p>479))
                {
                    x1p=1;x2p=639;y1p=1;y2p=439; cxp= 320; cyp= 240;
                }
                    
                for (x=x1p;x<x2p;x++) SDSoC_FRAME1[(x*480+y1p)*3+REDV ] = 255; 
                for (x=x1p;x<x2p;x++) SDSoC_FRAME1[(x*480+y2p)*3+REDV ] = 255; 
                for (y=y1p;y<y2p;y++) SDSoC_FRAME1[(x1p*480+y)*3+REDV ] = 255; 
                for (y=y1p;y<y2p;y++) SDSoC_FRAME1[(x2p*480+y)*3+REDV ] = 255; 
                
                for (x=2;x<638;x++) {
                       SDSoC_FRAME1[(x*480+v_STANDING_PERSON_HEIGHT)*3+GREENV] = 255;
                        // SDSoC_FRAME1[(x*480+top                   )*3+BLUEV] = 255; // uncomment this to show hight in red
                }
               
	   	for (y=2;y<438;y++) {
                    SDSoC_FRAME1[(OUTOFBED_LEFT*480 +y)*3+GREENV] = 255;
                    SDSoC_FRAME1[(OUTOFBED_RIGHT*480+y)*3+GREENV] = 255;
                }
                
                
                if ((cxp<30)||(cxp>610)||(cyp<30)||(cyp>450)) {
                    // do nothing
                } else {
                  	for (x=cxp-30;x<cxp+30;x++) {
                            for (y=cyp-30;y<cyp+30;y++) {
	#pragma AP PIPELINE II = 1
                                tmpi = 255 - ((x-cxp)*(x-cxp)+(y-cyp)*(y-cyp))/3;
                                if (tmpi>0) SDSoC_FRAME1[(x*480+y)*3+GREENV ] = tmpi;
                            }
                        }
                    }
                    
                 
                // copy tempframe to b
                for (y=0;y<480;y++) {
                  for (x=0;x<640;x++) {
	#pragma AP PIPELINE II = 1
                    SDSoC_FRAME2[(x*480+y)*3+REDV  ]  = tempframe[(x*480+y)*3+REDV  ];
                    SDSoC_FRAME2[(x*480+y)*3+GREENV]  = tempframe[(x*480+y)*3+GREENV];
                    SDSoC_FRAME2[(x*480+y)*3+BLUEV ]  = tempframe[(x*480+y)*3+BLUEV ];
                  }
                }

// END of *OLD* process function 

    height = top;
    v_STANDING_PERSON_HEIGHT = STANDING_PERSON_HEIGHT ; 

    if (height>v_STANDING_PERSON_HEIGHT) SDSoC_OUT1=1; else SDSoC_OUT1=0;
   
    if ((centerx<OUTOFBED_LEFT)||(centerx>OUTOFBED_RIGHT)) SDSoC_OUT3=1; else SDSoC_OUT3=0;
    
    if ((SDSoC_OUT1==1)&&(SDSoC_OUT2==0)&&(index>9))  SDSoC_OUT2=1; 
    
	// Flush the framebuffer memory to avoid coherency problems 
	Xil_DCacheFlushRange((unsigned int) destFrame, MAX_FRAME);
}

void DemoISR(void *callBackRef, void *pVideo)
{
	char *data = (char *) callBackRef;
	*data = 1; //set fRefresh to 1
}



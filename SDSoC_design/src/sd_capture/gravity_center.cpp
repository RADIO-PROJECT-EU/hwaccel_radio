/* Capture video input from camera and display on screen */

//#define CAPTURE_PSEUDO 

//#include <stdio.h>
//#include <ctype.h>

//#define WINDOWNAME "RADIO Camera Capture/Show Application"

//#define WAITFORKEY

#define REDV   0
#define GREENV 1
#define BLUEV  2

#define SENSITIVITY 30
#define STANDING_PERSON_HEIGHT 390
#define OUTOFBED_LEFT 20
#define OUTOFBED_RIGHT 500

unsigned int v_STANDING_PERSON_HEIGHT;
unsigned int v_OUTOFBED_LEFT;
unsigned int v_OUTOFBED_RIGHT;


int placed;

unsigned int x1p,x2p,y1p,y2p,cxp, cyp;
unsigned int top, centerx, centery;

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
    
    
}



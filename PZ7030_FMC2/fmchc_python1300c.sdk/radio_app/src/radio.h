/*
 * radio.h
 *
 *  Created on: 09.02.2018
 *      Author: Fynn
 */

#ifndef SRC_RADIO_H_
#define SRC_RADIO_H_

#include <stdio.h>
#include <stdlib.h>

#include "xparameters.h"
#include "sleep.h"

#include "fmc_iic.h"
#include "fmc_hdmi_cam.h"

#include "xaxivdma.h"
#include "xaxivdma_ext.h"
#include "xosd.h"
#include "onsemi_python_sw.h"
#include "xcfa.h"

#include "xsquare_check.h"
#include "xtime_l.h"

typedef struct {
	XAxiVdma axivdma0;
	XAxiVdma axivdma1;
	XOSD osd;
	XCfa cfa;
    fmc_iic_t fmc_hdmi_cam_iic;
    fmc_hdmi_cam_t fmc_hdmi_cam;
    onsemi_python_t python_receiver;
    onsemi_python_status_t python_status_t1;
    onsemi_python_status_t python_status_t2;
    // Radio IP
	XSquare_check square_check;

	XAxiVdma *paxivdma0;
	XAxiVdma *paxivdma1;
	XOSD *posd;
	XCfa *pcfa;
    fmc_iic_t *pfmc_hdmi_cam_iic;
    fmc_hdmi_cam_t *pfmc_hdmi_cam;
	onsemi_python_t *ppython_receiver;
	// Radio IP
	XSquare_check *psquare_check;

    Xuint32 hdmii_locked;
    Xuint32 hdmii_width;
    Xuint32 hdmii_height;
    fmc_hdmi_cam_video_timing_t hdmii_timing;

    Xuint32 hdmio_width;
    Xuint32 hdmio_height;
    fmc_hdmi_cam_video_timing_t hdmio_timing;

	// general commands
    int bVerbose;

    // fmc-hami-cam commands
    Xuint32 adv7611_llc_polarity;
    Xuint32 adv7611_llc_delay;

    // cam commands
    Xuint32 cam_aec;
    Xuint32 cam_again;
    Xuint32 cam_dgain;
    Xuint32 cam_exposure;

	// video ip commands
	Xuint32 cam_bayer;

    // start commands
	u8 cam_alpha;
	u8 hdmi_alpha;



} radio_struct;

#define HEIGHT 480
#define BLOCKS_Y 48

#define WIDTH 640
#define BLOCKS_X 64

#define REDV   0
#define GREENV 1
#define BLUEV  2

extern Xuint8 fmc_hdmi_cam_hdmii_edid_content[256];

int demo_init( radio_struct *p_base );
int demo_start_hdmi_in( radio_struct *p_base );
int demo_start_cam_in( radio_struct *p_base );
int demo_init_frame_buffer( radio_struct *p_base );
int demo_stop_frame_buffer( radio_struct *p_base );
int demo_start_frame_buffer( radio_struct *p_base );

int demo_start_radio( radio_struct *p_base);
int checkSquare(volatile u8 *rgb_a, volatile u8 *rgb_b, int xx, int yy, int s, int showanno);
u64 elapsed_time_us(XTime tStart, XTime tEnd);

#endif /* SRC_RADIO_H_ */

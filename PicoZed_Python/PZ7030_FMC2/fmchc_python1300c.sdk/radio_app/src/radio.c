/*
 * radio.c
 *
 *  Created on: 09.02.2018
 *      Author: Fynn
 */

#include "radio.h"

int demo_init( radio_struct *p_base )
{
	int status;

	p_base->paxivdma0 = &(p_base->axivdma0);
	p_base->paxivdma1 = &(p_base->axivdma1);
	p_base->posd = &(p_base->osd);
	p_base->pcfa = &(p_base->cfa);
	p_base->pfmc_hdmi_cam_iic = &(p_base->fmc_hdmi_cam_iic);
	p_base->pfmc_hdmi_cam = &(p_base->fmc_hdmi_cam);
	p_base->ppython_receiver = &(p_base->python_receiver);
	p_base->psquare_check = &(p_base->square_check);
	// general command settings
	p_base->bVerbose = 0;

    // fmc-hami-cam commands
    p_base->adv7611_llc_polarity = 1;
    p_base->adv7611_llc_delay = 0;

	// cam command settings
	p_base->cam_aec = 0; // off
	p_base->cam_again = 0; // 1.0
	p_base->cam_dgain = 128; // 1.0
	p_base->cam_exposure = 90; // 90% of frame period

	// start command settings
	p_base->cam_alpha = 0xFF;
	p_base->hdmi_alpha = 0x00;

	// video ip command settings
	p_base->cam_bayer = XCFA_RGRG_COMBINATION;

	XAxiVdma_Config *paxivdma_config;
	XOSD_Config *posd_config;
	XCfa_Config *pcfa_config;

	paxivdma_config = XAxiVdma_LookupConfig(XPAR_AXIVDMA_0_DEVICE_ID);
	XAxiVdma_CfgInitialize(p_base->paxivdma0, paxivdma_config,
			paxivdma_config->BaseAddress);

	paxivdma_config = XAxiVdma_LookupConfig(XPAR_AXIVDMA_1_DEVICE_ID);
	XAxiVdma_CfgInitialize(p_base->paxivdma1, paxivdma_config,
			paxivdma_config->BaseAddress);


	posd_config = XOSD_LookupConfig(XPAR_OSD_0_DEVICE_ID);
	XOSD_CfgInitialize(p_base->posd, posd_config, posd_config->BaseAddress);

	pcfa_config = XCfa_LookupConfig(XPAR_V_CFA_0_DEVICE_ID);
	XCfa_CfgInitialize(p_base->pcfa, pcfa_config, pcfa_config->BaseAddress);

   xil_printf( "FMC-HDMI-CAM Initialization ...\n\r" );

   status = fmc_iic_xps_init(p_base->pfmc_hdmi_cam_iic,"FMC-HDMI-CAM I2C Controller", XPAR_FMC_HDMI_CAM_IIC_0_BASEADDR );
   if ( !status )
   {
	  xil_printf( "ERROR : Failed to open FMC-IIC driver\n\r" );
	  exit(0);
   }

   fmc_hdmi_cam_init(p_base->pfmc_hdmi_cam, "FMC-HDMI-CAM", p_base->pfmc_hdmi_cam_iic);
   p_base->pfmc_hdmi_cam->bVerbose = p_base->bVerbose;

   // Configure Video Clock Synthesizer
   xil_printf( "Video Clock Synthesizer Configuration ...\n\r" );
   fmc_hdmi_cam_vclk_init( p_base->pfmc_hdmi_cam );
   fmc_hdmi_cam_vclk_config( p_base->pfmc_hdmi_cam, FMC_HDMI_CAM_VCLK_FREQ_148_500_000);
   sleep(1);

    // Set HDMI output to 1080P60
    p_base->hdmio_width  = 1920;
    p_base->hdmio_height = 1080;

    //p_base->hdmio_timing.IsHDMI        = 1; // HDMI Mode
    p_base->hdmio_timing.IsHDMI        = 0; // DVI Mode
    p_base->hdmio_timing.IsEncrypted   = 0;
    p_base->hdmio_timing.IsInterlaced  = 0;
    p_base->hdmio_timing.ColorDepth    = 8;

    p_base->hdmio_timing.HActiveVideo  = 1920;
    p_base->hdmio_timing.HFrontPorch   =   88;
    p_base->hdmio_timing.HSyncWidth    =   44;
    p_base->hdmio_timing.HSyncPolarity =    1;
    p_base->hdmio_timing.HBackPorch    =  148;
    p_base->hdmio_timing.VBackPorch    =   36;

    p_base->hdmio_timing.VActiveVideo  = 1080;
    p_base->hdmio_timing.VFrontPorch   =    4;
    p_base->hdmio_timing.VSyncWidth    =    5;
    p_base->hdmio_timing.VSyncPolarity =    1;

    xil_printf( "HDMI Output Initialization ...\n\r" );
    status = fmc_hdmi_cam_hdmio_init( p_base->pfmc_hdmi_cam,
  	                             1,                      // hdmioEnable = 1
  	                             &(p_base->hdmio_timing), // pTiming
  	                             0                       // waitHPD = 0
  	                             );
    if ( !status )
    {
       xil_printf( "ERROR : Failed to init HDMI Output Interface\n\r" );
       return 0;
    }

    // Default HDMI input resolution
 	p_base->hdmii_width = p_base->hdmio_width;
 	p_base->hdmii_height = p_base->hdmio_height;

    return 1;
}

int demo_start_hdmi_in( radio_struct *p_base )
{
	int status;
    Xuint32 timeout = 100;

	xil_printf("HDMI Input Initialization\r\n");
    status = fmc_hdmi_cam_hdmii_init2( p_base->pfmc_hdmi_cam,
                                 1, // hdmiiEnable = 1
                                 1, // editInit = 1
                                 fmc_hdmi_cam_hdmii_edid_content,
                                 p_base->adv7611_llc_polarity, //0, //llc_polarity,
								 p_base->adv7611_llc_delay //0  //llc_delay
                                 );
    if ( !status )
    {
      xil_printf( "ERROR : Failed to init HDMI Input Interface\n\r" );
      exit(0);
    }

   xil_printf( "Waiting for ADV7611 to locked on incoming video ...\n\r" );
   p_base->hdmii_locked = 0;
   timeout = 100;
   while ( !(p_base->hdmii_locked) && timeout-- )
   {
      usleep(100000); // wait 100msec ...
      p_base->hdmii_locked = fmc_hdmi_cam_hdmii_get_lock( p_base->pfmc_hdmi_cam );
   }
   if ( !(p_base->hdmii_locked) )
   {
      xil_printf( "\tERROR : ADV7611 has NOT locked on incoming video, aborting !\n\r" );
   }
   else
   {
       xil_printf( "\tADV7611 Video Input LOCKED\n\r" );
       usleep(100000); // wait 100msec for timing to stabilize

       // Get Video Input information
       fmc_hdmi_cam_hdmii_get_timing( p_base->pfmc_hdmi_cam, &(p_base->hdmii_timing) );
       p_base->hdmii_width  = p_base->hdmii_timing.HActiveVideo;
       p_base->hdmii_height = p_base->hdmii_timing.VActiveVideo;
       xil_printf( "\tInput resolution = %d X %d\n\r", p_base->hdmii_width, p_base->hdmii_height );
    }

	return 0;
}

int demo_start_cam_in( radio_struct *p_base )
{
	int status;

    // PYTHON Receiver Initialization
    xil_printf( "PYTHON Receiver Initialization ...\n\r" );
	onsemi_python_init(p_base->ppython_receiver, "PYTHON-1300-C",
			XPAR_ONSEMI_PYTHON_SPI_0_S00_AXI_BASEADDR,
			XPAR_ONSEMI_PYTHON_CAM_0_S00_AXI_BASEADDR);
	p_base->ppython_receiver->uManualTap = 25; // IDELAY setting (0-31)
    //xil_printf( "PYTHON SPI Config for 10MHz ...\n\r" );
    // axi4lite_0_clk = 75MHz
    onsemi_python_spi_config( p_base->ppython_receiver, (75000000/10000000) );

    // PYTHON Sensor Initialization
    xil_printf( "PYTHON Sensor Initialization ...\n\r" );

	// Camera Power Sequence
	fmc_hdmi_cam_iic_mux( p_base->pfmc_hdmi_cam, FMC_HDMI_CAM_I2C_SELECT_CAM );
	cat9554_initialize(p_base->pfmc_hdmi_cam_iic);
	usleep(10);

	// Make sure all disable first
	cat9554_vddpix_off(p_base->pfmc_hdmi_cam_iic);
	usleep(10);
	cat9554_vdd33_off(p_base->pfmc_hdmi_cam_iic);
	usleep(10);
	cat9554_vdd18_off(p_base->pfmc_hdmi_cam_iic);
	usleep(1000);

	// Turn them on one by one
	cat9554_vdd18_en(p_base->pfmc_hdmi_cam_iic);
	usleep(10);
	cat9554_vdd33_en(p_base->pfmc_hdmi_cam_iic);
	usleep(10);
	cat9554_vddpix_en(p_base->pfmc_hdmi_cam_iic);
	usleep(10);

	onsemi_python_sensor_initialize(
			p_base->ppython_receiver, SENSOR_INIT_ENABLE, p_base->bVerbose);
	onsemi_python_sensor_initialize(
			p_base->ppython_receiver, SENSOR_INIT_STREAMON, p_base->bVerbose);
	onsemi_python_sensor_cds(p_base->ppython_receiver, p_base->bVerbose);
	onsemi_python_cam_reg_write(p_base->ppython_receiver,
			ONSEMI_PYTHON_CAM_SYNCGEN_HTIMING1_REG, 0x00300500);

	xil_printf("CFA Initialization\r\n");
	XCfa_Reset(p_base->pcfa);
	XCfa_RegUpdateEnable(p_base->pcfa);
	XCfa_Enable(p_base->pcfa);

	XCfa_SetBayerPhase(p_base->pcfa, p_base->cam_bayer);
	XCfa_SetActiveSize(p_base->pcfa, 1280, 1024);
	//XCfa_SetActiveSize(p_base->pcfa, 640, 480);

	return 1;
}

int demo_init_frame_buffer( radio_struct *p_base )
{

   // Clear frame stores
   if ( p_base->bVerbose )
   {
	   xil_printf( "Video Frame Buffer Initialization ...\n\r" );
   }
   Xuint32 frame, row, col;
   Xuint16 pixel;
   volatile Xuint16 *pStorageMem;

   // Fill HDMI frame buffer with Gray ramps
   pStorageMem = (Xuint16 *)0x10000000;
   volatile Xuint16 *pStorageMem2 = (Xuint16 *)0x18000000;
   for ( frame = 0; frame < 3; frame++ )
   {
	  //for ( row = 0; row < p_base->hdmio_height; row++ )
	  for ( row = 0; row < 2048; row++ )
	  {
		 //for ( col = 0; col < p_base->hdmio_width; col++ )
		  for ( col = 0; col < 2048; col++ )
		 {
			pixel = 0x8000 | (col & 0x00FF); // Grey ramp
			*pStorageMem++ = pixel;
		 }
	  }
   }

   // Fill Camera frame buffer with green screen
   pStorageMem = (Xuint16 *)0x18000000;
   for ( frame = 0; frame < 3; frame++ )
   {
	  //for ( row = 0; row < p_base->hdmio_height; row++ )
	  for ( row = 0; row < 2048; row++ )
	  {
		 //for ( col = 0; col < p_base->hdmio_width; col++ )
		  for ( col = 0; col < 2048; col++ )
		 {
			pixel = 0x0000; // Green
			*pStorageMem++ = pixel;
		 }
	  }
   }

   // Wait for DMA to synchronize
   Xil_DCacheFlush();

	return 1;
}

int demo_stop_frame_buffer( radio_struct *p_base )
{
	StopTransfer(p_base->paxivdma0);
	StopTransfer(p_base->paxivdma1);

	return 1;
}

int demo_start_frame_buffer( radio_struct *p_base )
{

	xil_printf("VDMA 0 Initialization\r\n");
	XAxiVdma_Reset(p_base->paxivdma0, XAXIVDMA_WRITE);
	XAxiVdma_Reset(p_base->paxivdma0, XAXIVDMA_READ);
	WriteSetup(p_base->paxivdma0, 0x10000000, 0, 1, 1, 0, 0, p_base->hdmii_width, p_base->hdmii_height, 2048, 2048);
	ReadSetup(p_base->paxivdma0, 0x10000000, 0, 1, 1, 0, 0, p_base->hdmio_width, p_base->hdmio_height, 2048, 2048);
	StartTransfer(p_base->paxivdma0);

	xil_printf("VDMA 1 Initialization\r\n");
	XAxiVdma_Reset(p_base->paxivdma1, XAXIVDMA_WRITE);
	XAxiVdma_Reset(p_base->paxivdma1, XAXIVDMA_READ);
	WriteSetup(p_base->paxivdma1, 0x18000000, 0, 1, 1, 0, 0, 1280, 1024, 2048, 2048);
	ReadSetup(p_base->paxivdma1, 0x18000000, 0, 1, 1, 0, 0, 1280, 1024, 2048, 2048);
	//WriteSetup(p_base->paxivdma1, 0x18000000, 0, 1, 1, 0, 0, 640, 480, 2048, 2048);
	//ReadSetup(p_base->paxivdma1, 0x18000000, 0, 1, 1, 0, 0, 640, 480, 2048, 2048);
	StartTransfer(p_base->paxivdma1);

	xil_printf("OSD Initialization (hdmi=0x%02X, cam=0x%02X)\r\n", p_base->hdmi_alpha, p_base->cam_alpha);
	XOSD_Reset(p_base->posd);
	XOSD_RegUpdateEnable(p_base->posd);
	XOSD_Enable(p_base->posd);

	XOSD_SetScreenSize(p_base->posd, p_base->hdmio_width, p_base->hdmio_height);
	XOSD_SetBackgroundColor(p_base->posd, 0x80, 0x80, 0x80);

	// Layer 0 - HDMI input
	XOSD_SetLayerPriority(p_base->posd, 0, XOSD_LAYER_PRIORITY_0);
	XOSD_SetLayerAlpha(p_base->posd, 0, 1, p_base->hdmi_alpha);
	XOSD_SetLayerDimension(p_base->posd, 0, 0, 0, p_base->hdmio_width, p_base->hdmio_height);

	// Layer 1 - PYTHON-1300 camera
	XOSD_SetLayerPriority(p_base->posd, 1, XOSD_LAYER_PRIORITY_1);
	XOSD_SetLayerAlpha(p_base->posd, 1, 1, p_base->cam_alpha);
	XOSD_SetLayerDimension(p_base->posd, 1, 0, 0, 1280, 1024);
	//XOSD_SetLayerDimension(p_base->posd, 1, 0, 0, 640, 480);

	XOSD_EnableLayer(p_base->posd, 0);
	XOSD_EnableLayer(p_base->posd, 1);

	return 1;
}

int demo_start_radio( radio_struct *p_base )
{
	int showanno = 0;
	XTime tStart, tEnd;
		int x, y;
		unsigned int timer_count_hw = 0;
		unsigned int timer_count_sw = 0;

		volatile u8 *rgb1_h, *rgb2_s, *rgb2_h, *rgb1_s;
		volatile u32 *n_Mat_h, *n_Mat_s;
		u32 rgb1_hp, rgb2_hp, n_Mat_hp;
		//unsigned char *rgb1_h, *rgb2_s, *rgb2_h, *rgb1_s;
		//unsigned int *n_Mat_h, *n_Mat_s;

		//RADIO IP
			xil_printf( "Initialization of RADIO IP ...\n\r" );

			if (XSquare_check_Initialize(p_base->psquare_check, XPAR_SQUARE_CHECK_0_DEVICE_ID) != XST_SUCCESS)
			{
				xil_printf("Failed to initialize RADIO IP \n\r");
				exit(0);
			}

		//XSquare_check_EnableAutoRestart(p_base->psquare_check);

		xil_printf( "... Success!\n\r" );
		rgb1_h = (u8 *)0x20000000; //(unsigned char*) malloc(WIDTH * HEIGHT * 4 * sizeof(unsigned char));
		rgb1_hp = (u32)rgb1_h;
		rgb1_s = (u8 *)0x20400000;//(unsigned char*) malloc(WIDTH * HEIGHT * 3 * sizeof(unsigned char));


		rgb2_h = (u8 *)0x20800000;//(unsigned char*) malloc(WIDTH * HEIGHT * 4 * sizeof(unsigned char));
		rgb2_hp = (u32)rgb2_h;
		rgb2_s = (u8 *)0x20C00000;//(unsigned char*) malloc(WIDTH * HEIGHT * 3 * sizeof(unsigned char));

		n_Mat_h = (u32 *)0x21000000;//(unsigned int*) malloc(BLOCKS_X * BLOCKS_Y * sizeof(unsigned int));
		n_Mat_hp = (u32) n_Mat_h;
		n_Mat_s = (u32 *)0x21100000;//(unsigned int*) malloc(BLOCKS_X * BLOCKS_Y * sizeof(unsigned int));

		xil_printf("Initializing memory\r\n");

		for (x=0; x < BLOCKS_X; x++)
		{
			for(y=0; y < BLOCKS_Y; y++)
			{
				n_Mat_h[x * BLOCKS_Y + y] = 0x00000000;
				n_Mat_s[x * BLOCKS_Y + y] = 0x00000000;
			}
		}

		xil_printf("Generating input data\r\n");
		for (x = 0; x < WIDTH; x++)
		{
			for (y = 0; y < HEIGHT; y++)
			{
				rgb1_h[(x * HEIGHT + y) * 4 + 0] = 77;
				rgb1_h[(x * HEIGHT + y) * 4 + 1] = 21;
				rgb1_h[(x * HEIGHT + y) * 4 + 2] = 133;

				rgb1_s[(x * HEIGHT + y) * 4 + 0] = 77;//rgb1_h[(x * HEIGHT + y) * 4 + 0];
				rgb1_s[(x * HEIGHT + y) * 4 + 1] = 21;//rgb1_h[(x * HEIGHT + y) * 4 + 1];
				rgb1_s[(x * HEIGHT + y) * 4 + 2] = 133;//rgb1_h[(x * HEIGHT + y) * 4 + 2];

				rgb2_h[(x * HEIGHT + y) * 4 + 0] = 70;
				rgb2_h[(x * HEIGHT + y) * 4 + 1] = 20;
				rgb2_h[(x * HEIGHT + y) * 4 + 2] = 135;

				rgb2_s[(x * HEIGHT + y) * 4 + 0] = 70;//rgb2_h[(x * HEIGHT + y) * 4 + 0];
				rgb2_s[(x * HEIGHT + y) * 4 + 1] = 20;//rgb2_h[(x * HEIGHT + y) * 4 + 1];
				rgb2_s[(x * HEIGHT + y) * 4 + 2] = 135;//rgb2_h[(x * HEIGHT + y) * 4 + 2];

			}
		}

		for (x = 7; x < 29; x++)
		{
			for (y = 8; y < 16; y++)
			{

				rgb2_h[(x * HEIGHT + y) * 4 + 0] = 150;
				rgb2_h[(x * HEIGHT + y) * 4 + 1] = 77;
				rgb2_h[(x * HEIGHT + y) * 4 + 2] = 61;

				rgb2_s[(x * HEIGHT + y) * 4 + 0] = 150;//rgb2_h[(x * HEIGHT + y) * 4 + 0];
				rgb2_s[(x * HEIGHT + y) * 4 + 1] = 77;//rgb2_h[(x * HEIGHT + y) * 4 + 1];
				rgb2_s[(x * HEIGHT + y) * 4 + 2] = 61;//rgb2_h[(x * HEIGHT + y) * 4 + 2];

			}
		}

		for (x = 120; x < 154; x++)
		{
			for (y = 110; y < 133; y++)
			{

				rgb2_h[(x * HEIGHT + y) * 4 + 0] = 33;
				rgb2_h[(x * HEIGHT + y) * 4 + 1] = 86;
				rgb2_h[(x * HEIGHT + y) * 4 + 2] = 44;

				rgb2_s[(x * HEIGHT + y) * 4 + 0] = 33;//rgb2_h[(x * HEIGHT + y) * 4 + 0];
				rgb2_s[(x * HEIGHT + y) * 4 + 1] = 86;//rgb2_h[(x * HEIGHT + y) * 4 + 1];
				rgb2_s[(x * HEIGHT + y) * 4 + 2] = 44;//rgb2_h[(x * HEIGHT + y) * 4 + 2];

			}
		}

		for (x = 550; x < 620; x++)
		{
			for (y = 8; y < 35; y++)
			{

				rgb2_h[(x * HEIGHT + y) * 4 + 0] = 170;
				rgb2_h[(x * HEIGHT + y) * 4 + 1] = 40;
				rgb2_h[(x * HEIGHT + y) * 4 + 2] = 110;

				rgb2_s[(x * HEIGHT + y) * 4 + 0] = 170;//rgb2_h[(x * HEIGHT + y) * 4 + 0];
				rgb2_s[(x * HEIGHT + y) * 4 + 1] = 40;//rgb2_h[(x * HEIGHT + y) * 4 + 1];
				rgb2_s[(x * HEIGHT + y) * 4 + 2] = 110;//rgb2_h[(x * HEIGHT + y) * 4 + 2];

			}
		}

		// Software
		xil_printf("Software - Start\r\n");
		XTime_GetTime(&tStart);
		unsigned int xx, yy;
		int s = 5;
		for (xx = s; xx <= WIDTH - s; xx += 2 * s)
		{
			for (yy = s; yy <= HEIGHT - s; yy += 2 * s)
			{

				int n = 0;
				n = checkSquare(rgb1_s, rgb2_s, yy, xx, s, showanno) / (s * s * 4);

				n_Mat_s[(yy - 5) / 10 * BLOCKS_Y + (xx - 5) / 10] = n;

				if (n > 30)
				{
					if (showanno > 0)
					{
						for (x = xx - s; x < xx + s; x++)
						{
							for (y = yy - s; y < yy + s; y++)
							{
								if (rgb1_s[(x * HEIGHT + y) * 4 + BLUEV] < 128) rgb1_s[(x * HEIGHT + y) * 4 + BLUEV] = rgb1_s[(x * HEIGHT + y) * 4 + BLUEV] + 128;
								else rgb1_s[(x * HEIGHT + y) * 4 + BLUEV] = 255;
							}
						}
					}
				}
			}
		}
		XTime_GetTime(&tEnd);
		timer_count_sw += elapsed_time_us(tStart, tEnd);
		xil_printf("Software - Done\r\n");

		// Hardware
		//Xil_DCacheFlush();

		xil_printf("Hardware - Start\r\n");

				XSquare_check_Set_rgb1_in(p_base->psquare_check, rgb1_hp);
				//*rgb1_h = XSquare_check_Get_rgb1_in(p_base->psquare_check);
				XSquare_check_Set_rgb2_in(p_base->psquare_check, rgb2_hp);
				XSquare_check_Set_n_Mat_out(p_base->psquare_check, n_Mat_hp);
				//*n_Mat_h = XSquare_check_Get_n_Mat_out(p_base->psquare_check);

				XTime_GetTime(&tStart);
				XSquare_check_Start(p_base->psquare_check);
				while (!XSquare_check_IsDone(p_base->psquare_check));
				XTime_GetTime(&tEnd);


		xil_printf("Hardware - Done\r\n");

		timer_count_hw += elapsed_time_us(tStart, tEnd);
		//Xil_DCacheInvalidate(); //verzögert sehr stark!

		int z, isDifferent = 0;
		for (x = 0; x < WIDTH; x++)
		{
			for (y = 0; y < HEIGHT; y++)
			{
				for (z = 0; z < 3; z++)
				{
					if (rgb1_h[(x * HEIGHT + y) * 4 + z] != rgb1_s[(x * HEIGHT + y) * 4 + z])
					{
						isDifferent = 1;
						xil_printf("Difference RGB: x = %d, y = %d, z = %d --> Software: %d, Kernel: %d\r\n", x, y, z, rgb1_s[(x * HEIGHT + y) * 4 + z], rgb1_h[(x * HEIGHT + y) * 4 + z]);
					}
				}
			}
		}

		for (x = 0; x < BLOCKS_X; x++)
		{
			for (y = 0; y < BLOCKS_Y; y++)
			{
				if ((n_Mat_h[x * BLOCKS_Y + y] != 0 && n_Mat_h[x * BLOCKS_Y + y] < 255 * 3) || n_Mat_s[x * BLOCKS_Y + y] != 0)
				{
					if (n_Mat_h[x * BLOCKS_Y + y] != n_Mat_s[x * BLOCKS_Y + y])
					{
						//isDifferent = 1;
						xil_printf("Difference N: \r\n");
						xil_printf("Active square (HW): %d %d %d\r\n", x, y, n_Mat_h[x * BLOCKS_Y + y]);
						xil_printf("Active square (SW): %d %d %d\r\n", x, y, n_Mat_s[x * BLOCKS_Y + y]);
					}
				}
			}
		}

		if (isDifferent)
		{
			xil_printf("-> ERROR\r\n");
		}
		else
		{
			xil_printf("-> OK\r\n");
		}

		xil_printf("\nTime - Software: %d \n", timer_count_sw);
		xil_printf("Time - Hardware: %d \r\n---------------------------\r\n", timer_count_hw);

	return 1;
}

int checkSquare(volatile u8 *rgb_a, volatile u8 *rgb_b, int xx, int yy, int s, int showanno)
{
	int n = 0;
	unsigned int x, y;
	for (x = xx - s; x < xx + s; x++)
	{
		for (y = yy - s; y < yy + s; y++)
		{
			if ((abs(rgb_a[(x * HEIGHT + y) * 4 + REDV] - rgb_b[(x * HEIGHT + y) * 4 + REDV])) > 40)
			{
				n = n + abs(rgb_a[(x * HEIGHT + y) * 4 + REDV] - rgb_b[(x * HEIGHT + y) * 4 + REDV]);
				if (showanno > 0) rgb_a[(x * HEIGHT + y) * 4 + REDV] = 70;
			}
			else if (showanno > 0) rgb_a[(x * HEIGHT + y) * 4 + REDV] = rgb_a[(x * HEIGHT + y) * 4 + REDV] / 4;

			if ((abs(rgb_a[(x * HEIGHT + y) * 4 + GREENV] - rgb_b[(x * HEIGHT + y) * 4 + GREENV])) > 40)
			{
				n = n + abs(rgb_a[(x * HEIGHT + y) * 4 + GREENV] - rgb_b[(x * HEIGHT + y) * 4 + GREENV]);
				if (showanno > 0) rgb_a[(x * HEIGHT + y) * 4 + GREENV] = 70;
			}
			else if (showanno > 0) rgb_a[(x * HEIGHT + y) * 4 + GREENV] = rgb_a[(x * HEIGHT + y) * 4 + GREENV] / 4;

			if ((abs(rgb_a[(x * HEIGHT + y) * 4 + BLUEV] - rgb_b[(x * HEIGHT + y) * 4 + BLUEV])) > 40)
			{
				n = n + abs(rgb_a[(x * HEIGHT + y) * 4 + BLUEV] - rgb_b[(x * HEIGHT + y) * 4 + BLUEV]);
				if (showanno > 0) rgb_a[(x * HEIGHT + y) * 4 + BLUEV] = 70;
			}
			else if (showanno > 0)
			{
				rgb_a[(x * HEIGHT + y) * 4 + BLUEV] = rgb_a[(x * HEIGHT + y) * 4 + BLUEV] / 4;
			}
		}
	}

	return n;
}

u64 elapsed_time_us(XTime tStart, XTime tEnd)
{
	u64 time_elapsed = (tEnd - tStart)*1000000;
	time_elapsed /= COUNTS_PER_SECOND;
	return time_elapsed;
}

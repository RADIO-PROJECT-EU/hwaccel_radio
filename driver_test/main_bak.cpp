#include <iostream>
#include <unistd.h>
#include <stdint.h>
#include <stdlib.h>

#include <fcntl.h>
#include <sys/mman.h>
#include <errno.h>

#include <sys/io.h>
#include <string.h>

#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>

#include "dma.h"
#include "videoBaseModule.h"
#include "reg_defines.h"
#define DMA0_BASE_ADDR 0x43010000
#define EQUALIZE_HIST_BASE_ADDR 0x43020000

#define IN_IMG_ADDR    		0x1F400000

#define MAX_IMAGE_WIDTH  	800
#define MAX_IMAGE_HEIGHT 	600
#define INPUT_CHANNELS		3
#define MAX_IMAGE_SIZE 		MAX_IMAGE_WIDTH * MAX_IMAGE_HEIGHT * INPUT_CHANNELS
#define OUT_IMG_ADDR 		0x1F5E0000
//#define OUT_IMG_ADDR    	IN_IMG_ADDR + MAX_IMAGE_SIZE

using namespace std;

int map_adress(unsigned int **base_ptr, unsigned int memory_offset, int fd, unsigned int mapsize = 0x20) {
	*base_ptr = (unsigned int *) mmap(NULL, mapsize, PROT_READ|PROT_WRITE, MAP_SHARED, fd, (off_t) memory_offset);

	if (*base_ptr == MAP_FAILED ) {
		*base_ptr = NULL;
		cout << "map error " << errno << endl;
//		cerr << "memory mapping failed." << endl;
		return -1;
	}

	return 0;
}

void unmap_address(void **instance) {
	munmap(*instance, 0x20);
}
using namespace cv;

int main(int argc, char **argv){
	bool isReady = true;
	
	int fd = open("/dev/mem" ,O_RDWR);
	if(fd < 0){
		cerr << "Can't open /dev/mem." << endl;
		return -1;
	}
	
	unsigned int *vdma_ptr = (unsigned int*)0xFFFFFFFF;
	unsigned int *baseModule_ptr = (unsigned int*)0xFFFFFFFF;
	unsigned int *in_base_ptr = (unsigned int*)0xFFFFFFFF;
	unsigned int *out_base_ptr = (unsigned int*)0xFFFFFFFF;	

	map_adress(&in_base_ptr, IN_IMG_ADDR, fd, MAX_IMAGE_SIZE);
	map_adress(&out_base_ptr, OUT_IMG_ADDR, fd, MAX_IMAGE_SIZE);

	map_adress(&vdma_ptr, DMA0_BASE_ADDR, fd, 0x100);
	map_adress(&baseModule_ptr, EQUALIZE_HIST_BASE_ADDR, fd, 0x100);

	if(	vdma_ptr == NULL || baseModule_ptr == NULL 
	    || in_base_ptr ==  NULL || out_base_ptr == NULL
		 )
	{
		cout << "mapping failed" << endl;
		isReady = false;
	}
	cout << vdma_ptr << " " << baseModule_ptr << " " << in_base_ptr 
		  << " " << out_base_ptr << " " << endl;
		  
	if(isReady){		
		//OPENCV STUFF FOR MOVING THE IMAGE TO/FROM RAM
		cv::Mat readImage = cv::imread("input.jpg");
		if(readImage.data == NULL){
			cout << "can't open image" << endl;
			return -1;
		}
		cv::Mat inImage(readImage.size() , CV_8UC3, in_base_ptr);
		cv::Mat outImage(readImage.size() , CV_8UC1, out_base_ptr);
		
		//outImage.setTo(Scalar(255,255,255));
		readImage.copyTo(inImage);		
		cv::imwrite("output1.jpg", inImage);
		// ------------------ END OPENCV ---------------------
			
		//resetDMA(vdma_ptr);		
		
		configDMA(vdma_ptr, IN_IMG_ADDR, OUT_IMG_ADDR,
				inImage.rows, inImage.cols,
				outImage.rows, outImage.cols);

		cout << "IN_ADDR: " << (unsigned int*) IN_IMG_ADDR << endl
		     << "OUT_ADDR: " << (unsigned int*) OUT_IMG_ADDR << endl
			 << "in_size: " << inImage.rows << "x" << inImage.cols << endl
			 << "out_size: " << outImage.rows << "x" << outImage.cols << endl << endl;

		VideoBaseModule grayEqualize(baseModule_ptr);
		grayEqualize.setFrameSize(inImage.rows, inImage.cols);
	
		grayEqualize.start();
		//bool done = false;
		
		while(!grayEqualize.isDone()){
			usleep(1000);
		}
		//sleep(1);
		cv::imwrite("output.jpg", outImage);
	}

	close(fd);

	if(!isReady){
		return -2;
	}

	return 0;
}



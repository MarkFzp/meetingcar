#ifndef _ALLHEADER_H_
#define _ALLHEADER_H_


#include "common.h" 
#include "include.h"
#include "Ultrasonic.h"
#include "filter.h"
#include "FTM.h"
#include "camera.h"

extern uint8 img[CAMERA_H][CAMERA_W];
extern uint8 imgbuff[CAMERA_SIZE];                             //定义存储接收图像的数组

void IO_init();
void PIT2_IRQHandler(void);
void Task_50Hz();
void system_init();
void Task_50Hz_init();
float f_abs(float a);

void data_transmit();
void control();
void echo_speed_process();
extern struct _echo echo_speed,filter_echo_speed;
extern struct _pid steer;
extern int left_duty,right_duty;
extern int left_line[60],right_line[60],length[60],area;
#endif



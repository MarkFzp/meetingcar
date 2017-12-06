#ifndef _ALLHEADER_H_
#define _ALLHEADER_H_


#include "common.h" 
#include "include.h"
#include "camera.h"
#include "systeminit.h"
#include "image_process.h"
#include "control.h"
#include "task.h"

/***********************************
* @brief    全局变量定义  ↓  **                       
************************************/

extern uint8 imgbuff[CAMERA_SIZE];              //定义存储接收图像的数组
extern uint8 img[CAMERA_H][CAMERA_W];


extern float img_mid_x,img_mid_y;//质心 x,y值

#define  key1() gpio_get(PTD8)
#define  key2() gpio_get(PTD6)
#define  key3() gpio_get(PTD4)
#define  key4() gpio_get(PTD2)
#define  key5() gpio_get(PTD1)
#define  key6() gpio_get(PTD3)
#define  key7() gpio_get(PTD5)
#define  key8() gpio_get(PTD7)
/*
    宏定义
 S3010_FTM   FTM2
 S3010_CH    FTM_CH0
 S3010_HZ    (110)
*/


/*
* @brief   以上为全局变量    ↑                    
*/


#endif





/***********************************
* @brief    摄像头初始化函数   ↓  **                       
************************************/


/*
* @brief   以上为摄像头初始化    ↑                    
*/

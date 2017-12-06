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
* @brief    ȫ�ֱ�������  ��  **                       
************************************/

extern uint8 imgbuff[CAMERA_SIZE];              //����洢����ͼ�������
extern uint8 img[CAMERA_H][CAMERA_W];


extern float img_mid_x,img_mid_y;//���� x,yֵ

#define  key1() gpio_get(PTD8)
#define  key2() gpio_get(PTD6)
#define  key3() gpio_get(PTD4)
#define  key4() gpio_get(PTD2)
#define  key5() gpio_get(PTD1)
#define  key6() gpio_get(PTD3)
#define  key7() gpio_get(PTD5)
#define  key8() gpio_get(PTD7)
/*
    �궨��
 S3010_FTM   FTM2
 S3010_CH    FTM_CH0
 S3010_HZ    (110)
*/


/*
* @brief   ����Ϊȫ�ֱ���    ��                    
*/


#endif





/***********************************
* @brief    ����ͷ��ʼ������   ��  **                       
************************************/


/*
* @brief   ����Ϊ����ͷ��ʼ��    ��                    
*/

#ifndef _CAMERA_H_
#define _CAMERA_H_


#define BLACK1 0
#define WHITE1 1

extern uint8 imgbuff[CAMERA_SIZE];                             //定义存储接收图像的数组
extern uint8 img[CAMERA_H][CAMERA_W];





void cameraInit(void);
void PORTA_IRQHandler(void);
void DMA0_IRQHandler();

void img_extract(void *dst, void *src, uint32_t srclen);

#endif
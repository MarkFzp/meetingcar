

#ifndef _OLED_H_
#define _OLED_H_


#include "include.h"


#define LED_IMAGE_WHITE       0
#define LED_IMAGE_BLACK       1

#define X_WIDTH 128
#define Y_WIDTH 64

#define OLED_SCL_1  (gpio_set (PTA14, 1))
#define OLED_SCL_0  (gpio_set (PTA14, 0))
#define OLED_SDA_1  (gpio_set (PTA15, 1))
#define OLED_SDA_0  (gpio_set (PTA15, 0))
#define OLED_RST_1  (gpio_set (PTA16, 1))
#define OLED_RST_0  (gpio_set (PTA16, 0))
#define OLED_DC_1   (gpio_set (PTA17, 1))
#define OLED_DC_0   (gpio_set (PTA17, 0))

//#define BitGet(Number,pos) ((Number) >> (pos)&1)



void OLED_WrDat(unsigned f,int data);

void OLED_WrCmd(int cmd);

void OLED_Set_Pos(int x,int y);

void OLED_Fill(int bmp_data);

void OLED_CLS(void);

void OLED_DLY_ms(int ms);

void OLED_Init(void);

void OLED_PutPixel(unsigned int x,unsigned int y);

void OLED_Rectangle(unsigned int x1,unsigned int y1,unsigned int x2,unsigned int y2,unsigned int gif);

void OLED_P6x8(unsigned int x,unsigned int y,char ch[]);

void OLED_P6x8Str(uint8 x,uint8 y,uint8 ch[]);

void Draw_BMP();

void OLED_Write_Num(int x,int y,int num);

void Draw_img_black(uint8 *pucTable);

void Image_Show(uint8 age[60][80]);










#endif



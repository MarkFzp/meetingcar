

#include "OLED.h"
#include "camera.h"


char text[5];



//int xa,ya;

const unsigned int F6x8[][6] =
{
    { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },   // sp
    { 0x00, 0x00, 0x00, 0x2f, 0x00, 0x00 },   // !
    { 0x00, 0x00, 0x07, 0x00, 0x07, 0x00 },   // "
    { 0x00, 0x14, 0x7f, 0x14, 0x7f, 0x14 },   // #
    { 0x00, 0x24, 0x2a, 0x7f, 0x2a, 0x12 },   // $
    { 0x00, 0x62, 0x64, 0x08, 0x13, 0x23 },   // %
    { 0x00, 0x36, 0x49, 0x55, 0x22, 0x50 },   // &
    { 0x00, 0x00, 0x05, 0x03, 0x00, 0x00 },   // '
    { 0x00, 0x00, 0x1c, 0x22, 0x41, 0x00 },   // (
    { 0x00, 0x00, 0x41, 0x22, 0x1c, 0x00 },   // )
    { 0x00, 0x14, 0x08, 0x3E, 0x08, 0x14 },   // *
    { 0x00, 0x08, 0x08, 0x3E, 0x08, 0x08 },   // +
    { 0x00, 0x00, 0x00, 0xA0, 0x60, 0x00 },   // ,
    { 0x00, 0x08, 0x08, 0x08, 0x08, 0x08 },   // -
    { 0x00, 0x00, 0x60, 0x60, 0x00, 0x00 },   // .
    { 0x00, 0x20, 0x10, 0x08, 0x04, 0x02 },   // /
    { 0x00, 0x3E, 0x51, 0x49, 0x45, 0x3E },   // 0
    { 0x00, 0x00, 0x42, 0x7F, 0x40, 0x00 },   // 1
    { 0x00, 0x42, 0x61, 0x51, 0x49, 0x46 },   // 2
    { 0x00, 0x21, 0x41, 0x45, 0x4B, 0x31 },   // 3
    { 0x00, 0x18, 0x14, 0x12, 0x7F, 0x10 },   // 4
    { 0x00, 0x27, 0x45, 0x45, 0x45, 0x39 },   // 5
    { 0x00, 0x3C, 0x4A, 0x49, 0x49, 0x30 },   // 6
    { 0x00, 0x01, 0x71, 0x09, 0x05, 0x03 },   // 7
    { 0x00, 0x36, 0x49, 0x49, 0x49, 0x36 },   // 8
    { 0x00, 0x06, 0x49, 0x49, 0x29, 0x1E },   // 9
    { 0x00, 0x00, 0x36, 0x36, 0x00, 0x00 },   // :
    { 0x00, 0x00, 0x56, 0x36, 0x00, 0x00 },   // ;
    { 0x00, 0x08, 0x14, 0x22, 0x41, 0x00 },   // <
    { 0x00, 0x14, 0x14, 0x14, 0x14, 0x14 },   // =
    { 0x00, 0x00, 0x41, 0x22, 0x14, 0x08 },   // >
    { 0x00, 0x02, 0x01, 0x51, 0x09, 0x06 },   // ?
    { 0x00, 0x32, 0x49, 0x59, 0x51, 0x3E },   // @
    { 0x00, 0x7C, 0x12, 0x11, 0x12, 0x7C },   // A
    { 0x00, 0x7F, 0x49, 0x49, 0x49, 0x36 },   // B
    { 0x00, 0x3E, 0x41, 0x41, 0x41, 0x22 },   // C
    { 0x00, 0x7F, 0x41, 0x41, 0x22, 0x1C },   // D
    { 0x00, 0x7F, 0x49, 0x49, 0x49, 0x41 },   // E
    { 0x00, 0x7F, 0x09, 0x09, 0x09, 0x01 },   // F
    { 0x00, 0x3E, 0x41, 0x49, 0x49, 0x7A },   // G
    { 0x00, 0x7F, 0x08, 0x08, 0x08, 0x7F },   // H
    { 0x00, 0x00, 0x41, 0x7F, 0x41, 0x00 },   // I
    { 0x00, 0x20, 0x40, 0x41, 0x3F, 0x01 },   // J
    { 0x00, 0x7F, 0x08, 0x14, 0x22, 0x41 },   // K
    { 0x00, 0x7F, 0x40, 0x40, 0x40, 0x40 },   // L
    { 0x00, 0x7F, 0x02, 0x0C, 0x02, 0x7F },   // M
    { 0x00, 0x7F, 0x04, 0x08, 0x10, 0x7F },   // N
    { 0x00, 0x3E, 0x41, 0x41, 0x41, 0x3E },   // O
    { 0x00, 0x7F, 0x09, 0x09, 0x09, 0x06 },   // P
    { 0x00, 0x3E, 0x41, 0x51, 0x21, 0x5E },   // Q
    { 0x00, 0x7F, 0x09, 0x19, 0x29, 0x46 },   // R
    { 0x00, 0x46, 0x49, 0x49, 0x49, 0x31 },   // S
    { 0x00, 0x01, 0x01, 0x7F, 0x01, 0x01 },   // T
    { 0x00, 0x3F, 0x40, 0x40, 0x40, 0x3F },   // U
    { 0x00, 0x1F, 0x20, 0x40, 0x20, 0x1F },   // V
    { 0x00, 0x3F, 0x40, 0x38, 0x40, 0x3F },   // W
    { 0x00, 0x63, 0x14, 0x08, 0x14, 0x63 },   // X
    { 0x00, 0x07, 0x08, 0x70, 0x08, 0x07 },   // Y
    { 0x00, 0x61, 0x51, 0x49, 0x45, 0x43 },   // Z
    { 0x00, 0x00, 0x7F, 0x41, 0x41, 0x00 },   // [
    { 0x00, 0x55, 0x2A, 0x55, 0x2A, 0x55 },   // 55
    { 0x00, 0x00, 0x41, 0x41, 0x7F, 0x00 },   // ]
    { 0x00, 0x04, 0x02, 0x01, 0x02, 0x04 },   // ^
    { 0x00, 0x40, 0x40, 0x40, 0x40, 0x40 },   // _
    { 0x00, 0x00, 0x01, 0x02, 0x04, 0x00 },   // '
    { 0x00, 0x20, 0x54, 0x54, 0x54, 0x78 },   // a
    { 0x00, 0x7F, 0x48, 0x44, 0x44, 0x38 },   // b
    { 0x00, 0x38, 0x44, 0x44, 0x44, 0x20 },   // c
    { 0x00, 0x38, 0x44, 0x44, 0x48, 0x7F },   // d
    { 0x00, 0x38, 0x54, 0x54, 0x54, 0x18 },   // e
    { 0x00, 0x08, 0x7E, 0x09, 0x01, 0x02 },   // f
    { 0x00, 0x18, 0xA4, 0xA4, 0xA4, 0x7C },   // g
    { 0x00, 0x7F, 0x08, 0x04, 0x04, 0x78 },   // h
    { 0x00, 0x00, 0x44, 0x7D, 0x40, 0x00 },   // i
    { 0x00, 0x40, 0x80, 0x84, 0x7D, 0x00 },   // j
    { 0x00, 0x7F, 0x10, 0x28, 0x44, 0x00 },   // k
    { 0x00, 0x00, 0x41, 0x7F, 0x40, 0x00 },   // l
    { 0x00, 0x7C, 0x04, 0x18, 0x04, 0x78 },   // m
    { 0x00, 0x7C, 0x08, 0x04, 0x04, 0x78 },   // n
    { 0x00, 0x38, 0x44, 0x44, 0x44, 0x38 },   // o
    { 0x00, 0xFC, 0x24, 0x24, 0x24, 0x18 },   // p
    { 0x00, 0x18, 0x24, 0x24, 0x18, 0xFC },   // q
    { 0x00, 0x7C, 0x08, 0x04, 0x04, 0x08 },   // r
    { 0x00, 0x48, 0x54, 0x54, 0x54, 0x20 },   // s
    { 0x00, 0x04, 0x3F, 0x44, 0x40, 0x20 },   // t
    { 0x00, 0x3C, 0x40, 0x40, 0x20, 0x7C },   // u
    { 0x00, 0x1C, 0x20, 0x40, 0x20, 0x1C },   // v
    { 0x00, 0x3C, 0x40, 0x30, 0x40, 0x3C },   // w
    { 0x00, 0x44, 0x28, 0x10, 0x28, 0x44 },   // x
    { 0x00, 0x1C, 0xA0, 0xA0, 0xA0, 0x7C },   // y
    { 0x00, 0x44, 0x64, 0x54, 0x4C, 0x44 },   // z
    { 0x14, 0x14, 0x14, 0x14, 0x14, 0x14 }    // horiz lines
};

const unsigned char bmp[1024] = { /* 0X12,0X01,0X00,0X80,0X00,0X39, */
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X01,0X03,0X07,0X07,
0X0F,0X0F,0X0F,0X1F,0X1F,0X0F,0X0F,0X0F,0X07,0X03,0X01,0X08,0X0E,0X07,0X03,0X01,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X03,0X07,0X07,0X0F,0X0F,0X1E,0X1E,0X1C,0X1C,
0X1E,0X1E,0X0E,0X0F,0X0F,0X07,0X03,0X01,0X00,0X00,0X00,0X00,0X00,0X00,0X01,0X01,
0X01,0X01,0X01,0X01,0X01,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X01,0X01,0X01,0X01,
0X01,0X01,0X01,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X01,0X01,0X01,0X01,0X01,0X01,
0X01,0X00,0X01,0X01,0X01,0X00,0X00,0X01,0X01,0X01,0X00,0X01,0X01,0X01,0X01,0X01,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X07,0X0F,0X1F,0X1F,0X3F,0X3F,0X7F,0X7F,
0X78,0X60,0X40,0X80,0X80,0X06,0X08,0X00,0X00,0X00,0X00,0X80,0X00,0XC0,0XF0,0XFC,
0XF9,0X03,0X00,0X00,0X00,0X3F,0XFF,0XFF,0XFF,0XC0,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X80,0XE1,0XFF,0XFF,0X7F,0X00,0X00,0X3F,0X7F,0XFF,0XE1,0XC0,
0XC0,0XC0,0XC0,0XC0,0XE0,0XE1,0X61,0X21,0X00,0X1F,0X7F,0XFF,0XED,0XCC,0X8C,0X8C,
0X8C,0XCC,0XCC,0XFC,0XFC,0X3C,0X00,0X0C,0X7F,0XFF,0XF3,0XE0,0XC0,0XC0,0XC0,0XC0,
0XC0,0XE1,0XFF,0XFF,0XFF,0X00,0X00,0XFF,0XFF,0XFF,0XE0,0XC0,0XC0,0XC0,0XC0,0XFF,
0XFF,0X7F,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0XFE,0XFF,0XFF,0XFC,0XF8,0XF1,0XE7,0XDF,
0X1F,0X07,0X03,0X01,0X01,0XC0,0X30,0X30,0X18,0X18,0X18,0X08,0X30,0X30,0XF0,0XE1,
0XC1,0X03,0X07,0X0F,0X07,0X03,0XC1,0XE0,0XF0,0XF8,0X7C,0X3C,0X1C,0X1E,0X1E,0X1E,
0X1E,0X1E,0X1C,0X3C,0X78,0XF8,0XF0,0XE0,0X80,0X00,0X00,0X00,0X80,0XC0,0XE1,0XE1,
0XF3,0X72,0X72,0XE2,0XE3,0XE3,0XC1,0X01,0X00,0X00,0X80,0XC0,0XE0,0XE0,0X70,0X70,
0X70,0X60,0XE0,0XC0,0XC0,0X00,0X00,0X00,0X80,0XC3,0XE3,0XE0,0XE0,0X70,0X73,0XE0,
0XE0,0XC0,0XE0,0XE0,0XE0,0X00,0X00,0XE0,0XE0,0XE0,0X00,0X00,0X00,0X00,0X00,0XE0,
0XE0,0XE0,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X80,0X00,0X00,0X7C,0XFE,0XFF,0XFF,
0XFF,0XFF,0XFF,0XFF,0XFF,0XFF,0XFF,0X60,0X00,0X7C,0X7F,0X7F,0X7F,0XFF,0XFF,0XFF,
0XFF,0XFF,0XFF,0XFF,0XFF,0XFF,0XFF,0XFF,0XFF,0X7F,0X7F,0X7F,0X3F,0X3F,0X3F,0X3F,
0X3F,0X3F,0X7F,0X3F,0X3F,0X3F,0X1F,0X0E,0X00,0X00,0X00,0X1F,0X71,0XC0,0X80,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X80,0XE0,0X7F,0X0E,0X00,0X7F,0X7F,0X30,0X60,
0X40,0X40,0X40,0X60,0X20,0X39,0X0F,0X00,0X40,0X7F,0XFF,0X40,0X40,0X00,0X7F,0X00,
0X00,0X1F,0X30,0X60,0X40,0X40,0X40,0X40,0X20,0X30,0X00,0X00,0X38,0X6C,0X44,0X46,
0X62,0X01,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X80,
0XC0,0XE0,0XF0,0XF0,0XF8,0XF8,0XFC,0X3C,0X06,0X00,0X80,0XE0,0XF8,0XFC,0XFE,0XFF,
0XFF,0XFF,0XFF,0XFF,0XFF,0XFF,0XFF,0XFF,0XFF,0XFF,0XFF,0XFE,0XFE,0XFE,0XFC,0XFC,
0XF8,0XF8,0XF0,0XE0,0XE0,0XC0,0X00,0X00,0X00,0X00,0X00,0X80,0XC0,0X60,0X30,0X18,
0X08,0X08,0X08,0X08,0X08,0X18,0X18,0X30,0X60,0XC0,0X00,0X00,0XFC,0XFC,0XC0,0X40,
0X60,0X20,0X20,0X60,0X40,0X80,0X00,0X00,0X00,0XE0,0XE0,0X00,0X00,0X00,0XE0,0X00,
0X00,0X80,0XC0,0X40,0X60,0X20,0X20,0X60,0X40,0X80,0X00,0X00,0XC0,0X60,0X20,0X20,
0X60,0XC0,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X80,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
};









void OLED_WrDat(unsigned f,int data)
{
     int i=8;
     OLED_DC_1;
     OLED_SCL_0;
     if(f==0)
     {
       while(i--)
      {
         if(data&0x80)
           OLED_SDA_1;
         else
           OLED_SDA_0;

         OLED_SCL_1;;
         OLED_SCL_0;;
         data<<=1;
       }
     }
     else
     {
        while(i--)
          {
            if(data&0x80)
              OLED_SDA_0;
            else
               OLED_SDA_1;

             OLED_SCL_1;;
             OLED_SCL_0;;
             data<<=1;
           }

     }
}

void OLED_WrCmd(int cmd)
{
     int i=8;
     OLED_DC_0;
     OLED_SCL_0;
     while(i--)
     {
       if(cmd&0x80)
         OLED_SDA_1;
       else
         OLED_SDA_0;

       OLED_SCL_1;
       OLED_SCL_0;
       cmd<<=1;
     }
}

void OLED_Set_Pos(int x,int y)
{
     OLED_WrCmd(0xb0+y);
     OLED_WrCmd(((x&0xf0)>>4)|0x10);
     OLED_WrCmd((x&0x0f)|0x01);
}

void OLED_Fill(int bmp_data)
{
     int y,x;
     for(y=0;y<8;y++)
     {
        OLED_WrCmd(0xb0+y);
        OLED_WrCmd(0x01);
        OLED_WrCmd(0x10);
        for(x=0;x<X_WIDTH;x++)
            OLED_WrDat(0,bmp_data);
     }
}

void OLED_CLS(void)
{
    int y,x;
    for(y=0;y<8;y++)
    {
        OLED_WrCmd(0xb0+y);
        OLED_WrCmd(0x01);
        OLED_WrCmd(0x10);
        for(x=0;x<X_WIDTH;x++)
            OLED_WrDat(0,0);
    }
}
void OLED_DLY_ms(int ms)
{
     int a;
     while(ms)
     {
       a=1335;
       while(a--);
       ms--;
     }
}

void OLED_Init(void)
{
     OLED_SCL_1;
     OLED_RST_0;
     OLED_DLY_ms(50);
     OLED_RST_1;
     OLED_WrCmd(0xae);//--turn off oled panel
     OLED_WrCmd(0x00);//---set low column address
     OLED_WrCmd(0x10);//---set high column address
     OLED_WrCmd(0x40);//--set start line address  Set Mapping RAM Display Start Line (0x00~0x3F)
     OLED_WrCmd(0x81);//--set contrast control register
     OLED_WrCmd(0xcf);// Set SEG Output Current Brightness
     OLED_WrCmd(0xa1);//Set SEG/Column Mapping     0xa0左右反置 0xa1正常
     OLED_WrCmd(0xc8);//Set COM/Row Scan Direction   0xc0上下反置 0xc8正常
     OLED_WrCmd(0xa6);//--set normal display
     OLED_WrCmd(0xa8);//--set multiplex ratio(1 to 64)
     OLED_WrCmd(0x3f);//--1/64 duty
     OLED_WrCmd(0xd3);//-set display offset	Shift Mapping RAM Counter (0x00~0x3F)
     OLED_WrCmd(0x00);//-not offset
     OLED_WrCmd(0xd5);//--set display clock divide ratio/oscillator frequency
     OLED_WrCmd(0x80);//--set divide ratio, Set Clock as 100 Frames/Sec
     OLED_WrCmd(0xd9);//--set pre-charge period
     OLED_WrCmd(0xf1);//--set com pins hardware configuration
     OLED_WrCmd(0xda);//--set com pins hardware configuration
     OLED_WrCmd(0x12);
     OLED_WrCmd(0xdb);//--set vcomh
     OLED_WrCmd(0x40);//Set VCOM Deselect Level
     OLED_WrCmd(0x20);//-Set Page Addressing Mode (0x00/0x01/0x02)
     OLED_WrCmd(0x02);
     OLED_WrCmd(0x8d);//--set Charge Pump enable/disable
     OLED_WrCmd(0x14);//--set(0x10) disable
     OLED_WrCmd(0xa4);// Disable Entire Display On (0xa4/0xa5)
     OLED_WrCmd(0xa6);// Disable Inverse Display On (0xa6/a7) 
     OLED_WrCmd(0xaf);//--turn on oled panel
     OLED_Fill(0x00); //初始清屏
     OLED_Set_Pos(0,0);
}
//==============================================================
//函数名： void LCD_PutPixel(unsigned int x,unsigned int y)
//功能描述：绘制一个点（x,y）
//参数：真实坐标值(x,y),x的范围0～127，y的范围0～64
//返回：无
//==============================================================
void OLED_PutPixel(unsigned int x,unsigned int y)
{
    unsigned int data1;

    OLED_Set_Pos(x,y);
    data1 = 0x01<<(y%8);
    OLED_WrCmd(0xb0+(y>>3));
    OLED_WrCmd(((x&0xf0)>>4)|0x10);
    OLED_WrCmd((x&0x0f)|0x00);
    OLED_WrDat(0,data1);
}
//==============================================================
//函数名： void LCD_Rectangle(unsigned int x1,unsigned int y1,
//                   unsigned int x2,unsigned int y2,unsigned int color,unsigned int gif)
//功能描述：绘制一个实心矩形
//参数：左上角坐标（x1,y1）,右下角坐标（x2，y2）
//      其中x1、x2的范围0～127，y1，y2的范围0～63，即真实坐标值
//返回：无
//==============================================================
void OLED_Rectangle(unsigned int x1,unsigned int y1,unsigned int x2,unsigned int y2,unsigned int gif)
{
    unsigned int n;
    OLED_Set_Pos(x1,y1>>3);
    for(n=x1;n<=x2;n++)
    {
        OLED_WrDat(0,0x01<<(y1%8));
        if(gif==1)
          OLED_DLY_ms(50);
    }
    OLED_Set_Pos(x1,y2>>3);
    for(n=x1;n<=x2;n++)
    {
        OLED_WrDat(0,0x01<<(y2%8));
        if(gif == 1)
          OLED_DLY_ms(5);
    }
}

void OLED_Write_Num(int x,int y,int num)
{
  int t;
 // if(temp>=1000)
  if(1)
  {
    t=num/1000;
    text[0]=t+'0';
    num-=1000*t;
  }
  else
  {
    text[0]=' ';
  }
 // if(temp>=100)
  if(1)
  {
    t=num/100;
    text[1]=t+'0';
    num-=100*t;
  }
  else if(t>0)
  {
    text[1]='0';
  }
  else
  {
    text[1]=' ';
  }
    //if(temp>=10)
  if(1)
  {
    t=num/10;
    text[2]=t+'0';
    num-=10*t;
  }
  else if(t>0)
  {
    text[2]='0';
  }
  else
  {
    text[2]=' ';
  }

    t=num;
    text[3]=t+'0';
    text[4]='\0';

  OLED_P6x8(x,y,text);
 }

void OLED_P6x8(unsigned int x,unsigned int y,char ch[])
{
     unsigned int c=0,i=0,j=0;
     while (ch[j]!='\0')
     {
       c =ch[j]-32;
       if(x>126)
       {
          x=0;
          y++;
       }
       OLED_Set_Pos(x,y);
       for(i=0;i<6;i++)
         OLED_WrDat(0,F6x8[c][i]);
       x+=6;
       j++;
  }
}
//==============================================================
//函数名：LCD_P6x8Str(unsigned int x,unsigned int y,char *p)
//功能描述：写入一组标准ASCII字符串
//参数：显示的位置（x,y），y为页范围0～7，要显示的字符串
//返回：无
//==============================================================
void OLED_P6x8Str(uint8 x,uint8 y,uint8 ch[])
{
  uint8 c=0,i=0,j=0;  
  
  while (ch[j]!='\0')
  {    
    c =ch[j]-32;
    if(x>126)
    {
		  x=0;y++;
		}
    OLED_Set_Pos(x,y);    
  	for(i=0;i<6;i++)     
  	  OLED_WrDat(0,F6x8[c][i]);  
  	x+=6;
  	j++;
  }
}
//==============================================================
//函数名： void Draw_BMP(byte x,byte y)
//功能描述：显示BMP图片128×64
//参数：起始点坐标(x,y),x的范围0～127，y为页的范围0～7
//返回：无
//==============================================================
void Draw_BMP()
{
    unsigned int ii=0;
    unsigned int x,y;
    
    for(y=0;y<=7;y++)
    {
      OLED_Set_Pos(0,y);
      for(x=0;x<127;x++)
        OLED_WrDat(0,bmp[ii++]);
    }
}

/*****************************************************************************
 函 数 名  : LED_PrintImage
 功能描述  : 将图像显示出来
 输入参数  : UCHAR8 *pucTable     二维图像数组的地址
             USHORT16 usRowNum    二维图像的行数1~64
             USHORT16 usColumnNum 二维图像的列数1~128
 输出参数  : none
 返 回 值  : none
*****************************************************************************/
void OLED_PrintImage(uint8 *pucTable, uint16 usRowNum, uint16 usColumnNum)
{
    uint8 ucData;
    uint16 i,j,k,m,n;
    uint16 usRowTmp;

    m = usRowNum >> 3;   //计算图片行数以8位为一组完整的组数
    n = usRowNum % 8;    //计算分完组后剩下的行数
    
    for(i = 0; i < m; i++) //完整组行扫描
    {
        OLED_Set_Pos(0,(uint8)i);
        usRowTmp = i << 3;    //计算当前所在行的下标                  
        for(j = 0; j < usColumnNum; j++) //列扫描        
        {
            ucData = 0;
            for(k = 0; k < 8; k++) //在i组中对这8行扫描
            {
                ucData = ucData >> 1;
                if((pucTable + (usRowTmp + k) * usColumnNum)[j] == LED_IMAGE_WHITE)
                {
                    ucData = ucData | 0x80;
                }
                
            }
            OLED_WrDat(0,ucData);
        }
    }
    
    OLED_Set_Pos(0,(uint8)i); //设置剩下的行显示的起始坐标
    usRowTmp = i << 3;       //计算当前所在行的下标                  
    for(j = 0; j < usColumnNum; j++) //列扫描        
    {
        ucData = 0;
        for(k = 0; k < n; k++) //对剩下的行扫描
        {
            ucData = ucData >> 1;
            if((pucTable + (usRowTmp + k) * usColumnNum)[j] == LED_IMAGE_WHITE)
            {
                ucData = ucData | 0x80;
            }
            
        }
        ucData = ucData >> (8 - n);
        OLED_WrDat(0,ucData);
    }

    return;
}

void Image_Show(uint8 age[60][80])
{
        
        
        
        uint8 i,j,t;
       
        for(i=0;i<=59;i++)
        {
          for(j=0;j<=79;j++)
          {
            if(age[i][j]==BLACK1)
            {
              age[i][j]=1;
            }
            else if(age[i][j]==WHITE1)
            {
              age[i][j]=0;
            }
            else ;
          }
        }
        
        for(i=0;i<7;i++)
        {
               OLED_Set_Pos(10,i);//
                
                for(j=0;j<80;j++)
                {
                         t=0X00;
                        
                         t=age[i*8][j]+
                          (age[i*8+1][j]<<1)+
                          (age[i*8+2][j]<<2)+
                          (age[i*8+3][j]<<3)+
                          (age[i*8+4][j]<<4)+
                          (age[i*8+5][j]<<5)+
                          (age[i*8+6][j]<<6)+
                          (age[i*8+7][j]<<7);
                          OLED_WrDat(0,t);
                }
        }
         OLED_Set_Pos(10,7);
        for(j=0; j<80; j++)
        {
            t=0X00;
            t = age[56][j]+
               (age[57][j]<<1)+
               (age[58][j]<<2)+
               (age[59][j]<<3);
           OLED_WrDat(0,t);
        }
}
/**************************************OLED显示摄像头*****************************************/


void Draw_img_black(uint8 *pucTable)
{
     

    char shiep[]={'S','H','I','E','P'};
    OLED_P6x8Str(95,0,shiep);
    
    uint8 ucData;
    uint16 i,j,k,m,n;
    uint16 usRowTmp;
    
    uint8 ia,ja;
    
    for(ia=0;ia<=79;ia++)
   {
     img[0][ia]=1;
     img[59][ia]=1;
   }
 for(ja=0;ja<=59;ja++)
   {
     img[ja][0]=1;
     img[ja][79]=1;
   }
   
  
    
    m = 60 >> 3;   //计算图片行数以8位为一组完整的组数
    n = 60 % 8;    //计算分完组后剩下的行数
    
    for(i = 0; i < m; i++) //完整组行扫描
    {
        OLED_Set_Pos(0,(uint8)i);
        usRowTmp = i << 3;    //计算当前所在行的下标                  
        for(j = 0; j < 80; j++) //列扫描        
        {
            ucData = 0;
            for(k = 0; k < 8; k++) //在i组中对这8行扫描
            {
                ucData = ucData >> 1;
                if((pucTable + (usRowTmp + k) * 80)[j] != LED_IMAGE_WHITE)//将！=改为==后可翻转黑白
                {
                    ucData = ucData | 0x80;
                }
                
            }
            OLED_WrDat(0,ucData);
        }
    }
    
    OLED_Set_Pos(0,(uint8)i); //设置剩下的行显示的起始坐标
    usRowTmp = i << 3;       //计算当前所在行的下标                  
    for(j = 0; j < 80; j++) //列扫描        
    {
        ucData = 0;
        for(k = 0; k < n; k++) //对剩下的行扫描
        {
            ucData = ucData >> 1;
            if((pucTable + (usRowTmp + k) * 80)[j] != LED_IMAGE_WHITE)//将！=改为==后可翻转黑白
            {
                ucData = ucData | 0x80;
            }
            
        }
        ucData = ucData >> (8 - n);
        OLED_WrDat(0,ucData);
    }

    return;
}

void Draw_img_white(uint8 *pucTable)
{
   
      
      
    char shiep[]={'S','H','I','E','P'};
    OLED_P6x8Str(95,0,shiep);
    
    uint8 ucData;
    uint16 i,j,k,m,n;
    uint16 usRowTmp;
    
    
    m = 60 >> 3;   //计算图片行数以8位为一组完整的组数
    n = 60 % 8;    //计算分完组后剩下的行数
    
    for(i = 0; i < m; i++) //完整组行扫描
    {
        OLED_Set_Pos(0,(uint8)i);
        usRowTmp = i << 3;    //计算当前所在行的下标                  
        for(j = 0; j < 80; j++) //列扫描        
        {
            ucData = 0;
            for(k = 0; k < 8; k++) //在i组中对这8行扫描
            {
                ucData = ucData >> 1;
                if((pucTable + (usRowTmp + k) * 80)[j] == LED_IMAGE_WHITE)//将！=改为==后可翻转黑白
                {
                    ucData = ucData | 0x80;
                }
                
            }
            OLED_WrDat(0,ucData);
        }
    }
    
    OLED_Set_Pos(0,(uint8)i); //设置剩下的行显示的起始坐标
    usRowTmp = i << 3;       //计算当前所在行的下标                  
    for(j = 0; j < 80; j++) //列扫描        
    {
        ucData = 0;
        for(k = 0; k < n; k++) //对剩下的行扫描
        {
            ucData = ucData >> 1;
            if((pucTable + (usRowTmp + k) * 80)[j] == LED_IMAGE_WHITE)//将！=改为==后可翻转黑白
            {
                ucData = ucData | 0x80;
            }
            
        }
        ucData = ucData >> (8 - n);
        OLED_WrDat(0,ucData);
    }

    return;
}
/*
void show_img_calCentroid()
{
  img_mid_x=0, img_mid_y=0;
  calCentroid(img[0], &img_mid_x, &img_mid_y);
  OLED_Write_Num(95,3,img_mid_x);
  OLED_Write_Num(95,4,img_mid_y);
    
}

*/
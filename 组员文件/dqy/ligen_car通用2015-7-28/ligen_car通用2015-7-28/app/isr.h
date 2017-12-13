/**************************************************************************
 ** 创建日期：  2012-11-2                                                 *
 ** 文件名  ：  isr.h                                                     *
 ** 版本    ：	                                                          *
 ** 平台    ：  羽良工作室MK60DN512ZVLQ10最小系统板                       *
 ** 函数列表：	                                                          *
 ** 功能描述：  中断服务函数重新定义                                      *          
 ** 创建者  ：  羽良工作室 yullion.taobao.com                                                *
 ** 修改历史：                                                            *
 ** @版权所有： 羽良工作室 yullion.taobao.com                                               *
 ** 淘宝店：    yullion.taobao.com                                        *
 **************************************************************************/

/*******************************************************************************************
欢迎光临淘宝店  羽良工作室  yullion.taobao.com
K60淘宝链接     http://item.taobao.com/item.htm?spm=a1z10.1.w4.18.rMwvaU&id=21039172293
********************************************************************************************/

#ifndef __ISR_H
#define __ISR_H 1

#include  "include.h"

/***************************重新定义中断向量表**********************************
 *  先取消默认的中断向量元素宏定义       #undef  VECTOR_xxx
 *  在重新定义到自己编写的中断函数       #define VECTOR_xxx    xxx_IRQHandler
 *  例如：
 *       #undef  VECTOR_003
 *       #define VECTOR_003    HardFault_Handler    重新定义硬件上访中断服务函数
 *
 *       extren void  HardFault_Handler(void);      声明函数，然后在isr.c里定义
 *******************************************************************************/

/********************************************************************************/
#define H 120                            //采集的图像的列数
#define V 51                              //采集的图像的行数
//#define PHOTO_SIZE H*V

#define RowMax	    51	  //图像行数
#define ColumnMax	120  	  //图像列数

#define Black        30
#define White        200

extern unsigned char Pix_Data[V][H];       //采集50行 200列的图像数据      //晓克注释
extern unsigned char V_Cnt;                      //行采集计数
extern unsigned char Is_SendPhoto;               //图像发送标志

extern char car_control;
extern void CAR_CONTROL(void);
extern void DMA_CH0_Handler(void);
extern void DMA_CH4_Handler(void);              //DMA通道4的中断服务函数
extern void PORTB_IRQHandler(void);            //PORTB 中断服务函数
extern void PORTA_IRQHandler(void);            //PORTA 中断服务函数
extern void DirectionCtrol(void); 
#endif

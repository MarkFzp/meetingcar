/**************************************************************************
 ** 创建日期：  2012-11-2                                                 *
 ** 文件名  ：  isr.c                                                     *
 ** 版本    ：	                                                          *
 ** 平台    ：  羽良工作室MK60DN512ZVLQ10最小系统板                       *
 ** 函数列表：	                                                          *
 ** 功能描述：  OV7620摄像头数据采集                                      *
 ** 创建者  ：  羽良工作室 yullion.taobao.com                                                *
 ** 修改历史：                                                            *
 ** @版权所有： 羽良工作室 yullion.taobao.com                                                *
 ** 淘宝店：    yullion.taobao.com                                        *
 **************************************************************************/

/*******************************************************************************************
欢迎光临淘宝店  羽良工作室  yullion.taobao.com
K60淘宝链接     http://item.taobao.com/item.htm?spm=a1z10.1.w4.18.rMwvaU&id=21039172293
********************************************************************************************/

#include "common.h"
#include "include.h"
#include "isr.h"

extern unsigned char Pix_Data1[V][600];
void delay(int m);


unsigned char  RowCh[RowMax] = 
{  
	1,3,5,7,9,11,13,19,21,	           //原始图像采样数组
	23,25,27,29,32,34,36,38,40,
	42,44,46,48,51,54,57,60,62,
	66,70,74,76,82,86,91,98,105,
	108,114,121,128,135,140,152,162,171,
	182,193,205,217,220,226	
}; //该数组是用来选择要采集的行，即要采集13，14，15····等51行
/******************************************************************************/
unsigned char Pix_Data[51][H];                                     //采集Ｖ行 Ｈ列的图像数据
unsigned char V_Cnt=0,v_Cnt=0;                                                  //行采集计数
unsigned char Is_SendPhoto=0;                                           //图像发送标志
unsigned char FieldCounter=1;                                           //判断奇偶场
/******************************************************************************/

//串口调试时执行的程序段，发送出所有的图像数据
/*************************************************************************
*  函数名称：DMA_CH4_Handler
*  功能说明：DMA通道4的中断服务函数
*  参数说明：无
*  函数返回：无
*  修改时间：
*  备    注：
*************************************************************************/
void delay(int m)
{
    while(m--);
}
void DMA_CH4_Handler(void)
{
    DMA_IRQ_CLEAN(DMA_CH4);                                 //清除通道传输中断标志位    (这样才能再次进入中断)
    DMA_IRQ_DIS(DMA_CH4);
    DMA_DIS(DMA_CH4);                                       //采集完H个数据后进入这个DMA中断，停止DMA传输。行中断中打开DMA传输
    /********************/
    //串口调试用到
    
    /*******************/
}

/************************************************************************/
//晓克添加
//行中断处理函数
extern  volatile int _MMA7361,_ENC03;
void PORTB_IRQHandler()
{

    if((PORTB_ISFR & (1<<1)))                                   //PTB0触发中断,场中断
    {
      PORTB_ISFR |= (1<<1);                           //写1清中断标志位
      /**************用户任务**************************************************/
      unsigned char *_ImageData;
      int i;
     
     //if(FieldCounter==1)
     {
     if(V_Cnt==RowCh[RowCount])			//如果行计数这行是需要采集的，则存数据
        {
              _ImageData =& Pix_Data1[RowCount][0];
               // delay(130);
          	//for(i=0;i<ColumnMax;i++)//要存的列数
			{
                              // delay(10);
				DMA_DADDR(DMA_CH4) = (uint32)_ImageData++;
                                
                                DMA_IRQ_EN(DMA_CH4);
                                DMA_EN(DMA_CH4); 
                               /* asm("nop");
                                asm("nop");
				asm("nop");
				asm("nop");
				asm("nop");
				asm("nop");
				asm("nop");
				asm("nop");
				asm("nop");
				asm("nop");
				asm("nop");
				asm("nop");
				asm("nop");
				asm("nop");
				asm("nop");
				asm("nop");
				asm("nop");
				asm("nop");
				asm("nop");
				asm("nop");*/
                               // DMA_DIS(DMA_CH4);
                                
                              //  DMA_IRQ_CLEAN(DMA_CH4);
			}
	 				
         /*delay(150);
         _ImageData =& ImageData[RowCount][0];
         DMA_DADDR(DMA_CH4) = (uint32)_ImageData;    //恢复地址
         DMA_IRQ_EN(DMA_CH4);
         DMA_EN(DMA_CH4);  */                                  //使能通道CHn 硬件请求
         RowCount++;
        }
     } 
      V_Cnt++; 
      v_Cnt++;
     // if(v_Cnt>8)
     //  Rd_Ad_Value();
     if(v_Cnt==16)
     { 
       //Rd_Ad_Value();
       CAR_CONTROL();
       v_Cnt=0;
     }                     //可以在这里判断需要的数据是否已经采集完，可以设置一个标志位
     if(V_Cnt == 240)
    {
      //V_Cnt=0;
     Is_SendPhoto = 1;
     
     // disable_irq(87);
     // disable_irq(88); 
    //  printf("bbbccc\n");
    //  enable_irq(87);
     // enable_irq(88); 
    }
      /****************
      *这里也可以进行数据处理
      *****************/
      /************************************************************************/
    }
}

//场中断处理函数
void PORTA_IRQHandler()
{
    if((PORTA_ISFR & (1<<29)))                              //PTA29触发中断,行中断
    {
      PORTA_ISFR |= (1<<29);        
                             //写1清中断标志位   
     
      // char  *Pix_Data0[V][H];
      Is_SendPhoto = 0;                                   //发送图像标志，串口调试要用
      /**************用户任务**************************************************/
      //奇偶场判别
      FieldCounter++;                        
      if(FieldCounter>= 2)
      {
        FieldCounter = 0;
      }
     
    //  DirectionCtrol(); 
       //printf("\naaa%d\n", V_Cnt);
       enable_irq(PORTB_IRQn); 
        Is_SendPhoto = 0;                                   //发送图像标志
         V_Cnt=0;
         RowCount=0;

    }
}
//正常运行时程序段

/**************************************************************************
 ** �������ڣ�  2012-11-2                                                 *
 ** �ļ���  ��  isr.c                                                     *
 ** �汾    ��	                                                          *
 ** ƽ̨    ��  ����������MK60DN512ZVLQ10��Сϵͳ��                       *
 ** �����б�	                                                          *
 ** ����������  OV7620����ͷ���ݲɼ�                                      *
 ** ������  ��  ���������� yullion.taobao.com                                                *
 ** �޸���ʷ��                                                            *
 ** @��Ȩ���У� ���������� yullion.taobao.com                                                *
 ** �Ա��꣺    yullion.taobao.com                                        *
 **************************************************************************/

/*******************************************************************************************
��ӭ�����Ա���  ����������  yullion.taobao.com
K60�Ա�����     http://item.taobao.com/item.htm?spm=a1z10.1.w4.18.rMwvaU&id=21039172293
********************************************************************************************/

#include "common.h"
#include "include.h"
#include "isr.h"

extern unsigned char Pix_Data1[V][600];
void delay(int m);


unsigned char  RowCh[RowMax] = 
{  
	1,3,5,7,9,11,13,19,21,	           //ԭʼͼ���������
	23,25,27,29,32,34,36,38,40,
	42,44,46,48,51,54,57,60,62,
	66,70,74,76,82,86,91,98,105,
	108,114,121,128,135,140,152,162,171,
	182,193,205,217,220,226	
}; //������������ѡ��Ҫ�ɼ����У���Ҫ�ɼ�13��14��15����������51��
/******************************************************************************/
unsigned char Pix_Data[51][H];                                     //�ɼ����� ���е�ͼ������
unsigned char V_Cnt=0,v_Cnt=0;                                                  //�вɼ�����
unsigned char Is_SendPhoto=0;                                           //ͼ���ͱ�־
unsigned char FieldCounter=1;                                           //�ж���ż��
/******************************************************************************/

//���ڵ���ʱִ�еĳ���Σ����ͳ����е�ͼ������
/*************************************************************************
*  �������ƣ�DMA_CH4_Handler
*  ����˵����DMAͨ��4���жϷ�����
*  ����˵������
*  �������أ���
*  �޸�ʱ�䣺
*  ��    ע��
*************************************************************************/
void delay(int m)
{
    while(m--);
}
void DMA_CH4_Handler(void)
{
    DMA_IRQ_CLEAN(DMA_CH4);                                 //���ͨ�������жϱ�־λ    (���������ٴν����ж�)
    DMA_IRQ_DIS(DMA_CH4);
    DMA_DIS(DMA_CH4);                                       //�ɼ���H�����ݺ�������DMA�жϣ�ֹͣDMA���䡣���ж��д�DMA����
    /********************/
    //���ڵ����õ�
    
    /*******************/
}

/************************************************************************/
//�������
//���жϴ�����
extern  volatile int _MMA7361,_ENC03;
void PORTB_IRQHandler()
{

    if((PORTB_ISFR & (1<<1)))                                   //PTB0�����ж�,���ж�
    {
      PORTB_ISFR |= (1<<1);                           //д1���жϱ�־λ
      /**************�û�����**************************************************/
      unsigned char *_ImageData;
      int i;
     
     //if(FieldCounter==1)
     {
     if(V_Cnt==RowCh[RowCount])			//����м�����������Ҫ�ɼ��ģ��������
        {
              _ImageData =& Pix_Data1[RowCount][0];
               // delay(130);
          	//for(i=0;i<ColumnMax;i++)//Ҫ�������
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
         DMA_DADDR(DMA_CH4) = (uint32)_ImageData;    //�ָ���ַ
         DMA_IRQ_EN(DMA_CH4);
         DMA_EN(DMA_CH4);  */                                  //ʹ��ͨ��CHn Ӳ������
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
     }                     //�����������ж���Ҫ�������Ƿ��Ѿ��ɼ��꣬��������һ����־λ
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
      *����Ҳ���Խ������ݴ���
      *****************/
      /************************************************************************/
    }
}

//���жϴ�����
void PORTA_IRQHandler()
{
    if((PORTA_ISFR & (1<<29)))                              //PTA29�����ж�,���ж�
    {
      PORTA_ISFR |= (1<<29);        
                             //д1���жϱ�־λ   
     
      // char  *Pix_Data0[V][H];
      Is_SendPhoto = 0;                                   //����ͼ���־�����ڵ���Ҫ��
      /**************�û�����**************************************************/
      //��ż���б�
      FieldCounter++;                        
      if(FieldCounter>= 2)
      {
        FieldCounter = 0;
      }
     
    //  DirectionCtrol(); 
       //printf("\naaa%d\n", V_Cnt);
       enable_irq(PORTB_IRQn); 
        Is_SendPhoto = 0;                                   //����ͼ���־
         V_Cnt=0;
         RowCount=0;

    }
}
//��������ʱ�����

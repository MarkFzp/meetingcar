/**************************************************************************
 ** �������ڣ�  2012-11-2                                                 *
 ** �ļ���  ��  isr.h                                                     *
 ** �汾    ��	                                                          *
 ** ƽ̨    ��  ����������MK60DN512ZVLQ10��Сϵͳ��                       *
 ** �����б�	                                                          *
 ** ����������  �жϷ��������¶���                                      *          
 ** ������  ��  ���������� yullion.taobao.com                                                *
 ** �޸���ʷ��                                                            *
 ** @��Ȩ���У� ���������� yullion.taobao.com                                               *
 ** �Ա��꣺    yullion.taobao.com                                        *
 **************************************************************************/

/*******************************************************************************************
��ӭ�����Ա���  ����������  yullion.taobao.com
K60�Ա�����     http://item.taobao.com/item.htm?spm=a1z10.1.w4.18.rMwvaU&id=21039172293
********************************************************************************************/

#ifndef __ISR_H
#define __ISR_H 1

#include  "include.h"

/***************************���¶����ж�������**********************************
 *  ��ȡ��Ĭ�ϵ��ж�����Ԫ�غ궨��       #undef  VECTOR_xxx
 *  �����¶��嵽�Լ���д���жϺ���       #define VECTOR_xxx    xxx_IRQHandler
 *  ���磺
 *       #undef  VECTOR_003
 *       #define VECTOR_003    HardFault_Handler    ���¶���Ӳ���Ϸ��жϷ�����
 *
 *       extren void  HardFault_Handler(void);      ����������Ȼ����isr.c�ﶨ��
 *******************************************************************************/

/********************************************************************************/
#define H 120                            //�ɼ���ͼ�������
#define V 51                              //�ɼ���ͼ�������
//#define PHOTO_SIZE H*V

#define RowMax	    51	  //ͼ������
#define ColumnMax	120  	  //ͼ������

#define Black        30
#define White        200

extern unsigned char Pix_Data[V][H];       //�ɼ�50�� 200�е�ͼ������      //����ע��
extern unsigned char V_Cnt;                      //�вɼ�����
extern unsigned char Is_SendPhoto;               //ͼ���ͱ�־

extern char car_control;
extern void CAR_CONTROL(void);
extern void DMA_CH0_Handler(void);
extern void DMA_CH4_Handler(void);              //DMAͨ��4���жϷ�����
extern void PORTB_IRQHandler(void);            //PORTB �жϷ�����
extern void PORTA_IRQHandler(void);            //PORTA �жϷ�����
extern void DirectionCtrol(void); 
#endif

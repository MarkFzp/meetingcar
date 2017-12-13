#ifndef __SYS_H
#define __SYS_H	
#include "common.h"
#include "stdlib.h"
#include "IMAGE.h"
#include "CONTROL.h"
#include "PID.h"
#include "LQOLED.h"
#define CARD  0 //��ʹ����������K60 Card��Ϊ1����ʹ��������Ϊ0

#if(CARD) 
 #define LED_A  PTE   
 #define LED_B  PTD  
 #define LED_C  PTA   
 #define LED_D  PTA
 #define LED_A_PIN  26 
 #define LED_B_PIN  15
 #define LED_C_PIN  28
 #define LED_D_PIN  29 
#else
 #define LED_A  PTA   
 //#define LED_B  PTC 
 #define LED_C  PTD  
 #define LED_D  PTE

 #define LED_A_PIN  17 
 //#define LED_B_PIN  0
 #define LED_C_PIN  15
 #define LED_D_PIN  26 
#endif
 #define  LED_A_T LPLD_GPIO_Toggle_b(LED_A, LED_A_PIN)
 //#define  LED_B_T LPLD_GPIO_Toggle_b(LED_B, LED_B_PIN)
 #define  LED_C_T LPLD_GPIO_Toggle_b(LED_C, LED_C_PIN)
 #define  LED_D_T LPLD_GPIO_Toggle_b(LED_D, LED_D_PIN)
/*
 * �����ֵ����Сֵ
 */
#define MAX( x, y ) ( ((x) > (y)) ? (x) : (y) )
#define MIN( x, y ) ( ((x) < (y)) ? (x) : (y) )
#define H_PY 48//56//61
#define V 100 //ͼ��߶�
#define H H_PY+360//352//ͼ����

#define V_FX 1 //
#define H_FX 4//

#define V_A (V/V_FX) //����ͼ��߶�   100/1=100
#define H_A (int)((H-H_PY)/H_FX)//����ͼ���� 252/3=84
//#define H_A 100//����ͼ���� 252/3=84
#define RowMax	    V_A//ͼ��߶�
#define ColumnMax   H_A//ͼ����
//#define PHOTO_SIZE H*V
#define Black        30
#define White        200

//��������
void LED_init_gpio(void);
void delay(void);
void LED(void);
void uart_init(void);
void uart_isr(void);
void public_init(void);
void Camera_gpio_init(void);
void Camera_dma_init(void);
void porta_isr(void);
void portb_isr(void);
void ADC_init();
extern uint8 Pix_Data[V][H];        //�ɼ�492�� 664�е�ͼ������ 
extern uint8 ImageData[V_A][H_A];  
extern uint8 ThresholdData[V_A][H_A];//��ֵ���������� 
extern int V_Cnt;                     //�вɼ�����
extern int Is_DispPhoto;               //ͼ���ͱ�־
extern uint32 angle_to_period(int8 deg);
extern  unsigned char IsStartLine;//�����߱�־
extern struct NUM_GET NUM_A;
extern struct NUM_GET NUM_B;
extern struct NUM_GET NUM_C;
extern struct NUM_GET NUM_D;
extern struct NUM_GET NUM_E;
extern 	float duojizkb;
extern 	float duojizkb0;
extern 	float duojizkb1;
extern float duojipianyi;
extern signed char RoadType;								//��������
extern signed char LastRoadType;
extern unsigned char IsCrossing;
extern int StaticThreshold;		//��ֵ����ֵ
extern int UseStaticFlag;		       // �Ƿ�ʹ�þ�̬��ֵ��־
extern int StaticThreshold;             //��ֵ����̬��ֵ  
extern int LeftBlack[RowMax];	//���Ե��������					 
extern int RightBlack[RowMax];//�ұ�Ե��������					 
extern int BlackLineData[RowMax];// ��ȡ����ֵ����
extern unsigned char g_Derict; //���� ��-0 ��-1 ��-2
extern int BlackEndL;
extern int BlackEndM;
extern int BlackEndR;
extern int BlackEndMax;
extern int BlackEndLMR;
extern float Setk;
extern float a_y,a_y_min,a_y_max;
extern int BlackEndA;
extern int BlackEndB;
extern int BlackEndC;
extern int BlackEndD;
extern int BlackEndE;
extern int BlackEndF;
extern int BlackEndG;
extern int BlackEndColumnMax;
extern uint16 SteerPidCal(float _excursion);
extern int StableNumbers;
extern int StableNumbers2;
extern int CompensateCount;
extern int LeftStableNumbers;
extern int RightStableNumbers;
extern int ValidLineCount;
extern int ValidLineCount1; //���Ե�ҵ������ұ��ҵ�
extern int ValidLineCount2;//���Ե�ҵ������ұ��ҵ�
extern int Excursion;
extern int ValidExcursionCount;
extern char RightWhite;
extern char LeftWhite;
extern unsigned char BlackRow;
extern unsigned char WhiteRow;
extern unsigned char WhiteRow1;
extern unsigned char LineType[RowMax];
extern int StoreFlag;
extern signed char TemMidLineData[RowMax];//��ȡ����ֵ����2	
extern double MidLineVariance;
extern int MidLineExcursion;
extern signed char TripPointPos[RowMax];
extern signed char SubValue[RowMax];
extern unsigned char ValidLine[RowMax];//1 - ���ҵ��� 2--���ҵ���  ���߶��ҵ���-3 ���Ҳ�����-0
extern int duoji;
extern unsigned char MotorSpeed;
extern unsigned char AllStraightCount;
extern unsigned char AllSmallSCount;;
extern void NUM_GET(void);
extern void NUM_Send(void);
extern void ImageProcess(void);
extern void GetImageParam(void);			// ��ȡͼ����������
extern void MidLineProcess(void);
// ��ȡ�����߲�����
extern void RTRecognition(void);  			//����ʶ��
extern int BlackLineData[RowMax];// ��ȡ����ֵ����
extern void MotorUpdatePWM();
extern void SteerUpdatePWM(char ss,float speed);
extern int TopE1;
extern int TopE2;
extern int last;
extern float bm_z,bm_y,bm_pz;
extern int Endline;
extern int MidPos;
extern int hx,sfminline,hx_i;
extern int mid_line_count;
extern int mode1,mode2,mode3,mode4;
extern int cjhs[V];
extern int hx_found_Column;
extern int hx_find_count_max;
extern int GetFreq;
extern int GetCnt;
extern int V_count;
extern uint16 ltpmt_temp;
extern int sd;
extern int mid_line_count;
extern int midline_fcount,midline_fcount_max;

extern int zaw_mode;
//������
 extern float fs;
 extern int EndType;
 extern int MidLineExcursion;
 extern  int Error;
  extern  int Errora;
 extern float zkb;
 extern  int yxh;
 extern  int MidPos_h;
 extern  void FloatToChar(float floatNum, int8* byteArry);
 extern int8 sa[8];
 extern int firstline_l,firstline_r,firstline_m;
 extern int jiansu;
 
#endif

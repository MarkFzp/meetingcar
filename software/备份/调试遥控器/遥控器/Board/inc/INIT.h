#ifndef __INIT_H__
#define __INIT_H__
#include "common.h"

//¶æ»ú
#define S3010_FTM   FTM2
#define S3010_CH    FTM_CH0
#define S3010_HZ    (110)
//µç»ú
#define MOTOR_FTM   FTM0
#define MOTOR1_PWM  FTM_CH3
#define MOTOR2_PWM  FTM_CH2
#define MOTOR3_PWM  FTM_CH0
#define MOTOR4_PWM  FTM_CH1
#define MOTOR_HZ    10000//(20*1000)

void display(void);
void IO_init(void);
void FTM_init(void);
void delay(uint32 i);
void OutPut_Data(void);
unsigned short CRC_CHECK(unsigned char *Buf, unsigned char CRC_CNT);


#endif
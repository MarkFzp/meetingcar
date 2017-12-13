/*============================================================================
文件名称：PID.H
功能概要：MCF52255 PID
============================================================================*/
#ifndef __PID__
#define __PID__
#define MotorMax  		8000
#define MotorMin  		-8000
#define MotorMiddle  	0
#define DirectMiddle  	734 // 1870//	  //舵机中值，原始数据为1233

typedef struct 
{
	float Kp;
	float Kd;
	int16 e0;
	int16 e1;
	int16 e2;

}SteetPidStruct;

typedef struct 
{
	float Kp;
	float Ki;
	float Kd;
	int32 e0;
	int32 e1;
	int32 e2;
	int32 Sum;
	int32 DefaultSum;
	int32 Speed;

}MotorPidStruct;

extern  float SpeedPid_P;
extern  float SpeedPid_I;
extern  float SpeedPid_D;
extern  SteetPidStruct SteerPID;


extern  MotorPidStruct MotorPID;
void    SteerPIDInit(void);
uint16  SteerPidCal(float Excursion);
int32  MotorPidCal(uint16 SpeedSet);

#endif

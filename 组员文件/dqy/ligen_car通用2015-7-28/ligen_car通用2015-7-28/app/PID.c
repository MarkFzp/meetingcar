/*============================================================================
文件名称：PID.c
功能概要：MCF52255 PID
=============================================================================*/
#include "sys.h"              
#include "PID.h"

#include <stdlib.h>
#include <math.h>

float DirectLeft=(DirectMiddle-80);// 900	  //舵机右值
float DirectRight=(DirectMiddle+80); //2100舵机左值
float SpeedPid_P = 30;
float SpeedPid_I = 1.8;
float SpeedPid_D = 10.0;
int Showdirect=0;
uint16 lastDirect=0;

/*============================================================================
函数名称：SteerPID
函数返回：无
参数说明：       
功能概要：舵机PID函数
=============================================================================*/

 SteetPidStruct SteerPID;
 
 MotorPidStruct MotorPID;

uint16 SteerPidCal(float _excursion)
{     
	int16 Direct  = 0; 
	int16 LDirect = 0;
	
        

SteerPID.Kp =1;
SteerPID.Kd = 0.3;

	
	SteerPID.e0 = _excursion;
	duoji=SteerPID.Kp;
 Direct = (uint16)(DirectMiddle-SteerPID.Kp*SteerPID.e0 - SteerPID.Kd*(SteerPID.e1-SteerPID.e2) );


 if(Direct < DirectLeft)
	{
		Direct = DirectLeft;	
	}
	else if(Direct > DirectRight)
	{
		Direct = DirectRight;	
	}
	Showdirect=Direct;
	SteerPID.e2 = SteerPID.e1;
	SteerPID.e1 = SteerPID.e0;
	lastDirect=Direct;
        

        
	return Direct;
}

int32 MotorPidCal(uint16 SpeedSet)         
{    MotorSpeed=bm_z;
	MotorPID.e2 = MotorPID.e1;
	MotorPID.e1 = MotorPID.e0;
	MotorPID.e0 = SpeedSet-MotorSpeed;
       
//	
	MotorPID.Kp = SpeedPid_P;//12.0;
	MotorPID.Ki = SpeedPid_I;//0.5;
	MotorPID.Kd = SpeedPid_D;//7.0;

//	MotorPID.Kp = 12.0;//30;
//	MotorPID.Ki = 0.5;//1.8;
//	MotorPID.Kd = 7.0;//10.0;

	MotorPID.DefaultSum = MotorPID.Kp*(MotorPID.e0-MotorPID.e1) + MotorPID.Ki*MotorPID.e0 + MotorPID.Kd*(MotorPID.e0 - 2.0*MotorPID.e1 + MotorPID.e2);
	    
	MotorPID.Sum += MotorPID.DefaultSum;
	if(MotorPID.Sum > MotorMax)
		MotorPID.Sum = MotorMax;
	
	if(MotorPID.Sum < MotorMin)
	  	MotorPID.Sum = MotorMin;
	
//	  	if(MotorPID.Sum<MotorMin)
//		{
//			LED3_On;
//	  		MotorPID.Sum = MotorMin;
//	  	}

	 return MotorPID.Sum;
}              



#ifndef __PID_H__  
#define __PID_H__
#include "common.h"

void steerPID(int steer_error,uint8 no_target);
typedef struct 
{
	float Kp;
	float Kd;
	int16 e0;
	int16 e1;
	int16 e2;

}SteetPidStruct;
#endif
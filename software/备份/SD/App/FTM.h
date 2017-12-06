#ifndef _FTM_H_
#define _FTM_H_

#define S3010_FTM   FTM3
#define S3010_CH    FTM_CH1
#define S3010_HZ    110
#define Pi	3.1415927f


extern const int left_max;
extern const int right_max;
extern const int steer_mid;



struct _echo    
    {
      int16 left;
      int16 right;
    } ;

struct _pid
{
	float kp;
	float ki;
	float kd;
};

void FTM_init(void);
void FTM_get();
void pid_init();
void motor(int aim_right,int aim_left);
void dif_speed(int v,int x,float ark_coe);


#endif
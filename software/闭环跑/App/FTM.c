#include "common.h"
#include "include.h"
#include "FTM.h"
#include "allheader.h" 




void echo_speed_process(void)                                               
{
      FTM_get();                                                //编码器采集
      ECHO_IIR_Filter(&echo_speed,&filter_echo_speed);          //编码器数据滤波
      //real_speed = (filter_echo_speed.left + filter_echo_speed.right)/2.0f;
}



void FTM_init(void)
{
    ftm_pwm_init(S3010_FTM, S3010_CH,S3010_HZ,1560);  //初始化 舵机 PWM
    ftm_pwm_init(FTM0, FTM_CH0,10*1000,0); 
    ftm_pwm_init(FTM0, FTM_CH1,10*1000,0);
    ftm_pwm_init(FTM0, FTM_CH2,10*1000,0); 
    ftm_pwm_init(FTM0, FTM_CH3,10*1000,0); 
    
    ftm_quad_init(FTM1);                                    //FTM1 正交解码初始化（所用的管脚可查 port_cfg.h ）
    ftm_quad_init(FTM2);
}

struct _echo echo_speed,filter_echo_speed;
void FTM_get()
{
  
    echo_speed.left = -ftm_quad_get(FTM1);          //倒着跑
    echo_speed.right = ftm_quad_get(FTM2);

    ftm_quad_clean(FTM1);
    ftm_quad_clean(FTM2);

}





const int left_max  = 1680;
const int right_max = 1370;
const int steer_mid = 1560;

struct _pid pid_left;
struct _pid pid_right;
struct _pid steer;

void pid_init()
{
    pid_left.kp = 40.0;
    pid_left.ki = 0;
    pid_left.kd = 40;
    
    pid_right.kp =40.0;
    pid_right.ki = 0;
    pid_right.kd = 40;
    
    steer.kp = 7;
    steer.ki = 0;
    steer.kd = 20;
    
    echo_speed.right=0;
    echo_speed.left=0;
    filter_echo_speed.right=0;
    filter_echo_speed.left=0;

    
}



int left_err = 0,     left_err_dif = 0,     left_err_integral = 0,     left_last_err = 0;
int right_err = 0,    right_err_dif = 0,    right_err_integral = 0,    right_last_err= 0;
int last_left_duty=0 , last_right_duty=0;
int aim_left_temp = 0,  echo_left_temp = 0;
int aim_right_temp = 0, echo_right_temp = 0;
int left_duty=0,right_duty=0;

void motor(int aim_right,int aim_left)
{
  
//  if(sflag==0)
//     {
//        aim_left=0;
//        aim_right=0;
//
//     }
//  
//if((sflag==1))
  {
//    if(ctrl_flag!=0)//可以做到亮信标开车
    {

      {
        aim_left_temp  = aim_left;
        echo_left_temp = filter_echo_speed.left;
      }
      left_err = aim_left_temp - echo_left_temp;
      left_err_dif = left_err - left_last_err;
      left_err_integral += left_err;
      left_last_err = left_err;
      left_duty= (int)(aim_left_temp*10  + pid_left.kp*left_err   + pid_left.ki*left_err_integral   + pid_left.kd*left_err_dif);
      
      

      {
        aim_right_temp  = aim_right;
        echo_right_temp = filter_echo_speed.right;
      }
      right_err = aim_right_temp - echo_right_temp;
      right_err_dif =right_err - right_last_err;
      right_err_integral += right_err;
      right_last_err = right_err;
      right_duty=(int)(aim_right_temp*10 + pid_right.kp*right_err + pid_right.ki*right_err_integral + pid_right.kd*right_err_dif);
      
      if(left_duty>9999)
        left_duty=9999;
      if(left_duty<-9999)
        left_duty=-9999;
      if(right_duty>9999)
        right_duty=9999;//不可以删除 否则溢出跑飞
      if(right_duty<-9999)
        right_duty=-9999;
      
      
        if(left_duty>0)
        {
          ftm_pwm_duty(FTM0, FTM_CH3,(uint32)left_duty); 
          ftm_pwm_duty(FTM0, FTM_CH0,0);        
        }
        if(left_duty<=0)
        {
          ftm_pwm_duty(FTM0, FTM_CH3,0); 
          ftm_pwm_duty(FTM0, FTM_CH0,(uint32)(-left_duty)); 
        }  
        
        if(right_duty>0)
        { 
          ftm_pwm_duty(FTM0, FTM_CH1,0);
          ftm_pwm_duty(FTM0, FTM_CH2,(uint32)right_duty);
        }
        if(right_duty<=0)
        { 
          ftm_pwm_duty(FTM0, FTM_CH1,(uint32)(-right_duty));
          ftm_pwm_duty(FTM0, FTM_CH2,0);
        }
    
    }     
  } 
}

double v_left=0,v_right=0,temp=0;
float arkerman_time=1,arkerman_coefficient=1.6;


void dif_speed(int v,int x,float ark_coe)
{
  
  /**********阿克曼模型差速**********/
//v_left=v*(1+(0.153*tan(0.2469x-354.32))/(2*0.198));
//v_right=v*(1-(0.153*tan(0.2469x-354.32))/(2*0.198));
//  ++arkerman_time可以提前差速时间 反之亦然
  
 // turn_state=x-1500;
  arkerman_coefficient = ark_coe;
  temp=0.30555*x-458.337  ;
  temp=-(temp*Pi)/180;
  
  if(temp>=0)//正向左拐大于0
  {
    
    v_right=v*(arkerman_time+arkerman_coefficient*(0.179*tan(temp)));
    v_left=v*(arkerman_time-arkerman_coefficient*(0.179*tan(temp)));
 
//    v_left  = 1.441*v;
//    v_right = 0.559*v;
  }

  if(temp<0)//右拐
  {  
    temp=-temp;
    v_right=v*(arkerman_time-arkerman_coefficient*(0.179*tan(temp)));
    v_left=v*(arkerman_time+arkerman_coefficient*(0.179*tan(temp)));

//    v_left  = 0.559*v;
//    v_right = 1.441*v;
  }
  
//     if(v_left<=0) v_left=0;
//     if(v_right<=0) v_right=0; 
  ftm_pwm_duty(S3010_FTM, S3010_CH,x);
  motor( (int)v_left ,(int)v_right);
}

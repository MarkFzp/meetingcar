#include "allheader.h" 
#include "receive.h"
void control_car(void)
{
  // motor(80*v_mode,80*v_mode);
  left_duty=v_mode*1000;
  right_duty=v_mode*1000;
   
   

        
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
     
     
   
/*
     { 
          ftm_pwm_duty(FTM0, FTM_CH1,0);
          ftm_pwm_duty(FTM0, FTM_CH2,v*1000);
        }
        
          ftm_pwm_duty(FTM0, FTM_CH3,v*1000); 
          ftm_pwm_duty(FTM0, FTM_CH0,0);  
 */
    ftm_pwm_duty(S3010_FTM, S3010_CH,control_duty);

}


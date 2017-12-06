#include "allheader.h" 
#include "receive.h"
void control_car(void)
{
   motor(80*v_mode,80*v_mode);

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


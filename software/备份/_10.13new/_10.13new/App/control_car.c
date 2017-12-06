#include "allheader.h" 
#include "receive.h"
void control_car(void)
{
    motor(80*v_mode,80*v_mode);
    ftm_pwm_duty(S3010_FTM, S3010_CH,control_duty);

}


#include "allheader.h" 
#include "receive.h"
#include "control_car.h" 
//#include "SD.h"

void go_3_point(void)
{
    /********��ǰ��*********/
  // motor(200,200);  
    if((img[33][8]==255)&&(img[33][68]==255)&&(img[39][41]==255))
    {
        motor(100,100);
        ftm_pwm_duty(S3010_FTM, S3010_CH,1560);
    }
    
    
    /**********���**********/

    if((img[33][8]==255)&&(img[33][68]==0)&&(img[39][41]==255))
    {
        motor(100,100);
        ftm_pwm_duty(S3010_FTM, S3010_CH,1700);
    }
    



    /********�ҹ�***********/


    if((img[33][8]==0)&&(img[33][68]==255)&&(img[39][41]==255))
    {
        motor(100,100);
        ftm_pwm_duty(S3010_FTM, S3010_CH,1400);
    }
    

/*    
    switch(img[26][75]==255)
    {
       case:0
       {
          switch()
          {
            case
          }
          break;
       }
       case:255
       {
          
          break;
       }
    }
 */   
}
/*
此程序用于使用....
分辨率 60:80
舵机中值 1560
车左跑：>1560
车右跑：<1560

*/


#include "allheader.h" 
#include "receive.h"
#include "control_car.h" 
#include "init.h"
#include "SD.h"
void  main(void)
{
 
    

    system_init();
   
    while(1)
    {
      Draw_img_black(img[0]);
    }
}

 void Task_50Hz()//定时器 20ms运行一次
 {
   
   /*
     camera_get_img();                                         //图像采集
     img_extract(img, imgbuff,CAMERA_SIZE);                    //图像解压
     echo_speed_process();                                    //编码器数据采集和滤波      
    // turn_flag=img_process();                                 
     translation();
     
     if(start_mode==1)
      control_car();//进入遥控车模式
     else
     go_3_point();
   */
   
     camera_get_img();                                         //图像采集
     img_extract(img, imgbuff,CAMERA_SIZE);                    //图像解压
     echo_speed_process();                                    //编码器数据采集和滤波      
    // turn_flag=img_process();                                 
     translation();
    
     go_3_point();
}
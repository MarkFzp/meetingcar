/*
�˳�������ʹ��....
�ֱ��� 60:80
�����ֵ 1560
�����ܣ�>1560
�����ܣ�<1560

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

 void Task_50Hz()//��ʱ�� 20ms����һ��
 {
   
   /*
     camera_get_img();                                         //ͼ��ɼ�
     img_extract(img, imgbuff,CAMERA_SIZE);                    //ͼ���ѹ
     echo_speed_process();                                    //���������ݲɼ����˲�      
    // turn_flag=img_process();                                 
     translation();
     
     if(start_mode==1)
      control_car();//����ң�س�ģʽ
     else
     go_3_point();
   */
   
     camera_get_img();                                         //ͼ��ɼ�
     img_extract(img, imgbuff,CAMERA_SIZE);                    //ͼ���ѹ
     echo_speed_process();                                    //���������ݲɼ����˲�      
    // turn_flag=img_process();                                 
     translation();
    
     go_3_point();
}
#include "allheader.h" 

uint8 i,j;
void Task_50Hz(void)
{
       //camera_get_img();
       //img_extract(img, imgbuff,CAMERA_SIZE);  
       
}


/************方案一**************/
void Task_20Hz()
{
   int i;
   
    //vcan_sendimg(img, sizeof(img));//发送数据至上位机
  
    key_read();
  /*  if ((key_last[1] == 1) && (key_now[1]==0))//按下按键+1
	{
           printf("11111\n");
        }
    */
}


/************/
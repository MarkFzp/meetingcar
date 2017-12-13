#include "allheader.h" 
#include "receive.h"
#include "control_car.h"
/*
���ڲ�����ֵ
�͸����PWM����


*/


  void  main(void)
{


    system_init();
    
    while(1)
    {
        
       OLED_P6x8Str(0,0,"ssss");
       Draw_img_black(img[0]);
           

    
    }
}
extern float mid_12[12];
extern const int left_max, right_max;

const int err_integral_max =4000;
char turn_flag = 0;
float steer_err = 0, steer_err_integral = 0, err_dif = 0, last_steer_err = 0;

float turn_compensation = 0, arkm_coe = 1.6;
int steer_duty = 0,V = 400;
int display_cross_x = 0, display_cross_y = 0;
void control()
{
  if( length[27] < 78 )
  {
    if( length[32] < 60 )               //�òο�������5�г����ж� ���Ǹպó�ʮ����
    {
      if (left_line[27] < 2)
        mid_12[5] /= 2.0;
      else if(right_line[27] > 77)
        mid_12[5] = (mid_12[5] + 79)/2.0;
    
    steer_err = -(39.f-mid_12[5]);
    
    display_cross_x = 27;
    display_cross_y = (int)mid_12[5];
    }
    else                                //���ڸճ�ʮ����˲��
    {
    steer_err = -(39.f-mid_12[4]);
    
    display_cross_x = 22;
    display_cross_y = (int)mid_12[4];    
    }
  }
  else
  {
      steer_err = -(39.f-mid_12[8]);  //�ж���ʮ����
      display_cross_x = 43;
      display_cross_y = (int) mid_12[8];
  }  
      steer_err_integral += steer_err;
      if(steer_err_integral < -err_integral_max)      
         steer_err_integral = -err_integral_max;   
      if(steer_err_integral >  err_integral_max)      
        steer_err_integral =  err_integral_max;
       
      err_dif = steer_err - last_steer_err;
      
      last_steer_err = steer_err;
      
      if(turn_flag != 59)                                          // ת�䲹����
        turn_compensation = -0.15f*turn_flag*(39.0f-mid_12[turn_flag/5+1] ); 
      else 
        turn_compensation = 0;
      
      steer_duty = (int)(1500 + turn_compensation + steer.kp*steer_err +steer.kd*err_dif);
    
      if(steer_duty<right_max)                  
      {
        steer_duty=right_max;
      }
      if(steer_duty>(left_max))
      {
        steer_duty=left_max;
      }
      
      arkm_coe = f_abs(steer_duty - 1500)/360.0 + 0.2;

    V = (int)(200 - turn_flag*6.5f - 3.5f*f_abs(steer_err));     //�������  
    if(V < 150)
      V = 150;
    if(V > 800)
      V = 800;
    
    dif_speed(V,steer_duty,0);
   
//  motor(150,150);
//  ftm_pwm_duty(S3010_FTM, S3010_CH,steer_duty);
  
    if( display_cross_y >1 && display_cross_y <78)                         //OLED����ʾ�ο�ʮ��
    {
      img[display_cross_x    ][display_cross_y    ] = 0;
      img[display_cross_x    ][display_cross_y + 1] = 0;
      img[display_cross_x    ][display_cross_y + 2] = 0;
      img[display_cross_x    ][display_cross_y - 1] = 0;
      img[display_cross_x    ][display_cross_y - 2] = 0;    
      img[display_cross_x - 1][display_cross_y    ] = 0;
      img[display_cross_x - 2][display_cross_y    ] = 0;          
      img[display_cross_x + 1][display_cross_y    ] = 0;  
      img[display_cross_x + 2][display_cross_y    ] = 0;                  
    }
    
    
  
}
float real_speed = 0;
char i = 0;
int time_point = 0;
float TEMP[8] = {0,0,0,0,0,0,0,0}; 
float current_flow_left = 0, current_flow_right = 0;
void data_transmit()
{       
  /*************�ش�����**************/
      TEMP[0] = steer_duty;
      TEMP[1] =  V;
      TEMP[2] =  real_speed;
      TEMP[3] =  arkm_coe*100;
      TEMP[4] =  area;
//      TEMP[5] =  filter_echo_speed.left;
//      TEMP[6] =  filter_echo_speed.right;
      TEMP[5] =  echo_speed.left;
      TEMP[6] =  echo_speed.right;
      TEMP[7] = time_point; 
//          
      vcan_sendware(TEMP,sizeof(TEMP));                         //�������ݻش�

}


 void Task_50Hz()
 {
      int i=0,j=0;
      camera_get_img();                                         //ͼ��ɼ�
      img_extract(img, imgbuff,CAMERA_SIZE);                    //ͼ���ѹ
      echo_speed_process() ;                                    //���������ݲɼ����˲�
      current_flow_right = 1.0f*adc_once(ADC0_SE17, ADC_8bit);
      current_flow_left  = 1.0f*adc_once(ADC0_SE18, ADC_8bit);
      
     // turn_flag=img_process();                                  //�������� ȫ����  ���� ��Ϊת�䲹���Ĳο�
                                                           // img_process() ��������������ݣ�
                                                              //        midx[60]       ����
                                                                //        mid_12[12]     ÿ 5 ����ƽ�� ��Ϊ������Ƶ�����
                                                                //        left_line[60]  ����� 
                                                                //        right_line[60] �ұ��� 
                                                                //        length[60]     ÿ�п��
                                                                //        Ŀǰ����ֻʹ���� mid_12[12] �� turn_flag �Լ����ٿ���
                                                                //        ����ߡ��ұ��ߡ��п�  Ϊ֮������ӵ�������׼��      
                                                                //                                                             
     translation();
     //printf("we canfly");
     //printf("test\n");
  /*
      for(i=0;i<60;i++)
     {
		 for ( j = 0; j < 80; j++)
		 {
			 if(img[i][j]==255)  printf("1");
			 else
			 {
				 printf("0");
			 }
		 }
		printf("\n");
     }
     printf("\n");
  
    */ 
     
     
     //        if(left_duty<=0)
        {
          ftm_pwm_duty(FTM0, FTM_CH3,2000); 
          ftm_pwm_duty(FTM0, FTM_CH0,0); 
        }  
        
       // if(right_duty>0)
        { 
          ftm_pwm_duty(FTM0, FTM_CH1,2000);
          ftm_pwm_duty(FTM0, FTM_CH2,0);
        }
     
 // motor(100,100);
      
/*      
   if(start_mode==1)
   control_car();//����ң�س�ģʽ
   else
   {
       if(flag_stop==1)
       motor(0,0);
       else
       {
           if(area < 4600)
           control();                                                //�������
           else
           motor(0,0);
       }
   }
   
     i++;
      if(i == 2)
      {
        time_point += 10;
        i = 0;
      }
      
     */
      //data_transmit();                                        //�������ݻش�
     
 }


 void system_init()
 {
   
    gpio_init (PTE11,GPO,HIGH);                                //����IO�� ��ʾ�����۲�CPU������ 
    IO_init();
    adc_init(ADC0_SE17) ;
    adc_init(ADC0_SE18) ;
    OLED_Init();  
    cameraInit();
    FTM_init();                                                 //����Ͷ����ʼ��   
    pid_init();                                                 //PID�����趨         
    //uart_init(UART5,115200);                                    //���ڳ�ʼ��
    Calculate_Distance_FilteringCoefficient(0.02f, 1.05f);      //���㳬�����˲�����
    Calculate_ECHO_FilteringCoefficient(0.02f, 10.05f);         //����������˲�����       
    bluetooth_init();//������ʼ��
    //Ultrasonic_init();                                        //��������ʼ��  
    Task_50Hz_init();                                           //Task_50HZ ��ʼ��
  
 
 }




void echo_speed_process()                                               
{
      FTM_get();                                                //�������ɼ�
      ECHO_IIR_Filter(&echo_speed,&filter_echo_speed);          //�����������˲�
      real_speed = (filter_echo_speed.left + filter_echo_speed.right)/2.0f;
}
void Task_50Hz_init()
{
    pit_init_ms(PIT2, 20);                                      // 20ms�ж�
    set_vector_handler(PIT2_VECTORn ,PIT2_IRQHandler);          //����PIT2���жϷ�����Ϊ PIT2_IRQHandler
    enable_irq (PIT2_IRQn);                                     //ʹ��PIT2�ж�
    set_irq_priority(PIT2_IRQn,2);
}
 
void PIT2_IRQHandler(void)
{
    PTE11_OUT=1;                //����IO��
    Task_50Hz();
    PTE11_OUT=0;
    PIT_Flag_Clear(PIT2);       //���жϱ�־λ
}




void IO_init(void)
{
  //OLED
    gpio_init (PTC12, GPO,0);
    gpio_init (PTC13, GPO,0);
    gpio_init (PTC17, GPO,0);
    gpio_init (PTC18, GPO,0);
  // LED
    gpio_init (PTA14, GPO,1);
    gpio_init (PTA15, GPO,1);
    gpio_init (PTA16, GPO,1);
    gpio_init (PTA17, GPO,1);
  //KEY
    gpio_init (PTD0 , GPI,1);
    gpio_init (PTD1 , GPI,1);
    gpio_init (PTD2 , GPI,1);
    gpio_init (PTD3 , GPI,1);
    gpio_init (PTD4 , GPI,1);
    gpio_init (PTD5 , GPI,1);
    gpio_init (PTD6 , GPI,1);
    gpio_init (PTD7 , GPI,1);
    gpio_init (PTD8 , GPI,1);
    gpio_init (PTD9 , GPI,1);
    gpio_init (PTD10, GPI,1);
    gpio_init (PTD11, GPI,1);


    port_init_NoALT (PTD0 , PULLUP );//�����ڲ�����
    port_init_NoALT (PTD1 , PULLUP ); 
    port_init_NoALT (PTD2 , PULLUP );
    port_init_NoALT (PTD3 , PULLUP );
    port_init_NoALT (PTD4 , PULLUP );
    port_init_NoALT (PTD5 , PULLUP );
    port_init_NoALT (PTD6 , PULLUP );
    port_init_NoALT (PTD7 , PULLUP );
    port_init_NoALT (PTD8 , PULLUP );
    port_init_NoALT (PTD9 , PULLUP );
    port_init_NoALT (PTD10, PULLUP );
    port_init_NoALT (PTD11, PULLUP );
    
    /**********����*****************/
    
    gpio_init (PTB22, GPI,1);//up
    gpio_init (PTB20, GPI,1);//down
    gpio_init (PTC0 , GPI,1);//left
    gpio_init (PTB16, GPI,1);//right
    gpio_init (PTB18, GPI,1);//ok
    
    port_init_NoALT (PTB22, PULLUP );
    port_init_NoALT (PTB20, PULLUP );
    port_init_NoALT (PTC0 , PULLUP );
    port_init_NoALT (PTB16, PULLUP );
    port_init_NoALT (PTB18, PULLUP );
//������
    gpio_init (PTE11, GPO,1);
    gpio_init (PTE12, GPO,1);
//˫��
    gpio_init (PTA6 , GPI,0);
    gpio_init (PTA7 , GPI,0);
    

}

float f_abs(float a)
{
  if(a < 0)
    return -a;
  else 
    return a;
}

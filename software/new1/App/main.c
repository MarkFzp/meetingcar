#include "allheader.h" 
#include "receive.h"
#include "control_car.h"



  void  main(void)
{


    system_init();
    
    while(1)
    {
        

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
    if( length[32] < 60 )               //用参考点下面5行长度判断 不是刚好出十字弯
    {
      if (left_line[27] < 2)
        mid_12[5] /= 2.0;
      else if(right_line[27] > 77)
        mid_12[5] = (mid_12[5] + 79)/2.0;
    
    steer_err = -(39.f-mid_12[5]);
    
    display_cross_x = 27;
    display_cross_y = (int)mid_12[5];
    }
    else                                //用于刚出十字弯瞬间
    {
    steer_err = -(39.f-mid_12[4]);
    
    display_cross_x = 22;
    display_cross_y = (int)mid_12[4];    
    }
  }
  else
  {
      steer_err = -(39.f-mid_12[8]);  //判断入十字弯
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
      
      if(turn_flag != 59)                                          // 转弯补偿项
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

    V = (int)(200 - turn_flag*6.5f - 3.5f*f_abs(steer_err));     //弯道减速  
    if(V < 150)
      V = 150;
    if(V > 800)
      V = 800;
    
    dif_speed(V,steer_duty,0);
   
//  motor(150,150);
//  ftm_pwm_duty(S3010_FTM, S3010_CH,steer_duty);
  
    if( display_cross_y >1 && display_cross_y <78)                         //OLED上显示参考十字
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
  /*************回传数据**************/
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
      vcan_sendware(TEMP,sizeof(TEMP));                         //蓝牙数据回传

}


 void Task_50Hz()
 {
      int i=0,j=0;
      camera_get_img();                                         //图像采集
      img_extract(img, imgbuff,CAMERA_SIZE);                    //图像解压
      echo_speed_process() ;                                    //编码器数据采集和滤波
      current_flow_right = 1.0f*adc_once(ADC0_SE17, ADC_8bit);
      current_flow_left  = 1.0f*adc_once(ADC0_SE18, ADC_8bit);
      
      turn_flag=img_process();                                  //返回最大的 全黑行  行数 作为转弯补偿的参考
                                                           // img_process() 计算完成以下数据：
                                                              //        midx[60]       中线
                                                                //        mid_12[12]     每 5 行求平均 作为舵机控制的依据
                                                                //        left_line[60]  左边线 
                                                                //        right_line[60] 右边线 
                                                                //        length[60]     每行宽度
                                                                //        目前控制只使用了 mid_12[12] 和 turn_flag 以及差速控制
                                                                //        左边线、右边线、行宽  为之后更复杂的赛道做准备      
                                                                //                                                             
     translation();
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
     
  // motor(100,100);
   if(start_mode==1)
   control_car();//进入遥控车模式
   else
   {
       if(flag_stop==1)
       motor(0,0);
       else
       {
           if(area < 4600)
           control();                                                //电机控制
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
      
     
      //data_transmit();                                        //蓝牙数据回传
     
 }


 void system_init()
 {
   
    gpio_init (PTE11,GPO,HIGH);                                //测试IO口 用示波器观察CPU利用率 
    IO_init();
    adc_init(ADC0_SE17) ;
    adc_init(ADC0_SE18) ;
    OLED_Init();  
    cameraInit();
    FTM_init();                                                 //电机和舵机初始化   
    pid_init();                                                 //PID参数设定         
    //uart_init(UART5,115200);                                    //串口初始化
    Calculate_Distance_FilteringCoefficient(0.02f, 1.05f);      //计算超声波滤波参数
    Calculate_ECHO_FilteringCoefficient(0.02f, 10.05f);         //计算编码器滤波参数       
    bluetooth_init();//蓝牙初始化
    //Ultrasonic_init();                                        //超声波初始化  
    Task_50Hz_init();                                           //Task_50HZ 初始化
  
 
 }




void echo_speed_process()                                               
{
      FTM_get();                                                //编码器采集
      ECHO_IIR_Filter(&echo_speed,&filter_echo_speed);          //编码器数据滤波
      real_speed = (filter_echo_speed.left + filter_echo_speed.right)/2.0f;
}
void Task_50Hz_init()
{
    pit_init_ms(PIT2, 20);                                      // 20ms中断
    set_vector_handler(PIT2_VECTORn ,PIT2_IRQHandler);          //设置PIT2的中断服务函数为 PIT2_IRQHandler
    enable_irq (PIT2_IRQn);                                     //使能PIT2中断
    set_irq_priority(PIT2_IRQn,2);
}
 
void PIT2_IRQHandler(void)
{
    PTE11_OUT=1;                //测试IO口
    Task_50Hz();
    PTE11_OUT=0;
    PIT_Flag_Clear(PIT2);       //清中断标志位
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


    port_init_NoALT (PTD0 , PULLUP );//配置内部上拉
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
    
    /**********按键*****************/
    
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
//测试用
    gpio_init (PTE11, GPO,1);
    gpio_init (PTE12, GPO,1);
//双核
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

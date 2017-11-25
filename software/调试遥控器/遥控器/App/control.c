#include "allheader.h"
int no_target_flag=0;//无目标标志位 为1时无目标

int turn_flag=0;//
int turn_counter=1;
int stop_flag=0;
int k;
int sflag=1;//手机控制一键停车

uint16 ctrl_flag=0;//首次看见信标时起跑；

int counter=0;
uint32 left_duty=0,right_duty=0;
int f_differential;

char ch=0;
uint8 left[6]={' ','L','e','f','t',' '};
uint8 right[5]={'R','i','g','h','t'};
uint8 show_x[]={'x',':'};
uint8 show_y[]={'y',':'};
uint8 turn[11];//0左 1右

char Obstacle_yes[1] = "*";
char Obstacle_no[1]  = " ";




//1720 1375
/***********舵机************/
uint32 steer_duty=1547;

const uint32 right_max  = 1720;
const uint32 left_max = 1375;
const uint32 steer_mid = 1547;
//y=4.05x+1435 y为PWM x为度数 右为负 左为正
//y=0.2469x-354.32 x为PWM y为度数

const uint32 err_integral_max = 7500;

int left_err = 0,     left_err_dif = 0,     left_err_integral = 0,     left_last_err = 0;
int right_err = 0,    right_err_dif = 0,    right_err_integral = 0,    right_last_err= 0;
int last_left_duty=0 , last_right_duty=0;


int left_steer_err = 0,   left_steer_err_dif = 0,   left_steer_err_integral = 0,   last_left_steer_midx = 0;
int right_steer_err = 0,  right_steer_err_dif = 0,  right_steer_err_integral = 0,  last_right_steer_midx = 0;



uint16 img_area = 0;

int receive_num[10]={0};
int delay_num = 8;
 


/*
* @brief   以上为变量声明及初值 请勿更改    ↑                    
*/
/*********控制打角时质心的位置*****/ 
uint32 turn_mid=1547;
uint32 right_mid=33;
uint32 left_mid=47;
/********速度更改*************/

int speed_left=400,speed_right=400,speed_normal=400;

/********目标丢失时的舵机PWM********/

uint32 right_pwm_duty  = 1720;
uint32 left_pwm_duty = 1375;
/***********收发字符串******/
  
char buff[100];
//char buff1[100]={0};
uint32 num=0;

float arkerman_time=1,arkerman_coefficient=3;
float arkerman_time_1=1,arkerman_coefficient_1=2;
float arkerman_time_2=1,arkerman_coefficient_2=2;

int dis_last;
int angle_err=0,angle_dif=0,angle_last=0,aim_angle=0,angle_now=0,dis_now=10000;

int fchar=0;
void uart5_handler()
  {
  
    char *temp;
   
  gpio_turn(PTA14);
  UARTn_e uratn = UART5;

    if(UART_S1_REG(UARTN[uratn]) & UART_S1_RDRF_MASK)   //接收数据寄存器满
    {
     uart_getchar(UART5, &ch);
   
    
    
     {
      
      
    if(ch=='s')
    {
      
        fchar=1;
        k=0;
        
       
    }
    
    
    
    if (fchar==1)
    {
     
      if(ch=='e') 
      {
          buff[k]=ch;
          buff[k+1]='\0';
          k=0;
          fchar=0;
                       printf("str=%s\n",buff);
        //  buff1=buff;
      }
      else
      buff[k]=ch;
    
      k++;
    }
	//printf("%d\n", 333);
    
    
    
    }


	
}
   
}


int key_last[6],key_now[6],key[10];

void key_read(void)
{
  
    int i;
    /*key[0]=GPIO_GET(PTD0);
    key[1]=GPIO_GET(PTD1);
    key[2]=GPIO_GET(PTD2);
    key[3]=GPIO_GET(PTD3);
    key[4]=GPIO_GET(PTD4);
    key[5]=GPIO_GET(PTD5);
    */

    key[0]=GPIO_GET(PTA19);
    key[1]=GPIO_GET(PTA18);
    key[2]=GPIO_GET(PTA17);
    key[3]=GPIO_GET(PTA16);
    key[4]=GPIO_GET(PTA15);
    key[5]=GPIO_GET(PTA14);
  
  
    key_last[1]=key_now[1];
    key_last[2]=key_now[2];
    key_last[3]=key_now[3];
    key_last[4]=key_now[4];
    key_last[5]=key_now[5];
   
  
  
 /*key_now[0]=GPIO_GET(PTB16);
    key_now[1]=GPIO_GET(PTB18);
    key_now[2]=GPIO_GET(PTB20);
*/
    
     
    key_now[1]=GPIO_GET(PTB22);
    key_now[2]=GPIO_GET(PTB16);
    key_now[3]=GPIO_GET(PTB18);
    key_now[4]=GPIO_GET(PTC0);
    key_now[5]=GPIO_GET(PTB20);
    
    
      
    /*  for(i=0;i<=5;i++)
    {
           printf("%d/",key[i]);
           

    }
  */
    
   printf("s");
    printf("%d/",key[5]);
    for(i=1;i<=5;i++)
    {
           printf("%d/",key_now[i]);
           

    }
    printf("e");
    
    
}



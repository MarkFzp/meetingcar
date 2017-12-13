#include "allheader.h" 

/****************************以下为蓝牙接受模块************************************/

char receive_char;//串口接收的字符
char str[100];//串口接收的字符串
char str1[100];//串口最终整理的字符串
int ftranslation = 0;
int fchar = 0;
int lenstr = 0;
int k = 0;
int j1;
int receive_num[100];
int flag_stop=1;

int key1_now=0,key1_last=0;


/*******以下为用于遥控器车的变量*********/
int start_mode=1;
int r_head=1,r_back=1,r_left=1,r_right=1,r_mid=1;
int last_head,last_back;
int f_head=1,f_back=1;
int v_mode=0;
int control_duty=1560;




void t_control(void)
{
   
   control_duty=steer_mid;
   
   
   
   
   if(r_left==0)
   {
       //control_duty=left_max;
       
       
        control_duty=right_max;
   }
   
      
   if(r_right==0)
   {
    //  control_duty=right_max;
      
      
      control_duty=left_max;
   }
   
   

   
}

void translation(void)//接收串口字符串程序
{

	char *temp;
	int i;
	// printf("%d\n",ftranslation);
	if (ftranslation == 1)
	{
		ftranslation = 0;
		//   printf("strrecvrag=%s\n",str1);
		//  OLED_P6x8(6,80,str1);
		//OLED_P6x8(6, 80, str1);
		temp = strtok(str1, "/");
		receive_num[0] = atoi(temp);
                
		for (i = 1; i < 10; i++)
		{
			receive_num[i] = 0;
			temp = strtok(NULL, "/");
			receive_num[i] = atoi(temp);
		//	printf("%d %d   ", i, receive_num[i]);
		}
		//printf("\n");
                
		//  printf("%d\n",light_num);
		//reach_back();
                
                last_head=r_head;
                last_back=r_back;
                
                start_mode=receive_num[0];
                r_head=receive_num[1];
                r_back=receive_num[2];
                r_left=receive_num[5];
                r_right=receive_num[3];
                r_mid=receive_num[5];
                
             
              
                
                
                
                
                if((last_head==0)&&(r_head==1))
                {
                    v_mode++;
                    flag_stop=-1;
                }
 
                
                if((last_back==0)&&(r_back==1))
                {
                  v_mode--;
                  flag_stop=1;
                }
                if(start_mode==0)
                {
                   v_mode=0;
                }
                t_control();   
                
                // printf("%d %d\n",start_mode,control_duty);
                
                
                
                
                
                
                
                
                
                 SD_saveimg();
                 

	}

}








void rec_uart(void)
{
	// gpio_turn(PTA14);
	UARTn_e uratn = UART5;

	if (UART_S1_REG(UARTN[uratn]) & UART_S1_RDRF_MASK)   //接收数据寄存器满
	{
		uart_getchar(UART5, &receive_char);
		ftranslation = 0;
		//printf("%c\n", receive_char);
		if (receive_char == 's')
		{
			fchar = 1;
			k = 0;
		}

		if (fchar == 1)
		{
			if (receive_char == 'e')
			{
				str[k - 1] = receive_char;
				str[k] = '\0';
				k = 0;
				fchar = 0;
				ftranslation = 1;
				lenstr = strlen(str);
				for (j1 = 0; j1 <= lenstr; j1++)
					str1[j1] = str[j1];
			}
			else
			{
				if (k>0)
					str[k - 1] = receive_char;
				ftranslation = 0;
			}
			k++;
		}
	}
}

void bluetooth_init(void)//蓝牙初始化
{
	uart_init(UART5, 115200);
	uart_rx_irq_en(UART5);
	set_vector_handler(UART5_RX_TX_VECTORn, rec_uart);
	enable_irq(UART5_RX_TX_IRQn);
}
/***********************************************************/
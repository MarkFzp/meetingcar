#include "allheader.h" 

/****************************����Ϊ��������ģ��************************************/

char receive_char;//���ڽ��յ��ַ�
char str[100];//���ڽ��յ��ַ���
char str1[100];//��������������ַ���
int ftranslation = 0;
int fchar = 0;
int lenstr = 0;
int k = 0;
int j1;
int receive_num[100];
int flag_stop=1;

int key1_now=0,key1_last=0;


/*******����Ϊ����ң�������ı���*********/
int start_mode=1;
int r_head=1,r_back=1,r_left=1,r_right=1,r_mid=1;
int last_head,last_back;
int f_head=1,f_back=1;
int v_mode=0;
int control_duty=1500;




void t_control(void)
{
   
   control_duty=steer_mid;
   
   
   
   
   if(r_left==0)
   {
       control_duty=left_max;
   }
   
      
   if(r_right==0)
   {
      control_duty=right_max;
   }
   
   

   
}

int r_x=30,r_y=30;//����ͼ�����
int rduty=1900;
void translation(void)//���մ����ַ�������
{
  
	char *temp;
	int i;
//printf("%d\n",ftranslation);
	if (ftranslation == 1)
	{
		ftranslation = 0;
		//printf("strrecvrag=%s\n",str1);
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
                
                rduty=receive_num[0]; 
                ftm_pwm_duty(S3010_FTM, S3010_CH,rduty);
                
	}

}








void rec_uart(void)
{
	// gpio_turn(PTA14);
	UARTn_e uratn = UART5;

	if (UART_S1_REG(UARTN[uratn]) & UART_S1_RDRF_MASK)   //�������ݼĴ�����
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

void bluetooth_init(void)//������ʼ��
{
	uart_init(UART5, 115200);
	uart_rx_irq_en(UART5);
	set_vector_handler(UART5_RX_TX_VECTORn, rec_uart);
	enable_irq(UART5_RX_TX_IRQn);
}
/***********************************************************/
#include "common.h"
#include "include.h"

void IO_init(void)
{
  
  
  
  
  
  /************************拨码***************/
  gpio_init (PTA14, GPI,1);
  gpio_init (PTA15, GPI,1);
  gpio_init (PTA16, GPI,1);
  gpio_init (PTA17, GPI,1);
   // gpio_init (PTA18, GPI,1);
    //gpio_init (PTA19, GPI,1);
    
    
  
   
   /***************按键*******************/
    gpio_init (PTB22, GPI,1);
    gpio_init (PTB16, GPI,1);
    gpio_init (PTB18, GPI,1);
    gpio_init (PTC0, GPI,1);
    gpio_init (PTB20, GPI,1);
  
    port_init_NoALT (PTB22, PULLUP );
    port_init_NoALT (PTB16, PULLUP );
    port_init_NoALT (PTB18, PULLUP );
    port_init_NoALT (PTC0, PULLUP );
    port_init_NoALT (PTB20, PULLUP );

  
  
  
  /*OLED
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
   // gpio_init (PTD1, GPI,1);
    gpio_init (PTD2, GPI,1);
    gpio_init (PTD3, GPI,1);
    gpio_init (PTD4, GPI,1);
    gpio_init (PTD5, GPI,1);
    gpio_init (PTD6, GPI,1);
    gpio_init (PTD7, GPI,1);
    gpio_init (PTD8, GPI,1);
    port_init(PTD1,ALT1|PULLUP);
    //port_init_NoALT (PTD1, PULLUP ); //配置内部上拉
    port_init_NoALT (PTD2, PULLUP );
    port_init_NoALT (PTD3, PULLUP );
    port_init_NoALT (PTD4, PULLUP );
    port_init_NoALT (PTD5, PULLUP );
    port_init_NoALT (PTD6, PULLUP );
    port_init_NoALT (PTD7, PULLUP );
    port_init_NoALT (PTD8, PULLUP );

    //chaoshengbo
    */
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //gpio_init(PTB18,GPI,0);       //初始化RX端口
   // port_init(PTB18, ALT1 | IRQ_RISING  | PULLDOWN | PF);
}
void FTM_init(void)
{
    ftm_pwm_init(S3010_FTM, S3010_CH,S3010_HZ,1831);  //初始化 舵机 PWM
    ftm_pwm_init(FTM0, FTM_CH0,10*1000,0); 
    ftm_pwm_init(FTM0, FTM_CH1,10*1000,0);
    ftm_pwm_init(FTM0, FTM_CH2,10*1000,1500);
    ftm_pwm_init(FTM0, FTM_CH3,10*1000,1500); 
    
 // ftm_quad_init(FTM1);                                    //FTM1 正交解码初始化（所用的管脚可查 port_cfg.h ）
}







unsigned short CRC_CHECK(unsigned char *Buf, unsigned char CRC_CNT)
{
    unsigned short CRC_Temp;
    unsigned char i,j;
    CRC_Temp = 0xffff;

    for (i=0;i<CRC_CNT; i++){      
        CRC_Temp ^= Buf[i];
        for (j=0;j<8;j++) {
            if (CRC_Temp & 0x01)
                CRC_Temp = (CRC_Temp >>1 ) ^ 0xa001;
            else
                CRC_Temp = CRC_Temp >> 1;
        }
    }
    return(CRC_Temp);
}



// 后期速度闭环需要用到的模拟示波器函数，不用看直接用
float OutData[4] = { 0 };
void OutPut_Data(void)
{
  int temp[4] = {0};
  unsigned int temp1[4] = {0};
  unsigned char databuf[10] = {0};
  unsigned char i;
  unsigned short CRC16 = 0;
  for(i=0;i<4;i++)
   {
    
    temp[i]  = (int)OutData[i];
    temp1[i] = (unsigned int)temp[i];
    
   }
   
  for(i=0;i<4;i++) 
  {
    databuf[i*2]   = (unsigned char)(temp1[i]%256);
    databuf[i*2+1] = (unsigned char)(temp1[i]/256);
  }
  
  CRC16 = CRC_CHECK(databuf,8);
  databuf[8] = CRC16%256;
  databuf[9] = CRC16/256;
  
  for(i=0;i<10;i++)

    uart_putchar(UART5, databuf[i]);
}

#include "common.h"
#include "include.h"

uint8 Pixel[128]={0};
uint8 AtemP ;


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
     gpio_init (PTD0, GPI,1);
    gpio_init (PTD1, GPI,1);
    gpio_init (PTD2, GPI,1);
    gpio_init (PTD3, GPI,1);
    gpio_init (PTD4, GPI,1);
    gpio_init (PTD5, GPI,1);
    gpio_init (PTD6, GPI,1);
    gpio_init (PTD7, GPI,1);
    gpio_init (PTD8, GPI,1);
    gpio_init (PTD9, GPI,1);
    gpio_init (PTD10, GPI,1);
    gpio_init (PTD11, GPI,1);


    port_init_NoALT (PTD0, PULLUP );//配置内部上拉
    port_init_NoALT (PTD1, PULLUP ); 
    port_init_NoALT (PTD2, PULLUP );
    port_init_NoALT (PTD3, PULLUP );
    port_init_NoALT (PTD4, PULLUP );
    port_init_NoALT (PTD5, PULLUP );
    port_init_NoALT (PTD6, PULLUP );
    port_init_NoALT (PTD7, PULLUP );
    port_init_NoALT (PTD8, PULLUP );
    port_init_NoALT (PTD9, PULLUP );
    port_init_NoALT (PTD10, PULLUP );
    port_init_NoALT (PTD11, PULLUP );
    
    /**********按键*****************/
    
    gpio_init (PTB22, GPI,1);//up
    gpio_init (PTB20, GPI,1);//down
    gpio_init (PTC0, GPI,1);//left
    gpio_init (PTB16, GPI,1);//right
    gpio_init (PTB18, GPI,1);//ok
    
    port_init_NoALT (PTB22, PULLUP );
    port_init_NoALT (PTB20, PULLUP );
    port_init_NoALT (PTC0, PULLUP );
    port_init_NoALT (PTB16, PULLUP );
    port_init_NoALT (PTB18, PULLUP );
//测试用
    gpio_init (PTE11, GPO,1);
    gpio_init (PTE12, GPO,1);
//双核
    gpio_init (PTA6, GPI,0);
    gpio_init (PTA7, GPI,0);
    

}
void FTM_init(void)
{
    ftm_pwm_init(S3010_FTM, S3010_CH,S3010_HZ,1500);  //初始化 舵机 PWM
    ftm_pwm_init(FTM0, FTM_CH0,10*1000,0); 
    ftm_pwm_init(FTM0, FTM_CH1,10*1000,0);
    ftm_pwm_init(FTM0, FTM_CH2,10*1000,0); 
    ftm_pwm_init(FTM0, FTM_CH3,10*1000,0); 
    
    ftm_quad_init(FTM1);                                    //FTM1 正交解码初始化（所用的管脚可查 port_cfg.h ）
    ftm_quad_init(FTM2);
}

void avoidance_init()
{
   gpio_init (PTE2, GPI,1);
   gpio_init (PTE3, GPI,1);
   gpio_init (PTE4, GPI,1);
   
   port_init_NoALT (PTE2, PULLUP );
   port_init_NoALT (PTE3, PULLUP );
   port_init_NoALT (PTE4, PULLUP );


}
void CCD_init(void)
{
  
  //uint8 *pixel_pt;
 // pixel_pt = Pixel;
  
  gpio_init (PTE0, GPO,HIGH);
  gpio_init (PTE1, GPO,HIGH);
  adc_init(ADC1_SE6a) ;//ADC1_SE6a
//   gpio_init (PTE1, GPO,HIGH);
//  gpio_init (PTE2, GPO,HIGH);
//  adc_init(ADC1_SE4a) ;
 // uint8 i=0;
  
  
//  uint8 i=0;
  //for(i=0; i<128+10; i++) 
  //{
    //*pixel_pt++ = 0;
 // }
  
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

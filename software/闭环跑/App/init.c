#include "allheader.h" 
#include "receive.h"
#include "control_car.h" 




 void system_init(void)
 {
    gpio_init(PTE11,GPO,HIGH);                                //测试IO口 用示波器观察CPU利用率 
    IO_init();
    adc_init(ADC0_SE17) ;//??
    adc_init(ADC0_SE18) ;//??
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

void Task_50Hz_init(void)
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

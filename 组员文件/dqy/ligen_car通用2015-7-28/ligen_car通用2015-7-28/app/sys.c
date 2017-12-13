#include "sys.h"

GPIO_InitTypeDef pta_init;
GPIO_InitTypeDef ptb_init;
GPIO_InitTypeDef ptc_init;
GPIO_InitTypeDef pte_init;
GPIO_InitTypeDef ptd_init;
DMA_InitTypeDef dma_init_struct;
DMA_InitTypeDef dmac_init_struct;
DMA_InitTypeDef dmad_init_struct;
ADC_InitTypeDef adc_init_struct;
void bm_init(void);
void pit_init(void);
void pit_isr(void);
void dma0_isr(void);
void dma1_isr(void);
void lptmr_isr();
void Boma_init_gpio();
void dma_camera_isr();
int pitcnt=0;
#define DMA_MAX_NUM (32767)
int ch1_over_cnt = 0; //通道溢出计数
int ch2_over_cnt = 0;
uint32 ch1_pulseacc = 0;//脉冲累加值计数
uint32 ch2_pulseacc = 0;
int cjh=0;
//变量声明
//===以下为上位机相关=====
#define MAX_S  14
#define RX_SU  1
#define RX_ER 0
uint8 flag_rx_succsess=RX_ER;
int8 FloatSave[12];
int8 RX[MAX_S];
int8 RX_FLAG=0;
uint16 ltpmt_temp=0;
int8 sa[8];
uint8 count_RX;
int str_ln=0;
struct NUM_GET    //
{
  float A;
  float B;
  float C;	
};
struct NUM_GET NUM_A;
struct NUM_GET NUM_B;
struct NUM_GET NUM_C;
struct NUM_GET NUM_D;
struct NUM_GET NUM_E;
void ReceFloat(void);
void NUM_GET(void);
void NUM_Send(void);
void FloatToChar(float floatNum, signed char* byteArry);
void putstr(signed char *s,signed char a);

//============================
int LED_i=0;
int aaa=0;
uint8 Pix_Data[V][H];       //采集240行 250列的图像数据 
uint8 ImageData[V_A][H_A]; //处理 80行  50列图像数据 
uint8 ThresholdData[V_A][H_A];//二值化数据数组 
int V_Cnt=-1;                     //行采集计数
int Is_DispPhoto=0;               //图像发送标志
extern FTM_InitTypeDef ftm_init_struct;
PIT_InitTypeDef pit_init_param;
GPIO_InitTypeDef gpio_init_struct;
LPTMR_InitTypeDef lptmr_init_param;
FTM_InitTypeDef ftm1_init_struct;
int32 qd_result=0;
float fs=-6;
int GetFreq;
int GetCnt;
char pData1[1];
char pData2[1];
char pData3[1];
void public_init(void)
{
  Boma_init_gpio();
  LED_init_gpio();
  Camera_gpio_init();
  Camera_dma_init();
  uart_init();
  

  bm_init();
  
    //LPTMR_MODE_PLACC脉冲累加模式
  //LPTMR_ALT1的输入口为PTA19
  //禁用中断
 // 无中断函数 
//  GetFreq=0;
//  GetCnt=0;
//  lptmr_init_param.LPTMR_Mode = LPTMR_MODE_PLACC;
//  lptmr_init_param.LPTMR_PluseAccInput = LPTMR_ALT1;
//  lptmr_init_param.LPTMR_Isr = NULL;
//   LPLD_LPTMR_Init(lptmr_init_param); 
}
void ADC_init()
{
  adc_init_struct.ADC_Adcx = ADC0;
  adc_init_struct.ADC_DiffMode = ADC_SE;        //单端采集
  adc_init_struct.ADC_BitMode = SE_16BIT;       //单端12位精度
  adc_init_struct.ADC_SampleTimeCfg = SAMTIME_SHORT;    //短采样时间
  adc_init_struct.ADC_HwAvgSel = HW_DISAVG;       //4次硬件平均
  adc_init_struct.ADC_CalEnable = TRUE; //使能初始化校验
  //初始化ADC
  LPLD_ADC_Init(adc_init_struct);
  //为了保证复用功能不被占用，最好使能相应ADC通道
  //RUSH开发板的电位器使用DAD0通道进行采集
  //单端DAD1通道的引脚为(ADC2_DP0)
  LPLD_ADC_Chn_Enable(ADC0, AD9);
   


}

void lptmr_isr()
{
  
   
    if(GetCnt>1) //进行100次累加，累加次数越高，精度越高，但实时性降低
    {
       GetFreq=ltpmt_temp/2; //取平均
       //printf("the PulseAcc:%d hz \r\n",GetFreq*100);
       ltpmt_temp=0;
       GetCnt=0;
    }
    else
    {
     ltpmt_temp+=LPLD_LPTMR_GetPulseAcc();
       GetCnt++;
    }
    
    LPLD_LPTMR_ResetCounter();       //复位LPTMR0 counter 
    lptmr_init_param.LPTMR_Mode = LPTMR_MODE_PLACC;
    lptmr_init_param.LPTMR_PluseAccInput = LPTMR_ALT1;
    lptmr_init_param.LPTMR_Isr = NULL;
    LPLD_LPTMR_Init(lptmr_init_param);
}

void Boma_init_gpio()
{
  
    // 配置 PTA28、PTA29 为GPIO功能,输入,内部下拉，不产生中断
    gpio_init_struct.GPIO_PTx = PTA;      
    gpio_init_struct.GPIO_Pins = GPIO_Pin28|GPIO_Pin29;     //引脚
    gpio_init_struct.GPIO_Dir = DIR_INPUT;        //输入
    gpio_init_struct.GPIO_PinControl = INPUT_PULL_DOWN|IRQC_DIS;     //内部上拉|不产生中断
    LPLD_GPIO_Init(gpio_init_struct);
    
    
    // 配置 PTB 为GPIO功能,输入,内部下拉，不产生中断
    gpio_init_struct.GPIO_PTx = PTB;      
    gpio_init_struct.GPIO_Pins = GPIO_Pin4|GPIO_Pin5|GPIO_Pin9|GPIO_Pin11|GPIO_Pin17|GPIO_Pin19|GPIO_Pin21
                                |GPIO_Pin20|GPIO_Pin23|GPIO_Pin22;     //引脚
    gpio_init_struct.GPIO_Dir = DIR_INPUT;        //输入
    gpio_init_struct.GPIO_PinControl = INPUT_PULL_DOWN|IRQC_DIS;     //内部上拉|不产生中断
    LPLD_GPIO_Init(gpio_init_struct);

  // 配置 E4，低电平高驱动输出
  gpio_init_struct.GPIO_PTx = PTE;
  gpio_init_struct.GPIO_Pins = GPIO_Pin4;
  gpio_init_struct.GPIO_Dir = DIR_OUTPUT;
  gpio_init_struct.GPIO_Output = OUTPUT_L;
  gpio_init_struct.GPIO_PinControl = OUTPUT_DSH;
  LPLD_GPIO_Init(gpio_init_struct);
  
  
//      // 配置 PTA28、PTA29 为GPIO功能,输入,内部下拉，不产生中断
//    gpio_init_struct.GPIO_PTx = PTA;      
//    gpio_init_struct.GPIO_Pins = GPIO_Pin19;     //引脚
//    gpio_init_struct.GPIO_Dir = DIR_INPUT;        //输入
//    gpio_init_struct.GPIO_PinControl = INPUT_PULL_DOWN|IRQC_DIS;     //内部上拉|不产生中断
//    LPLD_GPIO_Init(gpio_init_struct);
  
  
}

/*
* 初始化FTM1的正交解码功能
*
*/

void bm_init(void)
{
  
  // 选择PTC0作为脉冲输入端
  // 配置成输入下拉电阻的模式
  // DMA上升沿触发
  // LPLD_GPIO_Init(PTC, 0, DIR_INPUT, INPUT_PDOWN, IRQC_DMARI); 
  ptc_init.GPIO_PTx = PTC;
  ptc_init.GPIO_Dir = DIR_INPUT;
  ptc_init.GPIO_Pins = GPIO_Pin0;
  ptc_init.GPIO_PinControl =IRQC_DMARI | INPUT_PULL_DIS;
  LPLD_GPIO_Init(ptc_init); 
  
  // 选择PTB0作为脉冲输入端
  // 配置成输入下拉电阻的模式
  // DMA上升沿触发
  //LPLD_GPIO_Init(PTB, 0, DIR_INPUT, INPUT_PULL_DOWN, IRQC_DMARI); 
  ptb_init.GPIO_PTx = PTD;
  ptb_init.GPIO_Dir = DIR_INPUT;
  ptb_init.GPIO_Pins = GPIO_Pin8;
  ptb_init.GPIO_PinControl = IRQC_DMARI|INPUT_PULL_DIS;
  LPLD_GPIO_Init(ptb_init); 
  
//    ptb_init.GPIO_PTx = PTA;
//  ptb_init.GPIO_Dir = DIR_INPUT;
//  ptb_init.GPIO_Pins = GPIO_Pin19;
//  ptb_init.GPIO_PinControl = IRQC_DMARI|INPUT_PULL_DIS;
//  LPLD_GPIO_Init(ptb_init); 
  
  
  //DMA初始化结构体赋值
  
  //DMA参数配置
  dmac_init_struct.DMA_CHx = DMA_CH1;    //CH0通道
  dmac_init_struct.DMA_Req = PORTC_DMAREQ;//PORTE为请求源
  dmac_init_struct.DMA_MajorLoopCnt = DMA_MAX_NUM; //主循环计数值：行采集点数，宽度
  dmac_init_struct.DMA_MinorByteCnt = 1; //次循环字节计数：每次读入1字节
  dmac_init_struct.DMA_SourceAddr = (uint32)&pData1;//源地址：PTD0~7
  dmac_init_struct.DMA_DestAddr = (uint32)pData1;//目的地址：存放图像的数组
  dmac_init_struct.DMA_MajorCompleteIntEnable=TRUE;
  dmac_init_struct.DMA_Isr=dma0_isr;
  //初始化DMA
  LPLD_DMA_Init(dmac_init_struct);
  
  
  
  
  //DMA参数配置
  dmad_init_struct.DMA_CHx = DMA_CH2;    //CH0通道
  dmad_init_struct.DMA_Req = PORTD_DMAREQ;//PORTE为请求源
  dmad_init_struct.DMA_MajorLoopCnt = DMA_MAX_NUM; //主循环计数值：行采集点数，宽度
  dmad_init_struct.DMA_MinorByteCnt = 1; //次循环字节计数：每次读入1字节
  dmad_init_struct.DMA_SourceAddr = (uint32)&pData2;//源地址：PTD0~7
  dmad_init_struct.DMA_DestAddr = (uint32)pData2;//目的地址：存放图像的数组
  dmad_init_struct.DMA_MajorCompleteIntEnable=TRUE;
  dmad_init_struct.DMA_Isr=dma1_isr;
  //初始化DMA
  LPLD_DMA_Init(dmad_init_struct);
  
    //DMA参数配置
  dmad_init_struct.DMA_CHx = DMA_CH3;    //CH0通道
  dmad_init_struct.DMA_Req = PORTA_DMAREQ;//PORTE为请求源
  dmad_init_struct.DMA_MajorLoopCnt = DMA_MAX_NUM; //主循环计数值：行采集点数，宽度
  dmad_init_struct.DMA_MinorByteCnt = 1; //次循环字节计数：每次读入1字节
  dmad_init_struct.DMA_SourceAddr = (uint32)&pData3;//源地址：PTD0~7
  dmad_init_struct.DMA_DestAddr = (uint32)pData3;//目的地址：存放图像的数组
 // dmad_init_struct.DMA_MajorCompleteIntEnable=TRUE;
 // dmad_init_struct.DMA_Isr=dma1_isr;
  //初始化DMA
  LPLD_DMA_Init(dmad_init_struct);
  //....如果需要自行添加更多通道
  
  
  //    //初始化PIT
  //  pit_init_param.PIT_Pitx = PIT0;
  //  pit_init_param.PIT_PeriodMs = 10;//100ms 0.1khz
  //  pit_init_param.PIT_Isr = pit_isr; 
  //
  //  LPLD_PIT_Init(pit_init_param);
  
}
void dma0_isr(void)
{
  ch1_over_cnt++; //通道0溢出累加
  //初始化DMA模块
  LPLD_DMA_Init(dmac_init_struct); 
}

void dma1_isr(void)
{
  ch2_over_cnt++;//通道1溢出累加
  //初始化DMA模块
  LPLD_DMA_Init(dmad_init_struct); 
}

/*
* PIT中断函数
*/
int lastspeed[3];
int lastspeed_i=0;
int bm_err=0,bm_err_z=0,bm_err_y=0;
int bm_z_last=0,bm_y_last=0;
int err_cs=0;
void pit_isr(void)
{
  bm_z = (DMA_MAX_NUM - DMA0->TCD[DMA_CH1].CITER_ELINKNO); //获得最终的脉冲累加值
  bm_y = (DMA_MAX_NUM - DMA0->TCD[DMA_CH2].CITER_ELINKNO);
  if(fabss(bm_z-bm_y)>=30)
  {
  bm_z=MIN(bm_z,bm_y);
 bm_y=bm_z;
  }
GetFreq = (DMA_MAX_NUM - DMA0->TCD[DMA_CH3].CITER_ELINKNO);
//  if((bm_z-bm_z_last)>50&&(bm_y-bm_y_last)>50&&err_cs<3) 
//  {err_cs++;
//  bm_z=bm_z_last;
//  bm_y=bm_y_last;
//  }
//  else
//  {
//    err_cs=0;
//  }
//  
//  if(fabss(bm_z_last-bm_z)>30&&fabss(bm_y_last-bm_y)<20&&bm_err_z<3) bm_err_z++; else bm_err_z=0;
//  if(fabss(bm_y_last-bm_y)>30&&fabss(bm_z_last-bm_z)<20&&bm_err_y<3) bm_err_y++; else bm_err_y=0;
//  if(bm_err_z>0) bm_z=bm_z_last; else bm_z_last=bm_z;
//  if(bm_err_y>0) bm_y=bm_y_last; else bm_y_last=bm_y;
  
  
  

  bm_pz=(bm_z+bm_y)/2;
  
  //  if(ch1_over_cnt !=0)
  //  {
  //    bm_z = bm_z + DMA_MAX_NUM*ch1_over_cnt;
  //    ch1_over_cnt = 0;  //清零溢出计数
  //  }
  //  
  //  if(ch2_over_cnt !=0)
  //  {
  //    bm_y = bm_y + DMA_MAX_NUM*ch2_over_cnt;
  //    ch2_over_cnt = 0;
  //  }
  //DMA参数配置
  dmac_init_struct.DMA_CHx = DMA_CH1;    //CH0通道
  dmac_init_struct.DMA_Req = PORTC_DMAREQ;//PORTE为请求源
  dmac_init_struct.DMA_MajorLoopCnt = DMA_MAX_NUM; //主循环计数值：行采集点数，宽度
  dmac_init_struct.DMA_MinorByteCnt = 1; //次循环字节计数：每次读入1字节
  dmac_init_struct.DMA_SourceAddr = (uint32)&pData1;//源地址：PTD0~7
  dmac_init_struct.DMA_DestAddr = (uint32)pData1;//目的地址：存放图像的数组
  dmac_init_struct.DMA_MajorCompleteIntEnable=TRUE;
  dmac_init_struct.DMA_Isr=dma0_isr;
  //初始化DMA
  LPLD_DMA_Init(dmac_init_struct);
  
  
  
  
  //DMA参数配置
  dmad_init_struct.DMA_CHx = DMA_CH2;    //CH0通道
  dmad_init_struct.DMA_Req = PORTD_DMAREQ;//PORTE为请求源
  dmad_init_struct.DMA_MajorLoopCnt = DMA_MAX_NUM; //主循环计数值：行采集点数，宽度
  dmad_init_struct.DMA_MinorByteCnt = 1; //次循环字节计数：每次读入1字节
  dmad_init_struct.DMA_SourceAddr = (uint32)&pData2;//源地址：PTD0~7
  dmad_init_struct.DMA_DestAddr = (uint32)pData2;//目的地址：存放图像的数组
  dmad_init_struct.DMA_MajorCompleteIntEnable=TRUE;
  dmad_init_struct.DMA_Isr=dma1_isr;
  //初始化DMA
  LPLD_DMA_Init(dmad_init_struct);
//  
      //DMA参数配置
  dmad_init_struct.DMA_CHx = DMA_CH3;    //CH0通道
  dmad_init_struct.DMA_Req = PORTA_DMAREQ;//PORTE为请求源
  dmad_init_struct.DMA_MajorLoopCnt = DMA_MAX_NUM; //主循环计数值：行采集点数，宽度
  dmad_init_struct.DMA_MinorByteCnt = 1; //次循环字节计数：每次读入1字节
  dmad_init_struct.DMA_SourceAddr = (uint32)&pData3;//源地址：PTD0~7
  dmad_init_struct.DMA_DestAddr = (uint32)pData3;//目的地址：存放图像的数组
//  dmad_init_struct.DMA_MajorCompleteIntEnable=TRUE;
//  dmad_init_struct.DMA_Isr=dma1_isr;
  //初始化DMA
  LPLD_DMA_Init(dmad_init_struct);
  //....如果需要自行添加更多通道
  //  LPLD_DMA_EnableReq(DMA_CH1); //开启通道请求
  //  LPLD_DMA_EnableReq(DMA_CH2);
  
  
}
void Camera_dma_init()
{  V_Cnt=0;          //行计数
Is_DispPhoto=0;   //显示图像
//DMA参数配置
dma_init_struct.DMA_CHx = DMA_CH0;    //CH0通道
dma_init_struct.DMA_Req = PORTE_DMAREQ;//PORTE为请求源
dma_init_struct.DMA_MajorLoopCnt = H; //主循环计数值：行采集点数，宽度
dma_init_struct.DMA_MinorByteCnt = 1; //次循环字节计数：每次读入1字节
dma_init_struct.DMA_SourceAddr = (uint32)&PTD->PDIR;//源地址：PTD0~7
dma_init_struct.DMA_DestAddr = (uint32)Pix_Data;//目的地址：存放图像的数组
dma_init_struct.DMA_DestAddrOffset = 1;    //目的地址偏移：每次读入增加1
dma_init_struct.DMA_AutoDisableReq = TRUE; //自动禁用请求

//初始化DMA
LPLD_DMA_Init(dma_init_struct);

}
void dma_camera_isr()
{LED_D_T;
LPLD_UART_PutCharArr(UART4,"接收结束",8);
//清行中断标志，防止进入无效行中断
LPLD_GPIO_ClearIntFlag(PORTB);
enable_irq(PORTB_IRQn);

}

void Camera_gpio_init(void)
{
  //OV数据口初始化：PTD0~PTD7
  ptd_init.GPIO_PTx = PTD;
  ptd_init.GPIO_Dir = DIR_INPUT;
  ptd_init.GPIO_Pins = GPIO_Pin0_7;
  ptd_init.GPIO_PinControl = IRQC_DIS | INPUT_PULL_UP;
  LPLD_GPIO_Init(ptd_init);
  
  //OV行信号接口初始化：PTB3-H
  ptb_init.GPIO_PTx = PTB;
  ptb_init.GPIO_Dir = DIR_INPUT;
  ptb_init.GPIO_Pins = GPIO_Pin3;
  ptb_init.GPIO_PinControl = IRQC_RI|INPUT_PULL_DOWN;
  ptb_init.GPIO_Isr = portb_isr;
  LPLD_GPIO_Init(ptb_init); 
  
  //OV场信号接口初始化：PTA17-V
  pta_init.GPIO_PTx = PTA;
  pta_init.GPIO_Dir = DIR_INPUT;
  pta_init.GPIO_Pins = GPIO_Pin17;
  pta_init.GPIO_PinControl = IRQC_RI|INPUT_PULL_DOWN;
  pta_init.GPIO_Isr = porta_isr;
  LPLD_GPIO_Init(pta_init); 
  
  //OV PCLK信号接口初始化：PTE6-PCLK
  pte_init.GPIO_PTx = PTE;
  pte_init.GPIO_Pins = GPIO_Pin6;
  pte_init.GPIO_Dir = DIR_INPUT;
  pte_init.GPIO_PinControl = IRQC_DMARI | INPUT_PULL_DOWN;
  LPLD_GPIO_Init(pte_init); 
//  
//    //OV PCLK信号接口初始化：PTE6-PCLK
  pte_init.GPIO_PTx = PTA;
  pte_init.GPIO_Pins = GPIO_Pin19;
  pte_init.GPIO_Dir = DIR_INPUT;
  pte_init.GPIO_PinControl = IRQC_DMARI | INPUT_PULL_DOWN;
  LPLD_GPIO_Init(pte_init); 
  
  
}



int joc=0;

int V_count=0;
void porta_isr()//V-场信号
{ 
  pit_isr();
//  lptmr_isr();
  LPLD_DMA_EnableReq(DMA_CH1); //开启通道请求
  LPLD_DMA_EnableReq(DMA_CH2);
 LPLD_DMA_EnableReq(DMA_CH3);
  if(LPLD_GPIO_IsPinxExt(PORTA, GPIO_Pin17)){joc++;}
  if(LPLD_GPIO_IsPinxExt(PORTA, GPIO_Pin17) &&Is_DispPhoto==0)
  {if(V_count<10000)V_count++;
  //检测到场开始信号，加载目的地址
  LPLD_DMA_LoadDstAddr(DMA_CH0, Pix_Data);
  //清行中断标志，防止进入无效行中断
  LPLD_GPIO_ClearIntFlag(PORTB);
  enable_irq(PORTB_IRQn);
  }
  
  if(joc>1)
  {
    joc=0;
    
  }
  
  LPLD_GPIO_ClearIntFlag(PORTA);
  
}
//int cjhs_a[V]={  
//1,2,3,4,5,6,7,8,9,10,
//11,12,13,14,15,16,17,18,19,20,
//21,22,23,24,25,26,27,28,29,30,
//31,32,33,34,35,36,37,38,39,40,
//41,42,43,44,45,46,47,48,49,50,
//52,54,56,58,60,62,64,66,68,70,
//72,74,76,78,80,82,84,86,88,90,
//93,96,99,102,105,108,111,114,117,120,
//123,126,129,132,135,138,141,144,147,150,
//155,160,165,170,175,180,185,190,200,210
//};
int cjhs_a[V]={  
1,2,3,4,5,6,7,8,9,10,
11,12,13,14,15,16,17,18,19,20,
21,22,23,24,25,26,27,28,29,30,
31,32,33,34,35,36,37,38,39,40,
41,42,43,44,45,46,47,48,49,50,
52,54,56,58,60,62,64,66,68,70,
72,74,76,78,80,82,84,86,88,90,
93,96,99,102,105,108,111,114,117,120,
123,126,129,132,135,140,145,150,155,160,
165,170,175,180,185,190,195,205,210,215
};


//int cjhs[V]={  
//1,2,3,4,5,6,7,8,9,10,
//11,12,13,14,15,16,17,18,19,20,
//21,22,23,24,25,26,27,28,29,30,
//31,32,33,34,35,36,37,38,39,40,
//41,42,43,44,45,46,47,48,49,50,
//51,52,53,54,55,56,57,58,59,60,
//61,62,63,64,65,66,67,68,69,70,
//72,74,76,78,80,82,84,86,88,90,
//93,96,99,102,105,108,111,114,117,120,
//123,126,129,132,135,138,141,144,147,150,
//};


int cjhs[V]={  
1,2,3,4,5,6,7,8,9,10,
11,12,13,14,15,16,17,18,19,20,
21,22,23,24,25,26,27,28,29,30,
31,32,33,34,35,36,37,38,39,40,
41,42,43,44,45,46,47,48,49,50,
51,52,53,54,55,56,57,58,59,60,
61,62,63,64,65,66,67,68,69,70,
72,74,76,78,80,82,84,86,88,90,
93,96,99,102,105,108,111,114,117,120,
125,130,135,140,145,150,155,160,165,170,
};

//int cjhs[V]={  
//1,2,3,4,5,6,7,8,9,10,
//11,12,13,14,15,16,17,18,19,20,
//21,22,23,24,25,26,27,28,29,30,
//31,32,33,34,35,36,37,38,39,40,
//41,42,43,44,45,46,47,48,49,50,
//51,52,53,54,55,56,57,58,59,60,
//61,62,63,64,65,66,67,68,69,70,
//72,74,76,78,80,82,84,86,88,90,
//93,96,99,102,105,108,111,114,117,120,
//125,130,135,140,145,150,155,160,165,170,
//};
float sst_h=H;
void portb_isr()//H-行信号
{  
  int cjh_cj;
  if(LPLD_GPIO_IsPinxExt(PORTB, GPIO_Pin3))
  { int ii;
  // for(ii=100;ii>0;ii--){;}  
  //检测到行开始信号，使能DMA请求
  
  V_Cnt++; 
  if(V_Cnt==0){pitcnt=0;
  
  ////      pit_isr();
  ////      LPLD_DMA_DisableReq(DMA_CH1); //开启通道请求
  ////      LPLD_DMA_DisableReq(DMA_CH2);
  //  LPLD_PIT_DisableIrq(pit_init_param); //使能PIT中断
  }
  if(sfminline&&0)cjh_cj=cjhs_a[cjh]; else cjh_cj=cjhs[cjh];
  if(V_Cnt==cjh_cj){
    cjh++; 
    

    LPLD_DMA_EnableReq(DMA_CH0);
    //      sst_h = DMA0->TCD[DMA_CH0].CITER_ELINKNO; 
    //      while (sst_h>0)
    //      { sst_h = DMA0->TCD[DMA_CH0].CITER_ELINKNO; 
    //      NUM_Send();
    //      }
    
    //  if(cjh>V*0.8)  Is_DispPhoto = 1;//可以显示图像
  }
  
  //行数采集已满，关闭中断
  else if (cjh==(V))
  { //LPLD_GPIO_Toggle_b(LED_C, LED_C_PIN);
    //关GPIO中断 
    
    Is_DispPhoto = 1;//可以显示图像
    
    disable_irq(PORTB_IRQn);
    
  
    
    ////      LPLD_DMA_EnableReq(DMA_CH1); //开启通道请求
    ////      LPLD_DMA_EnableReq(DMA_CH2);
    //   LPLD_PIT_EnableIrq(pit_init_param); //使能PIT中断
    V_Cnt=-1;  
    cjh=0;
  }
  
  
  }
  LPLD_GPIO_ClearIntFlag(PORTB);
}
//
//void portb_isr()//H-行信号
//{  
//
//  if(LPLD_GPIO_IsPinxExt(PORTB, GPIO_Pin3))
//  { int ii;
// // for(ii=100;ii>0;ii--){;}  
//    //检测到行开始信号，使能DMA请求
//  
//  
//   if(V_Cnt==0){pitcnt=0;
//      LPLD_DMA_DisableReq(DMA_CH1); //开启通道请求
//      LPLD_DMA_DisableReq(DMA_CH2);
//      LPLD_PIT_DisableIrq(pit_init_param); //使能PIT中断
//       }
//    if(V_Cnt<V){
//      LPLD_DMA_EnableReq(DMA_CH0);  
//      V_Cnt++; 
//    }
//    //行数采集已满，关闭中断
//    else
//    { //LPLD_GPIO_Toggle_b(LED_C, LED_C_PIN);
//      //关GPIO中断 
//      
//      disable_irq(PORTE_IRQn);
//      disable_irq(PORTA_IRQn);
//      disable_irq(PORTB_IRQn);
//     
//      Is_DispPhoto = 1;//可以显示图像
//
//      LPLD_DMA_EnableReq(DMA_CH1); //开启通道请求
//      LPLD_DMA_EnableReq(DMA_CH2);
//      LPLD_PIT_EnableIrq(pit_init_param); //使能PIT中断
//      V_Cnt=0;  
//   
//    }
//  }
//}
//






void LED_init_gpio()
{
  
#if(CARD)
  // 配置 PTA 为GPIO功能,输出,高电平，禁用中断
  
  gpio_init_struct.GPIO_PTx = PTE;
  gpio_init_struct.GPIO_Pins = GPIO_Pin26;
  gpio_init_struct.GPIO_Dir = DIR_OUTPUT;
  gpio_init_struct.GPIO_Output = OUTPUT_H;
  gpio_init_struct.GPIO_PinControl = IRQC_DIS;
  LPLD_GPIO_Init(gpio_init_struct);
  
  gpio_init_struct.GPIO_PTx = PTD;
  gpio_init_struct.GPIO_Pins = GPIO_Pin15;
  gpio_init_struct.GPIO_Dir = DIR_OUTPUT;
  gpio_init_struct.GPIO_Output = OUTPUT_H;
  gpio_init_struct.GPIO_PinControl = IRQC_DIS;
  LPLD_GPIO_Init(gpio_init_struct);
  
#else
  
  gpio_init_struct.GPIO_PTx = PTA;
  gpio_init_struct.GPIO_Pins = GPIO_Pin17;
  gpio_init_struct.GPIO_Dir = DIR_OUTPUT;
  gpio_init_struct.GPIO_Output = OUTPUT_H;  
  gpio_init_struct.GPIO_PinControl = IRQC_DIS;
  LPLD_GPIO_Init(gpio_init_struct);
  
//  
//  gpio_init_struct.GPIO_PTx = PTC;
//  gpio_init_struct.GPIO_Pins = GPIO_Pin0;
//  gpio_init_struct.GPIO_Dir = DIR_OUTPUT;
//  gpio_init_struct.GPIO_Output = OUTPUT_H;  
//  gpio_init_struct.GPIO_PinControl = IRQC_DIS;
//  LPLD_GPIO_Init(gpio_init_struct);
  
  
  gpio_init_struct.GPIO_PTx = PTD;
  gpio_init_struct.GPIO_Pins = GPIO_Pin15;
  gpio_init_struct.GPIO_Dir = DIR_OUTPUT;
  gpio_init_struct.GPIO_Output = OUTPUT_H;  
  gpio_init_struct.GPIO_PinControl = IRQC_DIS;
  LPLD_GPIO_Init(gpio_init_struct);
  
  gpio_init_struct.GPIO_PTx = PTE;
  gpio_init_struct.GPIO_Pins = GPIO_Pin26;
  gpio_init_struct.GPIO_Dir = DIR_OUTPUT;
  gpio_init_struct.GPIO_Output = OUTPUT_H;  
  gpio_init_struct.GPIO_PinControl = IRQC_DIS;
  LPLD_GPIO_Init(gpio_init_struct);
#endif
  
}

/*
* 延时一段时间
*/
void delay()
{
  uint16 i, n;
  for(i=0;i<30000;i++)
  {
    for(n=0;n<200;n++)
    {
      asm("nop");
    }
  }
}
void LED()
{
  //D1至D4依次触发点亮、熄灭
  LED_i++;
  if (LED_i==5) LED_i=1;
  if (LED_i==1) LPLD_GPIO_Toggle_b(LED_A, LED_A_PIN);
  
 // if (LED_i==2) LPLD_GPIO_Toggle_b(LED_B, LED_B_PIN);
  
  if (LED_i==3) LPLD_GPIO_Toggle_b(LED_C, LED_C_PIN);
  
  if (LED_i==4) LPLD_GPIO_Toggle_b(LED_D, LED_D_PIN);
  
  
  
}
//========此处向下为上位机相关部分============
void uart_init(void)
{
  
  UART_InitTypeDef uart4_init_struct;
  uart4_init_struct.UART_Uartx = UART4; //使用UART4
  uart4_init_struct.UART_BaudRate = 115200; //设置波特率9600
  if(0){
    uart4_init_struct.UART_RxPin = PTC14;  //接收引脚为PTC14
    uart4_init_struct.UART_TxPin = PTC15; } //发送引脚为PTC25
  else
  {
    uart4_init_struct.UART_RxPin = PTE25;  //接收引脚为PTE25
    uart4_init_struct.UART_TxPin = PTE24;  //发送引脚为PTE24
  }
  uart4_init_struct.UART_RxIntEnable = TRUE;    //使能接收中断
  uart4_init_struct.UART_RxIsr = uart_isr;      //设置接收中断函数
  //初始化UART
  LPLD_UART_Init(uart4_init_struct);
  //使能UART中断
  LPLD_UART_EnableIrq(uart4_init_struct);
  LPLD_UART_PutCharArr(UART4, "uart4_init",10);
  
  
}
void uart_isr(void)
{
  
  // LPLD_UART_PutChar(UART4, recv);
  
  
  RX[count_RX] = LPLD_UART_GetChar(UART4);
  if( RX[0] == '#' )
    count_RX++;
  else count_RX=0;		 	
  if(count_RX==MAX_S)//收到结尾
  {
    count_RX=0;
    flag_rx_succsess =RX_SU;
    
    NUM_GET();
    
    count_RX=0;
  } 
  
  
}

void ReceFloat(void)
{
  
  {
    RX_FLAG=RX[1];
    FloatSave[0]=RX[2];
    FloatSave[1]=RX[3];
    FloatSave[2]=RX[4];
    FloatSave[3]=RX[5];
    
    FloatSave[4]=RX[6];
    FloatSave[5]=RX[7];
    FloatSave[6]=RX[8];
    FloatSave[7]=RX[9];
    
    FloatSave[8]=RX[10];
    FloatSave[9]=RX[11];
    FloatSave[10]=RX[12];
    FloatSave[11]=RX[13];
    
  }
}
void NUM_GET(void)
{
  if(flag_rx_succsess==RX_SU)
  {
    
    ReceFloat();
    if(RX_FLAG=='A')
    {	
      memcpy((char*)(&duojizkb0),&FloatSave[0],4);            //void *memcpy(void *dest, const void *src, size_t n);  ′ó?′src?ù??μ??ú′?μ??·μ??eê??????aê???±′N??×??úμ???±êdest?ù??μ??ú′?μ??·?eê??????D  
      memcpy((char*)(&duojizkb),&FloatSave[4],4);
      memcpy((char*)(&duojipianyi),&FloatSave[8],4);
      
    }
    else if(RX_FLAG=='B')
    {
      memcpy((char*)(&zkb),&FloatSave[0],4);
      memcpy((char*)(&NUM_B.B),&FloatSave[4],4);
      memcpy((char*)(&NUM_B.C),&FloatSave[8],4);
    }
    else if(RX_FLAG=='C')
    {
      memcpy((char*)(&SteerPID.Kp),&FloatSave[0],4);
      memcpy((char*)(&NUM_C.B),&FloatSave[4],4);
      memcpy((char*)(&SteerPID.Kd),&FloatSave[8],4);
    }
    else if(RX_FLAG=='D')
    {
      memcpy((char*)(&MidPos_h),&FloatSave[0],4);
      memcpy((char*)(&NUM_D.B),&FloatSave[4],4);
      memcpy((char*)(&NUM_D.C),&FloatSave[8],4);
    }
    else if(RX_FLAG=='E')
    {
      memcpy(((char*)&fs),&FloatSave[0],4);
      memcpy((char*)(&NUM_E.B),&FloatSave[4],4);
      memcpy((char*)(&NUM_E.C),&FloatSave[8],4);
      
      if (NUM_E.C==1)
      {
        LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, (int)angle_to_period((int)(50-NUM_E.A)));
        LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, (int)NUM_E.B*100);
        LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2, (int)NUM_E.B*100);}
      
      else if (NUM_E.C==0)
      { LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, angle_to_period(0));
      LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 0);
      LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2, 0);}
      
      
      
      //   for(i=0;i<4;i++)  
      //  {  
      //   *((unsigned char*)&PIDPara_R.P+i)=*(&FloatSave[0]+i);       
      //  }     
      
    }
    else ;
    flag_rx_succsess=RX_ER;
  }
}

void putstr(int8 *s,int8 a)
{int ys_i=0;
LPLD_UART_PutChar(UART4,'#');

LPLD_UART_PutChar(UART4,a);

LPLD_UART_PutCharArr(UART4,s,8);



LPLD_UART_PutChar(UART4,a);

LPLD_UART_PutChar(UART4,'#');


}
void NUM_Send(void)
{
  if (fs==0){
    
    FloatToChar(a_y,sa);
    putstr(sa,'A');
    
    FloatToChar(StableNumbers,sa);
    putstr(sa,'B');
    
    FloatToChar(Error,sa);
    putstr(sa,'C');
    
    FloatToChar(EndType,sa);
    putstr(sa,'D');}
  
  else if (fs==1) {
    
    FloatToChar(MidLineExcursion,sa);
    putstr(sa,'A');
    
    FloatToChar(MidLineVariance,sa);
    putstr(sa,'B');
    
    FloatToChar(hx_find_count_max,sa);//midpos
    putstr(sa,'C');
    
    FloatToChar(V_count,sa);
    putstr(sa,'D');
  }
  
  else if (fs==2) {
    
    FloatToChar(TopE1,sa);
    putstr(sa,'A');
    
    FloatToChar(TopE2,sa);
    putstr(sa,'B');
    
    FloatToChar(g_Derict,sa);
    putstr(sa,'C');
    
    FloatToChar(MidLineExcursion,sa);
    putstr(sa,'D');
  }
  
  else if (fs==4) {
    
    FloatToChar(BlackEndL,sa);
    putstr(sa,'A');
    
    FloatToChar(BlackEndR,sa);
    putstr(sa,'B');
    
    FloatToChar(BlackEndM,sa);
    putstr(sa,'C');
    
    FloatToChar(Error,sa);
    putstr(sa,'D');
  }
  
  else if (fs==6) {
    
    FloatToChar(bm_z,sa);
    putstr(sa,'A');
    
    FloatToChar(bm_y,sa);
    putstr(sa,'B');
    
    FloatToChar(bm_pz,sa);
    putstr(sa,'C');
     FloatToChar(zkb/100,sa);   
   // FloatToChar(sd/100,sa);
    putstr(sa,'D');
  }
  else if (fs==7) {
    
    FloatToChar(a_y_min,sa);
    putstr(sa,'A');
    
    FloatToChar(a_y,sa);
    putstr(sa,'B');
    
    FloatToChar(a_y_max,sa);
    putstr(sa,'C');    
    
  }
  else if (fs==8) {
    
    FloatToChar(sst_h,sa);
    putstr(sa,'A');
    
    
    
    
    
  }
  
  else if (fs==3) {
    LPLD_UART_PutCharArr(UART4,"开始",4);
    int i=0;
    
    
    if(yxh==0){
      for(i = yxh; i < RowMax-1; i++)    
      {	
        FloatToChar(BlackLineData[i],sa);    
        LPLD_UART_PutChar(UART4,'#');	
	LPLD_UART_PutCharArr(UART4,sa,4);
      }
    }
    else if(yxh>25)
    {
      for(i =RowMax-yxh; i < RowMax-5; i++)    
      {	
        FloatToChar(BlackLineData[i],sa);    
        LPLD_UART_PutChar(UART4,'#');	
	LPLD_UART_PutCharArr(UART4,sa,4);
      }
      
      
    }
    
    else if(yxh>40)
    {
      for(i = RowMax-yxh; i < RowMax-10; i++)    
      {	
	FloatToChar(BlackLineData[i],sa);    
        LPLD_UART_PutChar(UART4,'#');	
	LPLD_UART_PutCharArr(UART4,sa,4);
      }
      
      
    }
    
    else 
    {
      for(i = RowMax-yxh; i < RowMax; i++)    
      {	
	FloatToChar(BlackLineData[i],sa);    
        LPLD_UART_PutChar(UART4,'#');	
	LPLD_UART_PutCharArr(UART4,sa,4);
      }
      
      
    }
    
  }
  
  
  else if (fs==9) {
    LPLD_UART_PutCharArr(UART4,"开始-中",8);
    int i=0;
    
    
    
    for(i =  RowMax-1; i>0; i--)    
    {	
      FloatToChar(BlackLineData[i],sa);    
      LPLD_UART_PutChar(UART4,'#');	
      LPLD_UART_PutCharArr(UART4,sa,4);
    }
    
    
  }
  else if (fs==10) {
    LPLD_UART_PutCharArr(UART4,"开始-左",8);
    int i=0;
    
    
    
    for(i =  RowMax-1; i>0; i--)    
    {	
      FloatToChar(LeftBlack[i],sa);    
      LPLD_UART_PutChar(UART4,'#');	
      LPLD_UART_PutCharArr(UART4,sa,4);
    }
    
    
  }
  else if (fs==11) {
    LPLD_UART_PutCharArr(UART4,"开始-右",8);
    int i=0;
    
    
    
    for(i =  RowMax-1; i>0; i--)    
    {	
      FloatToChar(RightBlack[i],sa);    
      LPLD_UART_PutChar(UART4,'#');	
      LPLD_UART_PutCharArr(UART4,sa,4);
    }
    
    
  }
  else if (fs==12) {
    
    FloatToChar(firstline_l,sa);
    putstr(sa,'A');
    
    FloatToChar(firstline_m,sa);
    putstr(sa,'B');
    
    FloatToChar(firstline_r,sa);
    putstr(sa,'C');
    FloatToChar(duojizkb1,sa);//midpos
    putstr(sa,'D');
    
    
    
    
  }
  
  else if (fs==13) {
    
    FloatToChar(firstline_l,sa);
    putstr(sa,'A');
    
    FloatToChar(firstline_m,sa);
    putstr(sa,'B');
    
    FloatToChar(firstline_r,sa);
    putstr(sa,'C');
    FloatToChar(duojizkb1,sa);//midpos
    putstr(sa,'D');
    
    
    
    
  }
  
  
  //        
  //        FloatToChar(NUM_B.B,sa);
  //        putstr(sa,'E');
  //        
  //        FloatToChar(NUM_B.C,sa);
  //        putstr(sa,'F');
  //        
  //        FloatToChar(NUM_C.A,sa);
  //        putstr(sa,'G');
  //        
  //        FloatToChar(NUM_C.B,sa);
  //        putstr(sa,'H');
  //        
  //        FloatToChar(NUM_C.C,sa);
  //        putstr(sa,'I');
  //	 
}

void FloatToChar(float floatNum, int8* byteArry)
{ int FloatToChar_a,FloatToChar_b,FloatToChar_c,FloatToChar_d,FloatToChar_e,FloatToChar_f,FloatToChar_g;
FloatToChar_a=(int)floatNum;
FloatToChar_b=(int)(floatNum*10-FloatToChar_a*10);
FloatToChar_c=(int)(floatNum*100-((int)(floatNum*10))*10);
FloatToChar_d=(int)(floatNum*1000-((int)(floatNum*100))*10); 
FloatToChar_e=(int)(floatNum*10000-((int)(floatNum*1000))*10);
FloatToChar_f=(int)(floatNum*100000-((int)(floatNum*10000))*10);
FloatToChar_g=(int)(floatNum*1000000-((int)(floatNum*100000))*10);
str_ln=sprintf(byteArry,"%d.%d%d%d%d%d%d",FloatToChar_a,FloatToChar_b,FloatToChar_c,FloatToChar_d,FloatToChar_e,FloatToChar_f,FloatToChar_g);



//sprintf(byteArry,"%-8f",floatNum);

}
///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       27/Jul/2015  23:36:04
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-27-3.54\app\sys.c
//    Command line =  
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-27-3.54\app\sys.c
//        -D LPLD_K60 -D USE_K60F12 -lCN
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-27-3.54\iar\FLASH\List\
//        -lB
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-27-3.54\iar\FLASH\List\
//        -o
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-27-3.54\iar\FLASH\Obj\
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4F -e --fpu=None --dlib_config "C:\Program Files\IAR
//        Systems\Embedded Workbench 7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-27-3.54\iar\..\app\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-27-3.54\iar\..\..\..\lib\CPU\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-27-3.54\iar\..\..\..\lib\common\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-27-3.54\iar\..\..\..\lib\LPLD\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-27-3.54\iar\..\..\..\lib\LPLD\HW\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-27-3.54\iar\..\..\..\lib\LPLD\DEV\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-27-3.54\iar\..\..\..\lib\LPLD\FUNC\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-27-3.54\iar\..\..\..\lib\uCOS-II\Ports\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-27-3.54\iar\..\..\..\lib\uCOS-II\Source\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-27-3.54\iar\..\..\..\lib\FatFs\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-27-3.54\iar\..\..\..\lib\FatFs\option\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-27-3.54\iar\..\..\..\lib\USB\common\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-27-3.54\iar\..\..\..\lib\USB\driver\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-27-3.54\iar\..\..\..\lib\USB\descriptor\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-27-3.54\iar\..\..\..\lib\USB\class\
//        -Ol -I "C:\Program Files\IAR Systems\Embedded Workbench
//        7.0\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    List file    =  
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-27-3.54\iar\FLASH\List\sys.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN BlackEndL
        EXTERN BlackEndM
        EXTERN BlackEndR
        EXTERN BlackLineData
        EXTERN EndType
        EXTERN Error
        EXTERN LPLD_ADC_Chn_Enable
        EXTERN LPLD_ADC_Init
        EXTERN LPLD_DMA_Init
        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_GPIO_Toggle_b
        EXTERN LPLD_LPTMR_GetPulseAcc
        EXTERN LPLD_LPTMR_Init
        EXTERN LPLD_LPTMR_ResetCounter
        EXTERN LPLD_UART_EnableIrq
        EXTERN LPLD_UART_GetChar
        EXTERN LPLD_UART_Init
        EXTERN LPLD_UART_PutChar
        EXTERN LPLD_UART_PutCharArr
        EXTERN LeftBlack
        EXTERN MidLineExcursion
        EXTERN MidLineVariance
        EXTERN MidPos_h
        EXTERN RightBlack
        EXTERN StableNumbers
        EXTERN SteerPID
        EXTERN TopE1
        EXTERN TopE2
        EXTERN __aeabi_cfcmpeq
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2f
        EXTERN __aeabi_memcpy4
        EXTERN __aeabi_ui2f
        EXTERN a_y
        EXTERN a_y_max
        EXTERN a_y_min
        EXTERN angle_to_period
        EXTERN bm_pz
        EXTERN bm_y
        EXTERN bm_z
        EXTERN duojipianyi
        EXTERN duojizkb
        EXTERN duojizkb0
        EXTERN duojizkb1
        EXTERN `fabss`
        EXTERN firstline_l
        EXTERN firstline_m
        EXTERN firstline_r
        EXTERN g_Derict
        EXTERN hx_find_count_max
        EXTERN memcpy
        EXTERN sprintf
        EXTERN yxh
        EXTERN zkb

        PUBLIC ADC_init
        PUBLIC Boma_init_gpio
        PUBLIC Camera_dma_init
        PUBLIC Camera_gpio_init
        PUBLIC FloatSave
        PUBLIC FloatToChar
        PUBLIC GetCnt
        PUBLIC GetFreq
        PUBLIC ImageData
        PUBLIC Is_DispPhoto
        PUBLIC LED
        PUBLIC LED_i
        PUBLIC LED_init_gpio
        PUBLIC NUM_A
        PUBLIC NUM_B
        PUBLIC NUM_C
        PUBLIC NUM_D
        PUBLIC NUM_E
        PUBLIC NUM_GET
        PUBLIC NUM_Send
        PUBLIC Pix_Data
        PUBLIC RX
        PUBLIC RX_FLAG
        PUBLIC ReceFloat
        PUBLIC ThresholdData
        PUBLIC V_Cnt
        PUBLIC V_count
        PUBLIC aaa
        PUBLIC adc_init_struct
        PUBLIC bm_err
        PUBLIC bm_err_y
        PUBLIC bm_err_z
        PUBLIC bm_init
        PUBLIC bm_y_last
        PUBLIC bm_z_last
        PUBLIC ch1_over_cnt
        PUBLIC ch1_pulseacc
        PUBLIC ch2_over_cnt
        PUBLIC ch2_pulseacc
        PUBLIC cjh
        PUBLIC cjhs
        PUBLIC cjhs_a
        PUBLIC count_RX
        PUBLIC delay
        PUBLIC dma0_isr
        PUBLIC dma1_isr
        PUBLIC dma_camera_isr
        PUBLIC dma_init_struct
        PUBLIC dmac_init_struct
        PUBLIC dmad_init_struct
        PUBLIC err_cs
        PUBLIC flag_rx_succsess
        PUBLIC fs
        PUBLIC ftm1_init_struct
        PUBLIC gpio_init_struct
        PUBLIC joc
        PUBLIC lastspeed
        PUBLIC lastspeed_i
        PUBLIC lptmr_init_param
        PUBLIC lptmr_isr
        PUBLIC ltpmt_temp
        PUBLIC pData1
        PUBLIC pData2
        PUBLIC pData3
        PUBLIC pit_init_param
        PUBLIC pit_isr
        PUBLIC pitcnt
        PUBLIC porta_isr
        PUBLIC portb_isr
        PUBLIC pta_init
        PUBLIC ptb_init
        PUBLIC ptc_init
        PUBLIC ptd_init
        PUBLIC pte_init
        PUBLIC public_init
        PUBLIC putstr
        PUBLIC qd_result
        PUBLIC sa
        PUBLIC sst_h
        PUBLIC str_ln
        PUBLIC uart_init
        PUBLIC uart_isr

// C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-27-3.54\app\sys.c
//    1 #include "sys.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_EnableIRQ(IRQn_Type)
NVIC_EnableIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        LDR.W    R2,??DataTable20  ;; 0xe000e100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_DisableIRQ(IRQn_Type)
NVIC_DisableIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        LDR.W    R2,??DataTable20_1  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    3 GPIO_InitTypeDef pta_init;
pta_init:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    4 GPIO_InitTypeDef ptb_init;
ptb_init:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    5 GPIO_InitTypeDef ptc_init;
ptc_init:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    6 GPIO_InitTypeDef pte_init;
pte_init:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    7 GPIO_InitTypeDef ptd_init;
ptd_init:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    8 DMA_InitTypeDef dma_init_struct;
dma_init_struct:
        DS8 44

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    9 DMA_InitTypeDef dmac_init_struct;
dmac_init_struct:
        DS8 44

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   10 DMA_InitTypeDef dmad_init_struct;
dmad_init_struct:
        DS8 44

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   11 ADC_InitTypeDef adc_init_struct;
adc_init_struct:
        DS8 20
//   12 void bm_init(void);
//   13 void pit_init(void);
//   14 void pit_isr(void);
//   15 void dma0_isr(void);
//   16 void dma1_isr(void);
//   17 void lptmr_isr();
//   18 void Boma_init_gpio();
//   19 void dma_camera_isr();

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   20 int pitcnt=0;
pitcnt:
        DS8 4
//   21 #define DMA_MAX_NUM (32767)

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   22 int ch1_over_cnt = 0; //通道溢出计数
ch1_over_cnt:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   23 int ch2_over_cnt = 0;
ch2_over_cnt:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   24 uint32 ch1_pulseacc = 0;//脉冲累加值计数
ch1_pulseacc:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   25 uint32 ch2_pulseacc = 0;
ch2_pulseacc:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   26 int cjh=0;
cjh:
        DS8 4
//   27 //变量声明
//   28 //===以下为上位机相关=====
//   29 #define MAX_S  14
//   30 #define RX_SU  1
//   31 #define RX_ER 0

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   32 uint8 flag_rx_succsess=RX_ER;
flag_rx_succsess:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   33 int8 FloatSave[12];
FloatSave:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   34 int8 RX[MAX_S];
RX:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   35 int8 RX_FLAG=0;
RX_FLAG:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   36 uint16 ltpmt_temp=0;
ltpmt_temp:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   37 int8 sa[8];
sa:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   38 uint8 count_RX;
count_RX:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   39 int str_ln=0;
str_ln:
        DS8 4
//   40 struct NUM_GET    //
//   41 {
//   42   float A;
//   43   float B;
//   44   float C;	
//   45 };

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   46 struct NUM_GET NUM_A;
NUM_A:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   47 struct NUM_GET NUM_B;
NUM_B:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   48 struct NUM_GET NUM_C;
NUM_C:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   49 struct NUM_GET NUM_D;
NUM_D:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   50 struct NUM_GET NUM_E;
NUM_E:
        DS8 12
//   51 void ReceFloat(void);
//   52 void NUM_GET(void);
//   53 void NUM_Send(void);
//   54 void FloatToChar(float floatNum, signed char* byteArry);
//   55 void putstr(signed char *s,signed char a);
//   56 
//   57 //============================

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   58 int LED_i=0;
LED_i:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   59 int aaa=0;
aaa:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   60 uint8 Pix_Data[V][H];       //采集240行 250列的图像数据 
Pix_Data:
        DS8 40800

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   61 uint8 ImageData[V_A][H_A]; //处理 80行  50列图像数据 
ImageData:
        DS8 9000

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   62 uint8 ThresholdData[V_A][H_A];//二值化数据数组 
ThresholdData:
        DS8 9000

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   63 int V_Cnt=-1;                     //行采集计数
V_Cnt:
        DATA
        DC32 -1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   64 int Is_DispPhoto=0;               //图像发送标志
Is_DispPhoto:
        DS8 4
//   65 extern FTM_InitTypeDef ftm_init_struct;

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   66 PIT_InitTypeDef pit_init_param;
pit_init_param:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   67 GPIO_InitTypeDef gpio_init_struct;
gpio_init_struct:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   68 LPTMR_InitTypeDef lptmr_init_param;
lptmr_init_param:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   69 FTM_InitTypeDef ftm1_init_struct;
ftm1_init_struct:
        DS8 28

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   70 int32 qd_result=0;
qd_result:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   71 float fs=-6;
fs:
        DATA
        DC32 0C0C00000H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   72 int GetFreq;
GetFreq:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   73 int GetCnt;
GetCnt:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   74 char pData1[1];
pData1:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   75 char pData2[1];
pData2:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   76 char pData3[1];
pData3:
        DS8 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   77 void public_init(void)
//   78 {
public_init:
        PUSH     {R7,LR}
//   79   Boma_init_gpio();
        BL       Boma_init_gpio
//   80   LED_init_gpio();
        BL       LED_init_gpio
//   81   Camera_gpio_init();
        BL       Camera_gpio_init
//   82   Camera_dma_init();
        BL       Camera_dma_init
//   83   uart_init();
        BL       uart_init
//   84   
//   85 
//   86   bm_init();
        BL       bm_init
//   87   
//   88     //LPTMR_MODE_PLACC脉冲累加模式
//   89   //LPTMR_ALT1的输入口为PTA19
//   90   //禁用中断
//   91  // 无中断函数 
//   92 //  GetFreq=0;
//   93 //  GetCnt=0;
//   94 //  lptmr_init_param.LPTMR_Mode = LPTMR_MODE_PLACC;
//   95 //  lptmr_init_param.LPTMR_PluseAccInput = LPTMR_ALT1;
//   96 //  lptmr_init_param.LPTMR_Isr = NULL;
//   97 //   LPLD_LPTMR_Init(lptmr_init_param); 
//   98 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   99 void ADC_init()
//  100 {
ADC_init:
        PUSH     {R7,LR}
//  101   adc_init_struct.ADC_Adcx = ADC0;
        LDR.W    R0,??DataTable20_2  ;; 0x4003b000
        LDR.W    R1,??DataTable18
        STR      R0,[R1, #+0]
//  102   adc_init_struct.ADC_DiffMode = ADC_SE;        //单端采集
        MOVS     R0,#+0
        LDR.W    R1,??DataTable18
        STRB     R0,[R1, #+4]
//  103   adc_init_struct.ADC_BitMode = SE_16BIT;       //单端12位精度
        MOVS     R0,#+3
        LDR.W    R1,??DataTable18
        STRB     R0,[R1, #+5]
//  104   adc_init_struct.ADC_SampleTimeCfg = SAMTIME_SHORT;    //短采样时间
        MOVS     R0,#+0
        LDR.W    R1,??DataTable18
        STRB     R0,[R1, #+6]
//  105   adc_init_struct.ADC_HwAvgSel = HW_DISAVG;       //4次硬件平均
        MOVS     R0,#+0
        LDR.W    R1,??DataTable18
        STRB     R0,[R1, #+8]
//  106   adc_init_struct.ADC_CalEnable = TRUE; //使能初始化校验
        MOVS     R0,#+1
        LDR.W    R1,??DataTable18
        STRB     R0,[R1, #+11]
//  107   //初始化ADC
//  108   LPLD_ADC_Init(adc_init_struct);
        LDR.W    R1,??DataTable18
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_ADC_Init
//  109   //为了保证复用功能不被占用，最好使能相应ADC通道
//  110   //RUSH开发板的电位器使用DAD0通道进行采集
//  111   //单端DAD1通道的引脚为(ADC2_DP0)
//  112   LPLD_ADC_Chn_Enable(ADC0, AD9);
        MOVS     R1,#+9
        LDR.W    R0,??DataTable20_2  ;; 0x4003b000
        BL       LPLD_ADC_Chn_Enable
//  113    
//  114 
//  115 
//  116 }
        POP      {R0,PC}          ;; return
//  117 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  118 void lptmr_isr()
//  119 {
lptmr_isr:
        PUSH     {R7,LR}
//  120   
//  121    
//  122     if(GetCnt>1) //进行100次累加，累加次数越高，精度越高，但实时性降低
        LDR.W    R0,??DataTable18_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BLT.N    ??lptmr_isr_0
//  123     {
//  124        GetFreq=ltpmt_temp/2; //取平均
        LDR.W    R0,??DataTable18_2
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable18_3
        STR      R0,[R1, #+0]
//  125        //printf("the PulseAcc:%d hz \r\n",GetFreq*100);
//  126        ltpmt_temp=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable18_2
        STRH     R0,[R1, #+0]
//  127        GetCnt=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable18_1
        STR      R0,[R1, #+0]
        B.N      ??lptmr_isr_1
//  128     }
//  129     else
//  130     {
//  131      ltpmt_temp+=LPLD_LPTMR_GetPulseAcc();
??lptmr_isr_0:
        BL       LPLD_LPTMR_GetPulseAcc
        LDR.W    R1,??DataTable18_2
        LDRH     R1,[R1, #+0]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable18_2
        STRH     R0,[R1, #+0]
//  132        GetCnt++;
        LDR.W    R0,??DataTable18_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable18_1
        STR      R0,[R1, #+0]
//  133     }
//  134     
//  135     LPLD_LPTMR_ResetCounter();       //复位LPTMR0 counter 
??lptmr_isr_1:
        BL       LPLD_LPTMR_ResetCounter
//  136     lptmr_init_param.LPTMR_Mode = LPTMR_MODE_PLACC;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable20_3
        STRB     R0,[R1, #+0]
//  137     lptmr_init_param.LPTMR_PluseAccInput = LPTMR_ALT1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable20_3
        STRB     R0,[R1, #+4]
//  138     lptmr_init_param.LPTMR_Isr = NULL;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable20_3
        STR      R0,[R1, #+8]
//  139     LPLD_LPTMR_Init(lptmr_init_param);
        LDR.W    R0,??DataTable20_3
        LDM      R0,{R0-R2}
        BL       LPLD_LPTMR_Init
//  140 }
        POP      {R0,PC}          ;; return
//  141 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  142 void Boma_init_gpio()
//  143 {
Boma_init_gpio:
        PUSH     {R7,LR}
//  144   
//  145     // 配置 PTA28、PTA29 为GPIO功能,输入,内部下拉，不产生中断
//  146     gpio_init_struct.GPIO_PTx = PTA;      
        LDR.W    R0,??DataTable18_4  ;; 0x400ff000
        LDR.W    R1,??DataTable20_4
        STR      R0,[R1, #+0]
//  147     gpio_init_struct.GPIO_Pins = GPIO_Pin28|GPIO_Pin29;     //引脚
        MOVS     R0,#+805306368
        LDR.W    R1,??DataTable20_4
        STR      R0,[R1, #+4]
//  148     gpio_init_struct.GPIO_Dir = DIR_INPUT;        //输入
        MOVS     R0,#+0
        LDR.W    R1,??DataTable20_4
        STRB     R0,[R1, #+12]
//  149     gpio_init_struct.GPIO_PinControl = INPUT_PULL_DOWN|IRQC_DIS;     //内部上拉|不产生中断
        MOVS     R0,#+2
        LDR.W    R1,??DataTable20_4
        STR      R0,[R1, #+8]
//  150     LPLD_GPIO_Init(gpio_init_struct);
        LDR.W    R1,??DataTable20_4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  151     
//  152     
//  153     // 配置 PTB 为GPIO功能,输入,内部下拉，不产生中断
//  154     gpio_init_struct.GPIO_PTx = PTB;      
        LDR.W    R0,??DataTable18_5  ;; 0x400ff040
        LDR.W    R1,??DataTable20_4
        STR      R0,[R1, #+0]
//  155     gpio_init_struct.GPIO_Pins = GPIO_Pin4|GPIO_Pin5|GPIO_Pin9|GPIO_Pin11|GPIO_Pin17|GPIO_Pin19|GPIO_Pin21
//  156                                 |GPIO_Pin20|GPIO_Pin23|GPIO_Pin22;     //引脚
        LDR.W    R0,??DataTable18_6  ;; 0xfa0a30
        LDR.W    R1,??DataTable20_4
        STR      R0,[R1, #+4]
//  157     gpio_init_struct.GPIO_Dir = DIR_INPUT;        //输入
        MOVS     R0,#+0
        LDR.W    R1,??DataTable20_4
        STRB     R0,[R1, #+12]
//  158     gpio_init_struct.GPIO_PinControl = INPUT_PULL_DOWN|IRQC_DIS;     //内部上拉|不产生中断
        MOVS     R0,#+2
        LDR.W    R1,??DataTable20_4
        STR      R0,[R1, #+8]
//  159     LPLD_GPIO_Init(gpio_init_struct);
        LDR.W    R1,??DataTable20_4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  160 
//  161   // 配置 E4，低电平高驱动输出
//  162   gpio_init_struct.GPIO_PTx = PTE;
        LDR.W    R0,??DataTable19  ;; 0x400ff100
        LDR.W    R1,??DataTable20_4
        STR      R0,[R1, #+0]
//  163   gpio_init_struct.GPIO_Pins = GPIO_Pin4;
        MOVS     R0,#+16
        LDR.W    R1,??DataTable20_4
        STR      R0,[R1, #+4]
//  164   gpio_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable20_4
        STRB     R0,[R1, #+12]
//  165   gpio_init_struct.GPIO_Output = OUTPUT_L;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable20_4
        STRB     R0,[R1, #+13]
//  166   gpio_init_struct.GPIO_PinControl = OUTPUT_DSH;
        MOVS     R0,#+64
        LDR.W    R1,??DataTable20_4
        STR      R0,[R1, #+8]
//  167   LPLD_GPIO_Init(gpio_init_struct);
        LDR.W    R1,??DataTable20_4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  168   
//  169   
//  170 //      // 配置 PTA28、PTA29 为GPIO功能,输入,内部下拉，不产生中断
//  171 //    gpio_init_struct.GPIO_PTx = PTA;      
//  172 //    gpio_init_struct.GPIO_Pins = GPIO_Pin19;     //引脚
//  173 //    gpio_init_struct.GPIO_Dir = DIR_INPUT;        //输入
//  174 //    gpio_init_struct.GPIO_PinControl = INPUT_PULL_DOWN|IRQC_DIS;     //内部上拉|不产生中断
//  175 //    LPLD_GPIO_Init(gpio_init_struct);
//  176   
//  177   
//  178 }
        POP      {R0,PC}          ;; return
//  179 
//  180 /*
//  181 * 初始化FTM1的正交解码功能
//  182 *
//  183 */
//  184 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  185 void bm_init(void)
//  186 {
bm_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  187   
//  188   // 选择PTC0作为脉冲输入端
//  189   // 配置成输入下拉电阻的模式
//  190   // DMA上升沿触发
//  191   // LPLD_GPIO_Init(PTC, 0, DIR_INPUT, INPUT_PDOWN, IRQC_DMARI); 
//  192   ptc_init.GPIO_PTx = PTC;
        LDR.W    R0,??DataTable20_5  ;; 0x400ff080
        LDR.W    R1,??DataTable20_6
        STR      R0,[R1, #+0]
//  193   ptc_init.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable20_6
        STRB     R0,[R1, #+12]
//  194   ptc_init.GPIO_Pins = GPIO_Pin0;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable20_6
        STR      R0,[R1, #+4]
//  195   ptc_init.GPIO_PinControl =IRQC_DMARI | INPUT_PULL_DIS;
        MOVS     R0,#+65536
        LDR.W    R1,??DataTable20_6
        STR      R0,[R1, #+8]
//  196   LPLD_GPIO_Init(ptc_init); 
        LDR.W    R1,??DataTable20_6
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  197   
//  198   // 选择PTB0作为脉冲输入端
//  199   // 配置成输入下拉电阻的模式
//  200   // DMA上升沿触发
//  201   //LPLD_GPIO_Init(PTB, 0, DIR_INPUT, INPUT_PULL_DOWN, IRQC_DMARI); 
//  202   ptb_init.GPIO_PTx = PTD;
        LDR.W    R0,??DataTable20_7  ;; 0x400ff0c0
        LDR.W    R1,??DataTable20_8
        STR      R0,[R1, #+0]
//  203   ptb_init.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable20_8
        STRB     R0,[R1, #+12]
//  204   ptb_init.GPIO_Pins = GPIO_Pin8;
        MOV      R0,#+256
        LDR.W    R1,??DataTable20_8
        STR      R0,[R1, #+4]
//  205   ptb_init.GPIO_PinControl = IRQC_DMARI|INPUT_PULL_DIS;
        MOVS     R0,#+65536
        LDR.W    R1,??DataTable20_8
        STR      R0,[R1, #+8]
//  206   LPLD_GPIO_Init(ptb_init); 
        LDR.W    R1,??DataTable20_8
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  207   
//  208 //    ptb_init.GPIO_PTx = PTA;
//  209 //  ptb_init.GPIO_Dir = DIR_INPUT;
//  210 //  ptb_init.GPIO_Pins = GPIO_Pin19;
//  211 //  ptb_init.GPIO_PinControl = IRQC_DMARI|INPUT_PULL_DIS;
//  212 //  LPLD_GPIO_Init(ptb_init); 
//  213   
//  214   
//  215   //DMA初始化结构体赋值
//  216   
//  217   //DMA参数配置
//  218   dmac_init_struct.DMA_CHx = DMA_CH1;    //CH0通道
        MOVS     R0,#+1
        LDR.W    R1,??DataTable20_9
        STRB     R0,[R1, #+0]
//  219   dmac_init_struct.DMA_Req = PORTC_DMAREQ;//PORTE为请求源
        MOVS     R0,#+51
        LDR.W    R1,??DataTable20_9
        STRB     R0,[R1, #+1]
//  220   dmac_init_struct.DMA_MajorLoopCnt = DMA_MAX_NUM; //主循环计数值：行采集点数，宽度
        MOVW     R0,#+32767
        LDR.W    R1,??DataTable20_9
        STRH     R0,[R1, #+4]
//  221   dmac_init_struct.DMA_MinorByteCnt = 1; //次循环字节计数：每次读入1字节
        MOVS     R0,#+1
        LDR.W    R1,??DataTable20_9
        STR      R0,[R1, #+8]
//  222   dmac_init_struct.DMA_SourceAddr = (uint32)&pData1;//源地址：PTD0~7
        LDR.W    R0,??DataTable20_10
        LDR.W    R1,??DataTable20_9
        STR      R0,[R1, #+12]
//  223   dmac_init_struct.DMA_DestAddr = (uint32)pData1;//目的地址：存放图像的数组
        LDR.W    R0,??DataTable20_10
        LDR.W    R1,??DataTable20_9
        STR      R0,[R1, #+24]
//  224   dmac_init_struct.DMA_MajorCompleteIntEnable=TRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable20_9
        STRB     R0,[R1, #+37]
//  225   dmac_init_struct.DMA_Isr=dma0_isr;
        ADR.W    R0,dma0_isr
        LDR.W    R1,??DataTable20_9
        STR      R0,[R1, #+40]
//  226   //初始化DMA
//  227   LPLD_DMA_Init(dmac_init_struct);
        LDR.W    R1,??DataTable20_9
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_DMA_Init
//  228   
//  229   
//  230   
//  231   
//  232   //DMA参数配置
//  233   dmad_init_struct.DMA_CHx = DMA_CH2;    //CH0通道
        MOVS     R0,#+2
        LDR.W    R1,??DataTable20_11
        STRB     R0,[R1, #+0]
//  234   dmad_init_struct.DMA_Req = PORTD_DMAREQ;//PORTE为请求源
        MOVS     R0,#+52
        LDR.W    R1,??DataTable20_11
        STRB     R0,[R1, #+1]
//  235   dmad_init_struct.DMA_MajorLoopCnt = DMA_MAX_NUM; //主循环计数值：行采集点数，宽度
        MOVW     R0,#+32767
        LDR.W    R1,??DataTable20_11
        STRH     R0,[R1, #+4]
//  236   dmad_init_struct.DMA_MinorByteCnt = 1; //次循环字节计数：每次读入1字节
        MOVS     R0,#+1
        LDR.W    R1,??DataTable20_11
        STR      R0,[R1, #+8]
//  237   dmad_init_struct.DMA_SourceAddr = (uint32)&pData2;//源地址：PTD0~7
        LDR.W    R0,??DataTable20_12
        LDR.W    R1,??DataTable20_11
        STR      R0,[R1, #+12]
//  238   dmad_init_struct.DMA_DestAddr = (uint32)pData2;//目的地址：存放图像的数组
        LDR.W    R0,??DataTable20_12
        LDR.W    R1,??DataTable20_11
        STR      R0,[R1, #+24]
//  239   dmad_init_struct.DMA_MajorCompleteIntEnable=TRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable20_11
        STRB     R0,[R1, #+37]
//  240   dmad_init_struct.DMA_Isr=dma1_isr;
        ADR.W    R0,dma1_isr
        LDR.W    R1,??DataTable20_11
        STR      R0,[R1, #+40]
//  241   //初始化DMA
//  242   LPLD_DMA_Init(dmad_init_struct);
        LDR.W    R1,??DataTable20_11
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_DMA_Init
//  243   
//  244     //DMA参数配置
//  245   dmad_init_struct.DMA_CHx = DMA_CH3;    //CH0通道
        MOVS     R0,#+3
        LDR.W    R1,??DataTable20_11
        STRB     R0,[R1, #+0]
//  246   dmad_init_struct.DMA_Req = PORTA_DMAREQ;//PORTE为请求源
        MOVS     R0,#+49
        LDR.W    R1,??DataTable20_11
        STRB     R0,[R1, #+1]
//  247   dmad_init_struct.DMA_MajorLoopCnt = DMA_MAX_NUM; //主循环计数值：行采集点数，宽度
        MOVW     R0,#+32767
        LDR.W    R1,??DataTable20_11
        STRH     R0,[R1, #+4]
//  248   dmad_init_struct.DMA_MinorByteCnt = 1; //次循环字节计数：每次读入1字节
        MOVS     R0,#+1
        LDR.W    R1,??DataTable20_11
        STR      R0,[R1, #+8]
//  249   dmad_init_struct.DMA_SourceAddr = (uint32)&pData3;//源地址：PTD0~7
        LDR.W    R0,??DataTable20_13
        LDR.W    R1,??DataTable20_11
        STR      R0,[R1, #+12]
//  250   dmad_init_struct.DMA_DestAddr = (uint32)pData3;//目的地址：存放图像的数组
        LDR.W    R0,??DataTable20_13
        LDR.W    R1,??DataTable20_11
        STR      R0,[R1, #+24]
//  251  // dmad_init_struct.DMA_MajorCompleteIntEnable=TRUE;
//  252  // dmad_init_struct.DMA_Isr=dma1_isr;
//  253   //初始化DMA
//  254   LPLD_DMA_Init(dmad_init_struct);
        LDR.W    R1,??DataTable20_11
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_DMA_Init
//  255   //....如果需要自行添加更多通道
//  256   
//  257   
//  258   //    //初始化PIT
//  259   //  pit_init_param.PIT_Pitx = PIT0;
//  260   //  pit_init_param.PIT_PeriodMs = 10;//100ms 0.1khz
//  261   //  pit_init_param.PIT_Isr = pit_isr; 
//  262   //
//  263   //  LPLD_PIT_Init(pit_init_param);
//  264   
//  265 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  266 void dma0_isr(void)
//  267 {
dma0_isr:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  268   ch1_over_cnt++; //通道0溢出累加
        LDR.W    R0,??DataTable20_14
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable20_14
        STR      R0,[R1, #+0]
//  269   //初始化DMA模块
//  270   LPLD_DMA_Init(dmac_init_struct); 
        LDR.W    R1,??DataTable20_9
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_DMA_Init
//  271 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//  272 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  273 void dma1_isr(void)
//  274 {
dma1_isr:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  275   ch2_over_cnt++;//通道1溢出累加
        LDR.W    R0,??DataTable20_15
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable20_15
        STR      R0,[R1, #+0]
//  276   //初始化DMA模块
//  277   LPLD_DMA_Init(dmad_init_struct); 
        LDR.W    R1,??DataTable20_11
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_DMA_Init
//  278 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//  279 
//  280 /*
//  281 * PIT中断函数
//  282 */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  283 int lastspeed[3];
lastspeed:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  284 int lastspeed_i=0;
lastspeed_i:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  285 int bm_err=0,bm_err_z=0,bm_err_y=0;
bm_err:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
bm_err_z:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
bm_err_y:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  286 int bm_z_last=0,bm_y_last=0;
bm_z_last:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
bm_y_last:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  287 int err_cs=0;
err_cs:
        DS8 4

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  288 void pit_isr(void)
//  289 {
pit_isr:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  290   bm_z = (DMA_MAX_NUM - DMA0->TCD[DMA_CH1].CITER_ELINKNO); //获得最终的脉冲累加值
        MOVW     R0,#+32767
        LDR.W    R1,??DataTable20_16  ;; 0x40009036
        LDRH     R1,[R1, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable20_17
        STR      R0,[R1, #+0]
//  291   bm_y = (DMA_MAX_NUM - DMA0->TCD[DMA_CH2].CITER_ELINKNO);
        MOVW     R0,#+32767
        LDR.W    R1,??DataTable20_18  ;; 0x40009056
        LDRH     R1,[R1, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable20_19
        STR      R0,[R1, #+0]
//  292   if(fabss(bm_z-bm_y)>=30)
        LDR.W    R0,??DataTable20_17
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable20_19
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        BL       __aeabi_f2iz
        BL       `fabss`
        CMP      R0,#+30
        BLT.N    ??pit_isr_0
//  293   {
//  294   bm_z=MIN(bm_z,bm_y);
        LDR.W    R0,??DataTable20_17
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable20_19
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??pit_isr_1
        LDR.W    R0,??DataTable20_17
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable20_17
        STR      R0,[R1, #+0]
        B.N      ??pit_isr_2
??pit_isr_1:
        LDR.W    R0,??DataTable20_19
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable20_17
        STR      R0,[R1, #+0]
//  295  bm_y=bm_z;
??pit_isr_2:
        LDR.W    R0,??DataTable20_17
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable20_19
        STR      R0,[R1, #+0]
//  296   }
//  297 GetFreq = (DMA_MAX_NUM - DMA0->TCD[DMA_CH3].CITER_ELINKNO);
??pit_isr_0:
        MOVW     R0,#+32767
        LDR.W    R1,??DataTable20_20  ;; 0x40009076
        LDRH     R1,[R1, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable18_3
        STR      R0,[R1, #+0]
//  298 //  if((bm_z-bm_z_last)>50&&(bm_y-bm_y_last)>50&&err_cs<3) 
//  299 //  {err_cs++;
//  300 //  bm_z=bm_z_last;
//  301 //  bm_y=bm_y_last;
//  302 //  }
//  303 //  else
//  304 //  {
//  305 //    err_cs=0;
//  306 //  }
//  307 //  
//  308 //  if(fabss(bm_z_last-bm_z)>30&&fabss(bm_y_last-bm_y)<20&&bm_err_z<3) bm_err_z++; else bm_err_z=0;
//  309 //  if(fabss(bm_y_last-bm_y)>30&&fabss(bm_z_last-bm_z)<20&&bm_err_y<3) bm_err_y++; else bm_err_y=0;
//  310 //  if(bm_err_z>0) bm_z=bm_z_last; else bm_z_last=bm_z;
//  311 //  if(bm_err_y>0) bm_y=bm_y_last; else bm_y_last=bm_y;
//  312   
//  313   
//  314   
//  315 
//  316   bm_pz=(bm_z+bm_y)/2;
        LDR.W    R0,??DataTable20_17
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable20_19
        LDR      R0,[R0, #+0]
        BL       __aeabi_fadd
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable20_21
        STR      R0,[R1, #+0]
//  317   
//  318   //  if(ch1_over_cnt !=0)
//  319   //  {
//  320   //    bm_z = bm_z + DMA_MAX_NUM*ch1_over_cnt;
//  321   //    ch1_over_cnt = 0;  //清零溢出计数
//  322   //  }
//  323   //  
//  324   //  if(ch2_over_cnt !=0)
//  325   //  {
//  326   //    bm_y = bm_y + DMA_MAX_NUM*ch2_over_cnt;
//  327   //    ch2_over_cnt = 0;
//  328   //  }
//  329   //DMA参数配置
//  330   dmac_init_struct.DMA_CHx = DMA_CH1;    //CH0通道
        MOVS     R0,#+1
        LDR.W    R1,??DataTable20_9
        STRB     R0,[R1, #+0]
//  331   dmac_init_struct.DMA_Req = PORTC_DMAREQ;//PORTE为请求源
        MOVS     R0,#+51
        LDR.W    R1,??DataTable20_9
        STRB     R0,[R1, #+1]
//  332   dmac_init_struct.DMA_MajorLoopCnt = DMA_MAX_NUM; //主循环计数值：行采集点数，宽度
        MOVW     R0,#+32767
        LDR.W    R1,??DataTable20_9
        STRH     R0,[R1, #+4]
//  333   dmac_init_struct.DMA_MinorByteCnt = 1; //次循环字节计数：每次读入1字节
        MOVS     R0,#+1
        LDR.W    R1,??DataTable20_9
        STR      R0,[R1, #+8]
//  334   dmac_init_struct.DMA_SourceAddr = (uint32)&pData1;//源地址：PTD0~7
        LDR.W    R0,??DataTable20_10
        LDR.W    R1,??DataTable20_9
        STR      R0,[R1, #+12]
//  335   dmac_init_struct.DMA_DestAddr = (uint32)pData1;//目的地址：存放图像的数组
        LDR.W    R0,??DataTable20_10
        LDR.W    R1,??DataTable20_9
        STR      R0,[R1, #+24]
//  336   dmac_init_struct.DMA_MajorCompleteIntEnable=TRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable20_9
        STRB     R0,[R1, #+37]
//  337   dmac_init_struct.DMA_Isr=dma0_isr;
        LDR.W    R0,??DataTable20_22
        LDR.W    R1,??DataTable20_9
        STR      R0,[R1, #+40]
//  338   //初始化DMA
//  339   LPLD_DMA_Init(dmac_init_struct);
        LDR.W    R1,??DataTable20_9
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_DMA_Init
//  340   
//  341   
//  342   
//  343   
//  344   //DMA参数配置
//  345   dmad_init_struct.DMA_CHx = DMA_CH2;    //CH0通道
        MOVS     R0,#+2
        LDR.W    R1,??DataTable20_11
        STRB     R0,[R1, #+0]
//  346   dmad_init_struct.DMA_Req = PORTD_DMAREQ;//PORTE为请求源
        MOVS     R0,#+52
        LDR.W    R1,??DataTable20_11
        STRB     R0,[R1, #+1]
//  347   dmad_init_struct.DMA_MajorLoopCnt = DMA_MAX_NUM; //主循环计数值：行采集点数，宽度
        MOVW     R0,#+32767
        LDR.W    R1,??DataTable20_11
        STRH     R0,[R1, #+4]
//  348   dmad_init_struct.DMA_MinorByteCnt = 1; //次循环字节计数：每次读入1字节
        MOVS     R0,#+1
        LDR.W    R1,??DataTable20_11
        STR      R0,[R1, #+8]
//  349   dmad_init_struct.DMA_SourceAddr = (uint32)&pData2;//源地址：PTD0~7
        LDR.W    R0,??DataTable20_12
        LDR.W    R1,??DataTable20_11
        STR      R0,[R1, #+12]
//  350   dmad_init_struct.DMA_DestAddr = (uint32)pData2;//目的地址：存放图像的数组
        LDR.W    R0,??DataTable20_12
        LDR.W    R1,??DataTable20_11
        STR      R0,[R1, #+24]
//  351   dmad_init_struct.DMA_MajorCompleteIntEnable=TRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable20_11
        STRB     R0,[R1, #+37]
//  352   dmad_init_struct.DMA_Isr=dma1_isr;
        LDR.W    R0,??DataTable20_23
        LDR.W    R1,??DataTable20_11
        STR      R0,[R1, #+40]
//  353   //初始化DMA
//  354   LPLD_DMA_Init(dmad_init_struct);
        LDR.W    R1,??DataTable20_11
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_DMA_Init
//  355 //  
//  356       //DMA参数配置
//  357   dmad_init_struct.DMA_CHx = DMA_CH3;    //CH0通道
        MOVS     R0,#+3
        LDR.W    R1,??DataTable20_11
        STRB     R0,[R1, #+0]
//  358   dmad_init_struct.DMA_Req = PORTA_DMAREQ;//PORTE为请求源
        MOVS     R0,#+49
        LDR.W    R1,??DataTable20_11
        STRB     R0,[R1, #+1]
//  359   dmad_init_struct.DMA_MajorLoopCnt = DMA_MAX_NUM; //主循环计数值：行采集点数，宽度
        MOVW     R0,#+32767
        LDR.W    R1,??DataTable20_11
        STRH     R0,[R1, #+4]
//  360   dmad_init_struct.DMA_MinorByteCnt = 1; //次循环字节计数：每次读入1字节
        MOVS     R0,#+1
        LDR.W    R1,??DataTable20_11
        STR      R0,[R1, #+8]
//  361   dmad_init_struct.DMA_SourceAddr = (uint32)&pData3;//源地址：PTD0~7
        LDR.W    R0,??DataTable20_13
        LDR.W    R1,??DataTable20_11
        STR      R0,[R1, #+12]
//  362   dmad_init_struct.DMA_DestAddr = (uint32)pData3;//目的地址：存放图像的数组
        LDR.W    R0,??DataTable20_13
        LDR.W    R1,??DataTable20_11
        STR      R0,[R1, #+24]
//  363 //  dmad_init_struct.DMA_MajorCompleteIntEnable=TRUE;
//  364 //  dmad_init_struct.DMA_Isr=dma1_isr;
//  365   //初始化DMA
//  366   LPLD_DMA_Init(dmad_init_struct);
        LDR.W    R1,??DataTable20_11
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_DMA_Init
//  367   //....如果需要自行添加更多通道
//  368   //  LPLD_DMA_EnableReq(DMA_CH1); //开启通道请求
//  369   //  LPLD_DMA_EnableReq(DMA_CH2);
//  370   
//  371   
//  372 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  373 void Camera_dma_init()
//  374 {  V_Cnt=0;          //行计数
Camera_dma_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
        MOVS     R0,#+0
        LDR.W    R1,??DataTable20_24
        STR      R0,[R1, #+0]
//  375 Is_DispPhoto=0;   //显示图像
        MOVS     R0,#+0
        LDR.W    R1,??DataTable20_25
        STR      R0,[R1, #+0]
//  376 //DMA参数配置
//  377 dma_init_struct.DMA_CHx = DMA_CH0;    //CH0通道
        MOVS     R0,#+0
        LDR.W    R1,??DataTable20_26
        STRB     R0,[R1, #+0]
//  378 dma_init_struct.DMA_Req = PORTE_DMAREQ;//PORTE为请求源
        MOVS     R0,#+53
        LDR.W    R1,??DataTable20_26
        STRB     R0,[R1, #+1]
//  379 dma_init_struct.DMA_MajorLoopCnt = H; //主循环计数值：行采集点数，宽度
        MOV      R0,#+408
        LDR.W    R1,??DataTable20_26
        STRH     R0,[R1, #+4]
//  380 dma_init_struct.DMA_MinorByteCnt = 1; //次循环字节计数：每次读入1字节
        MOVS     R0,#+1
        LDR.W    R1,??DataTable20_26
        STR      R0,[R1, #+8]
//  381 dma_init_struct.DMA_SourceAddr = (uint32)&PTD->PDIR;//源地址：PTD0~7
        LDR.W    R0,??DataTable20_27  ;; 0x400ff0d0
        LDR.W    R1,??DataTable20_26
        STR      R0,[R1, #+12]
//  382 dma_init_struct.DMA_DestAddr = (uint32)Pix_Data;//目的地址：存放图像的数组
        LDR.W    R0,??DataTable20_28
        LDR.W    R1,??DataTable20_26
        STR      R0,[R1, #+24]
//  383 dma_init_struct.DMA_DestAddrOffset = 1;    //目的地址偏移：每次读入增加1
        MOVS     R0,#+1
        LDR.W    R1,??DataTable20_26
        STRH     R0,[R1, #+30]
//  384 dma_init_struct.DMA_AutoDisableReq = TRUE; //自动禁用请求
        MOVS     R0,#+1
        LDR.W    R1,??DataTable20_26
        STRB     R0,[R1, #+36]
//  385 
//  386 //初始化DMA
//  387 LPLD_DMA_Init(dma_init_struct);
        LDR.W    R1,??DataTable20_26
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_DMA_Init
//  388 
//  389 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  390 void dma_camera_isr()
//  391 {LED_D_T;
dma_camera_isr:
        PUSH     {R7,LR}
        MOVS     R1,#+26
        LDR.W    R0,??DataTable19  ;; 0x400ff100
        BL       LPLD_GPIO_Toggle_b
//  392 LPLD_UART_PutCharArr(UART4,"接收结束",8);
        MOVS     R2,#+8
        LDR.W    R1,??DataTable20_29
        LDR.W    R0,??DataTable20_30  ;; 0x400ea000
        BL       LPLD_UART_PutCharArr
//  393 //清行中断标志，防止进入无效行中断
//  394 LPLD_GPIO_ClearIntFlag(PORTB);
        MOVS     R0,#-1
        LDR.W    R1,??DataTable20_31  ;; 0x4004a0a0
        STR      R0,[R1, #+0]
//  395 enable_irq(PORTB_IRQn);
        MOVS     R0,#+88
        BL       NVIC_EnableIRQ
//  396 
//  397 }
        POP      {R0,PC}          ;; return
//  398 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  399 void Camera_gpio_init(void)
//  400 {
Camera_gpio_init:
        PUSH     {R7,LR}
//  401   //OV数据口初始化：PTD0~PTD7
//  402   ptd_init.GPIO_PTx = PTD;
        LDR.W    R0,??DataTable20_7  ;; 0x400ff0c0
        LDR.W    R1,??DataTable20_32
        STR      R0,[R1, #+0]
//  403   ptd_init.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable20_32
        STRB     R0,[R1, #+12]
//  404   ptd_init.GPIO_Pins = GPIO_Pin0_7;
        MOVS     R0,#+255
        LDR.W    R1,??DataTable20_32
        STR      R0,[R1, #+4]
//  405   ptd_init.GPIO_PinControl = IRQC_DIS | INPUT_PULL_UP;
        MOVS     R0,#+3
        LDR.W    R1,??DataTable20_32
        STR      R0,[R1, #+8]
//  406   LPLD_GPIO_Init(ptd_init);
        LDR.W    R1,??DataTable20_32
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  407   
//  408   //OV行信号接口初始化：PTB3-H
//  409   ptb_init.GPIO_PTx = PTB;
        LDR.W    R0,??DataTable18_5  ;; 0x400ff040
        LDR.W    R1,??DataTable20_8
        STR      R0,[R1, #+0]
//  410   ptb_init.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable20_8
        STRB     R0,[R1, #+12]
//  411   ptb_init.GPIO_Pins = GPIO_Pin3;
        MOVS     R0,#+8
        LDR.W    R1,??DataTable20_8
        STR      R0,[R1, #+4]
//  412   ptb_init.GPIO_PinControl = IRQC_RI|INPUT_PULL_DOWN;
        LDR.W    R0,??DataTable20_33  ;; 0x90002
        LDR.W    R1,??DataTable20_8
        STR      R0,[R1, #+8]
//  413   ptb_init.GPIO_Isr = portb_isr;
        ADR.W    R0,portb_isr
        LDR.W    R1,??DataTable20_8
        STR      R0,[R1, #+16]
//  414   LPLD_GPIO_Init(ptb_init); 
        LDR.W    R1,??DataTable20_8
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  415   
//  416   //OV场信号接口初始化：PTA17-V
//  417   pta_init.GPIO_PTx = PTA;
        LDR.W    R0,??DataTable18_4  ;; 0x400ff000
        LDR.W    R1,??DataTable20_34
        STR      R0,[R1, #+0]
//  418   pta_init.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable20_34
        STRB     R0,[R1, #+12]
//  419   pta_init.GPIO_Pins = GPIO_Pin17;
        MOVS     R0,#+131072
        LDR.W    R1,??DataTable20_34
        STR      R0,[R1, #+4]
//  420   pta_init.GPIO_PinControl = IRQC_RI|INPUT_PULL_DOWN;
        LDR.W    R0,??DataTable20_33  ;; 0x90002
        LDR.W    R1,??DataTable20_34
        STR      R0,[R1, #+8]
//  421   pta_init.GPIO_Isr = porta_isr;
        ADR.W    R0,porta_isr
        LDR.W    R1,??DataTable20_34
        STR      R0,[R1, #+16]
//  422   LPLD_GPIO_Init(pta_init); 
        LDR.W    R1,??DataTable20_34
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  423   
//  424   //OV PCLK信号接口初始化：PTE6-PCLK
//  425   pte_init.GPIO_PTx = PTE;
        LDR.W    R0,??DataTable19  ;; 0x400ff100
        LDR.W    R1,??DataTable21
        STR      R0,[R1, #+0]
//  426   pte_init.GPIO_Pins = GPIO_Pin6;
        MOVS     R0,#+64
        LDR.W    R1,??DataTable21
        STR      R0,[R1, #+4]
//  427   pte_init.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable21
        STRB     R0,[R1, #+12]
//  428   pte_init.GPIO_PinControl = IRQC_DMARI | INPUT_PULL_DOWN;
        LDR.W    R0,??DataTable20_35  ;; 0x10002
        LDR.W    R1,??DataTable21
        STR      R0,[R1, #+8]
//  429   LPLD_GPIO_Init(pte_init); 
        LDR.W    R1,??DataTable21
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  430 //  
//  431 //    //OV PCLK信号接口初始化：PTE6-PCLK
//  432   pte_init.GPIO_PTx = PTA;
        LDR.W    R0,??DataTable18_4  ;; 0x400ff000
        LDR.W    R1,??DataTable21
        STR      R0,[R1, #+0]
//  433   pte_init.GPIO_Pins = GPIO_Pin19;
        MOVS     R0,#+524288
        LDR.W    R1,??DataTable21
        STR      R0,[R1, #+4]
//  434   pte_init.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable21
        STRB     R0,[R1, #+12]
//  435   pte_init.GPIO_PinControl = IRQC_DMARI | INPUT_PULL_DOWN;
        LDR.W    R0,??DataTable20_35  ;; 0x10002
        LDR.W    R1,??DataTable21
        STR      R0,[R1, #+8]
//  436   LPLD_GPIO_Init(pte_init); 
        LDR.W    R1,??DataTable21
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  437   
//  438   
//  439 }
        POP      {R0,PC}          ;; return
//  440 
//  441 
//  442 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  443 int joc=0;
joc:
        DS8 4
//  444 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  445 int V_count=0;
V_count:
        DS8 4

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  446 void porta_isr()//V-场信号
//  447 { 
porta_isr:
        PUSH     {R7,LR}
//  448   pit_isr();
        BL       pit_isr
//  449 //  lptmr_isr();
//  450   LPLD_DMA_EnableReq(DMA_CH1); //开启通道请求
        LDR.W    R0,??DataTable20_36  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.W    R1,??DataTable20_36  ;; 0x4000800c
        STR      R0,[R1, #+0]
//  451   LPLD_DMA_EnableReq(DMA_CH2);
        LDR.W    R0,??DataTable20_36  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.W    R1,??DataTable20_36  ;; 0x4000800c
        STR      R0,[R1, #+0]
//  452  LPLD_DMA_EnableReq(DMA_CH3);
        LDR.W    R0,??DataTable20_36  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.W    R1,??DataTable20_36  ;; 0x4000800c
        STR      R0,[R1, #+0]
//  453   if(LPLD_GPIO_IsPinxExt(PORTA, GPIO_Pin17)){joc++;}
        LDR.W    R0,??DataTable21_1  ;; 0x400490a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BPL.N    ??porta_isr_0
        LDR.W    R0,??DataTable20_37
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable20_37
        STR      R0,[R1, #+0]
//  454   if(LPLD_GPIO_IsPinxExt(PORTA, GPIO_Pin17) &&Is_DispPhoto==0)
??porta_isr_0:
        LDR.W    R0,??DataTable21_1  ;; 0x400490a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BPL.N    ??porta_isr_1
        LDR.W    R0,??DataTable20_25
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??porta_isr_1
//  455   {if(V_count<10000)V_count++;
        LDR.W    R0,??DataTable20_38
        LDR      R0,[R0, #+0]
        MOVW     R1,#+10000
        CMP      R0,R1
        BGE.N    ??porta_isr_2
        LDR.W    R0,??DataTable20_38
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable20_38
        STR      R0,[R1, #+0]
//  456   //检测到场开始信号，加载目的地址
//  457   LPLD_DMA_LoadDstAddr(DMA_CH0, Pix_Data);
??porta_isr_2:
        LDR.W    R0,??DataTable20_28
        LDR.W    R1,??DataTable20_39  ;; 0x40009010
        STR      R0,[R1, #+0]
//  458   //清行中断标志，防止进入无效行中断
//  459   LPLD_GPIO_ClearIntFlag(PORTB);
        MOVS     R0,#-1
        LDR.W    R1,??DataTable20_31  ;; 0x4004a0a0
        STR      R0,[R1, #+0]
//  460   enable_irq(PORTB_IRQn);
        MOVS     R0,#+88
        BL       NVIC_EnableIRQ
//  461   }
//  462   
//  463   if(joc>1)
??porta_isr_1:
        LDR.W    R0,??DataTable20_37
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BLT.N    ??porta_isr_3
//  464   {
//  465     joc=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable20_37
        STR      R0,[R1, #+0]
//  466     
//  467   }
//  468   
//  469   LPLD_GPIO_ClearIntFlag(PORTA);
??porta_isr_3:
        MOVS     R0,#-1
        LDR.W    R1,??DataTable21_1  ;; 0x400490a0
        STR      R0,[R1, #+0]
//  470   
//  471 }
        POP      {R0,PC}          ;; return
//  472 //int cjhs_a[V]={  
//  473 //1,2,3,4,5,6,7,8,9,10,
//  474 //11,12,13,14,15,16,17,18,19,20,
//  475 //21,22,23,24,25,26,27,28,29,30,
//  476 //31,32,33,34,35,36,37,38,39,40,
//  477 //41,42,43,44,45,46,47,48,49,50,
//  478 //52,54,56,58,60,62,64,66,68,70,
//  479 //72,74,76,78,80,82,84,86,88,90,
//  480 //93,96,99,102,105,108,111,114,117,120,
//  481 //123,126,129,132,135,138,141,144,147,150,
//  482 //155,160,165,170,175,180,185,190,200,210
//  483 //};

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  484 int cjhs_a[V]={  
cjhs_a:
        DATA
        DC32 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19
        DC32 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36
        DC32 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 52, 54, 56
        DC32 58, 60, 62, 64, 66, 68, 70, 72, 74, 76, 78, 80, 82, 84, 86, 88, 90
        DC32 93, 96, 99, 102, 105, 108, 111, 114, 117, 120, 123, 126, 129, 132
        DC32 135, 140, 145, 150, 155, 160, 165, 170, 175, 180, 185, 190, 195
        DC32 205, 210, 215
//  485 1,2,3,4,5,6,7,8,9,10,
//  486 11,12,13,14,15,16,17,18,19,20,
//  487 21,22,23,24,25,26,27,28,29,30,
//  488 31,32,33,34,35,36,37,38,39,40,
//  489 41,42,43,44,45,46,47,48,49,50,
//  490 52,54,56,58,60,62,64,66,68,70,
//  491 72,74,76,78,80,82,84,86,88,90,
//  492 93,96,99,102,105,108,111,114,117,120,
//  493 123,126,129,132,135,140,145,150,155,160,
//  494 165,170,175,180,185,190,195,205,210,215
//  495 };
//  496 
//  497 
//  498 //int cjhs[V]={  
//  499 //1,2,3,4,5,6,7,8,9,10,
//  500 //11,12,13,14,15,16,17,18,19,20,
//  501 //21,22,23,24,25,26,27,28,29,30,
//  502 //31,32,33,34,35,36,37,38,39,40,
//  503 //41,42,43,44,45,46,47,48,49,50,
//  504 //51,52,53,54,55,56,57,58,59,60,
//  505 //61,62,63,64,65,66,67,68,69,70,
//  506 //72,74,76,78,80,82,84,86,88,90,
//  507 //93,96,99,102,105,108,111,114,117,120,
//  508 //123,126,129,132,135,138,141,144,147,150,
//  509 //};
//  510 
//  511 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  512 int cjhs[V]={  
cjhs:
        DATA
        DC32 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19
        DC32 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36
        DC32 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53
        DC32 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70
        DC32 72, 74, 76, 78, 80, 82, 84, 86, 88, 90, 93, 96, 99, 102, 105, 108
        DC32 111, 114, 117, 120, 125, 130, 135, 140, 145, 150, 155, 160, 165
        DC32 170
//  513 1,2,3,4,5,6,7,8,9,10,
//  514 11,12,13,14,15,16,17,18,19,20,
//  515 21,22,23,24,25,26,27,28,29,30,
//  516 31,32,33,34,35,36,37,38,39,40,
//  517 41,42,43,44,45,46,47,48,49,50,
//  518 51,52,53,54,55,56,57,58,59,60,
//  519 61,62,63,64,65,66,67,68,69,70,
//  520 72,74,76,78,80,82,84,86,88,90,
//  521 93,96,99,102,105,108,111,114,117,120,
//  522 125,130,135,140,145,150,155,160,165,170,
//  523 };
//  524 
//  525 //int cjhs[V]={  
//  526 //1,2,3,4,5,6,7,8,9,10,
//  527 //11,12,13,14,15,16,17,18,19,20,
//  528 //21,22,23,24,25,26,27,28,29,30,
//  529 //31,32,33,34,35,36,37,38,39,40,
//  530 //41,42,43,44,45,46,47,48,49,50,
//  531 //51,52,53,54,55,56,57,58,59,60,
//  532 //61,62,63,64,65,66,67,68,69,70,
//  533 //72,74,76,78,80,82,84,86,88,90,
//  534 //93,96,99,102,105,108,111,114,117,120,
//  535 //125,130,135,140,145,150,155,160,165,170,
//  536 //};

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  537 float sst_h=H;
sst_h:
        DATA
        DC32 43CC0000H

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  538 void portb_isr()//H-行信号
//  539 {  
portb_isr:
        PUSH     {R7,LR}
//  540   int cjh_cj;
//  541   if(LPLD_GPIO_IsPinxExt(PORTB, GPIO_Pin3))
        LDR.W    R0,??DataTable20_31  ;; 0x4004a0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+28
        BPL.N    ??portb_isr_0
//  542   { int ii;
//  543   // for(ii=100;ii>0;ii--){;}  
//  544   //检测到行开始信号，使能DMA请求
//  545   
//  546   V_Cnt++; 
        LDR.W    R0,??DataTable20_24
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable20_24
        STR      R0,[R1, #+0]
//  547   if(V_Cnt==0){pitcnt=0;
        LDR.W    R0,??DataTable20_24
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??portb_isr_1
        MOVS     R0,#+0
        LDR.W    R1,??DataTable20_40
        STR      R0,[R1, #+0]
//  548   
//  549   ////      pit_isr();
//  550   ////      LPLD_DMA_DisableReq(DMA_CH1); //开启通道请求
//  551   ////      LPLD_DMA_DisableReq(DMA_CH2);
//  552   //  LPLD_PIT_DisableIrq(pit_init_param); //使能PIT中断
//  553   }
//  554   if(sfminline&&0)cjh_cj=cjhs_a[cjh]; else cjh_cj=cjhs[cjh];
??portb_isr_1:
        LDR.W    R0,??DataTable20_41
        LDR.W    R1,??DataTable20_42
        LDR      R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
//  555   if(V_Cnt==cjh_cj){
        LDR.W    R1,??DataTable20_24
        LDR      R1,[R1, #+0]
        CMP      R1,R0
        BNE.N    ??portb_isr_2
//  556     cjh++; 
        LDR.W    R0,??DataTable20_42
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable20_42
        STR      R0,[R1, #+0]
//  557     
//  558 
//  559     LPLD_DMA_EnableReq(DMA_CH0);
        LDR.W    R0,??DataTable20_36  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable20_36  ;; 0x4000800c
        STR      R0,[R1, #+0]
        B.N      ??portb_isr_0
//  560     //      sst_h = DMA0->TCD[DMA_CH0].CITER_ELINKNO; 
//  561     //      while (sst_h>0)
//  562     //      { sst_h = DMA0->TCD[DMA_CH0].CITER_ELINKNO; 
//  563     //      NUM_Send();
//  564     //      }
//  565     
//  566     //  if(cjh>V*0.8)  Is_DispPhoto = 1;//可以显示图像
//  567   }
//  568   
//  569   //行数采集已满，关闭中断
//  570   else if (cjh==(V))
??portb_isr_2:
        LDR.W    R0,??DataTable20_42
        LDR      R0,[R0, #+0]
        CMP      R0,#+100
        BNE.N    ??portb_isr_0
//  571   { //LPLD_GPIO_Toggle_b(LED_C, LED_C_PIN);
//  572     //关GPIO中断 
//  573     
//  574     Is_DispPhoto = 1;//可以显示图像
        MOVS     R0,#+1
        LDR.W    R1,??DataTable20_25
        STR      R0,[R1, #+0]
//  575     
//  576     disable_irq(PORTB_IRQn);
        MOVS     R0,#+88
        BL       NVIC_DisableIRQ
//  577     
//  578   
//  579     
//  580     ////      LPLD_DMA_EnableReq(DMA_CH1); //开启通道请求
//  581     ////      LPLD_DMA_EnableReq(DMA_CH2);
//  582     //   LPLD_PIT_EnableIrq(pit_init_param); //使能PIT中断
//  583     V_Cnt=-1;  
        MOVS     R0,#-1
        LDR.W    R1,??DataTable20_24
        STR      R0,[R1, #+0]
//  584     cjh=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable20_42
        STR      R0,[R1, #+0]
//  585   }
//  586   
//  587   
//  588   }
//  589   LPLD_GPIO_ClearIntFlag(PORTB);
??portb_isr_0:
        MOVS     R0,#-1
        LDR.W    R1,??DataTable20_31  ;; 0x4004a0a0
        STR      R0,[R1, #+0]
//  590 }
        POP      {R0,PC}          ;; return
//  591 //
//  592 //void portb_isr()//H-行信号
//  593 //{  
//  594 //
//  595 //  if(LPLD_GPIO_IsPinxExt(PORTB, GPIO_Pin3))
//  596 //  { int ii;
//  597 // // for(ii=100;ii>0;ii--){;}  
//  598 //    //检测到行开始信号，使能DMA请求
//  599 //  
//  600 //  
//  601 //   if(V_Cnt==0){pitcnt=0;
//  602 //      LPLD_DMA_DisableReq(DMA_CH1); //开启通道请求
//  603 //      LPLD_DMA_DisableReq(DMA_CH2);
//  604 //      LPLD_PIT_DisableIrq(pit_init_param); //使能PIT中断
//  605 //       }
//  606 //    if(V_Cnt<V){
//  607 //      LPLD_DMA_EnableReq(DMA_CH0);  
//  608 //      V_Cnt++; 
//  609 //    }
//  610 //    //行数采集已满，关闭中断
//  611 //    else
//  612 //    { //LPLD_GPIO_Toggle_b(LED_C, LED_C_PIN);
//  613 //      //关GPIO中断 
//  614 //      
//  615 //      disable_irq(PORTE_IRQn);
//  616 //      disable_irq(PORTA_IRQn);
//  617 //      disable_irq(PORTB_IRQn);
//  618 //     
//  619 //      Is_DispPhoto = 1;//可以显示图像
//  620 //
//  621 //      LPLD_DMA_EnableReq(DMA_CH1); //开启通道请求
//  622 //      LPLD_DMA_EnableReq(DMA_CH2);
//  623 //      LPLD_PIT_EnableIrq(pit_init_param); //使能PIT中断
//  624 //      V_Cnt=0;  
//  625 //   
//  626 //    }
//  627 //  }
//  628 //}
//  629 //
//  630 
//  631 
//  632 
//  633 
//  634 
//  635 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  636 void LED_init_gpio()
//  637 {
LED_init_gpio:
        PUSH     {R7,LR}
//  638   
//  639 #if(CARD)
//  640   // 配置 PTA 为GPIO功能,输出,高电平，禁用中断
//  641   
//  642   gpio_init_struct.GPIO_PTx = PTE;
//  643   gpio_init_struct.GPIO_Pins = GPIO_Pin26;
//  644   gpio_init_struct.GPIO_Dir = DIR_OUTPUT;
//  645   gpio_init_struct.GPIO_Output = OUTPUT_H;
//  646   gpio_init_struct.GPIO_PinControl = IRQC_DIS;
//  647   LPLD_GPIO_Init(gpio_init_struct);
//  648   
//  649   gpio_init_struct.GPIO_PTx = PTD;
//  650   gpio_init_struct.GPIO_Pins = GPIO_Pin15;
//  651   gpio_init_struct.GPIO_Dir = DIR_OUTPUT;
//  652   gpio_init_struct.GPIO_Output = OUTPUT_H;
//  653   gpio_init_struct.GPIO_PinControl = IRQC_DIS;
//  654   LPLD_GPIO_Init(gpio_init_struct);
//  655   
//  656 #else
//  657   
//  658   gpio_init_struct.GPIO_PTx = PTA;
        LDR.N    R0,??DataTable18_4  ;; 0x400ff000
        LDR.W    R1,??DataTable20_4
        STR      R0,[R1, #+0]
//  659   gpio_init_struct.GPIO_Pins = GPIO_Pin17;
        MOVS     R0,#+131072
        LDR.W    R1,??DataTable20_4
        STR      R0,[R1, #+4]
//  660   gpio_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable20_4
        STRB     R0,[R1, #+12]
//  661   gpio_init_struct.GPIO_Output = OUTPUT_H;  
        MOVS     R0,#+1
        LDR.W    R1,??DataTable20_4
        STRB     R0,[R1, #+13]
//  662   gpio_init_struct.GPIO_PinControl = IRQC_DIS;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable20_4
        STR      R0,[R1, #+8]
//  663   LPLD_GPIO_Init(gpio_init_struct);
        LDR.W    R1,??DataTable20_4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  664   
//  665 //  
//  666 //  gpio_init_struct.GPIO_PTx = PTC;
//  667 //  gpio_init_struct.GPIO_Pins = GPIO_Pin0;
//  668 //  gpio_init_struct.GPIO_Dir = DIR_OUTPUT;
//  669 //  gpio_init_struct.GPIO_Output = OUTPUT_H;  
//  670 //  gpio_init_struct.GPIO_PinControl = IRQC_DIS;
//  671 //  LPLD_GPIO_Init(gpio_init_struct);
//  672   
//  673   
//  674   gpio_init_struct.GPIO_PTx = PTD;
        LDR.W    R0,??DataTable20_7  ;; 0x400ff0c0
        LDR.W    R1,??DataTable20_4
        STR      R0,[R1, #+0]
//  675   gpio_init_struct.GPIO_Pins = GPIO_Pin15;
        MOV      R0,#+32768
        LDR.W    R1,??DataTable20_4
        STR      R0,[R1, #+4]
//  676   gpio_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable20_4
        STRB     R0,[R1, #+12]
//  677   gpio_init_struct.GPIO_Output = OUTPUT_H;  
        MOVS     R0,#+1
        LDR.W    R1,??DataTable20_4
        STRB     R0,[R1, #+13]
//  678   gpio_init_struct.GPIO_PinControl = IRQC_DIS;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable20_4
        STR      R0,[R1, #+8]
//  679   LPLD_GPIO_Init(gpio_init_struct);
        LDR.W    R1,??DataTable20_4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  680   
//  681   gpio_init_struct.GPIO_PTx = PTE;
        LDR.W    R0,??DataTable19  ;; 0x400ff100
        LDR.W    R1,??DataTable20_4
        STR      R0,[R1, #+0]
//  682   gpio_init_struct.GPIO_Pins = GPIO_Pin26;
        MOVS     R0,#+67108864
        LDR.W    R1,??DataTable20_4
        STR      R0,[R1, #+4]
//  683   gpio_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable20_4
        STRB     R0,[R1, #+12]
//  684   gpio_init_struct.GPIO_Output = OUTPUT_H;  
        MOVS     R0,#+1
        LDR.W    R1,??DataTable20_4
        STRB     R0,[R1, #+13]
//  685   gpio_init_struct.GPIO_PinControl = IRQC_DIS;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable20_4
        STR      R0,[R1, #+8]
//  686   LPLD_GPIO_Init(gpio_init_struct);
        LDR.W    R1,??DataTable20_4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  687 #endif
//  688   
//  689 }
        POP      {R0,PC}          ;; return
//  690 
//  691 /*
//  692 * 延时一段时间
//  693 */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  694 void delay()
//  695 {
//  696   uint16 i, n;
//  697   for(i=0;i<30000;i++)
delay:
        MOVS     R0,#+0
        B.N      ??delay_0
//  698   {
//  699     for(n=0;n<200;n++)
//  700     {
//  701       asm("nop");
??delay_1:
        nop
//  702     }
        ADDS     R1,R1,#+1
??delay_2:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+200
        BLT.N    ??delay_1
        ADDS     R0,R0,#+1
??delay_0:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVW     R1,#+30000
        CMP      R0,R1
        BGE.N    ??delay_3
        MOVS     R1,#+0
        B.N      ??delay_2
//  703   }
//  704 }
??delay_3:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  705 void LED()
//  706 {
LED:
        PUSH     {R7,LR}
//  707   //D1至D4依次触发点亮、熄灭
//  708   LED_i++;
        LDR.W    R0,??DataTable21_2
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable21_2
        STR      R0,[R1, #+0]
//  709   if (LED_i==5) LED_i=1;
        LDR.W    R0,??DataTable21_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??LED_0
        MOVS     R0,#+1
        LDR.W    R1,??DataTable21_2
        STR      R0,[R1, #+0]
//  710   if (LED_i==1) LPLD_GPIO_Toggle_b(LED_A, LED_A_PIN);
??LED_0:
        LDR.W    R0,??DataTable21_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??LED_1
        MOVS     R1,#+17
        LDR.N    R0,??DataTable18_4  ;; 0x400ff000
        BL       LPLD_GPIO_Toggle_b
//  711   
//  712  // if (LED_i==2) LPLD_GPIO_Toggle_b(LED_B, LED_B_PIN);
//  713   
//  714   if (LED_i==3) LPLD_GPIO_Toggle_b(LED_C, LED_C_PIN);
??LED_1:
        LDR.W    R0,??DataTable21_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??LED_2
        MOVS     R1,#+15
        LDR.W    R0,??DataTable20_7  ;; 0x400ff0c0
        BL       LPLD_GPIO_Toggle_b
//  715   
//  716   if (LED_i==4) LPLD_GPIO_Toggle_b(LED_D, LED_D_PIN);
??LED_2:
        LDR.W    R0,??DataTable21_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??LED_3
        MOVS     R1,#+26
        LDR.N    R0,??DataTable19  ;; 0x400ff100
        BL       LPLD_GPIO_Toggle_b
//  717   
//  718   
//  719   
//  720 }
??LED_3:
        POP      {R0,PC}          ;; return
//  721 //========此处向下为上位机相关部分============

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  722 void uart_init(void)
//  723 {
uart_init:
        PUSH     {LR}
        SUB      SP,SP,#+44
//  724   
//  725   UART_InitTypeDef uart4_init_struct;
//  726   uart4_init_struct.UART_Uartx = UART4; //使用UART4
        LDR.W    R0,??DataTable22  ;; 0x400ea000
        STR      R0,[SP, #+12]
//  727   uart4_init_struct.UART_BaudRate = 115200; //设置波特率9600
        MOVS     R0,#+115200
        STR      R0,[SP, #+16]
//  728   if(0){
//  729     uart4_init_struct.UART_RxPin = PTC14;  //接收引脚为PTC14
//  730     uart4_init_struct.UART_TxPin = PTC15; } //发送引脚为PTC25
//  731   else
//  732   {
//  733     uart4_init_struct.UART_RxPin = PTE25;  //接收引脚为PTE25
        MOVS     R0,#+149
        STRB     R0,[SP, #+21]
//  734     uart4_init_struct.UART_TxPin = PTE24;  //发送引脚为PTE24
        MOVS     R0,#+148
        STRB     R0,[SP, #+20]
//  735   }
//  736   uart4_init_struct.UART_RxIntEnable = TRUE;    //使能接收中断
        MOVS     R0,#+1
        STRB     R0,[SP, #+22]
//  737   uart4_init_struct.UART_RxIsr = uart_isr;      //设置接收中断函数
        ADR.W    R0,uart_isr
        STR      R0,[SP, #+32]
//  738   //初始化UART
//  739   LPLD_UART_Init(uart4_init_struct);
        ADD      R1,SP,#+12
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_Init
//  740   //使能UART中断
//  741   LPLD_UART_EnableIrq(uart4_init_struct);
        ADD      R1,SP,#+12
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_EnableIrq
//  742   LPLD_UART_PutCharArr(UART4, "uart4_init",10);
        MOVS     R2,#+10
        LDR.W    R1,??DataTable22_1
        LDR.W    R0,??DataTable22  ;; 0x400ea000
        BL       LPLD_UART_PutCharArr
//  743   
//  744   
//  745 }
        ADD      SP,SP,#+44
        POP      {PC}             ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  746 void uart_isr(void)
//  747 {
uart_isr:
        PUSH     {R7,LR}
//  748   
//  749   // LPLD_UART_PutChar(UART4, recv);
//  750   
//  751   
//  752   RX[count_RX] = LPLD_UART_GetChar(UART4);
        LDR.N    R0,??DataTable20_30  ;; 0x400ea000
        BL       LPLD_UART_GetChar
        LDR.W    R1,??DataTable22_2
        LDR.W    R2,??DataTable22_3
        LDRB     R2,[R2, #+0]
        STRB     R0,[R2, R1]
//  753   if( RX[0] == '#' )
        LDR.W    R0,??DataTable22_2
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+35
        BNE.N    ??uart_isr_0
//  754     count_RX++;
        LDR.W    R0,??DataTable22_3
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable22_3
        STRB     R0,[R1, #+0]
        B.N      ??uart_isr_1
//  755   else count_RX=0;		 	
??uart_isr_0:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable22_3
        STRB     R0,[R1, #+0]
//  756   if(count_RX==MAX_S)//收到结尾
??uart_isr_1:
        LDR.W    R0,??DataTable22_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+14
        BNE.N    ??uart_isr_2
//  757   {
//  758     count_RX=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable22_3
        STRB     R0,[R1, #+0]
//  759     flag_rx_succsess =RX_SU;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable22_4
        STRB     R0,[R1, #+0]
//  760     
//  761     NUM_GET();
        BL       NUM_GET
//  762     
//  763     count_RX=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable22_3
        STRB     R0,[R1, #+0]
//  764   } 
//  765   
//  766   
//  767 }
??uart_isr_2:
        POP      {R0,PC}          ;; return
//  768 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  769 void ReceFloat(void)
//  770 {
//  771   
//  772   {
//  773     RX_FLAG=RX[1];
ReceFloat:
        LDR.W    R0,??DataTable22_2
        LDRB     R0,[R0, #+1]
        LDR.W    R1,??DataTable22_5
        STRB     R0,[R1, #+0]
//  774     FloatSave[0]=RX[2];
        LDR.W    R0,??DataTable22_2
        LDRB     R0,[R0, #+2]
        LDR.W    R1,??DataTable22_6
        STRB     R0,[R1, #+0]
//  775     FloatSave[1]=RX[3];
        LDR.W    R0,??DataTable22_2
        LDRB     R0,[R0, #+3]
        LDR.W    R1,??DataTable22_6
        STRB     R0,[R1, #+1]
//  776     FloatSave[2]=RX[4];
        LDR.W    R0,??DataTable22_2
        LDRB     R0,[R0, #+4]
        LDR.W    R1,??DataTable22_6
        STRB     R0,[R1, #+2]
//  777     FloatSave[3]=RX[5];
        LDR.W    R0,??DataTable22_2
        LDRB     R0,[R0, #+5]
        LDR.W    R1,??DataTable22_6
        STRB     R0,[R1, #+3]
//  778     
//  779     FloatSave[4]=RX[6];
        LDR.W    R0,??DataTable22_2
        LDRB     R0,[R0, #+6]
        LDR.W    R1,??DataTable22_6
        STRB     R0,[R1, #+4]
//  780     FloatSave[5]=RX[7];
        LDR.W    R0,??DataTable22_2
        LDRB     R0,[R0, #+7]
        LDR.W    R1,??DataTable22_6
        STRB     R0,[R1, #+5]
//  781     FloatSave[6]=RX[8];
        LDR.W    R0,??DataTable22_2
        LDRB     R0,[R0, #+8]
        LDR.W    R1,??DataTable22_6
        STRB     R0,[R1, #+6]
//  782     FloatSave[7]=RX[9];
        LDR.W    R0,??DataTable22_2
        LDRB     R0,[R0, #+9]
        LDR.W    R1,??DataTable22_6
        STRB     R0,[R1, #+7]
//  783     
//  784     FloatSave[8]=RX[10];
        LDR.W    R0,??DataTable22_2
        LDRB     R0,[R0, #+10]
        LDR.W    R1,??DataTable22_6
        STRB     R0,[R1, #+8]
//  785     FloatSave[9]=RX[11];
        LDR.W    R0,??DataTable22_2
        LDRB     R0,[R0, #+11]
        LDR.W    R1,??DataTable22_6
        STRB     R0,[R1, #+9]
//  786     FloatSave[10]=RX[12];
        LDR.W    R0,??DataTable22_2
        LDRB     R0,[R0, #+12]
        LDR.W    R1,??DataTable22_6
        STRB     R0,[R1, #+10]
//  787     FloatSave[11]=RX[13];
        LDR.W    R0,??DataTable22_2
        LDRB     R0,[R0, #+13]
        LDR.W    R1,??DataTable22_6
        STRB     R0,[R1, #+11]
//  788     
//  789   }
//  790 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18:
        DC32     adc_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_1:
        DC32     GetCnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_2:
        DC32     ltpmt_temp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_3:
        DC32     GetFreq

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_4:
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_5:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_6:
        DC32     0xfa0a30

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  791 void NUM_GET(void)
//  792 {
NUM_GET:
        PUSH     {R7,LR}
//  793   if(flag_rx_succsess==RX_SU)
        LDR.W    R0,??DataTable22_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??NUM_GET_0
//  794   {
//  795     
//  796     ReceFloat();
        BL       ReceFloat
//  797     if(RX_FLAG=='A')
        LDR.W    R0,??DataTable22_5
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+65
        BNE.N    ??NUM_GET_1
//  798     {	
//  799       memcpy((char*)(&duojizkb0),&FloatSave[0],4);            //void *memcpy(void *dest, const void *src, size_t n);  ′ó?′src?ù??μ??ú′?μ??·μ??eê??????aê???±′N??×??úμ???±êdest?ù??μ??ú′?μ??·?eê??????D  
        MOVS     R2,#+4
        LDR.W    R1,??DataTable22_6
        LDR.W    R0,??DataTable22_7
        BL       memcpy
//  800       memcpy((char*)(&duojizkb),&FloatSave[4],4);
        MOVS     R2,#+4
        LDR.W    R1,??DataTable22_8
        LDR.W    R0,??DataTable22_9
        BL       memcpy
//  801       memcpy((char*)(&duojipianyi),&FloatSave[8],4);
        MOVS     R2,#+4
        LDR.W    R1,??DataTable22_10
        LDR.W    R0,??DataTable22_11
        BL       memcpy
        B.N      ??NUM_GET_2
//  802       
//  803     }
//  804     else if(RX_FLAG=='B')
??NUM_GET_1:
        LDR.W    R0,??DataTable22_5
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+66
        BNE.N    ??NUM_GET_3
//  805     {
//  806       memcpy((char*)(&zkb),&FloatSave[0],4);
        MOVS     R2,#+4
        LDR.W    R1,??DataTable22_6
        LDR.W    R0,??DataTable22_12
        BL       memcpy
//  807       memcpy((char*)(&NUM_B.B),&FloatSave[4],4);
        MOVS     R2,#+4
        LDR.W    R1,??DataTable22_8
        LDR.W    R0,??DataTable22_13
        BL       memcpy
//  808       memcpy((char*)(&NUM_B.C),&FloatSave[8],4);
        MOVS     R2,#+4
        LDR.W    R1,??DataTable22_10
        LDR.W    R0,??DataTable22_14
        BL       memcpy
        B.N      ??NUM_GET_2
//  809     }
//  810     else if(RX_FLAG=='C')
??NUM_GET_3:
        LDR.W    R0,??DataTable22_5
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+67
        BNE.N    ??NUM_GET_4
//  811     {
//  812       memcpy((char*)(&SteerPID.Kp),&FloatSave[0],4);
        MOVS     R2,#+4
        LDR.W    R1,??DataTable22_6
        LDR.W    R0,??DataTable22_15
        BL       memcpy
//  813       memcpy((char*)(&NUM_C.B),&FloatSave[4],4);
        MOVS     R2,#+4
        LDR.W    R1,??DataTable22_8
        LDR.W    R0,??DataTable22_16
        BL       memcpy
//  814       memcpy((char*)(&SteerPID.Kd),&FloatSave[8],4);
        MOVS     R2,#+4
        LDR.W    R1,??DataTable22_10
        LDR.W    R0,??DataTable22_17
        BL       memcpy
        B.N      ??NUM_GET_2
//  815     }
//  816     else if(RX_FLAG=='D')
??NUM_GET_4:
        LDR.W    R0,??DataTable22_5
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+68
        BNE.N    ??NUM_GET_5
//  817     {
//  818       memcpy((char*)(&MidPos_h),&FloatSave[0],4);
        MOVS     R2,#+4
        LDR.W    R1,??DataTable22_6
        LDR.W    R0,??DataTable22_18
        BL       memcpy
//  819       memcpy((char*)(&NUM_D.B),&FloatSave[4],4);
        MOVS     R2,#+4
        LDR.W    R1,??DataTable22_8
        LDR.W    R0,??DataTable22_19
        BL       memcpy
//  820       memcpy((char*)(&NUM_D.C),&FloatSave[8],4);
        MOVS     R2,#+4
        LDR.W    R1,??DataTable22_10
        LDR.W    R0,??DataTable22_20
        BL       memcpy
        B.N      ??NUM_GET_2
//  821     }
//  822     else if(RX_FLAG=='E')
??NUM_GET_5:
        LDR.W    R0,??DataTable22_5
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+69
        BNE.N    ??NUM_GET_2
//  823     {
//  824       memcpy(((char*)&fs),&FloatSave[0],4);
        MOVS     R2,#+4
        LDR.W    R1,??DataTable22_6
        LDR.W    R0,??DataTable22_21
        BL       memcpy
//  825       memcpy((char*)(&NUM_E.B),&FloatSave[4],4);
        MOVS     R2,#+4
        LDR.W    R1,??DataTable22_8
        LDR.W    R0,??DataTable22_22
        BL       memcpy
//  826       memcpy((char*)(&NUM_E.C),&FloatSave[8],4);
        MOVS     R2,#+4
        LDR.W    R1,??DataTable22_10
        LDR.W    R0,??DataTable22_23
        BL       memcpy
//  827       
//  828       if (NUM_E.C==1)
        LDR.W    R0,??DataTable22_24
        LDR      R0,[R0, #+8]
        MOVS     R1,#+1065353216
        BL       __aeabi_cfcmpeq
        BNE.N    ??NUM_GET_6
//  829       {
//  830         LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, (int)angle_to_period((int)(50-NUM_E.A)));
        LDR.W    R0,??DataTable22_25  ;; 0x42480000
        LDR.W    R1,??DataTable22_24
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        BL       __aeabi_f2iz
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       angle_to_period
        MOVS     R2,R0
        MOVS     R1,#+0
        LDR.W    R0,??DataTable22_26  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  831         LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, (int)NUM_E.B*100);
        LDR.W    R0,??DataTable22_24
        LDR      R0,[R0, #+4]
        BL       __aeabi_f2iz
        MOVS     R1,#+100
        MUL      R2,R1,R0
        MOVS     R1,#+1
        LDR.W    R0,??DataTable22_26  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  832         LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2, (int)NUM_E.B*100);}
        LDR.W    R0,??DataTable22_24
        LDR      R0,[R0, #+4]
        BL       __aeabi_f2iz
        MOVS     R1,#+100
        MUL      R2,R1,R0
        MOVS     R1,#+2
        LDR.W    R0,??DataTable22_26  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
        B.N      ??NUM_GET_2
//  833       
//  834       else if (NUM_E.C==0)
??NUM_GET_6:
        LDR.W    R0,??DataTable22_24
        LDR      R0,[R0, #+8]
        MOVS     R1,#+0
        BL       __aeabi_cfcmpeq
        BNE.N    ??NUM_GET_2
//  835       { LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, angle_to_period(0));
        MOVS     R0,#+0
        BL       angle_to_period
        MOVS     R2,R0
        MOVS     R1,#+0
        LDR.W    R0,??DataTable22_26  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  836       LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 0);
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR.W    R0,??DataTable22_26  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  837       LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2, 0);}
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR.W    R0,??DataTable22_26  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  838       
//  839       
//  840       
//  841       //   for(i=0;i<4;i++)  
//  842       //  {  
//  843       //   *((unsigned char*)&PIDPara_R.P+i)=*(&FloatSave[0]+i);       
//  844       //  }     
//  845       
//  846     }
//  847     else ;
//  848     flag_rx_succsess=RX_ER;
??NUM_GET_2:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable22_4
        STRB     R0,[R1, #+0]
//  849   }
//  850 }
??NUM_GET_0:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19:
        DC32     0x400ff100
//  851 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  852 void putstr(int8 *s,int8 a)
//  853 {int ys_i=0;
putstr:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
//  854 LPLD_UART_PutChar(UART4,'#');
        MOVS     R1,#+35
        LDR.W    R0,??DataTable22  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  855 
//  856 LPLD_UART_PutChar(UART4,a);
        MOVS     R1,R5
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable22  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  857 
//  858 LPLD_UART_PutCharArr(UART4,s,8);
        MOVS     R2,#+8
        MOVS     R1,R4
        LDR.W    R0,??DataTable22  ;; 0x400ea000
        BL       LPLD_UART_PutCharArr
//  859 
//  860 
//  861 
//  862 LPLD_UART_PutChar(UART4,a);
        MOVS     R1,R5
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable22  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  863 
//  864 LPLD_UART_PutChar(UART4,'#');
        MOVS     R1,#+35
        LDR.W    R0,??DataTable22  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  865 
//  866 
//  867 }
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_1:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_2:
        DC32     0x4003b000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_3:
        DC32     lptmr_init_param

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_4:
        DC32     gpio_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_5:
        DC32     0x400ff080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_6:
        DC32     ptc_init

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_7:
        DC32     0x400ff0c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_8:
        DC32     ptb_init

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_9:
        DC32     dmac_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_10:
        DC32     pData1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_11:
        DC32     dmad_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_12:
        DC32     pData2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_13:
        DC32     pData3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_14:
        DC32     ch1_over_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_15:
        DC32     ch2_over_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_16:
        DC32     0x40009036

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_17:
        DC32     bm_z

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_18:
        DC32     0x40009056

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_19:
        DC32     bm_y

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_20:
        DC32     0x40009076

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_21:
        DC32     bm_pz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_22:
        DC32     dma0_isr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_23:
        DC32     dma1_isr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_24:
        DC32     V_Cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_25:
        DC32     Is_DispPhoto

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_26:
        DC32     dma_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_27:
        DC32     0x400ff0d0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_28:
        DC32     Pix_Data

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_29:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_30:
        DC32     0x400ea000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_31:
        DC32     0x4004a0a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_32:
        DC32     ptd_init

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_33:
        DC32     0x90002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_34:
        DC32     pta_init

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_35:
        DC32     0x10002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_36:
        DC32     0x4000800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_37:
        DC32     joc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_38:
        DC32     V_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_39:
        DC32     0x40009010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_40:
        DC32     pitcnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_41:
        DC32     cjhs

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_42:
        DC32     cjh

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  868 void NUM_Send(void)
//  869 {
NUM_Send:
        PUSH     {R3-R5,LR}
//  870   if (fs==0){
        LDR.W    R0,??DataTable22_21
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        BL       __aeabi_cfcmpeq
        BNE.N    ??NUM_Send_0
//  871     
//  872     FloatToChar(a_y,sa);
        LDR.W    R1,??DataTable22_27
        LDR.W    R0,??DataTable22_28
        LDR      R0,[R0, #+0]
        BL       FloatToChar
//  873     putstr(sa,'A');
        MOVS     R1,#+65
        LDR.W    R0,??DataTable22_27
        BL       putstr
//  874     
//  875     FloatToChar(StableNumbers,sa);
        LDR.W    R1,??DataTable22_27
        MOVS     R4,R1
        LDR.W    R0,??DataTable22_29
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       FloatToChar
//  876     putstr(sa,'B');
        MOVS     R1,#+66
        LDR.W    R0,??DataTable22_27
        BL       putstr
//  877     
//  878     FloatToChar(Error,sa);
        LDR.W    R1,??DataTable22_27
        MOVS     R4,R1
        LDR.W    R0,??DataTable22_30
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       FloatToChar
//  879     putstr(sa,'C');
        MOVS     R1,#+67
        LDR.W    R0,??DataTable22_27
        BL       putstr
//  880     
//  881     FloatToChar(EndType,sa);
        LDR.W    R1,??DataTable22_27
        MOVS     R4,R1
        LDR.W    R0,??DataTable22_31
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       FloatToChar
//  882     putstr(sa,'D');}
        MOVS     R1,#+68
        LDR.W    R0,??DataTable22_27
        BL       putstr
        B.N      ??NUM_Send_1
//  883   
//  884   else if (fs==1) {
??NUM_Send_0:
        LDR.W    R0,??DataTable22_21
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1065353216
        BL       __aeabi_cfcmpeq
        BNE.N    ??NUM_Send_2
//  885     
//  886     FloatToChar(MidLineExcursion,sa);
        LDR.W    R1,??DataTable22_27
        MOVS     R4,R1
        LDR.W    R0,??DataTable22_32
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       FloatToChar
//  887     putstr(sa,'A');
        MOVS     R1,#+65
        LDR.W    R0,??DataTable22_27
        BL       putstr
//  888     
//  889     FloatToChar(MidLineVariance,sa);
        LDR.W    R1,??DataTable22_27
        MOVS     R4,R1
        LDR.W    R2,??DataTable22_33
        LDRD     R0,R1,[R2, #+0]
        BL       __aeabi_d2f
        MOVS     R1,R4
        BL       FloatToChar
//  890     putstr(sa,'B');
        MOVS     R1,#+66
        LDR.W    R0,??DataTable22_27
        BL       putstr
//  891     
//  892     FloatToChar(hx_find_count_max,sa);//midpos
        LDR.W    R1,??DataTable22_27
        MOVS     R4,R1
        LDR.W    R0,??DataTable22_34
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       FloatToChar
//  893     putstr(sa,'C');
        MOVS     R1,#+67
        LDR.W    R0,??DataTable22_27
        BL       putstr
//  894     
//  895     FloatToChar(V_count,sa);
        LDR.W    R1,??DataTable22_27
        MOVS     R4,R1
        LDR.W    R0,??DataTable22_35
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       FloatToChar
//  896     putstr(sa,'D');
        MOVS     R1,#+68
        LDR.W    R0,??DataTable22_27
        BL       putstr
        B.N      ??NUM_Send_1
//  897   }
//  898   
//  899   else if (fs==2) {
??NUM_Send_2:
        LDR.W    R0,??DataTable22_21
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1073741824
        BL       __aeabi_cfcmpeq
        BNE.N    ??NUM_Send_3
//  900     
//  901     FloatToChar(TopE1,sa);
        LDR.W    R1,??DataTable22_27
        MOVS     R4,R1
        LDR.W    R0,??DataTable22_36
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       FloatToChar
//  902     putstr(sa,'A');
        MOVS     R1,#+65
        LDR.W    R0,??DataTable22_27
        BL       putstr
//  903     
//  904     FloatToChar(TopE2,sa);
        LDR.W    R1,??DataTable22_27
        MOVS     R4,R1
        LDR.W    R0,??DataTable22_37
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       FloatToChar
//  905     putstr(sa,'B');
        MOVS     R1,#+66
        LDR.W    R0,??DataTable22_27
        BL       putstr
//  906     
//  907     FloatToChar(g_Derict,sa);
        LDR.W    R1,??DataTable22_27
        MOVS     R4,R1
        LDR.W    R0,??DataTable22_38
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R1,R4
        BL       FloatToChar
//  908     putstr(sa,'C');
        MOVS     R1,#+67
        LDR.W    R0,??DataTable22_27
        BL       putstr
//  909     
//  910     FloatToChar(MidLineExcursion,sa);
        LDR.W    R1,??DataTable22_27
        MOVS     R4,R1
        LDR.W    R0,??DataTable22_32
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       FloatToChar
//  911     putstr(sa,'D');
        MOVS     R1,#+68
        LDR.W    R0,??DataTable22_27
        BL       putstr
        B.N      ??NUM_Send_1
//  912   }
//  913   
//  914   else if (fs==4) {
??NUM_Send_3:
        LDR.W    R0,??DataTable22_21
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1082130432
        BL       __aeabi_cfcmpeq
        BNE.N    ??NUM_Send_4
//  915     
//  916     FloatToChar(BlackEndL,sa);
        LDR.W    R1,??DataTable22_27
        MOVS     R4,R1
        LDR.W    R0,??DataTable22_39
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       FloatToChar
//  917     putstr(sa,'A');
        MOVS     R1,#+65
        LDR.W    R0,??DataTable22_27
        BL       putstr
//  918     
//  919     FloatToChar(BlackEndR,sa);
        LDR.W    R1,??DataTable22_27
        MOVS     R4,R1
        LDR.W    R0,??DataTable22_40
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       FloatToChar
//  920     putstr(sa,'B');
        MOVS     R1,#+66
        LDR.W    R0,??DataTable22_27
        BL       putstr
//  921     
//  922     FloatToChar(BlackEndM,sa);
        LDR.W    R1,??DataTable22_27
        MOVS     R4,R1
        LDR.W    R0,??DataTable22_41
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       FloatToChar
//  923     putstr(sa,'C');
        MOVS     R1,#+67
        LDR.W    R0,??DataTable22_27
        BL       putstr
//  924     
//  925     FloatToChar(Error,sa);
        LDR.W    R1,??DataTable22_27
        MOVS     R4,R1
        LDR.W    R0,??DataTable22_30
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       FloatToChar
//  926     putstr(sa,'D');
        MOVS     R1,#+68
        LDR.W    R0,??DataTable22_27
        BL       putstr
        B.N      ??NUM_Send_1
//  927   }
//  928   
//  929   else if (fs==6) {
??NUM_Send_4:
        LDR.W    R0,??DataTable22_21
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable22_42  ;; 0x40c00000
        BL       __aeabi_cfcmpeq
        BNE.N    ??NUM_Send_5
//  930     
//  931     FloatToChar(bm_z,sa);
        LDR.W    R1,??DataTable22_27
        LDR.W    R0,??DataTable22_43
        LDR      R0,[R0, #+0]
        BL       FloatToChar
//  932     putstr(sa,'A');
        MOVS     R1,#+65
        LDR.W    R0,??DataTable22_27
        BL       putstr
//  933     
//  934     FloatToChar(bm_y,sa);
        LDR.W    R1,??DataTable22_27
        LDR.W    R0,??DataTable22_44
        LDR      R0,[R0, #+0]
        BL       FloatToChar
//  935     putstr(sa,'B');
        MOVS     R1,#+66
        LDR.W    R0,??DataTable22_27
        BL       putstr
//  936     
//  937     FloatToChar(bm_pz,sa);
        LDR.W    R1,??DataTable22_27
        LDR.W    R0,??DataTable22_45
        LDR      R0,[R0, #+0]
        BL       FloatToChar
//  938     putstr(sa,'C');
        MOVS     R1,#+67
        LDR.W    R0,??DataTable22_27
        BL       putstr
//  939      FloatToChar(zkb/100,sa);   
        LDR.W    R1,??DataTable22_27
        MOVS     R4,R1
        LDR.W    R0,??DataTable22_12
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable22_46  ;; 0x42c80000
        BL       __aeabi_fdiv
        MOVS     R1,R4
        BL       FloatToChar
//  940    // FloatToChar(sd/100,sa);
//  941     putstr(sa,'D');
        MOVS     R1,#+68
        LDR.W    R0,??DataTable22_27
        BL       putstr
        B.N      ??NUM_Send_1
//  942   }
//  943   else if (fs==7) {
??NUM_Send_5:
        LDR.W    R0,??DataTable22_21
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable22_47  ;; 0x40e00000
        BL       __aeabi_cfcmpeq
        BNE.N    ??NUM_Send_6
//  944     
//  945     FloatToChar(a_y_min,sa);
        LDR.W    R1,??DataTable22_27
        LDR.W    R0,??DataTable22_48
        LDR      R0,[R0, #+0]
        BL       FloatToChar
//  946     putstr(sa,'A');
        MOVS     R1,#+65
        LDR.W    R0,??DataTable22_27
        BL       putstr
//  947     
//  948     FloatToChar(a_y,sa);
        LDR.W    R1,??DataTable22_27
        LDR.W    R0,??DataTable22_28
        LDR      R0,[R0, #+0]
        BL       FloatToChar
//  949     putstr(sa,'B');
        MOVS     R1,#+66
        LDR.W    R0,??DataTable22_27
        BL       putstr
//  950     
//  951     FloatToChar(a_y_max,sa);
        LDR.W    R1,??DataTable22_27
        LDR.W    R0,??DataTable22_49
        LDR      R0,[R0, #+0]
        BL       FloatToChar
//  952     putstr(sa,'C');    
        MOVS     R1,#+67
        LDR.W    R0,??DataTable22_27
        BL       putstr
        B.N      ??NUM_Send_1
//  953     
//  954   }
//  955   else if (fs==8) {
??NUM_Send_6:
        LDR.W    R0,??DataTable22_21
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1090519040
        BL       __aeabi_cfcmpeq
        BNE.N    ??NUM_Send_7
//  956     
//  957     FloatToChar(sst_h,sa);
        LDR.W    R1,??DataTable22_27
        LDR.W    R0,??DataTable22_50
        LDR      R0,[R0, #+0]
        BL       FloatToChar
//  958     putstr(sa,'A');
        MOVS     R1,#+65
        LDR.W    R0,??DataTable22_27
        BL       putstr
        B.N      ??NUM_Send_1
//  959     
//  960     
//  961     
//  962     
//  963     
//  964   }
//  965   
//  966   else if (fs==3) {
??NUM_Send_7:
        LDR.W    R0,??DataTable22_21
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable22_51  ;; 0x40400000
        BL       __aeabi_cfcmpeq
        BNE.W    ??NUM_Send_8
//  967     LPLD_UART_PutCharArr(UART4,"开始",4);
        MOVS     R2,#+4
        LDR.W    R1,??DataTable22_52
        LDR.W    R0,??DataTable22  ;; 0x400ea000
        BL       LPLD_UART_PutCharArr
//  968     int i=0;
        MOVS     R4,#+0
//  969     
//  970     
//  971     if(yxh==0){
        LDR.W    R0,??DataTable22_53
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??NUM_Send_9
//  972       for(i = yxh; i < RowMax-1; i++)    
        LDR.W    R0,??DataTable22_53
        LDR      R4,[R0, #+0]
??NUM_Send_10:
        CMP      R4,#+99
        BGE.W    ??NUM_Send_1
//  973       {	
//  974         FloatToChar(BlackLineData[i],sa);    
        LDR.W    R1,??DataTable22_27
        MOVS     R5,R1
        LDR.W    R0,??DataTable22_54
        LDR      R0,[R0, R4, LSL #+2]
        BL       __aeabi_i2f
        MOVS     R1,R5
        BL       FloatToChar
//  975         LPLD_UART_PutChar(UART4,'#');	
        MOVS     R1,#+35
        LDR.W    R0,??DataTable22  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  976 	LPLD_UART_PutCharArr(UART4,sa,4);
        MOVS     R2,#+4
        LDR.W    R1,??DataTable22_27
        LDR.W    R0,??DataTable22  ;; 0x400ea000
        BL       LPLD_UART_PutCharArr
//  977       }
        ADDS     R4,R4,#+1
        B.N      ??NUM_Send_10
//  978     }
//  979     else if(yxh>25)
??NUM_Send_9:
        LDR.W    R0,??DataTable22_53
        LDR      R0,[R0, #+0]
        CMP      R0,#+26
        BLT.N    ??NUM_Send_11
//  980     {
//  981       for(i =RowMax-yxh; i < RowMax-5; i++)    
        LDR.W    R0,??DataTable22_53
        LDR      R0,[R0, #+0]
        RSBS     R4,R0,#+100
??NUM_Send_12:
        CMP      R4,#+95
        BGE.W    ??NUM_Send_1
//  982       {	
//  983         FloatToChar(BlackLineData[i],sa);    
        LDR.W    R1,??DataTable22_27
        MOVS     R5,R1
        LDR.W    R0,??DataTable22_54
        LDR      R0,[R0, R4, LSL #+2]
        BL       __aeabi_i2f
        MOVS     R1,R5
        BL       FloatToChar
//  984         LPLD_UART_PutChar(UART4,'#');	
        MOVS     R1,#+35
        LDR.W    R0,??DataTable22  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  985 	LPLD_UART_PutCharArr(UART4,sa,4);
        MOVS     R2,#+4
        LDR.W    R1,??DataTable22_27
        LDR.W    R0,??DataTable22  ;; 0x400ea000
        BL       LPLD_UART_PutCharArr
//  986       }
        ADDS     R4,R4,#+1
        B.N      ??NUM_Send_12
//  987       
//  988       
//  989     }
//  990     
//  991     else if(yxh>40)
??NUM_Send_11:
        LDR.W    R0,??DataTable22_53
        LDR      R0,[R0, #+0]
        CMP      R0,#+41
        BLT.N    ??NUM_Send_13
//  992     {
//  993       for(i = RowMax-yxh; i < RowMax-10; i++)    
        LDR.W    R0,??DataTable22_53
        LDR      R0,[R0, #+0]
        RSBS     R4,R0,#+100
??NUM_Send_14:
        CMP      R4,#+90
        BGE.W    ??NUM_Send_1
//  994       {	
//  995 	FloatToChar(BlackLineData[i],sa);    
        LDR.W    R1,??DataTable22_27
        MOVS     R5,R1
        LDR.W    R0,??DataTable22_54
        LDR      R0,[R0, R4, LSL #+2]
        BL       __aeabi_i2f
        MOVS     R1,R5
        BL       FloatToChar
//  996         LPLD_UART_PutChar(UART4,'#');	
        MOVS     R1,#+35
        LDR.W    R0,??DataTable22  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  997 	LPLD_UART_PutCharArr(UART4,sa,4);
        MOVS     R2,#+4
        LDR.W    R1,??DataTable22_27
        LDR.W    R0,??DataTable22  ;; 0x400ea000
        BL       LPLD_UART_PutCharArr
//  998       }
        ADDS     R4,R4,#+1
        B.N      ??NUM_Send_14
//  999       
// 1000       
// 1001     }
// 1002     
// 1003     else 
// 1004     {
// 1005       for(i = RowMax-yxh; i < RowMax; i++)    
??NUM_Send_13:
        LDR.W    R0,??DataTable22_53
        LDR      R0,[R0, #+0]
        RSBS     R4,R0,#+100
??NUM_Send_15:
        CMP      R4,#+100
        BGE.W    ??NUM_Send_1
// 1006       {	
// 1007 	FloatToChar(BlackLineData[i],sa);    
        LDR.W    R1,??DataTable22_27
        MOVS     R5,R1
        LDR.W    R0,??DataTable22_54
        LDR      R0,[R0, R4, LSL #+2]
        BL       __aeabi_i2f
        MOVS     R1,R5
        BL       FloatToChar
// 1008         LPLD_UART_PutChar(UART4,'#');	
        MOVS     R1,#+35
        LDR.N    R0,??DataTable22  ;; 0x400ea000
        BL       LPLD_UART_PutChar
// 1009 	LPLD_UART_PutCharArr(UART4,sa,4);
        MOVS     R2,#+4
        LDR.W    R1,??DataTable22_27
        LDR.N    R0,??DataTable22  ;; 0x400ea000
        BL       LPLD_UART_PutCharArr
// 1010       }
        ADDS     R4,R4,#+1
        B.N      ??NUM_Send_15
// 1011       
// 1012       
// 1013     }
// 1014     
// 1015   }
// 1016   
// 1017   
// 1018   else if (fs==9) {
??NUM_Send_8:
        LDR.W    R0,??DataTable22_21
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable22_55  ;; 0x41100000
        BL       __aeabi_cfcmpeq
        BNE.N    ??NUM_Send_16
// 1019     LPLD_UART_PutCharArr(UART4,"开始-中",8);
        MOVS     R2,#+8
        LDR.W    R1,??DataTable22_56
        LDR.N    R0,??DataTable22  ;; 0x400ea000
        BL       LPLD_UART_PutCharArr
// 1020     int i=0;
        MOVS     R4,#+0
// 1021     
// 1022     
// 1023     
// 1024     for(i =  RowMax-1; i>0; i--)    
        MOVS     R0,#+99
        MOVS     R4,R0
??NUM_Send_17:
        CMP      R4,#+1
        BLT.W    ??NUM_Send_1
// 1025     {	
// 1026       FloatToChar(BlackLineData[i],sa);    
        LDR.N    R1,??DataTable22_27
        MOVS     R5,R1
        LDR.W    R0,??DataTable22_54
        LDR      R0,[R0, R4, LSL #+2]
        BL       __aeabi_i2f
        MOVS     R1,R5
        BL       FloatToChar
// 1027       LPLD_UART_PutChar(UART4,'#');	
        MOVS     R1,#+35
        LDR.N    R0,??DataTable22  ;; 0x400ea000
        BL       LPLD_UART_PutChar
// 1028       LPLD_UART_PutCharArr(UART4,sa,4);
        MOVS     R2,#+4
        LDR.N    R1,??DataTable22_27
        LDR.N    R0,??DataTable22  ;; 0x400ea000
        BL       LPLD_UART_PutCharArr
// 1029     }
        SUBS     R4,R4,#+1
        B.N      ??NUM_Send_17
// 1030     
// 1031     
// 1032   }
// 1033   else if (fs==10) {
??NUM_Send_16:
        LDR.N    R0,??DataTable22_21
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable22_57  ;; 0x41200000
        BL       __aeabi_cfcmpeq
        BNE.N    ??NUM_Send_18
// 1034     LPLD_UART_PutCharArr(UART4,"开始-左",8);
        MOVS     R2,#+8
        LDR.W    R1,??DataTable22_58
        LDR.N    R0,??DataTable22  ;; 0x400ea000
        BL       LPLD_UART_PutCharArr
// 1035     int i=0;
        MOVS     R4,#+0
// 1036     
// 1037     
// 1038     
// 1039     for(i =  RowMax-1; i>0; i--)    
        MOVS     R0,#+99
        MOVS     R4,R0
??NUM_Send_19:
        CMP      R4,#+1
        BLT.W    ??NUM_Send_1
// 1040     {	
// 1041       FloatToChar(LeftBlack[i],sa);    
        LDR.N    R1,??DataTable22_27
        MOVS     R5,R1
        LDR.W    R0,??DataTable22_59
        LDR      R0,[R0, R4, LSL #+2]
        BL       __aeabi_i2f
        MOVS     R1,R5
        BL       FloatToChar
// 1042       LPLD_UART_PutChar(UART4,'#');	
        MOVS     R1,#+35
        LDR.N    R0,??DataTable22  ;; 0x400ea000
        BL       LPLD_UART_PutChar
// 1043       LPLD_UART_PutCharArr(UART4,sa,4);
        MOVS     R2,#+4
        LDR.N    R1,??DataTable22_27
        LDR.N    R0,??DataTable22  ;; 0x400ea000
        BL       LPLD_UART_PutCharArr
// 1044     }
        SUBS     R4,R4,#+1
        B.N      ??NUM_Send_19
// 1045     
// 1046     
// 1047   }
// 1048   else if (fs==11) {
??NUM_Send_18:
        LDR.N    R0,??DataTable22_21
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable22_60  ;; 0x41300000
        BL       __aeabi_cfcmpeq
        BNE.N    ??NUM_Send_20
// 1049     LPLD_UART_PutCharArr(UART4,"开始-右",8);
        MOVS     R2,#+8
        LDR.N    R1,??DataTable22_61
        LDR.N    R0,??DataTable22  ;; 0x400ea000
        BL       LPLD_UART_PutCharArr
// 1050     int i=0;
        MOVS     R4,#+0
// 1051     
// 1052     
// 1053     
// 1054     for(i =  RowMax-1; i>0; i--)    
        MOVS     R0,#+99
        MOVS     R4,R0
??NUM_Send_21:
        CMP      R4,#+1
        BLT.W    ??NUM_Send_1
// 1055     {	
// 1056       FloatToChar(RightBlack[i],sa);    
        LDR.N    R1,??DataTable22_27
        MOVS     R5,R1
        LDR.N    R0,??DataTable22_62
        LDR      R0,[R0, R4, LSL #+2]
        BL       __aeabi_i2f
        MOVS     R1,R5
        BL       FloatToChar
// 1057       LPLD_UART_PutChar(UART4,'#');	
        MOVS     R1,#+35
        LDR.N    R0,??DataTable22  ;; 0x400ea000
        BL       LPLD_UART_PutChar
// 1058       LPLD_UART_PutCharArr(UART4,sa,4);
        MOVS     R2,#+4
        LDR.N    R1,??DataTable22_27
        LDR.N    R0,??DataTable22  ;; 0x400ea000
        BL       LPLD_UART_PutCharArr
// 1059     }
        SUBS     R4,R4,#+1
        B.N      ??NUM_Send_21
// 1060     
// 1061     
// 1062   }
// 1063   else if (fs==12) {
??NUM_Send_20:
        LDR.N    R0,??DataTable22_21
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable22_63  ;; 0x41400000
        BL       __aeabi_cfcmpeq
        BNE.N    ??NUM_Send_22
// 1064     
// 1065     FloatToChar(firstline_l,sa);
        LDR.N    R1,??DataTable22_27
        MOVS     R4,R1
        LDR.N    R0,??DataTable22_64
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       FloatToChar
// 1066     putstr(sa,'A');
        MOVS     R1,#+65
        LDR.N    R0,??DataTable22_27
        BL       putstr
// 1067     
// 1068     FloatToChar(firstline_m,sa);
        LDR.N    R1,??DataTable22_27
        MOVS     R4,R1
        LDR.N    R0,??DataTable22_65
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       FloatToChar
// 1069     putstr(sa,'B');
        MOVS     R1,#+66
        LDR.N    R0,??DataTable22_27
        BL       putstr
// 1070     
// 1071     FloatToChar(firstline_r,sa);
        LDR.N    R1,??DataTable22_27
        MOVS     R4,R1
        LDR.N    R0,??DataTable22_66
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       FloatToChar
// 1072     putstr(sa,'C');
        MOVS     R1,#+67
        LDR.N    R0,??DataTable22_27
        BL       putstr
// 1073     FloatToChar(duojizkb1,sa);//midpos
        LDR.N    R1,??DataTable22_27
        LDR.N    R0,??DataTable22_67
        LDR      R0,[R0, #+0]
        BL       FloatToChar
// 1074     putstr(sa,'D');
        MOVS     R1,#+68
        LDR.N    R0,??DataTable22_27
        BL       putstr
        B.N      ??NUM_Send_1
// 1075     
// 1076     
// 1077     
// 1078     
// 1079   }
// 1080   
// 1081   else if (fs==13) {
??NUM_Send_22:
        LDR.N    R0,??DataTable22_21
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable22_68  ;; 0x41500000
        BL       __aeabi_cfcmpeq
        BNE.N    ??NUM_Send_1
// 1082     
// 1083     FloatToChar(firstline_l,sa);
        LDR.N    R1,??DataTable22_27
        MOVS     R4,R1
        LDR.N    R0,??DataTable22_64
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       FloatToChar
// 1084     putstr(sa,'A');
        MOVS     R1,#+65
        LDR.N    R0,??DataTable22_27
        BL       putstr
// 1085     
// 1086     FloatToChar(firstline_m,sa);
        LDR.N    R1,??DataTable22_27
        MOVS     R4,R1
        LDR.N    R0,??DataTable22_65
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       FloatToChar
// 1087     putstr(sa,'B');
        MOVS     R1,#+66
        LDR.N    R0,??DataTable22_27
        BL       putstr
// 1088     
// 1089     FloatToChar(firstline_r,sa);
        LDR.N    R1,??DataTable22_27
        MOVS     R4,R1
        LDR.N    R0,??DataTable22_66
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       FloatToChar
// 1090     putstr(sa,'C');
        MOVS     R1,#+67
        LDR.N    R0,??DataTable22_27
        BL       putstr
// 1091     FloatToChar(duojizkb1,sa);//midpos
        LDR.N    R1,??DataTable22_27
        LDR.N    R0,??DataTable22_67
        LDR      R0,[R0, #+0]
        BL       FloatToChar
// 1092     putstr(sa,'D');
        MOVS     R1,#+68
        LDR.N    R0,??DataTable22_27
        BL       putstr
// 1093     
// 1094     
// 1095     
// 1096     
// 1097   }
// 1098   
// 1099   
// 1100   //        
// 1101   //        FloatToChar(NUM_B.B,sa);
// 1102   //        putstr(sa,'E');
// 1103   //        
// 1104   //        FloatToChar(NUM_B.C,sa);
// 1105   //        putstr(sa,'F');
// 1106   //        
// 1107   //        FloatToChar(NUM_C.A,sa);
// 1108   //        putstr(sa,'G');
// 1109   //        
// 1110   //        FloatToChar(NUM_C.B,sa);
// 1111   //        putstr(sa,'H');
// 1112   //        
// 1113   //        FloatToChar(NUM_C.C,sa);
// 1114   //        putstr(sa,'I');
// 1115   //	 
// 1116 }
??NUM_Send_1:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21:
        DC32     pte_init

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_1:
        DC32     0x400490a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_2:
        DC32     LED_i
// 1117 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1118 void FloatToChar(float floatNum, int8* byteArry)
// 1119 { int FloatToChar_a,FloatToChar_b,FloatToChar_c,FloatToChar_d,FloatToChar_e,FloatToChar_f,FloatToChar_g;
FloatToChar:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R0
        MOVS     R5,R1
// 1120 FloatToChar_a=(int)floatNum;
        MOVS     R0,R4
        BL       __aeabi_f2iz
        MOVS     R6,R0
// 1121 FloatToChar_b=(int)(floatNum*10-FloatToChar_a*10);
        LDR.N    R0,??DataTable22_57  ;; 0x41200000
        MOVS     R1,R4
        BL       __aeabi_fmul
        MOVS     R7,R0
        MOVS     R0,#+10
        MUL      R0,R0,R6
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOVS     R0,R7
        BL       __aeabi_fsub
        BL       __aeabi_f2iz
        MOVS     R7,R0
// 1122 FloatToChar_c=(int)(floatNum*100-((int)(floatNum*10))*10);
        LDR.N    R0,??DataTable22_46  ;; 0x42c80000
        MOVS     R1,R4
        BL       __aeabi_fmul
        MOV      R8,R0
        LDR.N    R0,??DataTable22_57  ;; 0x41200000
        MOVS     R1,R4
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOVS     R1,#+10
        MULS     R0,R1,R0
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOV      R0,R8
        BL       __aeabi_fsub
        BL       __aeabi_f2iz
        MOV      R8,R0
// 1123 FloatToChar_d=(int)(floatNum*1000-((int)(floatNum*100))*10); 
        LDR.N    R0,??DataTable22_69  ;; 0x447a0000
        MOVS     R1,R4
        BL       __aeabi_fmul
        MOV      R9,R0
        LDR.N    R0,??DataTable22_46  ;; 0x42c80000
        MOVS     R1,R4
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOVS     R1,#+10
        MULS     R0,R1,R0
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOV      R0,R9
        BL       __aeabi_fsub
        BL       __aeabi_f2iz
        MOV      R9,R0
// 1124 FloatToChar_e=(int)(floatNum*10000-((int)(floatNum*1000))*10);
        LDR.N    R0,??DataTable22_70  ;; 0x461c4000
        MOVS     R1,R4
        BL       __aeabi_fmul
        MOV      R10,R0
        LDR.N    R0,??DataTable22_69  ;; 0x447a0000
        MOVS     R1,R4
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOVS     R1,#+10
        MULS     R0,R1,R0
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOV      R0,R10
        BL       __aeabi_fsub
        BL       __aeabi_f2iz
        MOV      R10,R0
// 1125 FloatToChar_f=(int)(floatNum*100000-((int)(floatNum*10000))*10);
        LDR.N    R0,??DataTable22_71  ;; 0x47c35000
        MOVS     R1,R4
        BL       __aeabi_fmul
        MOV      R11,R0
        LDR.N    R0,??DataTable22_70  ;; 0x461c4000
        MOVS     R1,R4
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOVS     R1,#+10
        MULS     R0,R1,R0
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOV      R0,R11
        BL       __aeabi_fsub
        BL       __aeabi_f2iz
        MOV      R11,R0
// 1126 FloatToChar_g=(int)(floatNum*1000000-((int)(floatNum*100000))*10);
        LDR.N    R0,??DataTable22_72  ;; 0x49742400
        MOVS     R1,R4
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable22_71  ;; 0x47c35000
        MOVS     R1,R4
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOVS     R1,#+10
        MULS     R0,R1,R0
        BL       __aeabi_i2f
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        BL       __aeabi_f2iz
// 1127 str_ln=sprintf(byteArry,"%d.%d%d%d%d%d%d",FloatToChar_a,FloatToChar_b,FloatToChar_c,FloatToChar_d,FloatToChar_e,FloatToChar_f,FloatToChar_g);
        STR      R0,[SP, #+16]
        STR      R11,[SP, #+12]
        STR      R10,[SP, #+8]
        STR      R9,[SP, #+4]
        STR      R8,[SP, #+0]
        MOVS     R3,R7
        MOVS     R2,R6
        LDR.N    R1,??DataTable22_73
        MOVS     R0,R5
        BL       sprintf
        LDR.N    R1,??DataTable22_74
        STR      R0,[R1, #+0]
// 1128 
// 1129 
// 1130 
// 1131 //sprintf(byteArry,"%-8f",floatNum);
// 1132 
// 1133 }
        ADD      SP,SP,#+20
        POP      {R4-R11,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22:
        DC32     0x400ea000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_1:
        DC32     ?_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_2:
        DC32     RX

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_3:
        DC32     count_RX

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_4:
        DC32     flag_rx_succsess

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_5:
        DC32     RX_FLAG

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_6:
        DC32     FloatSave

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_7:
        DC32     duojizkb0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_8:
        DC32     FloatSave+0x4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_9:
        DC32     duojizkb

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_10:
        DC32     FloatSave+0x8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_11:
        DC32     duojipianyi

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_12:
        DC32     zkb

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_13:
        DC32     NUM_B+0x4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_14:
        DC32     NUM_B+0x8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_15:
        DC32     SteerPID

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_16:
        DC32     NUM_C+0x4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_17:
        DC32     SteerPID+0x4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_18:
        DC32     MidPos_h

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_19:
        DC32     NUM_D+0x4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_20:
        DC32     NUM_D+0x8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_21:
        DC32     fs

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_22:
        DC32     NUM_E+0x4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_23:
        DC32     NUM_E+0x8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_24:
        DC32     NUM_E

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_25:
        DC32     0x42480000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_26:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_27:
        DC32     sa

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_28:
        DC32     a_y

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_29:
        DC32     StableNumbers

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_30:
        DC32     Error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_31:
        DC32     EndType

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_32:
        DC32     MidLineExcursion

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_33:
        DC32     MidLineVariance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_34:
        DC32     hx_find_count_max

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_35:
        DC32     V_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_36:
        DC32     TopE1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_37:
        DC32     TopE2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_38:
        DC32     g_Derict

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_39:
        DC32     BlackEndL

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_40:
        DC32     BlackEndR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_41:
        DC32     BlackEndM

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_42:
        DC32     0x40c00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_43:
        DC32     bm_z

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_44:
        DC32     bm_y

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_45:
        DC32     bm_pz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_46:
        DC32     0x42c80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_47:
        DC32     0x40e00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_48:
        DC32     a_y_min

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_49:
        DC32     a_y_max

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_50:
        DC32     sst_h

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_51:
        DC32     0x40400000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_52:
        DC32     ?_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_53:
        DC32     yxh

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_54:
        DC32     BlackLineData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_55:
        DC32     0x41100000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_56:
        DC32     ?_3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_57:
        DC32     0x41200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_58:
        DC32     ?_4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_59:
        DC32     LeftBlack

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_60:
        DC32     0x41300000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_61:
        DC32     ?_5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_62:
        DC32     RightBlack

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_63:
        DC32     0x41400000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_64:
        DC32     firstline_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_65:
        DC32     firstline_m

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_66:
        DC32     firstline_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_67:
        DC32     duojizkb1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_68:
        DC32     0x41500000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_69:
        DC32     0x447a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_70:
        DC32     0x461c4000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_71:
        DC32     0x47c35000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_72:
        DC32     0x49742400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_73:
        DC32     ?_6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_74:
        DC32     str_ln

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_0:
        DATA
        DC8 "\275\323\312\325\275\341\312\370"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_1:
        DATA
        DC8 "uart4_init"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_2:
        DATA
        DC8 "\277\252\312\274"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_3:
        DATA
        DC8 "\277\252\312\274-\326\320"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_4:
        DATA
        DC8 "\277\252\312\274-\327\363"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_5:
        DATA
        DC8 "\277\252\312\274-\323\322"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_6:
        DATA
        DC8 "%d.%d%d%d%d%d%d"

        END
// 
// 59 336 bytes in section .bss
//    812 bytes in section .data
//     72 bytes in section .rodata
//  5 828 bytes in section .text
// 
//  5 828 bytes of CODE  memory
//     72 bytes of CONST memory
// 60 148 bytes of DATA  memory
//
//Errors: none
//Warnings: 3

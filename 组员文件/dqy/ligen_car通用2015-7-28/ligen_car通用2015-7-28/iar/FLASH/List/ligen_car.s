///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       28/Jul/2015  13:38:47
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-28-3.23封\app\ligen_car.c
//    Command line =  
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-28-3.23封\app\ligen_car.c
//        -D LPLD_K60 -D USE_K60F12 -lCN
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-28-3.23封\iar\FLASH\List\
//        -lB
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-28-3.23封\iar\FLASH\List\
//        -o
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-28-3.23封\iar\FLASH\Obj\
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4F -e --fpu=None --dlib_config "C:\Program Files\IAR
//        Systems\Embedded Workbench 7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-28-3.23封\iar\..\app\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-28-3.23封\iar\..\..\..\lib\CPU\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-28-3.23封\iar\..\..\..\lib\common\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-28-3.23封\iar\..\..\..\lib\LPLD\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-28-3.23封\iar\..\..\..\lib\LPLD\HW\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-28-3.23封\iar\..\..\..\lib\LPLD\DEV\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-28-3.23封\iar\..\..\..\lib\LPLD\FUNC\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-28-3.23封\iar\..\..\..\lib\uCOS-II\Ports\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-28-3.23封\iar\..\..\..\lib\uCOS-II\Source\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-28-3.23封\iar\..\..\..\lib\FatFs\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-28-3.23封\iar\..\..\..\lib\FatFs\option\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-28-3.23封\iar\..\..\..\lib\USB\common\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-28-3.23封\iar\..\..\..\lib\USB\driver\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-28-3.23封\iar\..\..\..\lib\USB\descriptor\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-28-3.23封\iar\..\..\..\lib\USB\class\
//        -Ol -I "C:\Program Files\IAR Systems\Embedded Workbench
//        7.0\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    List file    =  
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-28-3.23封\iar\FLASH\List\ligen_car.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN BlackEndColumnMax
        EXTERN BlackEndMax
        EXTERN BlackLineData
        EXTERN DirectionCtrol
        EXTERN Error
        EXTERN Errora
        EXTERN GetFreq
        EXTERN GetImageParam
        EXTERN ImageData
        EXTERN ImageProcess
        EXTERN Is_DispPhoto
        EXTERN LPLD_FTM_Init
        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN LPLD_FTM_PWM_Enable
        EXTERN LPLD_GPIO_Output_b
        EXTERN LPLD_GPIO_Toggle_b
        EXTERN LPLD_UART_PutChar
        EXTERN MidLineProcess
        EXTERN MidPos
        EXTERN NUM_Send
        EXTERN OLED_Fill
        EXTERN OLED_Init
        EXTERN OLED_Print_Num
        EXTERN OLED_Print_Str
        EXTERN Pix_Data
        EXTERN RTRecognition
        EXTERN StableNumbers
        EXTERN StaticThreshold
        EXTERN ThresholdData
        EXTERN V_count
        EXTERN __aeabi_cdrcmple
        EXTERN __aeabi_cfcmpeq
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_f2uiz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2d
        EXTERN __aeabi_i2f
        EXTERN __aeabi_memcpy4
        EXTERN `fabss`
        EXTERN fs
        EXTERN hx
        EXTERN hx_i
        EXTERN midline_fcount_max
        EXTERN public_init
        EXTERN zaw_mode

        PUBLIC Error_recent
        PUBLIC Error_recent_i
        PUBLIC GetBoma
        PUBLIC Get_StableNumbers_recent
        PUBLIC LG_Print_Num
        PUBLIC MotorUpdatePWM
        PUBLIC SendPicture
        PUBLIC SendPicture2
        PUBLIC SendPicture3
        PUBLIC Setk
        PUBLIC StableNumbers_Big_count
        PUBLIC StableNumbers_a
        PUBLIC StableNumbers_b
        PUBLIC StableNumbers_recent
        PUBLIC StableNumbers_recent_count
        PUBLIC SteerUpdatePWM
        PUBLIC a_y
        PUBLIC a_y_max
        PUBLIC a_y_min
        PUBLIC angle_to_period
        PUBLIC baohu
        PUBLIC bm_pz
        PUBLIC bm_y
        PUBLIC bm_z
        PUBLIC coc
        PUBLIC cocs
        PUBLIC cs_y
        PUBLIC cs_z
        PUBLIC csbs
        PUBLIC display
        PUBLIC djjd
        PUBLIC duojipianyi
        PUBLIC duojizkb
        PUBLIC duojizkb0
        PUBLIC duojizkb1
        PUBLIC ftm_init_struct
        PUBLIC js
        PUBLIC jssd
        PUBLIC last
        PUBLIC light_mode
        PUBLIC main
        PUBLIC minline_js
        PUBLIC mode
        PUBLIC pwm_init
        PUBLIC sd
        PUBLIC sd_a
        PUBLIC sd_last
        PUBLIC showmode
        PUBLIC showmode_last
        PUBLIC zk_y_last
        PUBLIC zk_z_last
        PUBLIC zkb
        PUBLIC zkb_check

// C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-28-3.23封\app\ligen_car.c
//    1 /**
//    2 * --------------（ligen_car）-----------------
//    3 * @file ligen_car.c
//    4 * @version 0.0
//    5 * @date 2014-11-10
//    6 *
//    7 */
//    8 
//    9 #include "common.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_EnableIRQ(IRQn_Type)
NVIC_EnableIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        LDR.W    R2,??DataTable6  ;; 0xe000e100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return
//   10 #include "sys.h"
//   11 #define chuankou 0
//   12 void SendPicture(void) ;
//   13 void SendPicture2(void) ;
//   14 void SendPicture3(void) ;
//   15 uint32 angle_to_period(int8 deg);
//   16 void pwm_init(void);
//   17 void MotorUpdatePWM();
//   18 void SteerUpdatePWM(char ss,float speed);
//   19 void LG_Print_Num(int x,int y,double print_num);
//   20 void display();
//   21 
//   22 void Get_StableNumbers_recent();

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   23 FTM_InitTypeDef ftm_init_struct;
ftm_init_struct:
        DS8 28

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   24 float duojizkb;
duojizkb:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   25 float duojizkb0;
duojizkb0:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   26 float duojizkb1;
duojizkb1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   27 int coc=0;
coc:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   28 int cocs[2][3];
cocs:
        DS8 24

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   29 int StableNumbers_Big_count=0;
StableNumbers_Big_count:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   30 float duojipianyi=810;
duojipianyi:
        DATA
        DC32 444A8000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   31 int showmode=1,showmode_last=-1;;
showmode:
        DATA
        DC32 1

        SECTION `.data`:DATA:REORDER:NOROOT(2)
showmode_last:
        DATA
        DC32 -1
//   32 void GetBoma();

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   33 int last=0;
last:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   34 float bm_z=0,bm_y=0,bm_pz=0;
bm_z:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
bm_y:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
bm_pz:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   35 float mode=-1;
mode:
        DATA
        DC32 0BF800000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   36 float zkb=5000;
zkb:
        DATA
        DC32 459C4000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   37 int sd=5000;
sd:
        DATA
        DC32 5000

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   38 int sd_last=5000;
sd_last:
        DATA
        DC32 5000

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   39 int Error_recent[20]={0};
Error_recent:
        DS8 80

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   40 int Error_recent_i=0;
Error_recent_i:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   41 int sd_a[8]={75,95,100,110,120,130,140,65};
sd_a:
        DATA
        DC32 75, 95, 100, 110, 120, 130, 140, 65

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   42 int StableNumbers_recent[5]=0;
StableNumbers_recent:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   43 int csbs=0;
csbs:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   44 int StableNumbers_a,StableNumbers_b;
StableNumbers_a:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
StableNumbers_b:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   45 int minline_js=0;
minline_js:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   46 float a_y=0,a_y_min=50000,a_y_max=0;
a_y:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
a_y_min:
        DATA
        DC32 47435000H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
a_y_max:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   47 int js=-1;
js:
        DATA
        DC32 -1

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   48 float jssd=10000;
jssd:
        DATA
        DC32 461C4000H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   49 int light_mode=0;
light_mode:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   50 int djjd=0;
djjd:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   51 int baohu=0;
baohu:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   52 float Setk=1;
Setk:
        DATA
        DC32 3F800000H

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   53 void main (void)
//   54 { 
main:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+364
//   55   
//   56   //关闭全局中断
//   57   DisableInterrupts; 
        CPSID    I
//   58   
//   59   public_init();//初始化
        BL       public_init
//   60   pwm_init();
        BL       pwm_init
//   61   OLED_Init();
        BL       OLED_Init
//   62   
//   63   //使能PORTA、PORTB中断
//   64   enable_irq(PORTB_IRQn);
        MOVS     R0,#+88
        BL       NVIC_EnableIRQ
//   65   enable_irq(PORTA_IRQn);
        MOVS     R0,#+87
        BL       NVIC_EnableIRQ
//   66   Is_DispPhoto = 0; 
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_1
        STR      R0,[R1, #+0]
//   67   //使能全局中断
//   68   EnableInterrupts;
        CPSIE    I
//   69  // ADC_init();
//   70   LPLD_GPIO_Output_b(PTD, 15,0); 
        MOVS     R2,#+0
        MOVS     R1,#+15
        LDR.W    R0,??DataTable6_2  ;; 0x400ff0c0
        BL       LPLD_GPIO_Output_b
//   71   LPLD_GPIO_Output_b(PTE, 26,0); 
        MOVS     R2,#+0
        MOVS     R1,#+26
        LDR.W    R0,??DataTable6_3  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   72   
//   73 
//   74   int pianyi[H_A]={2274 ,2169 ,2067 ,1968 ,1870 ,1776 ,1684 ,1594 ,1506 ,1422 ,1339 ,1259 ,1182 ,1107 ,1034 ,964 ,896 ,831 ,769 ,708 ,651 ,595 ,542 ,492 ,444 ,398 ,355 ,315 ,277 ,241 ,208 ,177 ,149 ,123 ,100 ,79 ,60 ,44 ,31 ,20 ,11 ,5 ,1 ,0 ,1 ,5 ,11 ,20 ,31 ,44 ,60 ,79 ,100 ,123 ,149 ,177 ,208 ,241 ,277 ,315 ,355 ,398 ,444 ,492 ,542 ,595 ,651 ,708 ,769 ,831 ,896 ,964 ,1034 ,1107 ,1182 ,1259 ,1339 ,1422 ,1506 ,1594 ,1684 ,1776 ,1870 ,1968 ,2067 ,2169 ,2274 ,2381 ,2490 ,2602}; 
        ADD      R0,SP,#+0
        LDR.W    R1,??DataTable6_4
        MOV      R2,#+360
        BL       __aeabi_memcpy4
//   75   //
//   76   int midrow=100;//72
        MOVS     R4,#+100
//   77   
//   78  
//   79   
//   80   GetBoma();
        BL       GetBoma
        B.N      ??main_0
//   81 //  a_y= LPLD_ADC_Get(ADC0, AD9);
//   82 //  a_y_min=a_y;
//   83 //  a_y_max=a_y;
//   84 
//   85   while(1)
//   86   {//LED();
//   87     
//   88     int i = 0, j = 0;
//   89     if(Is_DispPhoto==1)
//   90     { 
//   91       if(light_mode)
//   92       { 
//   93       if(GetFreq>10&&mode==-1)mode=0; 
//   94       if(GetFreq<4&&mode==0)mode=1;
//   95       if(GetFreq>10&&mode==1&&V_count>420)mode=2;
//   96       if(GetFreq<4&&mode>=2&&mode<=3)mode+=0.5;
//   97       
//   98       }
//   99       else
//  100       {mode=1;}
//  101       
//  102       
//  103       
//  104       // LPLD_GPIO_Toggle_b(LED_B, LED_B_PIN);
//  105       int cj_h=0,cj_l=0;
//  106       for(i=0,cj_l=0;i<V_A;i++)// 行  100/1=100
//  107       {  cj_l=i*V_FX;
//  108       for(j=0,cj_h=H_PY;j<H_A;j++)// 列 288/3=96
//  109       { 
//  110         if(cj_l<midrow) ImageData[i][j] = Pix_Data[(int)(cj_l+(midrow-cj_l)*pianyi[j]/5000)/**V_FX*/][cj_h];
//  111         else ImageData[i][j] = Pix_Data[cj_l/**V_FX*/][cj_h];
//  112         cj_h=cj_h+H_FX;
//  113         
//  114       }
//  115       
//  116       } 
//  117       
//  118       // fs=-1;
//  119       ImageProcess();
//  120       if(fs==-1){ SendPicture2();}
//  121       if(fs!=-2)  Is_DispPhoto=0;
//  122       GetImageParam();			//;提取图像特征参数
//  123       MidLineProcess();			// 提取中心线并处理
//  124       
//  125       LED_C_T;
//  126       if(fs==-2) { SendPicture3(); Is_DispPhoto=0;}else {NUM_Send();}//上位机通信     
??main_1:
        BL       NUM_Send
//  127       RTRecognition();  			//赛道识别
??main_2:
        BL       RTRecognition
//  128       
//  129      DirectionCtrol();
        BL       DirectionCtrol
//  130 
//  131   
//  132       Get_StableNumbers_recent();
        BL       Get_StableNumbers_recent
//  133       display();
        BL       display
??main_0:
        MOVS     R0,#+0
        MOVS     R1,#+0
        LDR.W    R2,??DataTable6_1
        LDR      R2,[R2, #+0]
        CMP      R2,#+1
        BNE.N    ??main_0
        LDR.W    R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??main_3
        LDR.W    R0,??DataTable6_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+11
        BLT.N    ??main_4
        LDR.W    R0,??DataTable6_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_8  ;; 0xbf800000
        BL       __aeabi_cfcmpeq
        BNE.N    ??main_4
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_7
        STR      R0,[R1, #+0]
??main_4:
        LDR.W    R0,??DataTable6_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BGE.N    ??main_5
        LDR.W    R0,??DataTable6_7
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        BL       __aeabi_cfcmpeq
        BNE.N    ??main_5
        MOVS     R0,#+1065353216
        LDR.W    R1,??DataTable6_7
        STR      R0,[R1, #+0]
??main_5:
        LDR.W    R0,??DataTable6_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+11
        BLT.N    ??main_6
        LDR.W    R0,??DataTable6_7
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1065353216
        BL       __aeabi_cfcmpeq
        BNE.N    ??main_6
        LDR.W    R0,??DataTable6_9
        LDR      R0,[R0, #+0]
        CMP      R0,#+420
        BLE.N    ??main_6
        MOVS     R0,#+1073741824
        LDR.W    R1,??DataTable6_7
        STR      R0,[R1, #+0]
??main_6:
        LDR.W    R0,??DataTable6_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BGE.N    ??main_7
        LDR.W    R0,??DataTable6_7
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1073741824
        BL       __aeabi_cfrcmple
        BHI.N    ??main_7
        LDR.W    R0,??DataTable6_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_10  ;; 0x40400001
        BL       __aeabi_cfcmple
        BCS.N    ??main_7
        LDR.W    R0,??DataTable6_7
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable6_11  ;; 0x3fe00000
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable6_7
        STR      R0,[R1, #+0]
        B.N      ??main_7
??main_3:
        MOVS     R0,#+1065353216
        LDR.W    R1,??DataTable6_7
        STR      R0,[R1, #+0]
??main_7:
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R0,#+0
        MOVS     R1,#+0
        MOVS     R2,R1
        B.N      ??main_8
??main_9:
        ADDS     R0,R0,#+1
??main_8:
        CMP      R0,#+100
        BGE.N    ??main_10
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R3,#+48
        B.N      ??main_11
??main_12:
        LDR.W    R5,??DataTable6_12
        MOV      R6,#+408
        MLA      R5,R6,R2,R5
        LDRB     R5,[R3, R5]
        LDR.W    R6,??DataTable6_13
        MOVS     R7,#+90
        MLA      R6,R7,R0,R6
        STRB     R5,[R1, R6]
??main_13:
        ADDS     R3,R3,#+4
        ADDS     R1,R1,#+1
??main_11:
        CMP      R1,#+90
        BGE.N    ??main_9
        CMP      R2,R4
        BGE.N    ??main_12
        SUBS     R5,R4,R2
        ADD      R6,SP,#+0
        LDR      R6,[R6, R1, LSL #+2]
        MULS     R5,R6,R5
        MOVW     R6,#+5000
        SDIV     R5,R5,R6
        ADDS     R5,R5,R2
        MOV      R6,#+408
        LDR.W    R7,??DataTable6_12
        MLA      R5,R6,R5,R7
        LDRB     R5,[R3, R5]
        LDR.W    R6,??DataTable6_13
        MOVS     R7,#+90
        MLA      R6,R7,R0,R6
        STRB     R5,[R1, R6]
        B.N      ??main_13
??main_10:
        BL       ImageProcess
        LDR.W    R0,??DataTable6_14
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_8  ;; 0xbf800000
        BL       __aeabi_cfcmpeq
        BNE.N    ??main_14
        BL       SendPicture2
??main_14:
        LDR.W    R0,??DataTable6_14
        LDR      R0,[R0, #+0]
        MOVS     R1,#-1073741824
        BL       __aeabi_cfcmpeq
        BEQ.N    ??main_15
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_1
        STR      R0,[R1, #+0]
??main_15:
        BL       GetImageParam
        BL       MidLineProcess
        MOVS     R1,#+15
        LDR.W    R0,??DataTable6_2  ;; 0x400ff0c0
        BL       LPLD_GPIO_Toggle_b
        LDR.W    R0,??DataTable6_14
        LDR      R0,[R0, #+0]
        MOVS     R1,#-1073741824
        BL       __aeabi_cfcmpeq
        BNE.W    ??main_1
        BL       SendPicture3
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_1
        STR      R0,[R1, #+0]
        B.N      ??main_2
//  134       
//  135       //Is_DispPhoto=0;
//  136       // LPLD_GPIO_ClearIntFlag(PORTA);
//  137     } 
//  138     
//  139     
//  140     
//  141     
//  142     
//  143     
//  144     
//  145   } 
//  146   
//  147   
//  148 }
//  149 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  150 void SendPicture(void) //发送采集到的图像
//  151 {
SendPicture:
        PUSH     {R3-R5,LR}
//  152   int i = 0, j = 0;
        MOVS     R4,#+0
        MOVS     R5,#+0
//  153   
//  154   LPLD_UART_PutChar(UART4,0xff);//发送帧头标志
        MOVS     R1,#-1
        LDR.W    R0,??DataTable7  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  155   for(i=0;i<V;i++) 
        MOVS     R0,#+0
        MOVS     R4,R0
        B.N      ??SendPicture_0
//  156   {
//  157     for(j=0;j<H;j++)
//  158     {
//  159       if(Pix_Data[i][j]==0xff)
??SendPicture_1:
        LDR.W    R0,??DataTable6_12
        MOV      R1,#+408
        MLA      R0,R1,R4,R0
        LDRB     R0,[R5, R0]
        CMP      R0,#+255
        BNE.N    ??SendPicture_2
//  160       {
//  161         Pix_Data[i][j]=0xfe;
        MOVS     R0,#+254
        LDR.W    R1,??DataTable6_12
        MOV      R2,#+408
        MLA      R1,R2,R4,R1
        STRB     R0,[R5, R1]
//  162       }
//  163       
//  164       LPLD_UART_PutChar(UART4,Pix_Data[i][j]);
??SendPicture_2:
        LDR.W    R0,??DataTable6_12
        MOV      R1,#+408
        MLA      R0,R1,R4,R0
        LDRSB    R1,[R5, R0]
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable7  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  165     }
        ADDS     R5,R5,#+1
??SendPicture_3:
        CMP      R5,#+408
        BLT.N    ??SendPicture_1
        ADDS     R4,R4,#+1
??SendPicture_0:
        CMP      R4,#+100
        BGE.N    ??SendPicture_4
        MOVS     R5,#+0
        B.N      ??SendPicture_3
//  166     
//  167   }
//  168   
//  169   
//  170   
//  171 }
??SendPicture_4:
        POP      {R0,R4,R5,PC}    ;; return
//  172 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  173 void SendPicture2(void) //发送待处理的图像
//  174 {
SendPicture2:
        PUSH     {R4-R6,LR}
//  175   int i = 0, j = 0;
        MOVS     R4,#+0
        MOVS     R5,#+0
//  176   int ys_i=0;
        MOVS     R6,#+0
//  177   LPLD_UART_PutChar(UART4,0xff);//发送帧头标志
        MOVS     R1,#-1
        LDR.W    R0,??DataTable7  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  178   for(i=0;i<V_A;i++) 
        MOVS     R0,#+0
        MOVS     R4,R0
        B.N      ??SendPicture2_0
//  179   {
//  180     for(j=0;j<H_A;j++)//宽
//  181     {
//  182       if(ImageData[i][j]==0xff)
??SendPicture2_1:
        LDR.W    R0,??DataTable6_13
        MOVS     R1,#+90
        MLA      R0,R1,R4,R0
        LDRB     R0,[R5, R0]
        CMP      R0,#+255
        BNE.N    ??SendPicture2_2
//  183       {
//  184         ImageData[i][j]=0xfe;
        MOVS     R0,#+254
        LDR.W    R1,??DataTable6_13
        MOVS     R2,#+90
        MLA      R1,R2,R4,R1
        STRB     R0,[R5, R1]
//  185       }
//  186       
//  187       LPLD_UART_PutChar(UART4,ImageData[i][j]);
??SendPicture2_2:
        LDR.W    R0,??DataTable6_13
        MOVS     R1,#+90
        MLA      R0,R1,R4,R0
        LDRSB    R1,[R5, R0]
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable7  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  188       
//  189       
//  190     }
        ADDS     R5,R5,#+1
??SendPicture2_3:
        CMP      R5,#+90
        BLT.N    ??SendPicture2_1
        ADDS     R4,R4,#+1
??SendPicture2_0:
        CMP      R4,#+100
        BGE.N    ??SendPicture2_4
        MOVS     R5,#+0
        B.N      ??SendPicture2_3
//  191     
//  192   }
//  193   
//  194   
//  195   
//  196 }
??SendPicture2_4:
        POP      {R4-R6,PC}       ;; return
//  197 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  198 void SendPicture3(void) //发送二值化的图像
//  199 {
SendPicture3:
        PUSH     {R4-R6,LR}
//  200   int i = 0, j = 0;
        MOVS     R4,#+0
        MOVS     R5,#+0
//  201   int ys_i=0;
        MOVS     R6,#+0
//  202   LPLD_UART_PutChar(UART4,0xff);//发送帧头标志
        MOVS     R1,#-1
        LDR.W    R0,??DataTable7  ;; 0x400ea000
        BL       LPLD_UART_PutChar
//  203   for(i=0;i<V_A;i++) 
        MOVS     R0,#+0
        MOVS     R4,R0
        B.N      ??SendPicture3_0
??SendPicture3_1:
        ADDS     R4,R4,#+1
??SendPicture3_0:
        CMP      R4,#+100
        BGE.W    ??SendPicture3_2
//  204   {
//  205     if(BlackLineData[i]<0)  ThresholdData[i][0]=0xEF;
        LDR.W    R0,??DataTable8
        LDR      R0,[R0, R4, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??SendPicture3_3
        MOVS     R0,#+239
        LDR.W    R1,??DataTable7_1
        MOVS     R2,#+90
        MLA      R1,R2,R4,R1
        STRB     R0,[R1, #+0]
//  206     if(BlackLineData[i]>=H_A)  ThresholdData[i][H_A-1]=0xEF;
??SendPicture3_3:
        LDR.W    R0,??DataTable8
        LDR      R0,[R0, R4, LSL #+2]
        CMP      R0,#+90
        BLT.N    ??SendPicture3_4
        MOVS     R0,#+239
        LDR.W    R1,??DataTable7_1
        MOVS     R2,#+90
        MLA      R1,R2,R4,R1
        STRB     R0,[R1, #+89]
//  207     for(j=0;j<H_A;j++)//宽
??SendPicture3_4:
        MOVS     R5,#+0
        B.N      ??SendPicture3_5
//  208     {
//  209       if(ThresholdData[i][j]==0xff)
//  210       {
//  211         ThresholdData[i][j]=0xfe;
//  212       }
//  213       BlackLineData[i]=MAX(BlackLineData[i],0);      
//  214       BlackLineData[i]=MIN(BlackLineData[i],ColumnMax-1);
??SendPicture3_6:
        MOVS     R0,#+89
??SendPicture3_7:
        LDR.W    R1,??DataTable8
        STR      R0,[R1, R4, LSL #+2]
//  215       if(j==BlackEndColumnMax+1) ThresholdData[i][j]=0x7F;
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        CMP      R5,R0
        BNE.N    ??SendPicture3_8
        MOVS     R0,#+127
        LDR.W    R1,??DataTable7_1
        MOVS     R2,#+90
        MLA      R1,R2,R4,R1
        STRB     R0,[R5, R1]
//  216       if(BlackLineData[i]==j)  ThresholdData[i][j]=0xEF;
??SendPicture3_8:
        LDR.W    R0,??DataTable8
        LDR      R0,[R0, R4, LSL #+2]
        CMP      R0,R5
        BNE.N    ??SendPicture3_9
        MOVS     R0,#+239
        LDR.W    R1,??DataTable7_1
        MOVS     R2,#+90
        MLA      R1,R2,R4,R1
        STRB     R0,[R5, R1]
//  217       if((RowMax-StableNumbers)==i)  ThresholdData[i][j]=0x7F;
??SendPicture3_9:
        LDR.W    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        RSBS     R0,R0,#+100
        CMP      R0,R4
        BNE.N    ??SendPicture3_10
        MOVS     R0,#+127
        LDR.W    R1,??DataTable7_1
        MOVS     R2,#+90
        MLA      R1,R2,R4,R1
        STRB     R0,[R5, R1]
//  218       LPLD_UART_PutChar(UART4,ThresholdData[i][j]);
??SendPicture3_10:
        LDR.W    R0,??DataTable7_1
        MOVS     R1,#+90
        MLA      R0,R1,R4,R0
        LDRSB    R1,[R5, R0]
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable7  ;; 0x400ea000
        BL       LPLD_UART_PutChar
        ADDS     R5,R5,#+1
??SendPicture3_5:
        CMP      R5,#+90
        BGE.N    ??SendPicture3_1
        LDR.W    R0,??DataTable7_1
        MOVS     R1,#+90
        MLA      R0,R1,R4,R0
        LDRB     R0,[R5, R0]
        CMP      R0,#+255
        BNE.N    ??SendPicture3_11
        MOVS     R0,#+254
        LDR.W    R1,??DataTable7_1
        MOVS     R2,#+90
        MLA      R1,R2,R4,R1
        STRB     R0,[R5, R1]
??SendPicture3_11:
        LDR.W    R0,??DataTable8
        LDR      R0,[R0, R4, LSL #+2]
        CMP      R0,#+1
        BLT.N    ??SendPicture3_12
        LDR.W    R0,??DataTable8
        LDR      R0,[R0, R4, LSL #+2]
        B.N      ??SendPicture3_13
??SendPicture3_12:
        MOVS     R0,#+0
??SendPicture3_13:
        LDR.W    R1,??DataTable8
        STR      R0,[R1, R4, LSL #+2]
        LDR.W    R0,??DataTable8
        LDR      R0,[R0, R4, LSL #+2]
        CMP      R0,#+89
        BGE.N    ??SendPicture3_6
        LDR.W    R0,??DataTable8
        LDR      R0,[R0, R4, LSL #+2]
        B.N      ??SendPicture3_7
//  219     }
//  220     
//  221   }
//  222   
//  223   
//  224   
//  225 }
??SendPicture3_2:
        POP      {R4-R6,PC}       ;; return
//  226 
//  227 
//  228 
//  229 
//  230 /*
//  231 * 初始化FTM的PWM输出功能
//  232 *
//  233 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  234 void pwm_init(void)
//  235 {/* FTM_CH0  舵机
pwm_init:
        PUSH     {R5-R7,LR}
//  236   FTM_CH1 左正
//  237   FTM_CH2 右正
//  238   FTM_CH3 左反
//  239   FTM_CH4 右反
//  240   */
//  241   ftm_init_struct.FTM_Ftmx = FTM1;	//使能FTM0通道
        LDR.W    R0,??DataTable7_4  ;; 0x40039000
        LDR.W    R1,??DataTable7_5
        STR      R0,[R1, #+0]
//  242   ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	//使能PWM模式
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_5
        STRB     R0,[R1, #+4]
//  243   ftm_init_struct.FTM_PwmFreq = 50;	//PWM频率50Hz
        MOVS     R0,#+50
        LDR.W    R1,??DataTable7_5
        STR      R0,[R1, #+8]
//  244   
//  245   LPLD_FTM_Init(ftm_init_struct);
        LDR.W    R1,??DataTable7_5
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//  246   
//  247   
//  248   LPLD_FTM_PWM_Enable(FTM1, //使用FTM0
//  249                       FTM_Ch1, //使能Ch0通道
//  250                       DirectMiddle, //初始化角度0度
//  251                       PTA13, //使用Ch0通道的PTC1引脚
//  252                       ALIGN_LEFT        //脉宽左对齐
//  253                         );    
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+13
        MOVW     R2,#+734
        MOVS     R1,#+1
        LDR.W    R0,??DataTable7_4  ;; 0x40039000
        BL       LPLD_FTM_PWM_Enable
//  254   
//  255   ftm_init_struct.FTM_Ftmx = FTM0;	//使能FTM0通道
        LDR.W    R0,??DataTable9  ;; 0x40038000
        LDR.W    R1,??DataTable7_5
        STR      R0,[R1, #+0]
//  256   ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	//使能PWM模式
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_5
        STRB     R0,[R1, #+4]
//  257   ftm_init_struct.FTM_PwmFreq = 10000;	//PWM频率50Hz
        MOVW     R0,#+10000
        LDR.W    R1,??DataTable7_5
        STR      R0,[R1, #+8]
//  258   
//  259   LPLD_FTM_Init(ftm_init_struct);
        LDR.W    R1,??DataTable7_5
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//  260   
//  261   
//  262   LPLD_FTM_PWM_Enable(FTM0, //使用FTM0
//  263                       FTM_Ch0, //使能Ch0通道
//  264                       0, //初始化角度0度
//  265                       PTC1, //使用Ch0通道的PTC1引脚
//  266                       ALIGN_LEFT        //脉宽左对齐
//  267                         );    
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+61
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.W    R0,??DataTable9  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//  268   
//  269   ftm_init_struct.FTM_Ftmx = FTM0;	//使能FTM0通道
        LDR.W    R0,??DataTable9  ;; 0x40038000
        LDR.W    R1,??DataTable7_5
        STR      R0,[R1, #+0]
//  270   ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	//使能PWM模式
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_5
        STRB     R0,[R1, #+4]
//  271   ftm_init_struct.FTM_PwmFreq =10000;	//PWM频率50Hz
        MOVW     R0,#+10000
        LDR.W    R1,??DataTable7_5
        STR      R0,[R1, #+8]
//  272   
//  273   
//  274   LPLD_FTM_Init(ftm_init_struct);
        LDR.W    R1,??DataTable7_5
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//  275   LPLD_FTM_PWM_Enable(FTM0, //使用FTM0
//  276                       FTM_Ch1, //使能Ch0通道
//  277                       0, //初始化角度0度
//  278                       PTC2, //使用Ch0通道的PTC1引脚
//  279                       ALIGN_LEFT        //脉宽左对齐
//  280                         );  
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+62
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR.W    R0,??DataTable9  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//  281   
//  282   
//  283   
//  284   ftm_init_struct.FTM_Ftmx = FTM0;	//使能FTM0通道
        LDR.W    R0,??DataTable9  ;; 0x40038000
        LDR.W    R1,??DataTable7_5
        STR      R0,[R1, #+0]
//  285   ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	//使能PWM模式
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_5
        STRB     R0,[R1, #+4]
//  286   ftm_init_struct.FTM_PwmFreq = 10000;	//PWM频率50Hz
        MOVW     R0,#+10000
        LDR.W    R1,??DataTable7_5
        STR      R0,[R1, #+8]
//  287   
//  288   LPLD_FTM_Init(ftm_init_struct);
        LDR.W    R1,??DataTable7_5
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//  289   LPLD_FTM_PWM_Enable(FTM0, //使用FTM0
//  290                       FTM_Ch2, //使能Ch0通道
//  291                       0, //初始化角度0度
//  292                       PTC3, //使用Ch0通道的PTC1引脚
//  293                       ALIGN_LEFT        //脉宽左对齐
//  294                         ); 
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+63
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR.W    R0,??DataTable9  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//  295   
//  296   
//  297   
//  298   ftm_init_struct.FTM_Ftmx = FTM0;	//使能FTM0通道
        LDR.W    R0,??DataTable9  ;; 0x40038000
        LDR.W    R1,??DataTable7_5
        STR      R0,[R1, #+0]
//  299   ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	//使能PWM模式
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_5
        STRB     R0,[R1, #+4]
//  300   ftm_init_struct.FTM_PwmFreq = 10000;	//PWM频率50Hz
        MOVW     R0,#+10000
        LDR.W    R1,??DataTable7_5
        STR      R0,[R1, #+8]
//  301   
//  302   LPLD_FTM_Init(ftm_init_struct);
        LDR.W    R1,??DataTable7_5
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//  303   LPLD_FTM_PWM_Enable(FTM0, //使用FTM0
//  304                       FTM_Ch3, //使能Ch0通道
//  305                       0, //初始化角度0度
//  306                       PTC4, //使用Ch0通道的PTC1引脚
//  307                       ALIGN_LEFT        //脉宽左对齐
//  308                         ); 
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+0
        MOVS     R1,#+3
        LDR.W    R0,??DataTable9  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//  309   
//  310 }
        POP      {R0-R2,PC}       ;; return
//  311 
//  312 /*
//  313 * 将舵机的角度值转化为PWM的频率
//  314 * deg--角度值(-90°~+90°)
//  315 *   |__-90~+90
//  316 *
//  317 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  318 uint32 angle_to_period(int8 deg)
//  319 {
//  320   uint32 pulse_width = 500+2000*(90+deg)/180;
angle_to_period:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        ADDS     R0,R0,#+90
        MOV      R1,#+2000
        MULS     R0,R1,R0
        MOVS     R1,#+180
        SDIV     R0,R0,R1
        ADDS     R0,R0,#+500
//  321   return (uint32)(10000*pulse_width/20000);
        MOVW     R1,#+10000
        MULS     R0,R1,R0
        MOVW     R1,#+20000
        UDIV     R0,R0,R1
        BX       LR               ;; return
//  322 }

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  323 int cs_z=0,cs_y=0;
cs_z:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
cs_y:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  324 int zk_z_last=10000,zk_y_last=10000;
zk_z_last:
        DATA
        DC32 10000

        SECTION `.data`:DATA:REORDER:NOROOT(2)
zk_y_last:
        DATA
        DC32 10000

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  325 void MotorUpdatePWM()
//  326 {int zk_z,zk_y;
MotorUpdatePWM:
        PUSH     {R4,LR}
//  327 //if(sd-sd_last>2000&&sd>5000) sd=sd_last+MIN((sd-sd_last)*0.8,1000); 
//  328 //sd_last=sd;
//  329 zk_z=sd+cs_z;
        LDR.W    R0,??DataTable9_9
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9_10
        LDR      R1,[R1, #+0]
        ADDS     R4,R1,R0
//  330 zk_y=sd+cs_y;
        LDR.W    R0,??DataTable9_9
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9_11
        LDR      R1,[R1, #+0]
        ADDS     R2,R1,R0
//  331 if(zk_z<0)zk_z=0;
        CMP      R4,#+0
        BPL.N    ??MotorUpdatePWM_0
        MOVS     R4,#+0
//  332 if(zk_y<0)zk_y=0;
??MotorUpdatePWM_0:
        CMP      R2,#+0
        BPL.N    ??MotorUpdatePWM_1
        MOVS     R2,#+0
//  333 if(zk_z>10000)zk_z=10000;
??MotorUpdatePWM_1:
        MOVW     R0,#+10001
        CMP      R4,R0
        BLT.N    ??MotorUpdatePWM_2
        MOVW     R4,#+10000
//  334 if(zk_y>10000)zk_y=10000;
??MotorUpdatePWM_2:
        MOVW     R0,#+10001
        CMP      R2,R0
        BLT.N    ??MotorUpdatePWM_3
        MOVW     R2,#+10000
//  335 
//  336 //zk_z=zkb_check(zk_z,zk_z_last);
//  337 //zk_y=zkb_check(zk_y,zk_y_last);
//  338 //zk_z_last=zk_z;
//  339 //zk_y_last=zk_y;
//  340 
//  341 //if(djjd>75&&zk_z<zk_y&&zk_z>3500&&bm_pz>70)zk_z=3500;
//  342 //if(djjd>75&&zk_y<zk_z&&zk_y>3500&&bm_pz>70)zk_y=3500;
//  343 if(mode<1||mode>20) 
??MotorUpdatePWM_3:
        LDR.N    R0,??DataTable6_7
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1065353216
        BL       __aeabi_cfcmple
        BCC.N    ??MotorUpdatePWM_4
        LDR.N    R0,??DataTable6_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9_12  ;; 0x41a00001
        BL       __aeabi_cfrcmple
        BHI.N    ??MotorUpdatePWM_5
//  344 {
//  345 if(mode<1)V_count=0;
??MotorUpdatePWM_4:
        LDR.N    R0,??DataTable6_7
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1065353216
        BL       __aeabi_cfcmple
        BCS.N    ??MotorUpdatePWM_6
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_9
        STR      R0,[R1, #+0]
//  346 if(mode>20&&V_count>480)mode=-1;
??MotorUpdatePWM_6:
        LDR.N    R0,??DataTable6_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9_12  ;; 0x41a00001
        BL       __aeabi_cfrcmple
        BHI.N    ??MotorUpdatePWM_7
        LDR.N    R0,??DataTable6_9
        LDR      R0,[R0, #+0]
        CMP      R0,#+480
        BLE.N    ??MotorUpdatePWM_7
        LDR.N    R0,??DataTable6_8  ;; 0xbf800000
        LDR.N    R1,??DataTable6_7
        STR      R0,[R1, #+0]
//  347 LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0,0);       //右
??MotorUpdatePWM_7:
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.W    R0,??DataTable9  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  348 
//  349 LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch3,0);        //左 
        MOVS     R2,#+0
        MOVS     R1,#+3
        LDR.W    R0,??DataTable9  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  350 LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1,0);       //右
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR.W    R0,??DataTable9  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  351 
//  352 LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2,0);        //左 
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR.W    R0,??DataTable9  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  353 
//  354 return;
        B.N      ??MotorUpdatePWM_8
//  355 
//  356 }
//  357 if(mode>3&&mode<=20)
??MotorUpdatePWM_5:
        LDR.N    R0,??DataTable6_7
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable6_10  ;; 0x40400001
        BL       __aeabi_cfrcmple
        BHI.N    ??MotorUpdatePWM_9
        LDR.N    R0,??DataTable6_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9_12  ;; 0x41a00001
        BL       __aeabi_cfcmple
        BCS.N    ??MotorUpdatePWM_9
//  358 { V_count=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_9
        STR      R0,[R1, #+0]
//  359   LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0,0);       //右
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.W    R0,??DataTable9  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  360   
//  361   LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2,0);        //左 
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR.W    R0,??DataTable9  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  362   LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1,8000);       //右
        MOV      R2,#+8000
        MOVS     R1,#+1
        LDR.W    R0,??DataTable9  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  363   
//  364   LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch3,8000);        //左 
        MOV      R2,#+8000
        MOVS     R1,#+3
        LDR.W    R0,??DataTable9  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  365   mode+=0.7;
        LDR.N    R0,??DataTable6_7
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.W    R3,??DataTable9_13  ;; 0x3fe66666
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable6_7
        STR      R0,[R1, #+0]
//  366   return;
        B.N      ??MotorUpdatePWM_8
//  367 }
//  368 
//  369 LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0,zk_y); // 右正    
??MotorUpdatePWM_9:
        MOVS     R1,#+0
        LDR.W    R0,??DataTable9  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  370 
//  371 LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1,0); // 左负
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR.W    R0,??DataTable9  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  372 
//  373 LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2,zk_z); // 左正 
        MOVS     R2,R4
        MOVS     R1,#+2
        LDR.W    R0,??DataTable9  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  374 
//  375 LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch3,0);// 右负
        MOVS     R2,#+0
        MOVS     R1,#+3
        LDR.W    R0,??DataTable9  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  376 
//  377 }
??MotorUpdatePWM_8:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     Is_DispPhoto

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     0x400ff0c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     0x400ff100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     light_mode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     GetFreq

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
        DC32     mode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_8:
        DC32     0xbf800000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_9:
        DC32     V_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_10:
        DC32     0x40400001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_11:
        DC32     0x3fe00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_12:
        DC32     Pix_Data

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_13:
        DC32     ImageData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_14:
        DC32     fs
//  378 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  379 void SteerUpdatePWM(char ss,float speed)
//  380 {duojizkb =speed;
SteerUpdatePWM:
        PUSH     {R3-R9,LR}
        MOVS     R4,R1
        LDR.W    R0,??DataTable9_14
        STR      R4,[R0, #+0]
//  381 //zkb
//  382 
//  383 int sdjc=0;
        MOVS     R5,#+0
//  384 float csb=50;//0- zkb/65
        LDR.W    R6,??DataTable9_15  ;; 0x42480000
//  385 int zycs=0;
        MOVS     R7,#+0
//  386 int ys_i=0;
        MOVS     R8,#+0
//  387 float cs_nei=-0.5;
        MOVS     R9,#-1090519040
//  388 
//  389 csb=csbs;
        LDR.W    R0,??DataTable9_16
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R6,R0
//  390 //if(mid_line_count>4) csb*=1.5;
//  391 LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch1,speed);
        MOVS     R0,R4
        BL       __aeabi_f2uiz
        MOVS     R2,R0
        MOVS     R1,#+1
        LDR.W    R0,??DataTable7_4  ;; 0x40039000
        BL       LPLD_FTM_PWM_ChangeDuty
//  392 //if((fabss(bm_z-bm_y)>=50||hx||bm_pz<10||StableNumbers<=60)&&V_count>120)
//  393 //{
//  394 //  
//  395 //  PTE4_O=1;
//  396 //}
//  397 //
//  398 //else
//  399 //{
//  400 //  
//  401 //  PTE4_O=0;
//  402 //  
//  403 //}
//  404 if(hx)cs_nei=1;else cs_nei=0.7;
        LDR.W    R0,??DataTable9_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??SteerUpdatePWM_0
        MOVS     R9,#+1065353216
        B.N      ??SteerUpdatePWM_1
??SteerUpdatePWM_0:
        LDR.W    R9,??DataTable9_18  ;; 0x3f333333
//  405 djjd=fabss(DirectMiddle-speed);
??SteerUpdatePWM_1:
        LDR.W    R0,??DataTable9_19  ;; 0x44378000
        MOVS     R1,R4
        BL       __aeabi_fsub
        BL       __aeabi_f2iz
        BL       `fabss`
        LDR.W    R1,??DataTable9_20
        STR      R0,[R1, #+0]
//  406 if (DirectMiddle-speed>0)//右转
        LDR.W    R0,??DataTable9_19  ;; 0x44378000
        MOVS     R1,R4
        BL       __aeabi_fsub
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BCS.N    ??SteerUpdatePWM_2
//  407 {
//  408   cs_y=(speed-DirectMiddle)*csb*cs_nei;
        LDR.W    R1,??DataTable10  ;; 0xc4378000
        MOVS     R0,R4
        BL       __aeabi_fadd
        MOVS     R1,R0
        MOVS     R0,R6
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R9
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable9_11
        STR      R0,[R1, #+0]
//  409   cs_z=(DirectMiddle-speed)*csb;
        LDR.W    R0,??DataTable9_19  ;; 0x44378000
        MOVS     R1,R4
        BL       __aeabi_fsub
        MOVS     R1,R0
        MOVS     R0,R6
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable9_10
        STR      R0,[R1, #+0]
        B.N      ??SteerUpdatePWM_3
//  410   
//  411 }
//  412 else if (DirectMiddle-speed<0)//左转
??SteerUpdatePWM_2:
        LDR.W    R0,??DataTable9_19  ;; 0x44378000
        MOVS     R1,R4
        BL       __aeabi_fsub
        MOVS     R1,#+0
        BL       __aeabi_cfcmple
        BCS.N    ??SteerUpdatePWM_4
//  413 { 
//  414   
//  415   cs_y=(speed-DirectMiddle)*csb;
        LDR.W    R1,??DataTable10  ;; 0xc4378000
        MOVS     R0,R4
        BL       __aeabi_fadd
        MOVS     R1,R0
        MOVS     R0,R6
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable9_11
        STR      R0,[R1, #+0]
//  416   cs_z=(DirectMiddle-speed)*csb*cs_nei;
        LDR.W    R0,??DataTable9_19  ;; 0x44378000
        MOVS     R1,R4
        BL       __aeabi_fsub
        MOVS     R1,R0
        MOVS     R0,R6
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R9
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable9_10
        STR      R0,[R1, #+0]
        B.N      ??SteerUpdatePWM_3
//  417   
//  418 }
//  419 else 
//  420 {
//  421   cs_y=0;
??SteerUpdatePWM_4:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_11
        STR      R0,[R1, #+0]
//  422   cs_z=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_10
        STR      R0,[R1, #+0]
//  423   
//  424 }
//  425 
//  426 sd=zkb;
??SteerUpdatePWM_3:
        LDR.W    R0,??DataTable11_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable9_9
        STR      R0,[R1, #+0]
//  427 //if(djjd>40&&bm_pz>sd_a[0]) sd*=0.90;
//  428 int StableNumbers_max;
//  429 StableNumbers_max=MIN(StableNumbers_max,BlackEndMax);
        LDR.W    R1,??DataTable11_2
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BLT.N    ??SteerUpdatePWM_5
??SteerUpdatePWM_6:
        LDR.W    R0,??DataTable11_2
        LDR      R0,[R0, #+0]
//  430 //
//  431 //if(bm_pz>=sd_a[5]) {sd*=0.9;js=2;}
//  432 //if(bm_pz>=sd_a[6]) {sd*=0.7;js=2;}
//  433 
//  434 if(StableNumbers_recent[4]>75&&StableNumbers_recent[3]>75&&StableNumbers_recent[2]>75&&StableNumbers_recent[1]<75
//  435    &&StableNumbers_recent[0]<75&&StableNumbers<75&&StableNumbers_recent[4]>StableNumbers_recent[2]
//  436      &&StableNumbers_recent[2]>StableNumbers_recent[0]&&StableNumbers_recent[1]>StableNumbers&&StableNumbers>40
//  437        &&bm_pz>sd_a[2]&&StableNumbers_Big_count>20
//  438          )
??SteerUpdatePWM_5:
        LDR.W    R0,??DataTable11_3
        LDR      R0,[R0, #+16]
        CMP      R0,#+76
        BLT.N    ??SteerUpdatePWM_7
        LDR.W    R0,??DataTable11_3
        LDR      R0,[R0, #+12]
        CMP      R0,#+76
        BLT.N    ??SteerUpdatePWM_7
        LDR.W    R0,??DataTable11_3
        LDR      R0,[R0, #+8]
        CMP      R0,#+76
        BLT.N    ??SteerUpdatePWM_7
        LDR.W    R0,??DataTable11_3
        LDR      R0,[R0, #+4]
        CMP      R0,#+75
        BGE.N    ??SteerUpdatePWM_7
        LDR.W    R0,??DataTable11_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+75
        BGE.N    ??SteerUpdatePWM_7
        LDR.W    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+75
        BGE.N    ??SteerUpdatePWM_7
        LDR.W    R0,??DataTable11_3
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable11_3
        LDR      R1,[R1, #+16]
        CMP      R0,R1
        BGE.N    ??SteerUpdatePWM_7
        LDR.W    R0,??DataTable11_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_3
        LDR      R1,[R1, #+8]
        CMP      R0,R1
        BGE.N    ??SteerUpdatePWM_7
        LDR.W    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_3
        LDR      R1,[R1, #+4]
        CMP      R0,R1
        BGE.N    ??SteerUpdatePWM_7
        LDR.W    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+41
        BLT.N    ??SteerUpdatePWM_7
        LDR.W    R0,??DataTable11_4
        LDR      R0,[R0, #+8]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable11_5
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??SteerUpdatePWM_7
        LDR.W    R0,??DataTable11_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+21
        BLT.N    ??SteerUpdatePWM_7
//  439 {
//  440   
//  441   sd=3000;js=8;
        MOVW     R0,#+3000
        LDR.W    R1,??DataTable9_9
        STR      R0,[R1, #+0]
        MOVS     R0,#+8
        LDR.W    R1,??DataTable11_7
        STR      R0,[R1, #+0]
        B.N      ??SteerUpdatePWM_8
//  442   
//  443 }
//  444 else if(StableNumbers_recent[4]>75&&StableNumbers_recent[3]>75&&StableNumbers_recent[2]>75&&StableNumbers_recent[1]<75
//  445         &&StableNumbers_recent[0]<75&&StableNumbers<75&&StableNumbers_recent[4]>StableNumbers_recent[2]
//  446           &&StableNumbers_recent[2]>StableNumbers_recent[0]&&StableNumbers_recent[1]>StableNumbers&&StableNumbers>40
//  447             &&bm_pz>sd_a[1]&&StableNumbers_Big_count>20
//  448               )
??SteerUpdatePWM_7:
        LDR.W    R0,??DataTable11_3
        LDR      R0,[R0, #+16]
        CMP      R0,#+76
        BLT.N    ??SteerUpdatePWM_9
        LDR.W    R0,??DataTable11_3
        LDR      R0,[R0, #+12]
        CMP      R0,#+76
        BLT.N    ??SteerUpdatePWM_9
        LDR.W    R0,??DataTable11_3
        LDR      R0,[R0, #+8]
        CMP      R0,#+76
        BLT.N    ??SteerUpdatePWM_9
        LDR.W    R0,??DataTable11_3
        LDR      R0,[R0, #+4]
        CMP      R0,#+75
        BGE.N    ??SteerUpdatePWM_9
        LDR.W    R0,??DataTable11_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+75
        BGE.N    ??SteerUpdatePWM_9
        LDR.W    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+75
        BGE.N    ??SteerUpdatePWM_9
        LDR.W    R0,??DataTable11_3
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable11_3
        LDR      R1,[R1, #+16]
        CMP      R0,R1
        BGE.N    ??SteerUpdatePWM_9
        LDR.W    R0,??DataTable11_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_3
        LDR      R1,[R1, #+8]
        CMP      R0,R1
        BGE.N    ??SteerUpdatePWM_9
        LDR.W    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_3
        LDR      R1,[R1, #+4]
        CMP      R0,R1
        BGE.N    ??SteerUpdatePWM_9
        LDR.W    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+41
        BLT.N    ??SteerUpdatePWM_9
        LDR.W    R0,??DataTable11_4
        LDR      R0,[R0, #+4]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable11_5
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??SteerUpdatePWM_9
        LDR.W    R0,??DataTable11_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+21
        BLT.N    ??SteerUpdatePWM_9
//  449 {
//  450   sd=2500;js=8;
        MOVW     R0,#+2500
        LDR.W    R1,??DataTable9_9
        STR      R0,[R1, #+0]
        MOVS     R0,#+8
        LDR.W    R1,??DataTable11_7
        STR      R0,[R1, #+0]
        B.N      ??SteerUpdatePWM_8
//  451   
//  452 }
//  453 else if(bm_pz>sd_a[2]&&StableNumbers>45&&StableNumbers<80&&StableNumbers_Big_count>5)
??SteerUpdatePWM_9:
        LDR.W    R0,??DataTable11_4
        LDR      R0,[R0, #+8]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable11_5
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??SteerUpdatePWM_10
        LDR.W    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+46
        CMP      R0,#+34
        BCS.N    ??SteerUpdatePWM_10
        LDR.W    R0,??DataTable11_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+6
        BLT.N    ??SteerUpdatePWM_10
//  454 {
//  455   sd=500;js=4;
        MOV      R0,#+500
        LDR.W    R1,??DataTable9_9
        STR      R0,[R1, #+0]
        MOVS     R0,#+4
        LDR.W    R1,??DataTable11_7
        STR      R0,[R1, #+0]
//  456   if(PTB5_I)js*=2;
        LDR.W    R0,??DataTable11_8  ;; 0x43fe0a14
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??SteerUpdatePWM_11
        LDR.W    R0,??DataTable11_7
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+1
        LDR.W    R1,??DataTable11_7
        STR      R0,[R1, #+0]
//  457   if(PTB4_I&&PTB5_I)
??SteerUpdatePWM_11:
        LDR.W    R0,??DataTable11_9  ;; 0x43fe0a10
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??SteerUpdatePWM_8
        LDR.W    R0,??DataTable11_8  ;; 0x43fe0a14
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??SteerUpdatePWM_8
//  458   {
//  459   sd=0;js=10;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_9
        STR      R0,[R1, #+0]
        MOVS     R0,#+10
        LDR.W    R1,??DataTable11_7
        STR      R0,[R1, #+0]
        B.N      ??SteerUpdatePWM_8
//  460   
//  461   }
//  462 }
//  463 else if(bm_pz>sd_a[1]&&StableNumbers>45&&StableNumbers<80&&StableNumbers_Big_count>5)
??SteerUpdatePWM_10:
        LDR.W    R0,??DataTable11_4
        LDR      R0,[R0, #+4]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable11_5
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??SteerUpdatePWM_8
        LDR.W    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+46
        CMP      R0,#+34
        BCS.N    ??SteerUpdatePWM_8
        LDR.W    R0,??DataTable11_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+6
        BLT.N    ??SteerUpdatePWM_8
//  464 {
//  465   sd=500;js=2;
        MOV      R0,#+500
        LDR.W    R1,??DataTable9_9
        STR      R0,[R1, #+0]
        MOVS     R0,#+2
        LDR.W    R1,??DataTable11_7
        STR      R0,[R1, #+0]
//  466    if(PTB5_I)js*=2;
        LDR.W    R0,??DataTable11_8  ;; 0x43fe0a14
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??SteerUpdatePWM_12
        LDR.W    R0,??DataTable11_7
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+1
        LDR.W    R1,??DataTable11_7
        STR      R0,[R1, #+0]
//  467    
//  468   if(PTB4_I&&PTB5_I)
??SteerUpdatePWM_12:
        LDR.W    R0,??DataTable11_9  ;; 0x43fe0a10
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??SteerUpdatePWM_8
        LDR.W    R0,??DataTable11_8  ;; 0x43fe0a14
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??SteerUpdatePWM_8
//  469   {
//  470   sd=0;js=5;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_9
        STR      R0,[R1, #+0]
        MOVS     R0,#+5
        LDR.W    R1,??DataTable11_7
        STR      R0,[R1, #+0]
//  471   
//  472   }
//  473 }
//  474 
//  475 //else if(bm_pz>sd_a[1]&&StableNumbers<=40)
//  476 //{
//  477 // sd*=0.8;
//  478 //}
//  479 
//  480 if(js>-1)
??SteerUpdatePWM_8:
        LDR.W    R0,??DataTable11_7
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BMI.N    ??SteerUpdatePWM_13
//  481 {js--;
        LDR.W    R0,??DataTable11_7
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable11_7
        STR      R0,[R1, #+0]
//  482 sd=MIN(jssd,sd);
        LDR.W    R0,??DataTable9_9
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R0
        LDR.W    R0,??DataTable11_10
        LDR      R0,[R0, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??SteerUpdatePWM_14
        LDR.W    R0,??DataTable11_10
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable9_9
        STR      R0,[R1, #+0]
        B.N      ??SteerUpdatePWM_15
??SteerUpdatePWM_14:
        LDR.W    R0,??DataTable9_9
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9_9
        STR      R0,[R1, #+0]
//  483 jssd=sd;
??SteerUpdatePWM_15:
        LDR.W    R0,??DataTable9_9
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable11_10
        STR      R0,[R1, #+0]
        B.N      ??SteerUpdatePWM_16
//  484 }
//  485 else
//  486 {
//  487   jssd=zkb;
??SteerUpdatePWM_13:
        LDR.W    R0,??DataTable11_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_10
        STR      R0,[R1, #+0]
//  488 }
//  489 int sfjs=0;
??SteerUpdatePWM_16:
        MOVS     R4,#+0
//  490 
//  491 sfjs=(midline_fcount_max>5)&&minline_js;
        LDR.W    R0,??DataTable11_11
        LDR      R0,[R0, #+0]
        CMP      R0,#+6
        BLT.N    ??SteerUpdatePWM_17
        LDR.W    R0,??DataTable11_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??SteerUpdatePWM_17
        MOVS     R4,#+1
        B.N      ??SteerUpdatePWM_18
??SteerUpdatePWM_17:
        MOVS     R4,#+0
//  492 if(sfjs&&bm_pz>sd_a[1]&&bm_pz<=sd_a[2]&&bm_z>10&&bm_y>10)
??SteerUpdatePWM_18:
        CMP      R4,#+0
        BEQ.N    ??SteerUpdatePWM_19
        LDR.W    R0,??DataTable11_4
        LDR      R0,[R0, #+4]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable11_5
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??SteerUpdatePWM_19
        LDR.W    R0,??DataTable11_4
        LDR      R0,[R0, #+8]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable11_5
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfrcmple
        BHI.N    ??SteerUpdatePWM_19
        LDR.W    R0,??DataTable11_13
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_14  ;; 0x41200001
        BL       __aeabi_cfrcmple
        BHI.N    ??SteerUpdatePWM_19
        LDR.W    R0,??DataTable11_15
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_14  ;; 0x41200001
        BL       __aeabi_cfrcmple
        BHI.N    ??SteerUpdatePWM_19
//  493 {sd=zkb;
        LDR.W    R0,??DataTable11_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable9_9
        STR      R0,[R1, #+0]
//  494 sd*=0.9;
        LDR.W    R0,??DataTable9_9
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable11_16  ;; 0xcccccccd
        LDR.W    R3,??DataTable11_17  ;; 0x3feccccc
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable9_9
        STR      R0,[R1, #+0]
        B.N      ??SteerUpdatePWM_20
//  495 }
//  496 else if(sfjs&&(bm_pz<=sd_a[3]&&bm_pz>sd_a[2])&&bm_z>10&&bm_y>10)
??SteerUpdatePWM_19:
        CMP      R4,#+0
        BEQ.N    ??SteerUpdatePWM_21
        LDR.W    R0,??DataTable11_4
        LDR      R0,[R0, #+12]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable11_5
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfrcmple
        BHI.N    ??SteerUpdatePWM_21
        LDR.W    R0,??DataTable11_4
        LDR      R0,[R0, #+8]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable11_5
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??SteerUpdatePWM_21
        LDR.W    R0,??DataTable11_13
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_14  ;; 0x41200001
        BL       __aeabi_cfrcmple
        BHI.N    ??SteerUpdatePWM_21
        LDR.W    R0,??DataTable11_15
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_14  ;; 0x41200001
        BL       __aeabi_cfrcmple
        BHI.N    ??SteerUpdatePWM_21
//  497 {sd=zkb;
        LDR.W    R0,??DataTable11_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable9_9
        STR      R0,[R1, #+0]
//  498 sd*=0.8;
        LDR.W    R0,??DataTable9_9
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable11_18  ;; 0x9999999a
        LDR.W    R3,??DataTable11_19  ;; 0x3fe99999
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable9_9
        STR      R0,[R1, #+0]
        B.N      ??SteerUpdatePWM_20
//  499 }
//  500 else if(sfjs&&bm_pz>sd_a[3]&&bm_z>10&&bm_y>10)
??SteerUpdatePWM_21:
        CMP      R4,#+0
        BEQ.N    ??SteerUpdatePWM_20
        LDR.W    R0,??DataTable11_4
        LDR      R0,[R0, #+12]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable11_5
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??SteerUpdatePWM_20
        LDR.W    R0,??DataTable11_13
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_14  ;; 0x41200001
        BL       __aeabi_cfrcmple
        BHI.N    ??SteerUpdatePWM_20
        LDR.W    R0,??DataTable11_15
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_14  ;; 0x41200001
        BL       __aeabi_cfrcmple
        BHI.N    ??SteerUpdatePWM_20
//  501 {sd=zkb;
        LDR.W    R0,??DataTable11_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable9_9
        STR      R0,[R1, #+0]
//  502 sd*=0.7;
        LDR.W    R0,??DataTable9_9
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,#+1717986918
        LDR.W    R3,??DataTable9_13  ;; 0x3fe66666
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable9_9
        STR      R0,[R1, #+0]
//  503 }
//  504 
//  505 sfjs=(((hx_i>2&&hx_i<50)||(hx_i<3&&BlackEndMax<30))&&StableNumbers<80&&minline_js);
??SteerUpdatePWM_20:
        LDR.W    R0,??DataTable11_20
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+3
        CMP      R0,#+47
        BCC.N    ??SteerUpdatePWM_22
        LDR.W    R0,??DataTable11_20
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BGE.N    ??SteerUpdatePWM_23
        LDR.W    R0,??DataTable11_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+30
        BGE.N    ??SteerUpdatePWM_23
??SteerUpdatePWM_22:
        LDR.N    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+80
        BGE.N    ??SteerUpdatePWM_23
        LDR.W    R0,??DataTable11_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??SteerUpdatePWM_23
        MOVS     R4,#+1
        B.N      ??SteerUpdatePWM_24
??SteerUpdatePWM_23:
        MOVS     R4,#+0
//  506 if(sfjs&&bm_pz>sd_a[1]&&bm_pz<=sd_a[2]&&bm_z>10&&bm_y>10)
??SteerUpdatePWM_24:
        CMP      R4,#+0
        BEQ.N    ??SteerUpdatePWM_25
        LDR.W    R0,??DataTable11_4
        LDR      R0,[R0, #+4]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable11_5
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??SteerUpdatePWM_25
        LDR.W    R0,??DataTable11_4
        LDR      R0,[R0, #+8]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable11_5
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfrcmple
        BHI.N    ??SteerUpdatePWM_25
        LDR.W    R0,??DataTable11_13
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_14  ;; 0x41200001
        BL       __aeabi_cfrcmple
        BHI.N    ??SteerUpdatePWM_25
        LDR.W    R0,??DataTable11_15
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_14  ;; 0x41200001
        BL       __aeabi_cfrcmple
        BHI.N    ??SteerUpdatePWM_25
//  507 {sd=zkb;
        LDR.W    R0,??DataTable11_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable9_9
        STR      R0,[R1, #+0]
//  508 sd*=0.6;
        LDR.W    R0,??DataTable9_9
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,#+858993459
        LDR.W    R3,??DataTable11_21  ;; 0x3fe33333
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable9_9
        STR      R0,[R1, #+0]
        B.N      ??SteerUpdatePWM_26
//  509 }
//  510 else if(sfjs&&(bm_pz<=sd_a[3]&&bm_pz>sd_a[2])&&bm_z>10&&bm_y>10)
??SteerUpdatePWM_25:
        CMP      R4,#+0
        BEQ.N    ??SteerUpdatePWM_27
        LDR.W    R0,??DataTable11_4
        LDR      R0,[R0, #+12]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable11_5
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfrcmple
        BHI.N    ??SteerUpdatePWM_27
        LDR.W    R0,??DataTable11_4
        LDR      R0,[R0, #+8]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable11_5
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??SteerUpdatePWM_27
        LDR.W    R0,??DataTable11_13
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_14  ;; 0x41200001
        BL       __aeabi_cfrcmple
        BHI.N    ??SteerUpdatePWM_27
        LDR.W    R0,??DataTable11_15
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_14  ;; 0x41200001
        BL       __aeabi_cfrcmple
        BHI.N    ??SteerUpdatePWM_27
//  511 {sd=zkb;
        LDR.W    R0,??DataTable11_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable9_9
        STR      R0,[R1, #+0]
//  512 sd*=0.3;
        LDR.N    R0,??DataTable9_9
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,#+858993459
        LDR.W    R3,??DataTable11_22  ;; 0x3fd33333
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable9_9
        STR      R0,[R1, #+0]
        B.N      ??SteerUpdatePWM_26
//  513 }
//  514 else if(sfjs&&bm_pz>sd_a[3]&&bm_z>10&&bm_y>10)
??SteerUpdatePWM_27:
        CMP      R4,#+0
        BEQ.N    ??SteerUpdatePWM_26
        LDR.W    R0,??DataTable11_4
        LDR      R0,[R0, #+12]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable11_5
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??SteerUpdatePWM_26
        LDR.W    R0,??DataTable11_13
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_14  ;; 0x41200001
        BL       __aeabi_cfrcmple
        BHI.N    ??SteerUpdatePWM_26
        LDR.W    R0,??DataTable11_15
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_14  ;; 0x41200001
        BL       __aeabi_cfrcmple
        BHI.N    ??SteerUpdatePWM_26
//  515 {sd=zkb;
        LDR.W    R0,??DataTable11_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable9_9
        STR      R0,[R1, #+0]
//  516 sd*=0.1;
        LDR.N    R0,??DataTable9_9
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable11_18  ;; 0x9999999a
        LDR.W    R3,??DataTable11_23  ;; 0x3fb99999
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable9_9
        STR      R0,[R1, #+0]
//  517 }
//  518 if((bm_z<5||bm_y<5)&&sd>3000&&V_count>120) 
??SteerUpdatePWM_26:
        LDR.W    R0,??DataTable11_13
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_24  ;; 0x40a00000
        BL       __aeabi_cfcmple
        BCC.N    ??SteerUpdatePWM_28
        LDR.W    R0,??DataTable11_15
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_24  ;; 0x40a00000
        BL       __aeabi_cfcmple
        BCS.N    ??SteerUpdatePWM_29
??SteerUpdatePWM_28:
        LDR.N    R0,??DataTable9_9
        LDR      R0,[R0, #+0]
        MOVW     R1,#+3001
        CMP      R0,R1
        BLT.N    ??SteerUpdatePWM_29
        LDR.W    R0,??DataTable11_25
        LDR      R0,[R0, #+0]
        CMP      R0,#+121
        BLT.N    ??SteerUpdatePWM_29
//  519 {baohu++;
        LDR.W    R0,??DataTable11_26
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable11_26
        STR      R0,[R1, #+0]
//  520  if(baohu>60) sd=3000;
        LDR.W    R0,??DataTable11_26
        LDR      R0,[R0, #+0]
        CMP      R0,#+61
        BLT.N    ??SteerUpdatePWM_30
        MOVW     R0,#+3000
        LDR.N    R1,??DataTable9_9
        STR      R0,[R1, #+0]
        B.N      ??SteerUpdatePWM_30
//  521 }
//  522 else
//  523 {
//  524   baohu=0;
??SteerUpdatePWM_29:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable11_26
        STR      R0,[R1, #+0]
//  525 
//  526 }
//  527 //if(sd<0) sd=0;
//  528 if(fabss(Error>40)&&sd<5000) sd=5000;
??SteerUpdatePWM_30:
        LDR.W    R0,??DataTable11_27
        LDR      R0,[R0, #+0]
        CMP      R0,#+41
        BLT.N    ??SteerUpdatePWM_31
        MOVS     R0,#+1
        B.N      ??SteerUpdatePWM_32
??SteerUpdatePWM_31:
        MOVS     R0,#+0
??SteerUpdatePWM_32:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       `fabss`
        CMP      R0,#+0
        BEQ.N    ??SteerUpdatePWM_33
        LDR.N    R0,??DataTable9_9
        LDR      R0,[R0, #+0]
        MOVW     R1,#+5000
        CMP      R0,R1
        BGE.N    ??SteerUpdatePWM_33
        MOVW     R0,#+5000
        LDR.N    R1,??DataTable9_9
        STR      R0,[R1, #+0]
//  529 
//  530 if(/*sd<zkb*0.9*/zaw_mode!=0)
??SteerUpdatePWM_33:
        LDR.W    R0,??DataTable11_28
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??SteerUpdatePWM_34
//  531 {
//  532   
//  533   PTE4_O=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable11_29  ;; 0x43fe2010
        STR      R0,[R1, #+0]
        B.N      ??SteerUpdatePWM_35
//  534 }
//  535 
//  536 else
//  537 {
//  538   
//  539   PTE4_O=0;
??SteerUpdatePWM_34:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable11_29  ;; 0x43fe2010
        STR      R0,[R1, #+0]
//  540   
//  541 }
//  542 MotorUpdatePWM();
??SteerUpdatePWM_35:
        BL       MotorUpdatePWM
//  543 }
        POP      {R0,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     0x400ea000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     ThresholdData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     BlackEndColumnMax

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     StableNumbers

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     ftm_init_struct
//  544 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  545 void display()
//  546 { 
display:
        PUSH     {R7,LR}
//  547   if(showmode!=showmode_last) 
        LDR.W    R0,??DataTable11_30
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_31
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BEQ.N    ??display_0
//  548   {
//  549     OLED_Fill(0x00); 
        MOVS     R0,#+0
        BL       OLED_Fill
//  550     if(showmode==1)
        LDR.W    R0,??DataTable11_30
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??display_0
//  551     {
//  552       OLED_Print_Str(0,0,"SNm");  //汉字字符串显示
        ADR.N    R2,??DataTable9_1  ;; "SNm"
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_Print_Str
//  553       OLED_Print_Str(0,2,"Err");  //汉字字符串显示
        ADR.N    R2,??DataTable9_2  ;; "Err"
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       OLED_Print_Str
//  554       OLED_Print_Str(0,4,"Era");  //汉字字符串显示
        ADR.N    R2,??DataTable9_3  ;; "Era"
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       OLED_Print_Str
//  555       OLED_Print_Str(0,6,"BLM");  //汉字字符串显示
        ADR.N    R2,??DataTable9_4  ;; "BLM"
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       OLED_Print_Str
//  556       
//  557       OLED_Print_Str(64,0,"ZAW");  //汉字字符串显示
        ADR.N    R2,??DataTable9_5  ;; "ZAW"
        MOVS     R1,#+0
        MOVS     R0,#+64
        BL       OLED_Print_Str
//  558       OLED_Print_Str(64,2,"BMZ");  //汉字字符串显示
        ADR.N    R2,??DataTable9_6  ;; "BMZ"
        MOVS     R1,#+2
        MOVS     R0,#+64
        BL       OLED_Print_Str
//  559       OLED_Print_Str(64,4,"BMY");  //汉字字符串显示
        ADR.N    R2,??DataTable9_7  ;; "BMY"
        MOVS     R1,#+4
        MOVS     R0,#+64
        BL       OLED_Print_Str
//  560       OLED_Print_Str(64,6,"GFQ");  //汉字字符串显示
        ADR.N    R2,??DataTable9_8  ;; "GFQ"
        MOVS     R1,#+6
        MOVS     R0,#+64
        BL       OLED_Print_Str
//  561       showmode_last=showmode;
        LDR.W    R0,??DataTable11_30
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_31
        STR      R0,[R1, #+0]
//  562     }
//  563     
//  564     
//  565   }
//  566   if(showmode==1)
??display_0:
        LDR.W    R0,??DataTable11_30
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??display_1
//  567   {
//  568     OLED_Print_Str(24,0,"     ");  //汉字字符串显示
        LDR.W    R2,??DataTable11_32
        MOVS     R1,#+0
        MOVS     R0,#+24
        BL       OLED_Print_Str
//  569     OLED_Print_Str(24,2,"     ");  //汉字字符串显示
        LDR.W    R2,??DataTable11_32
        MOVS     R1,#+2
        MOVS     R0,#+24
        BL       OLED_Print_Str
//  570     OLED_Print_Str(24,4,"     ");  //汉字字符串显示
        LDR.W    R2,??DataTable11_32
        MOVS     R1,#+4
        MOVS     R0,#+24
        BL       OLED_Print_Str
//  571     OLED_Print_Str(24,6,"     ");  //汉字字符串显示       
        LDR.W    R2,??DataTable11_32
        MOVS     R1,#+6
        MOVS     R0,#+24
        BL       OLED_Print_Str
//  572     LG_Print_Num(24,0,StableNumbers);  //汉字字符串显示
        LDR.W    R0,??DataTable11_33
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R1,#+0
        MOVS     R0,#+24
        BL       LG_Print_Num
//  573     LG_Print_Num(24,2,Error);  //汉字字符串显示
        LDR.W    R0,??DataTable11_27
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R1,#+2
        MOVS     R0,#+24
        BL       LG_Print_Num
//  574     LG_Print_Num(24,4,Errora);  //汉字字符串显示
        LDR.W    R0,??DataTable11_34
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R1,#+4
        MOVS     R0,#+24
        BL       LG_Print_Num
//  575     LG_Print_Num(24,6,BlackEndMax);  //汉字字符串显示
        LDR.N    R0,??DataTable11_2
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R1,#+6
        MOVS     R0,#+24
        BL       LG_Print_Num
//  576     
//  577     
//  578     
//  579     OLED_Print_Str(88,0,"     ");  //汉字字符串显示
        LDR.W    R2,??DataTable11_32
        MOVS     R1,#+0
        MOVS     R0,#+88
        BL       OLED_Print_Str
//  580     OLED_Print_Str(88,2,"     ");  //汉字字符串显示
        LDR.W    R2,??DataTable11_32
        MOVS     R1,#+2
        MOVS     R0,#+88
        BL       OLED_Print_Str
//  581     OLED_Print_Str(88,4,"     ");  //汉字字符串显示
        LDR.W    R2,??DataTable11_32
        MOVS     R1,#+4
        MOVS     R0,#+88
        BL       OLED_Print_Str
//  582     OLED_Print_Str(88,6,"     ");  //汉字字符串显示       
        LDR.N    R2,??DataTable11_32
        MOVS     R1,#+6
        MOVS     R0,#+88
        BL       OLED_Print_Str
//  583     LG_Print_Num(88,0,zaw_mode);  //汉字字符串显示
        LDR.N    R0,??DataTable11_28
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R1,#+0
        MOVS     R0,#+88
        BL       LG_Print_Num
//  584     LG_Print_Num(88,2,bm_z);  //汉字字符串显示
        LDR.N    R0,??DataTable11_13
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R1,#+2
        MOVS     R0,#+88
        BL       LG_Print_Num
//  585     LG_Print_Num(88,4,bm_y);  //汉字字符串显示
        LDR.N    R0,??DataTable11_15
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R1,#+4
        MOVS     R0,#+88
        BL       LG_Print_Num
//  586     LG_Print_Num(88,6,GetFreq+1);  //汉字字符串显示
        LDR.N    R0,??DataTable11_35
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R1,#+6
        MOVS     R0,#+88
        BL       LG_Print_Num
//  587   }
//  588   
//  589   
//  590 }
??display_1:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     BlackLineData

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  591 void LG_Print_Num(int x,int y,double print_num)
//  592 {
LG_Print_Num:
        PUSH     {R3-R7,LR}
        MOVS     R6,R0
        MOVS     R7,R1
        MOVS     R4,R2
        MOVS     R5,R3
//  593   if(print_num>=0) 
        MOVS     R0,R4
        MOVS     R1,R5
        MOVS     R2,#+0
        MOVS     R3,#+0
        BL       __aeabi_cdrcmple
        BHI.N    ??LG_Print_Num_0
//  594     OLED_Print_Num(x,y,print_num);
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_d2iz
        MOVS     R2,R0
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Print_Num
        B.N      ??LG_Print_Num_1
//  595   else
//  596   {
//  597     OLED_Print_Str(x,y,"*");  //汉字字符串显示
??LG_Print_Num_0:
        ADR.N    R2,??DataTable11  ;; "*"
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Print_Str
//  598     OLED_Print_Num(x+8,y,-print_num);
        EORS     R5,R5,#0x80000000
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_d2iz
        MOVS     R2,R0
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R6,#+8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       OLED_Print_Num
//  599   }
//  600   
//  601   
//  602   
//  603 }
??LG_Print_Num_1:
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC8      "SNm"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC8      "Err"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC8      "Era"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_4:
        DC8      "BLM"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_5:
        DC8      "ZAW"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_6:
        DC8      "BMZ"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_7:
        DC8      "BMY"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_8:
        DC8      "GFQ"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_9:
        DC32     sd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_10:
        DC32     cs_z

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_11:
        DC32     cs_y

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_12:
        DC32     0x41a00001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_13:
        DC32     0x3fe66666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_14:
        DC32     duojizkb

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_15:
        DC32     0x42480000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_16:
        DC32     csbs

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_17:
        DC32     hx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_18:
        DC32     0x3f333333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_19:
        DC32     0x44378000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_20:
        DC32     djjd

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  604 void GetBoma()
//  605 {
GetBoma:
        PUSH     {R7,LR}
//  606   int bm_i=0;
        MOVS     R0,#+0
//  607   if(PTA28_I)minline_js=1;; 
        LDR.N    R1,??DataTable11_36  ;; 0x43fe0270
        LDR      R1,[R1, #+0]
        CMP      R1,#+0
        BEQ.N    ??GetBoma_0
        MOVS     R0,#+1
        LDR.N    R1,??DataTable11_12
        STR      R0,[R1, #+0]
//  608   if(PTA29_I){zkb+=500;} 
??GetBoma_0:
        LDR.N    R0,??DataTable11_37  ;; 0x43fe0274
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??GetBoma_1
        LDR.N    R0,??DataTable11_1
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable11_38  ;; 0x43fa0000
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable11_1
        STR      R0,[R1, #+0]
//  609   if(PTB4_I){zkb+=1000;Setk=1;} 
??GetBoma_1:
        LDR.N    R0,??DataTable11_9  ;; 0x43fe0a10
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??GetBoma_2
        LDR.N    R0,??DataTable11_1
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable11_39  ;; 0x447a0000
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable11_1
        STR      R0,[R1, #+0]
        MOVS     R0,#+1065353216
        LDR.N    R1,??DataTable11_40
        STR      R0,[R1, #+0]
//  610   if(PTB5_I){zkb+=2000;Setk=1.1;} 
??GetBoma_2:
        LDR.N    R0,??DataTable11_8  ;; 0x43fe0a14
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??GetBoma_3
        LDR.N    R0,??DataTable11_1
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable11_41  ;; 0x44fa0000
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable11_1
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable11_42  ;; 0x3f8ccccd
        LDR.N    R1,??DataTable11_40
        STR      R0,[R1, #+0]
//  611 
//  612  if(PTA29_I==0&&PTB4_I==0&&PTB5_I==0)Setk=0.9;else if(PTB4_I==0&&PTB5_I==0)Setk=0.95;
??GetBoma_3:
        LDR.N    R0,??DataTable11_37  ;; 0x43fe0274
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??GetBoma_4
        LDR.N    R0,??DataTable11_9  ;; 0x43fe0a10
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??GetBoma_4
        LDR.N    R0,??DataTable11_8  ;; 0x43fe0a14
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??GetBoma_4
        LDR.N    R0,??DataTable11_43  ;; 0x3f666666
        LDR.N    R1,??DataTable11_40
        STR      R0,[R1, #+0]
        B.N      ??GetBoma_5
??GetBoma_4:
        LDR.N    R0,??DataTable11_9  ;; 0x43fe0a10
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??GetBoma_5
        LDR.N    R0,??DataTable11_8  ;; 0x43fe0a14
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??GetBoma_5
        LDR.N    R0,??DataTable11_44  ;; 0x3f733333
        LDR.N    R1,??DataTable11_40
        STR      R0,[R1, #+0]
//  613  
//  614  
//  615   if(PTB9_I)StaticThreshold+=10; 
??GetBoma_5:
        LDR.N    R0,??DataTable11_45  ;; 0x43fe0a24
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??GetBoma_6
        LDR.N    R0,??DataTable11_46
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+10
        LDR.N    R1,??DataTable11_46
        STR      R0,[R1, #+0]
//  616   if(PTB11_I)StaticThreshold+=20; 
??GetBoma_6:
        LDR.N    R0,??DataTable11_47  ;; 0x43fe0a2c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??GetBoma_7
        LDR.N    R0,??DataTable11_46
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+20
        LDR.N    R1,??DataTable11_46
        STR      R0,[R1, #+0]
//  617   if(PTB17_I) light_mode=1;
??GetBoma_7:
        LDR.N    R0,??DataTable11_48  ;; 0x43fe0a44
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??GetBoma_8
        MOVS     R0,#+1
        LDR.N    R1,??DataTable11_49
        STR      R0,[R1, #+0]
//  618   if(PTB19_I)
??GetBoma_8:
        LDR.N    R0,??DataTable11_50  ;; 0x43fe0a4c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??GetBoma_9
//  619   {
//  620   Setk+=0.2;
        LDR.N    R0,??DataTable11_40
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable11_18  ;; 0x9999999a
        LDR.N    R3,??DataTable11_51  ;; 0x3fc99999
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable11_40
        STR      R0,[R1, #+0]
//  621   }
//  622   
//  623   
//  624   
//  625   
//  626   if(PTB21_I)
??GetBoma_9:
        LDR.N    R0,??DataTable11_52  ;; 0x43fe0a54
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??GetBoma_10
//  627   {
//  628     MidPos-=1;
        LDR.N    R0,??DataTable11_53
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable11_53
        STR      R0,[R1, #+0]
//  629   }
//  630   if(PTB20_I)
??GetBoma_10:
        LDR.N    R0,??DataTable11_54  ;; 0x43fe0a50
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??GetBoma_11
//  631   {
//  632     csbs+=10;
        LDR.N    R0,??DataTable11_55
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+10
        LDR.N    R1,??DataTable11_55
        STR      R0,[R1, #+0]
//  633   }
//  634   if(PTB23_I)csbs+=30;
??GetBoma_11:
        LDR.N    R0,??DataTable11_56  ;; 0x43fe0a5c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??GetBoma_12
        LDR.N    R0,??DataTable11_55
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+30
        LDR.N    R1,??DataTable11_55
        STR      R0,[R1, #+0]
//  635   if(PTB22_I)csbs+=60;
??GetBoma_12:
        LDR.N    R0,??DataTable11_57  ;; 0x43fe0a58
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??GetBoma_13
        LDR.N    R0,??DataTable11_55
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+60
        LDR.N    R1,??DataTable11_55
        STR      R0,[R1, #+0]
//  636   //if(PTB22_I)zkb-=100; 
//  637   
//  638   
//  639   
//  640 }
??GetBoma_13:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     0xc4378000

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  641 int StableNumbers_recent_count=1;
StableNumbers_recent_count:
        DATA
        DC32 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  642 void Get_StableNumbers_recent()
//  643 {
//  644   StableNumbers_recent_count=1-StableNumbers_recent_count;
Get_StableNumbers_recent:
        LDR.N    R0,??DataTable11_58
        LDR      R0,[R0, #+0]
        RSBS     R0,R0,#+1
        LDR.N    R1,??DataTable11_58
        STR      R0,[R1, #+0]
//  645   if(StableNumbers_recent_count) return;
        LDR.N    R0,??DataTable11_58
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Get_StableNumbers_recent_0
//  646   StableNumbers_recent[4]=StableNumbers_recent[3];
??Get_StableNumbers_recent_1:
        LDR.N    R0,??DataTable11_3
        LDR      R0,[R0, #+12]
        LDR.N    R1,??DataTable11_3
        STR      R0,[R1, #+16]
//  647   StableNumbers_recent[3]=StableNumbers_recent[2];
        LDR.N    R0,??DataTable11_3
        LDR      R0,[R0, #+8]
        LDR.N    R1,??DataTable11_3
        STR      R0,[R1, #+12]
//  648   StableNumbers_recent[2]=StableNumbers_recent[1];
        LDR.N    R0,??DataTable11_3
        LDR      R0,[R0, #+4]
        LDR.N    R1,??DataTable11_3
        STR      R0,[R1, #+8]
//  649   StableNumbers_recent[1]=StableNumbers_recent[0];
        LDR.N    R0,??DataTable11_3
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable11_3
        STR      R0,[R1, #+4]
//  650   StableNumbers_recent[0]=StableNumbers;
        LDR.N    R0,??DataTable11_33
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable11_3
        STR      R0,[R1, #+0]
//  651   if(StableNumbers>=75)StableNumbers_Big_count++;
        LDR.N    R0,??DataTable11_33
        LDR      R0,[R0, #+0]
        CMP      R0,#+75
        BLT.N    ??Get_StableNumbers_recent_2
        LDR.N    R0,??DataTable11_6
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable11_6
        STR      R0,[R1, #+0]
        B.N      ??Get_StableNumbers_recent_3
//  652   else StableNumbers_Big_count=0;
??Get_StableNumbers_recent_2:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable11_6
        STR      R0,[R1, #+0]
//  653   
//  654 }
??Get_StableNumbers_recent_3:
??Get_StableNumbers_recent_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC8      "*",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC32     zkb

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_2:
        DC32     BlackEndMax

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_3:
        DC32     StableNumbers_recent

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_4:
        DC32     sd_a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_5:
        DC32     bm_pz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_6:
        DC32     StableNumbers_Big_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_7:
        DC32     js

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_8:
        DC32     0x43fe0a14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_9:
        DC32     0x43fe0a10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_10:
        DC32     jssd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_11:
        DC32     midline_fcount_max

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_12:
        DC32     minline_js

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_13:
        DC32     bm_z

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_14:
        DC32     0x41200001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_15:
        DC32     bm_y

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_16:
        DC32     0xcccccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_17:
        DC32     0x3feccccc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_18:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_19:
        DC32     0x3fe99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_20:
        DC32     hx_i

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_21:
        DC32     0x3fe33333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_22:
        DC32     0x3fd33333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_23:
        DC32     0x3fb99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_24:
        DC32     0x40a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_25:
        DC32     V_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_26:
        DC32     baohu

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_27:
        DC32     Error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_28:
        DC32     zaw_mode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_29:
        DC32     0x43fe2010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_30:
        DC32     showmode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_31:
        DC32     showmode_last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_32:
        DC32     ?_9

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_33:
        DC32     StableNumbers

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_34:
        DC32     Errora

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_35:
        DC32     GetFreq

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_36:
        DC32     0x43fe0270

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_37:
        DC32     0x43fe0274

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_38:
        DC32     0x43fa0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_39:
        DC32     0x447a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_40:
        DC32     Setk

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_41:
        DC32     0x44fa0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_42:
        DC32     0x3f8ccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_43:
        DC32     0x3f666666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_44:
        DC32     0x3f733333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_45:
        DC32     0x43fe0a24

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_46:
        DC32     StaticThreshold

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_47:
        DC32     0x43fe0a2c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_48:
        DC32     0x43fe0a44

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_49:
        DC32     light_mode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_50:
        DC32     0x43fe0a4c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_51:
        DC32     0x3fc99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_52:
        DC32     0x43fe0a54

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_53:
        DC32     MidPos

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_54:
        DC32     0x43fe0a50

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_55:
        DC32     csbs

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_56:
        DC32     0x43fe0a5c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_57:
        DC32     0x43fe0a58

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_58:
        DC32     StableNumbers_recent_count

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  655 int zkb_check(zkb_now,zkb_last)
//  656 {
//  657 if((zkb_now-zkb_last)<500&&(zkb_now-zkb_last)>0) return zkb_now;
zkb_check:
        SUBS     R2,R0,R1
        SUBS     R2,R2,#+1
        CMP      R2,#+498
        BLS.N    ??zkb_check_0
//  658 else if((zkb_now-zkb_last)>0) return (zkb_last+500);
??zkb_check_1:
        SUBS     R2,R0,R1
        CMP      R2,#+1
        BLT.N    ??zkb_check_2
        ADDS     R0,R1,#+500
        B.N      ??zkb_check_0
//  659 
//  660 if((zkb_now-zkb_last)>-500&&(zkb_now-zkb_last)<0/*&&zkb_now>zkb*/) return zkb_now;
??zkb_check_2:
        SUBS     R2,R0,R1
        ADDW     R2,R2,#+499
        CMP      R2,#+498
        BLS.N    ??zkb_check_0
//  661 else if((zkb_now-zkb_last)<0/*&&zkb_now>zkb*/) return (zkb_last-500);
??zkb_check_3:
        SUBS     R2,R0,R1
        CMP      R2,#+0
        BPL.N    ??zkb_check_4
        SUBS     R0,R1,#+500
        B.N      ??zkb_check_0
//  662 return zkb_now;
??zkb_check_4:
??zkb_check_0:
        BX       LR               ;; return
//  663 }

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
        DC32 2274, 2169, 2067, 1968, 1870, 1776, 1684, 1594, 1506, 1422, 1339
        DC32 1259, 1182, 1107, 1034, 964, 896, 831, 769, 708, 651, 595, 542
        DC32 492, 444, 398, 355, 315, 277, 241, 208, 177, 149, 123, 100, 79, 60
        DC32 44, 31, 20, 11, 5, 1, 0, 1, 5, 11, 20, 31, 44, 60, 79, 100, 123
        DC32 149, 177, 208, 241, 277, 315, 355, 398, 444, 492, 542, 595, 651
        DC32 708, 769, 831, 896, 964, 1034, 1107, 1182, 1259, 1339, 1422, 1506
        DC32 1594, 1684, 1776, 1870, 1968, 2067, 2169, 2274, 2381, 2490, 2602

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "SNm"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "Err"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "Era"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "BLM"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "ZAW"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "BMZ"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "BMY"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "GFQ"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_9:
        DATA
        DC8 "     "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 "*"

        END
//  664 //int GetRecentError()
//  665 //{ 
//  666 //  int GetRecentError_count,GetRecentError_all;
//  667 //  int GetRecentError_i;
//  668 //  GetRecentError_all=0;
//  669 //  for(GetRecentError_i=0;GetRecentError_i<10;GetRecentError_i++;)
//  670 //  {
//  671 //    
//  672 //    GetRecentError_all+=Error_recent[GetRecentError_i];
//  673 //    
//  674 //  }
//  675 //  GetRecentError_all= GetRecentError_all/10;
//  676 //  return GetRecentError_all;
//  677 //  
//  678 //}
// 
//   236 bytes in section .bss
//    88 bytes in section .data
//   402 bytes in section .rodata
// 5 130 bytes in section .text
// 
// 5 130 bytes of CODE  memory
//   402 bytes of CONST memory
//   324 bytes of DATA  memory
//
//Errors: none
//Warnings: 26

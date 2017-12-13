///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       28/Jul/2015  02:43:05
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-27-3.54\app\CONTROL.c
//    Command line =  
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-27-3.54\app\CONTROL.c
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
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-27-3.54\iar\FLASH\List\CONTROL.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN BlackEndMax
        EXTERN BlackLineData
        EXTERN LastRoadType
        EXTERN MotorPidCal
        EXTERN MotorUpdatePWM
        EXTERN RoadType
        EXTERN Setk
        EXTERN StableNumbers
        EXTERN SteerPidCal
        EXTERN SteerUpdatePWM
        EXTERN __aeabi_cfcmpeq
        EXTERN __aeabi_d2f
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_dsub
        EXTERN __aeabi_f2d
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2d
        EXTERN __aeabi_i2f
        EXTERN __aeabi_ui2d
        EXTERN __aeabi_ui2f
        EXTERN duojizkb
        EXTERN duojizkb0
        EXTERN duojizkb1
        EXTERN `fabss`
        EXTERN hx
        EXTERN sfminline
        EXTERN zaw_mode

        PUBLIC AllSmallSCount
        PUBLIC AllStraightCount
        PUBLIC BendEnd
        PUBLIC BendFS
        PUBLIC BendK
        PUBLIC BendSpeed
        PUBLIC BigFS
        PUBLIC BigSEnd
        PUBLIC BigSK
        PUBLIC BigSSpeed
        PUBLIC CanSpeedUp
        PUBLIC CommonEnd
        PUBLIC CommonFS
        PUBLIC CommonK
        PUBLIC CommonSpeed
        PUBLIC CrossingBegin
        PUBLIC CrossingCount
        PUBLIC DirectionCtrol
        PUBLIC Error
        PUBLIC Errora
        PUBLIC FarWeight
        PUBLIC Foresight
        PUBLIC GetSteerError
        PUBLIC GetSteerError2
        PUBLIC HighSpeedCount
        PUBLIC HighSpeedFlag
        PUBLIC IncreaseSpeed1
        PUBLIC IncreaseSpeed2
        PUBLIC IncreaseSpeed3
        PUBLIC IsCrossing
        PUBLIC IsOutRoad
        PUBLIC IsStartLine
        PUBLIC LastError
        PUBLIC LineWeight
        PUBLIC MidPos
        PUBLIC MidPos_h
        PUBLIC MotorSpeed
        PUBLIC SmallSEnd
        PUBLIC SmallSFS
        PUBLIC SmallSK
        PUBLIC SmallSSpeed
        PUBLIC SpeedCtrol
        PUBLIC SpeedPid
        PUBLIC StopCar
        PUBLIC StopCarCount
        PUBLIC StopNowCount
        PUBLIC StraightEnd
        PUBLIC StraightFS
        PUBLIC StraightK
        PUBLIC StraightSpeed
        PUBLIC StraightToBenEnd
        PUBLIC StraightToBendFS
        PUBLIC StraightToBendK
        PUBLIC StraightToBendSpeed
        PUBLIC TemError
        PUBLIC caidan
        PUBLIC duoji
        PUBLIC hx_direct
        PUBLIC hx_over
        PUBLIC interror
        PUBLIC k
        PUBLIC sfminline_last
        PUBLIC yxh
        PUBLIC zaw_mode_last

// C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-27-3.54\app\CONTROL.c
//    1 #include "CONTROL.h"
//    2 #include "SYS.h"
//    3 //调试用变量

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//    4 int caidan=-10;
caidan:
        DATA
        DC32 -10
//    5 int GetSteerError2(int start,int end,float midpos);
//    6 float GetSteerError(unsigned char start,unsigned char end,float midpos);
//    7 //
//    8 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    9 int Error = 0.0;
Error:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   10 int Errora=0.0;
Errora:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   11 int LastError = 0.0;
LastError:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   12 int TemError = 0.0;
TemError:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   13 int MidPos_h=RowMax-1;
MidPos_h:
        DATA
        DC32 99

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   14 int duoji=0;
duoji:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   15 int interror=0;
interror:
        DS8 4
//   16 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   17 int Foresight =RowMax-1;
Foresight:
        DATA
        DC32 99

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   18 int SpeedPid = 0;
SpeedPid:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   19 float k = 1.0;
k:
        DATA
        DC32 3F800000H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   20 int HighSpeedFlag = 0;
HighSpeedFlag:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   21 int StopNowCount=0;
StopNowCount:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   22 int HighSpeedCount = 0;
HighSpeedCount:
        DS8 4
//   23 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   24 int yxh=0;
yxh:
        DS8 4
//   25 
//   26 #define dz 1.5
//   27 #if (0)
//   28 
//   29 float StraightK = 0.5*dz;	//0直道系数
//   30 float SmallSK = 0.7*dz;	//1小S系数
//   31 float BigSK = 0.8*dz;	//2大S系数
//   32 float BendK = 1*dz;	//3急弯
//   33 float CommonK = 1*dz;	//普通系数
//   34 float StraightToBendK = 1*dz;	
//   35 #else

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   36 float StraightK = 1*dz;	//0直道系数
StraightK:
        DATA
        DC32 3FC00000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   37 float SmallSK = 1*dz;	//1小S系数
SmallSK:
        DATA
        DC32 3FC00000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   38 float BigSK = 1*dz;	//2大S系数
BigSK:
        DATA
        DC32 3FC00000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   39 float BendK = 1*dz;	//3急弯
BendK:
        DATA
        DC32 3FC00000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   40 float CommonK =1*dz;	//普通系数
CommonK:
        DATA
        DC32 3FC00000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   41 float StraightToBendK =1*dz;
StraightToBendK:
        DATA
        DC32 3FC00000H
//   42 
//   43 
//   44 
//   45 #endif
//   46 
//   47 
//   48 #define afs RowMax-1

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   49 int StraightFS = afs;	//35						//直道前瞻
StraightFS:
        DATA
        DC32 99

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   50 int SmallSFS = afs;//35							//小s前瞻
SmallSFS:
        DATA
        DC32 99

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   51 int BigFS = afs;//22								//大S前瞻
BigFS:
        DATA
        DC32 99

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   52 int BendFS =afs;//20								//急弯前瞻
BendFS:
        DATA
        DC32 99

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   53 int CommonFS = afs;//25							//普通前瞻
CommonFS:
        DATA
        DC32 99

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   54 int StraightToBendFS = afs;//25
StraightToBendFS:
        DATA
        DC32 99
//   55 
//   56 #define startsee 1
//   57 
//   58 
//   59 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   60 unsigned char StraightEnd = RowMax-startsee;					//直道截止行
StraightEnd:
        DATA
        DC8 99

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   61 unsigned char SmallSEnd = RowMax-startsee;						//小S弯截止行
SmallSEnd:
        DATA
        DC8 99

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   62 unsigned char BigSEnd = RowMax-startsee;						//大S弯截止行
BigSEnd:
        DATA
        DC8 99

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   63 unsigned char BendEnd = RowMax-startsee;						//急弯截止行
BendEnd:
        DATA
        DC8 99

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   64 unsigned char CommonEnd = RowMax-startsee;						//普通截止行
CommonEnd:
        DATA
        DC8 99

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   65 unsigned char StraightToBenEnd = RowMax-startsee;				//直入弯截止行
StraightToBenEnd:
        DATA
        DC8 99

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   66 unsigned char FarWeight = 5;							//权重
FarWeight:
        DATA
        DC8 5
//   67 
//   68 
//   69 
//   70 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   71 unsigned char IsStartLine=0;
IsStartLine:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   72 unsigned char IsOutRoad=0;
IsOutRoad:
        DS8 1
//   73 unsigned char IsOutRoad;							//跑出跑道
//   74 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   75 unsigned char IsCrossing=0;
IsCrossing:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   76 unsigned char StraightSpeed=80;
StraightSpeed:
        DATA
        DC8 80

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   77 unsigned char SmallSSpeed=15;
SmallSSpeed:
        DATA
        DC8 15

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   78 unsigned char BigSSpeed=15;
BigSSpeed:
        DATA
        DC8 15

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   79 unsigned char BendSpeed=15;
BendSpeed:
        DATA
        DC8 15

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   80 unsigned char StraightToBendSpeed=15;
StraightToBendSpeed:
        DATA
        DC8 15

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   81 unsigned char CommonSpeed=15;
CommonSpeed:
        DATA
        DC8 15
//   82 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   83 unsigned char AllStraightCount=0;
AllStraightCount:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   84 unsigned char AllSmallSCount=0;
AllSmallSCount:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   85 unsigned char CanSpeedUp=0;
CanSpeedUp:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   86 unsigned char IncreaseSpeed1=0;
IncreaseSpeed1:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   87 unsigned char IncreaseSpeed2=0;
IncreaseSpeed2:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   88 unsigned char IncreaseSpeed3=0;
IncreaseSpeed3:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   89 unsigned char MotorSpeed=0;
MotorSpeed:
        DS8 1
//   90 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   91 int MidPos=42;
MidPos:
        DATA
        DC32 42

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   92 int sfminline_last;
sfminline_last:
        DS8 4
//   93 //速度控制

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   94 void SpeedCtrol()
//   95 {
SpeedCtrol:
        PUSH     {R7,LR}
//   96   if(IsStartLine || IsOutRoad)
        LDR.W    R0,??DataTable4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??SpeedCtrol_0
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??SpeedCtrol_1
//   97   {
//   98     SpeedPid = 0;
??SpeedCtrol_0:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_2
        STR      R0,[R1, #+0]
//   99     return;
        B.N      ??SpeedCtrol_2
//  100   }
//  101   
//  102   if(StableNumbers < 10 && StableNumbers > 5)
??SpeedCtrol_1:
        LDR.W    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+6
        CMP      R0,#+4
        BCC.W    ??SpeedCtrol_2
//  103   {
//  104     return;
//  105   }
//  106   
//  107   //	if(RoadType != 0 && RoadType != 1 && CanSpeedUp)
//  108   //	{
//  109   //		if(HighSpeedFlag)
//  110   //		{
//  111   //			SpeedPid = 160;
//  112   //			MotorRun(-500);
//  113   //			StopNowCount++;
//  114   //			if(StopNowCount > 8)
//  115   //			{
//  116   //				StopNowCount = 0;
//  117   //				HighSpeedFlag = 0;
//  118   //			}
//  119   //			return;	
//  120   //		}
//  121   //		else
//  122   //		{
//  123   //			HighSpeedFlag = 0;	
//  124   //		}
//  125   //	}
//  126   //	else
//  127   //	{
//  128   //		StopNowCount=0;	
//  129   //	}
//  130   
//  131   if(IsCrossing)
??SpeedCtrol_3:
        LDR.W    R0,??DataTable4_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??SpeedCtrol_2
//  132   {
//  133     //SpeedPid = BigSSpeed;
//  134     return;
//  135   }
//  136   
//  137   switch(RoadType)
??SpeedCtrol_4:
        LDR.W    R0,??DataTable4_5
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??SpeedCtrol_5
        CMP      R0,#+1
        BEQ.N    ??SpeedCtrol_6
        CMP      R0,#+2
        BEQ.N    ??SpeedCtrol_7
        CMP      R0,#+3
        BEQ.N    ??SpeedCtrol_8
        CMP      R0,#+103
        BEQ.N    ??SpeedCtrol_9
        B.N      ??SpeedCtrol_10
//  138   {					   
//  139   case 0://直
//  140     SpeedPid = StraightSpeed;
??SpeedCtrol_5:
        LDR.W    R0,??DataTable4_6
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable4_2
        STR      R0,[R1, #+0]
//  141     MotorUpdatePWM(0,MotorPidCal(StraightSpeed));
        LDR.W    R0,??DataTable4_6
        LDRB     R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       MotorPidCal
        MOVS     R1,R0
        MOVS     R0,#+0
        BL       MotorUpdatePWM
//  142     if(AllStraightCount > 10 && AllSmallSCount > 20)
        LDR.W    R0,??DataTable4_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+11
        BLT.N    ??SpeedCtrol_11
        LDR.W    R0,??DataTable4_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+21
        BLT.N    ??SpeedCtrol_11
//  143     {
//  144       HighSpeedFlag = 1;	
        MOVS     R0,#+1
        LDR.W    R1,??DataTable4_9
        STR      R0,[R1, #+0]
//  145     }
//  146     break;
??SpeedCtrol_11:
        B.N      ??SpeedCtrol_12
//  147   case 1://s
//  148     SpeedPid = SmallSSpeed;
??SpeedCtrol_6:
        LDR.W    R0,??DataTable4_10
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable4_2
        STR      R0,[R1, #+0]
//  149     MotorUpdatePWM(0,SmallSSpeed);
        LDR.W    R0,??DataTable4_10
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+0
        BL       MotorUpdatePWM
//  150     //			if(AllSmallSCount > 35)
//  151     //			{	
//  152     //				HighSpeedFlag = 1;
//  153     //			}	
//  154     break;
        B.N      ??SpeedCtrol_12
//  155   case 2://S
//  156     SpeedPid = BigSSpeed;
??SpeedCtrol_7:
        LDR.W    R0,??DataTable4_11
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable4_2
        STR      R0,[R1, #+0]
//  157     MotorUpdatePWM(0,BigSSpeed);
        LDR.W    R0,??DataTable4_11
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+0
        BL       MotorUpdatePWM
//  158     HighSpeedFlag = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_9
        STR      R0,[R1, #+0]
//  159     break;
        B.N      ??SpeedCtrol_12
//  160   case 3://急弯
//  161     SpeedPid = BendSpeed;
??SpeedCtrol_8:
        LDR.W    R0,??DataTable4_12
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable4_2
        STR      R0,[R1, #+0]
//  162     MotorUpdatePWM(0,BendSpeed);
        LDR.W    R0,??DataTable4_12
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+0
        BL       MotorUpdatePWM
//  163     HighSpeedFlag = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_9
        STR      R0,[R1, #+0]
//  164     break;
        B.N      ??SpeedCtrol_12
//  165   case 103:
//  166     SpeedPid = StraightToBendSpeed;
??SpeedCtrol_9:
        LDR.W    R0,??DataTable4_13
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable4_2
        STR      R0,[R1, #+0]
//  167     MotorUpdatePWM(0,StraightToBendSpeed);
        LDR.W    R0,??DataTable4_13
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+0
        BL       MotorUpdatePWM
//  168     HighSpeedFlag = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_9
        STR      R0,[R1, #+0]
//  169     break;
        B.N      ??SpeedCtrol_12
//  170   default:
//  171     SpeedPid = CommonSpeed;
??SpeedCtrol_10:
        LDR.W    R0,??DataTable4_14
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable4_2
        STR      R0,[R1, #+0]
//  172     MotorUpdatePWM(0,CommonSpeed);
        LDR.W    R0,??DataTable4_14
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+0
        BL       MotorUpdatePWM
//  173     HighSpeedFlag = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_9
        STR      R0,[R1, #+0]
//  174     break;
//  175   }
//  176   if(HighSpeedFlag == 1 && CanSpeedUp)
??SpeedCtrol_12:
        LDR.W    R0,??DataTable4_9
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??SpeedCtrol_13
        LDR.W    R0,??DataTable4_15
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??SpeedCtrol_13
//  177   {
//  178     if(AllStraightCount > 15 && AllSmallSCount > 27)
        LDR.W    R0,??DataTable4_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+16
        BLT.N    ??SpeedCtrol_14
        LDR.W    R0,??DataTable4_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+28
        BLT.N    ??SpeedCtrol_14
//  179     {
//  180       SpeedPid = StraightSpeed + IncreaseSpeed1;	
        LDR.W    R0,??DataTable4_6
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable4_16
        LDRB     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable4_2
        STR      R0,[R1, #+0]
        B.N      ??SpeedCtrol_13
//  181     }
//  182     else if(AllStraightCount > 10 && AllSmallSCount > 25)
??SpeedCtrol_14:
        LDR.W    R0,??DataTable4_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+11
        BLT.N    ??SpeedCtrol_15
        LDR.W    R0,??DataTable4_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+26
        BLT.N    ??SpeedCtrol_15
//  183     {
//  184       SpeedPid = StraightSpeed + IncreaseSpeed2;	
        LDR.W    R0,??DataTable4_6
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable4_17
        LDRB     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable4_2
        STR      R0,[R1, #+0]
        B.N      ??SpeedCtrol_13
//  185     }
//  186     else if(AllStraightCount > 5 && AllSmallSCount > 23)
??SpeedCtrol_15:
        LDR.W    R0,??DataTable4_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+6
        BLT.N    ??SpeedCtrol_13
        LDR.W    R0,??DataTable4_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+24
        BLT.N    ??SpeedCtrol_13
//  187     {
//  188       SpeedPid = StraightSpeed + IncreaseSpeed3;	
        LDR.W    R0,??DataTable4_6
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable4_18
        LDRB     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable4_2
        STR      R0,[R1, #+0]
//  189     }
//  190   }	
//  191 }
??SpeedCtrol_13:
??SpeedCtrol_2:
        POP      {R0,PC}          ;; return
//  192 
//  193 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  194 int LineWeight[RowMax] = {0};
LineWeight:
        DS8 400

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  195 int zaw_mode_last=0;;
zaw_mode_last:
        DS8 4

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  196 int GetSteerError2(int start,int end,float midpos)
//  197 {
GetSteerError2:
        PUSH     {R3-R5,LR}
        MOVS     R4,R2
//  198   char i = 0;
        MOVS     R1,#+0
//  199   int  Black_Sum = 0;
        MOVS     R3,#+0
//  200   int weightSum = 0;
        MOVS     R2,#+0
//  201   int TemError = 0.0;
        MOVS     R0,#+0
//  202   
//  203   
//  204   
//  205   for(i = 0; i < RowMax-2; i++)    
        MOVS     R5,#+0
        MOVS     R1,R5
        B.N      ??GetSteerError2_0
//  206   {	
//  207     if(BlackLineData[i]>-ColumnMax&&BlackLineData[i]<2*ColumnMax &&BlackLineData[i] != 298)
??GetSteerError2_1:
        LDR.W    R0,??DataTable4_19
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[R0, R1, LSL #+2]
        ADDS     R0,R0,#+89
        CMP      R0,#+268
        BHI.N    ??GetSteerError2_2
        LDR.W    R0,??DataTable4_19
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[R0, R1, LSL #+2]
        CMP      R0,#+298
        BEQ.N    ??GetSteerError2_2
//  208     {  Black_Sum += BlackLineData[i]*LineWeight[i];
        LDR.W    R0,??DataTable4_19
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[R0, R1, LSL #+2]
        LDR.W    R5,??DataTable4_20
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R5,[R5, R1, LSL #+2]
        MLA      R3,R5,R0,R3
//  209     weightSum += LineWeight[i];}
        LDR.W    R0,??DataTable4_20
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[R0, R1, LSL #+2]
        ADDS     R2,R0,R2
//  210   }
??GetSteerError2_2:
        ADDS     R1,R1,#+1
??GetSteerError2_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+98
        BLT.N    ??GetSteerError2_1
//  211   
//  212   if(zaw_mode_last!=0&&zaw_mode==0){zaw_mode=zaw_mode_last;zaw_mode_last=0;}
        LDR.W    R0,??DataTable4_21
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??GetSteerError2_3
        LDR.W    R0,??DataTable4_22
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??GetSteerError2_3
        LDR.W    R0,??DataTable4_21
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_22
        STR      R0,[R1, #+0]
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_21
        STR      R0,[R1, #+0]
        B.N      ??GetSteerError2_4
//  213   else zaw_mode_last=zaw_mode;
??GetSteerError2_3:
        LDR.W    R0,??DataTable4_22
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_21
        STR      R0,[R1, #+0]
//  214   
//  215   TemError =(int)( Black_Sum/weightSum - (midpos+zaw_mode));
??GetSteerError2_4:
        SDIV     R0,R3,R2
        BL       __aeabi_i2f
        MOVS     R5,R0
        LDR.W    R0,??DataTable4_22
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       __aeabi_fadd
        MOVS     R1,R0
        MOVS     R0,R5
        BL       __aeabi_fsub
        BL       __aeabi_f2iz
//  216   
//  217   //	if(TemError > 40.0)
//  218   //	{
//  219   //		TemError = 40.0;
//  220   //	}
//  221   //	if(TemError < -40.0)
//  222   //	{
//  223   //		TemError = -40.0;	
//  224   //	}
//  225   
//  226   return TemError;
        POP      {R1,R4,R5,PC}    ;; return
//  227 }
//  228 //获取中心线偏差

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  229 float GetSteerError(unsigned char start,unsigned char end,float midpos)
//  230 {
GetSteerError:
        PUSH     {R3-R7,LR}
        MOVS     R3,R0
        MOVS     R6,R2
//  231   unsigned char i=0;
        MOVS     R4,#+0
//  232   unsigned char iCount=0;
        MOVS     R7,#+0
//  233   unsigned int  Black_Sum=0;
        MOVS     R2,#+0
//  234   float TemError = 0.0;
        MOVS     R0,#+0
//  235   for(i = start,iCount = 0; i < end; i++,iCount++)    
        MOVS     R4,R3
        MOVS     R3,#+0
        MOVS     R7,R3
        B.N      ??GetSteerError_0
//  236   {	
//  237     Black_Sum += BlackLineData[i];
??GetSteerError_1:
        LDR.W    R0,??DataTable4_19
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        ADDS     R2,R0,R2
//  238   }
        ADDS     R4,R4,#+1
        ADDS     R7,R7,#+1
??GetSteerError_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R4,R1
        BCC.N    ??GetSteerError_1
//  239   TemError = 	Black_Sum*1.0/iCount - midpos;
        MOVS     R0,R2
        BL       __aeabi_ui2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable4_23  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R0,R7
        BL       __aeabi_ui2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R6
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_dsub
        BL       __aeabi_d2f
//  240   return TemError;
        POP      {R1,R4-R7,PC}    ;; return
//  241   
//  242 }
//  243 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  244 int CrossingBegin = 0;
CrossingBegin:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  245 int CrossingCount = 0;
CrossingCount:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  246 int hx_direct=0,hx_over=0;
hx_direct:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
hx_over:
        DS8 4
//  247 //舵机方向控制

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  248 void DirectionCtrol()//方向控制
//  249 {
DirectionCtrol:
        PUSH     {R3-R7,LR}
//  250   int StartPos = RowMax - 15;
        MOVS     R4,#+85
//  251   int EndPos = RowMax-1;
        MOVS     R5,#+99
//  252   //int MidPos_ha;
//  253   // MidPos_ha=(int)MidPos_h; 
//  254   //MidPos = (BlackLineData[MidPos_ha] +(ColumnMax-RightBlack[MidPos_ha]- LeftBlack[MidPos_ha])/2)+4;
//  255  // MidPos =44;
//  256   //  if (IsCrossing &&g_Derict==1) MidPos +=15;else if (IsCrossing &&g_Derict==2) MidPos -=15;
//  257   int i = 0;
        MOVS     R2,#+0
//  258   // int CtrlWeight = FarWeight;//控制量
//  259   float temK =1.0;
        MOVS     R6,#+1065353216
//  260   //   if(IsCrossing){int MidPos = BlackLineData[RowMax-1] - LeftBlack[RowMax-1]*1.0/2 + (ColumnMax-RightBlack[RowMax-1])*1.0/2;}
//  261   
//  262   
//  263   
//  264   //if(StableNumbers > 5)
//  265   //	{caidan=1;
//  266   //      //  g_Derict
//  267   //		if(MidLineExcursion > 0)
//  268   //		{ 
//  269   //			SteerUpdatePWM(0,SteerPidCal(MidLineExcursion*1));
//  270   //                        //SteerUpdatePWM(0,50);
//  271   //		}
//  272   //		else if(MidLineExcursion < 0)
//  273   //		{if(MidLineExcursion<0){SteerUpdatePWM(0,SteerPidCal(MidLineExcursion*1));}
//  274   //                 
//  275   //			;
//  276   //                       // SteerUpdatePWM(0,50);
//  277   //		}
//  278   //		
//  279   //	}
//  280   
//  281   
//  282   Error=0.0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_24
        STR      R0,[R1, #+0]
//  283   
//  284   switch(RoadType)
        LDR.W    R0,??DataTable4_5
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??DirectionCtrol_0
        CMP      R0,#+1
        BEQ.N    ??DirectionCtrol_1
        CMP      R0,#+2
        BEQ.N    ??DirectionCtrol_2
        CMP      R0,#+3
        BEQ.W    ??DirectionCtrol_3
        CMP      R0,#+103
        BEQ.W    ??DirectionCtrol_4
        B.N      ??DirectionCtrol_5
//  285   {					   
//  286   case 0://直
//  287     Foresight = StraightFS;//Foresight--摄像头采集的远方特征
??DirectionCtrol_0:
        LDR.W    R0,??DataTable4_25
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_26
        STR      R0,[R1, #+0]
//  288     if(Foresight > StableNumbers-2)Foresight=StableNumbers-1;
        LDR.W    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+2
        LDR.W    R1,??DataTable4_26
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??DirectionCtrol_6
        LDR.W    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable4_26
        STR      R0,[R1, #+0]
//  289     k = StraightK;
??DirectionCtrol_6:
        LDR.W    R0,??DataTable4_27
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_28
        STR      R0,[R1, #+0]
//  290     StartPos = RowMax - Foresight;//+1
        LDR.W    R0,??DataTable4_26
        LDR      R0,[R0, #+0]
        RSBS     R4,R0,#+100
//  291     EndPos = StraightEnd; //-0
        LDR.W    R0,??DataTable4_29
        LDRB     R5,[R0, #+0]
//  292     
//  293     
//  294     LastRoadType = RoadType;//
        LDR.W    R0,??DataTable4_5
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable4_30
        STRB     R0,[R1, #+0]
//  295     break;
        B.N      ??DirectionCtrol_7
//  296   case 1://小s
//  297     Foresight = SmallSFS;
??DirectionCtrol_1:
        LDR.W    R0,??DataTable4_31
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_26
        STR      R0,[R1, #+0]
//  298     k = SmallSK;
        LDR.W    R0,??DataTable4_32
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_28
        STR      R0,[R1, #+0]
//  299     if(Foresight > StableNumbers-2)Foresight=StableNumbers-1;
        LDR.W    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+2
        LDR.W    R1,??DataTable4_26
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??DirectionCtrol_8
        LDR.W    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable4_26
        STR      R0,[R1, #+0]
//  300     StartPos = RowMax - Foresight;
??DirectionCtrol_8:
        LDR.W    R0,??DataTable4_26
        LDR      R0,[R0, #+0]
        RSBS     R4,R0,#+100
//  301     EndPos = SmallSEnd;
        LDR.W    R0,??DataTable4_33
        LDRB     R5,[R0, #+0]
//  302     
//  303     
//  304     
//  305     LastRoadType=RoadType;//	
        LDR.W    R0,??DataTable4_5
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable4_30
        STRB     R0,[R1, #+0]
//  306     break;
        B.N      ??DirectionCtrol_7
//  307   case 2://大S
//  308     Foresight = BigFS;
??DirectionCtrol_2:
        LDR.W    R0,??DataTable4_34
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_26
        STR      R0,[R1, #+0]
//  309     if(Foresight > StableNumbers-2)Foresight=StableNumbers-1;
        LDR.W    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+2
        LDR.W    R1,??DataTable4_26
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??DirectionCtrol_9
        LDR.W    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable4_26
        STR      R0,[R1, #+0]
//  310     k = BigSK;
??DirectionCtrol_9:
        LDR.W    R0,??DataTable4_35
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_28
        STR      R0,[R1, #+0]
//  311     
//  312     //			if(StableNumbers < 30 && CanSpeedUp)
//  313     //			{
//  314     //				k += 0.3;	
//  315     //			}
//  316     StartPos = RowMax - Foresight;
        LDR.W    R0,??DataTable4_26
        LDR      R0,[R0, #+0]
        RSBS     R4,R0,#+100
//  317     EndPos = BigSEnd;
        LDR.W    R0,??DataTable4_36
        LDRB     R5,[R0, #+0]
//  318     
//  319     //			switch(LastRoadType)
//  320     //			{
//  321     //				case 0:
//  322     //					k = k + 0.5;
//  323     //					break;
//  324     //				case 1:
//  325     ////					Foresight = SmallSFS;
//  326     ////					if(Foresight > StableNumbers+CompensateCount-11)Foresight=StableNumbers+CompensateCount-11;
//  327     ////					
//  328     //					k = SmallSFS + 0.3;
//  329     //					break;
//  330     //				default:
//  331     //					break;
//  332     //			}
//  333     LastRoadType=RoadType;//
        LDR.W    R0,??DataTable4_5
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable4_30
        STRB     R0,[R1, #+0]
//  334     break;
        B.N      ??DirectionCtrol_7
//  335   case 3://急弯
//  336     Foresight = BendFS;//17
??DirectionCtrol_3:
        LDR.W    R0,??DataTable4_37
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_26
        STR      R0,[R1, #+0]
//  337     if(Foresight > StableNumbers-2)Foresight=StableNumbers-1;
        LDR.W    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+2
        LDR.W    R1,??DataTable4_26
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??DirectionCtrol_10
        LDR.W    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable4_26
        STR      R0,[R1, #+0]
//  338     k = BendK;
??DirectionCtrol_10:
        LDR.W    R0,??DataTable4_38
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_28
        STR      R0,[R1, #+0]
//  339     //MidPos-=15;
//  340     //			if(StableNumbers < 30 && CanSpeedUp )
//  341     //			{
//  342     //				k += 0.4;	
//  343     //			}
//  344     StartPos = RowMax - Foresight;
        LDR.W    R0,??DataTable4_26
        LDR      R0,[R0, #+0]
        RSBS     R4,R0,#+100
//  345     EndPos = BendEnd;
        LDR.W    R0,??DataTable4_39
        LDRB     R5,[R0, #+0]
//  346     
//  347     LastRoadType=RoadType;//			 
        LDR.W    R0,??DataTable4_5
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable4_30
        STRB     R0,[R1, #+0]
//  348     break;
        B.N      ??DirectionCtrol_7
//  349   case 103:
//  350     Foresight = StraightToBendFS;
??DirectionCtrol_4:
        LDR.W    R0,??DataTable4_40
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_26
        STR      R0,[R1, #+0]
//  351     if(Foresight > StableNumbers-1)Foresight=StableNumbers-1;
        LDR.W    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable4_26
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??DirectionCtrol_11
        LDR.W    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable4_26
        STR      R0,[R1, #+0]
//  352     StartPos = RowMax - Foresight+1;
??DirectionCtrol_11:
        LDR.W    R0,??DataTable4_26
        LDR      R0,[R0, #+0]
        RSBS     R4,R0,#+101
//  353     EndPos = StraightToBenEnd;
        LDR.W    R0,??DataTable4_41
        LDRB     R5,[R0, #+0]
//  354     LastRoadType = 103;
        MOVS     R0,#+103
        LDR.W    R1,??DataTable4_30
        STRB     R0,[R1, #+0]
//  355     
//  356     k = StraightToBendK;
        LDR.W    R0,??DataTable4_42
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_28
        STR      R0,[R1, #+0]
//  357     break;
        B.N      ??DirectionCtrol_7
//  358   default:
//  359     k = CommonK;
??DirectionCtrol_5:
        LDR.W    R0,??DataTable4_43
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable4_28
        STR      R0,[R1, #+0]
//  360     Foresight = StableNumbers-2;;
        LDR.W    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+2
        LDR.W    R1,??DataTable4_26
        STR      R0,[R1, #+0]
//  361     StartPos = RowMax - Foresight;
        LDR.W    R0,??DataTable4_26
        LDR      R0,[R0, #+0]
        RSBS     R4,R0,#+100
//  362     EndPos = CommonEnd;
        LDR.W    R0,??DataTable4_44
        LDRB     R5,[R0, #+0]
//  363     
//  364     break;
//  365   }
//  366   //if(IsCrossing)  {k = 1.5;}
//  367   //if(IsCrossing && MidPos>35)  {   MidPos -= 20; }
//  368   
//  369   
//  370   
//  371   if (StableNumbers>60&&0)
//  372     {
//  373       
//  374       
//  375       int qz_a,qz_b,qz_c;
//  376       qz_a=(RowMax - (StableNumbers)*3/4);
//  377       qz_b=(RowMax - (StableNumbers)/2);
//  378       qz_c=(RowMax - (StableNumbers)/4);
//  379       
//  380       for (i = RowMax-1;i > 0;i--)
//  381       {
//  382         if (i > RowMax - (StableNumbers-1))
//  383         {
//  384           if (i >= StartPos && i <=qz_c)
//  385           {
//  386             
//  387             LineWeight[i]=0;
//  388             
//  389           }
//  390           else if (i > qz_a && i <= qz_b)
//  391           {
//  392             
//  393             
//  394             LineWeight[i]=25;
//  395             
//  396           }
//  397           else if (i > qz_b && i <= qz_a)
//  398           {
//  399             
//  400             LineWeight[i]=20;	
//  401             
//  402           }
//  403           else   if (i > qz_a&& i <= EndPos)
//  404           {
//  405             
//  406             
//  407             LineWeight[i]=15        ;
//  408             
//  409           }
//  410           
//  411           else
//  412           {
//  413             LineWeight[i]=0;
//  414           }
//  415         }
//  416         else
//  417         {
//  418           LineWeight[i]=0;
//  419         }
//  420       }
//  421       
//  422     }
//  423   else if (1)
//  424   {
//  425     
//  426     
//  427     int qz_a,qz_b,qz_c;
//  428     qz_a=(RowMax - (StableNumbers-1)*3/4);
??DirectionCtrol_7:
        LDR.N    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        MOVS     R1,#+3
        MULS     R0,R1,R0
        MOVS     R1,#+4
        SDIV     R0,R0,R1
        RSBS     R0,R0,#+100
//  429     qz_b=(RowMax - (StableNumbers-1)/2);
        LDR.N    R1,??DataTable4_3
        LDR      R1,[R1, #+0]
        SUBS     R1,R1,#+1
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        RSBS     R1,R1,#+100
//  430     qz_c=(RowMax - (StableNumbers-1)/4);
        LDR.N    R2,??DataTable4_3
        LDR      R2,[R2, #+0]
        SUBS     R2,R2,#+1
        MOVS     R3,#+4
        SDIV     R2,R2,R3
        RSBS     R3,R2,#+100
//  431     
//  432     for (i = RowMax-1;i > 0;i--)
        MOVS     R2,#+99
        B.N      ??DirectionCtrol_12
//  433     {
//  434       if (i > RowMax - (StableNumbers-1))
//  435       {
//  436         if (i >= StartPos && i <=qz_c)
//  437         {
//  438           
//  439           LineWeight[i]=50;
//  440           
//  441         }
//  442         else if (i > qz_a && i <= qz_b)
//  443         {
//  444           
//  445           
//  446           LineWeight[i]=25;
//  447           
//  448         }
//  449         else if (i > qz_b && i <= qz_a)
//  450         {
//  451           
//  452           LineWeight[i]=20;	
//  453           
//  454         }
//  455         else   if (i > qz_a&& i <= EndPos)
//  456         {
//  457           
//  458           
//  459           LineWeight[i]=60;
//  460           
//  461         }
//  462         
//  463         else
//  464         {
//  465           LineWeight[i]=0;
//  466         }
//  467       }
//  468       else
//  469       {
//  470         LineWeight[i]=0;
??DirectionCtrol_13:
        MOVS     R6,#+0
        LDR.N    R7,??DataTable4_20
        STR      R6,[R7, R2, LSL #+2]
//  471       }
??DirectionCtrol_14:
        SUBS     R2,R2,#+1
??DirectionCtrol_12:
        CMP      R2,#+1
        BLT.N    ??DirectionCtrol_15
        LDR.N    R6,??DataTable4_3
        LDR      R6,[R6, #+0]
        RSBS     R6,R6,#+100
        ADDS     R6,R6,#+1
        CMP      R6,R2
        BGE.N    ??DirectionCtrol_13
        CMP      R2,R4
        BLT.N    ??DirectionCtrol_16
        CMP      R3,R2
        BLT.N    ??DirectionCtrol_16
        MOVS     R6,#+50
        LDR.N    R7,??DataTable4_20
        STR      R6,[R7, R2, LSL #+2]
        B.N      ??DirectionCtrol_14
??DirectionCtrol_16:
        CMP      R0,R2
        BGE.N    ??DirectionCtrol_17
        CMP      R1,R2
        BLT.N    ??DirectionCtrol_17
        MOVS     R6,#+25
        LDR.N    R7,??DataTable4_20
        STR      R6,[R7, R2, LSL #+2]
        B.N      ??DirectionCtrol_14
??DirectionCtrol_17:
        CMP      R1,R2
        BGE.N    ??DirectionCtrol_18
        CMP      R0,R2
        BLT.N    ??DirectionCtrol_18
        MOVS     R6,#+20
        LDR.N    R7,??DataTable4_20
        STR      R6,[R7, R2, LSL #+2]
        B.N      ??DirectionCtrol_14
??DirectionCtrol_18:
        CMP      R0,R2
        BGE.N    ??DirectionCtrol_19
        CMP      R5,R2
        BLT.N    ??DirectionCtrol_19
        MOVS     R6,#+60
        LDR.N    R7,??DataTable4_20
        STR      R6,[R7, R2, LSL #+2]
        B.N      ??DirectionCtrol_14
??DirectionCtrol_19:
        MOVS     R6,#+0
        LDR.N    R7,??DataTable4_20
        STR      R6,[R7, R2, LSL #+2]
        B.N      ??DirectionCtrol_14
//  472     }
//  473     
//  474   }
//  475   //  
//  476   //  if(hx_i<2)
//  477   //  {hx_direct=0;
//  478   //    hx_over=0;
//  479   //    if(mode1>mode2)//左转
//  480   //    {
//  481   //    hx_direct=-1;
//  482   //    
//  483   //    }
//  484   //    else if (mode1<mode2) //右转
//  485   //    {
//  486   //    hx_direct=1;
//  487   //    
//  488   //    }
//  489   //  
//  490   //  
//  491   //  
//  492   //  }
//  493   
//  494   //    if(hx_i<2&&mode4<10) {hx=0;hx_i=10000;}
//  495   
//  496   //  if(hx&&mode4>20) {StableNumbers=mode4-8;k=0.6;}
//  497   Error = GetSteerError2(StartPos,EndPos,MidPos);
??DirectionCtrol_15:
        LDR.N    R0,??DataTable4_45
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,R5
        MOVS     R0,R4
        BL       GetSteerError2
        LDR.N    R1,??DataTable4_24
        STR      R0,[R1, #+0]
//  498   Errora=Error;
        LDR.N    R0,??DataTable4_24
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_46
        STR      R0,[R1, #+0]
//  499   int StableNumbers_max;
//  500  if(hx) StableNumbers_max=StableNumbers;
        LDR.N    R0,??DataTable4_47
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??DirectionCtrol_20
        LDR.N    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        B.N      ??DirectionCtrol_21
//  501  else StableNumbers_max=BlackEndMax;
??DirectionCtrol_20:
        LDR.N    R0,??DataTable4_48
        LDR      R0,[R0, #+0]
//  502  // if(mid_line_count<4)StableNumbers_max=MAX(StableNumbers_max,BlackEndMax);
//  503   //StableNumbers_max=MAX(StableNumbers_max,BlackEndR);
//  504   
//  505   
//  506   //  if(StableNumbers_max >= 75)
//  507   //	{
//  508   //		temK = 1.0;
//  509   //	}
//  510   //	else if(StableNumbers_max >= 50)
//  511   //	{
//  512   //		temK = 1.4;
//  513   //	}
//  514   //	else if(StableNumbers_max >= 40)
//  515   //	{
//  516   //		temK = 1.6;	
//  517   //	}
//  518   //        else if(StableNumbers_max >= 30)
//  519   //	{
//  520   //		temK = 1.8;	
//  521   //	}
//  522   //        else if(StableNumbers_max >= 20)
//  523   //	{
//  524   //		temK = 2;	
//  525   //	}
//  526   //        else 
//  527   //	{
//  528   //		temK = 2.5;	
//  529   //	}
//  530   if(Error<0)
??DirectionCtrol_21:
        LDR.N    R1,??DataTable4_24
        LDR      R1,[R1, #+0]
        CMP      R1,#+0
        BPL.N    ??DirectionCtrol_22
//  531   {
//  532     if(StableNumbers_max > RowMax*0.95)
        CMP      R0,#+96
        BLT.N    ??DirectionCtrol_23
//  533     {
//  534       temK = 1.1;
        LDR.N    R6,??DataTable4_49  ;; 0x3f8ccccd
        B.N      ??DirectionCtrol_24
//  535     }
//  536     else if(StableNumbers_max >= RowMax*0.80)
??DirectionCtrol_23:
        CMP      R0,#+80
        BLT.N    ??DirectionCtrol_25
//  537     {
//  538       temK = 1.1;
        LDR.N    R6,??DataTable4_49  ;; 0x3f8ccccd
        B.N      ??DirectionCtrol_24
//  539     }
//  540     else if(StableNumbers_max >= RowMax*0.70)
??DirectionCtrol_25:
        CMP      R0,#+70
        BLT.N    ??DirectionCtrol_26
//  541     {
//  542       temK = 1.4;
        LDR.N    R6,??DataTable4_50  ;; 0x3fb33333
        B.N      ??DirectionCtrol_24
//  543     }
//  544     else if(StableNumbers_max >= RowMax*0.60)
??DirectionCtrol_26:
        CMP      R0,#+60
        BLT.N    ??DirectionCtrol_27
//  545     {
//  546       temK = 1.8;
        LDR.N    R6,??DataTable4_51  ;; 0x3fe66666
        B.N      ??DirectionCtrol_24
//  547     }
//  548     else if(StableNumbers_max >= RowMax*0.50)
??DirectionCtrol_27:
        CMP      R0,#+50
        BLT.N    ??DirectionCtrol_28
//  549     {
//  550       temK = 2.2;
        LDR.N    R6,??DataTable4_52  ;; 0x400ccccd
        B.N      ??DirectionCtrol_24
//  551     }
//  552     else if(StableNumbers_max >= RowMax*0.40)
??DirectionCtrol_28:
        CMP      R0,#+40
        BLT.N    ??DirectionCtrol_29
//  553     {
//  554       temK =2.5;	
        LDR.N    R6,??DataTable4_53  ;; 0x40200000
        B.N      ??DirectionCtrol_24
//  555     }
//  556     else if(StableNumbers_max >= RowMax*0.30)
??DirectionCtrol_29:
        CMP      R0,#+30
        BLT.N    ??DirectionCtrol_30
//  557     {
//  558       temK = 2.9;	
        LDR.N    R6,??DataTable4_54  ;; 0x4039999a
        B.N      ??DirectionCtrol_24
//  559     }
//  560     else if(StableNumbers_max >= RowMax*0.20)
??DirectionCtrol_30:
        CMP      R0,#+20
        BLT.N    ??DirectionCtrol_31
//  561     {
//  562       temK = 3.3;	
        LDR.N    R6,??DataTable4_55  ;; 0x40533333
        B.N      ??DirectionCtrol_24
//  563     }
//  564     else 
//  565     {
//  566       temK = 3.3;	
??DirectionCtrol_31:
        LDR.N    R6,??DataTable4_55  ;; 0x40533333
//  567     }
//  568    
//  569 //if(StableNumbers_max<=RowMax*0.7) 
//  570   temK*=1.1; 
??DirectionCtrol_24:
        MOVS     R0,R6
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable4_56  ;; 0x9999999a
        LDR.N    R3,??DataTable4_57  ;; 0x3ff19999
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        MOVS     R6,R0
        B.N      ??DirectionCtrol_32
//  571   }
//  572   else
//  573   {
//  574         if(StableNumbers_max > RowMax*0.95)
??DirectionCtrol_22:
        CMP      R0,#+96
        BLT.N    ??DirectionCtrol_33
//  575     {
//  576       temK =1.1;
        LDR.N    R6,??DataTable4_49  ;; 0x3f8ccccd
        B.N      ??DirectionCtrol_34
//  577     }
//  578     else if(StableNumbers_max >= RowMax*0.80)
??DirectionCtrol_33:
        CMP      R0,#+80
        BLT.N    ??DirectionCtrol_35
//  579     {
//  580       temK = 1.1;
        LDR.N    R6,??DataTable4_49  ;; 0x3f8ccccd
        B.N      ??DirectionCtrol_34
//  581     }
//  582     else if(StableNumbers_max >= RowMax*0.70)
??DirectionCtrol_35:
        CMP      R0,#+70
        BLT.N    ??DirectionCtrol_36
//  583     {
//  584       temK = 1.4;
        LDR.N    R6,??DataTable4_50  ;; 0x3fb33333
        B.N      ??DirectionCtrol_34
//  585     }
//  586     else if(StableNumbers_max >= RowMax*0.60)
??DirectionCtrol_36:
        CMP      R0,#+60
        BLT.N    ??DirectionCtrol_37
//  587     {
//  588       temK = 1.8;
        LDR.N    R6,??DataTable4_51  ;; 0x3fe66666
        B.N      ??DirectionCtrol_34
//  589     }
//  590     else if(StableNumbers_max >= RowMax*0.50)
??DirectionCtrol_37:
        CMP      R0,#+50
        BLT.N    ??DirectionCtrol_38
//  591     {
//  592       temK = 2.2;
        LDR.N    R6,??DataTable4_52  ;; 0x400ccccd
        B.N      ??DirectionCtrol_34
//  593     }
//  594     else if(StableNumbers_max >= RowMax*0.40)
??DirectionCtrol_38:
        CMP      R0,#+40
        BLT.N    ??DirectionCtrol_39
//  595     {
//  596       temK =2.5;	
        LDR.N    R6,??DataTable4_53  ;; 0x40200000
        B.N      ??DirectionCtrol_34
//  597     }
//  598     else if(StableNumbers_max >= RowMax*0.30)
??DirectionCtrol_39:
        CMP      R0,#+30
        BLT.N    ??DirectionCtrol_40
//  599     {
//  600       temK =2.9;	
        LDR.N    R6,??DataTable4_54  ;; 0x4039999a
        B.N      ??DirectionCtrol_34
//  601     }
//  602     else if(StableNumbers_max >= RowMax*0.20)
??DirectionCtrol_40:
        CMP      R0,#+20
        BLT.N    ??DirectionCtrol_41
//  603     {
//  604       temK = 3.3;	
        LDR.N    R6,??DataTable4_55  ;; 0x40533333
        B.N      ??DirectionCtrol_34
//  605     }
//  606     else 
//  607     {
//  608       temK = 3.3;	
??DirectionCtrol_41:
        LDR.N    R6,??DataTable4_55  ;; 0x40533333
//  609     }
//  610  temK*=0.95;   
??DirectionCtrol_34:
        MOVS     R0,R6
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.N    R3,??DataTable4_58  ;; 0x3fee6666
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        MOVS     R6,R0
//  611 if(PTB21_I) temK*=0.9; 
        LDR.N    R0,??DataTable4_59  ;; 0x43fe0a54
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??DirectionCtrol_32
        MOVS     R0,R6
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable4_60  ;; 0xcccccccd
        LDR.N    R3,??DataTable4_61  ;; 0x3feccccc
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        MOVS     R6,R0
//  612   }
//  613  // temK=1;
//  614   if(duojizkb0)MidPos=(int)duojizkb;
??DirectionCtrol_32:
        LDR.N    R0,??DataTable4_62
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        BL       __aeabi_cfcmpeq
        BEQ.N    ??DirectionCtrol_42
        LDR.N    R0,??DataTable4_63
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable4_45
        STR      R0,[R1, #+0]
//  615   duojizkb1=MidPos;        
??DirectionCtrol_42:
        LDR.N    R0,??DataTable4_45
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable4_64
        STR      R0,[R1, #+0]
//  616   Error = (int)(Error*temK*k*Setk);
        LDR.N    R0,??DataTable4_24
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R6
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable4_28
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable4_65
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable4_24
        STR      R0,[R1, #+0]
//  617   if(hx)Error *=1.3; 
        LDR.N    R0,??DataTable4_47
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??DirectionCtrol_43
        LDR.N    R0,??DataTable4_24
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        LDR.N    R2,??DataTable4_60  ;; 0xcccccccd
        LDR.N    R3,??DataTable4_66  ;; 0x3ff4cccc
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable4_24
        STR      R0,[R1, #+0]
//  618 // if(midline_fcount_max>4&&fabss(Error)>10)Error *=1.3;
//  619   //if(mid_line_count>3&&Error<-20)Error *=1.5;
//  620  //if(mid_line_count>3&&fabss(Error)>20&&StableNumbers<50)Error *=1.8;
//  621 //  if(mid_line_count>5&&Error>20)Error *=2;
//  622   //if(mode3>5&&sfminline_last) Error=LastError*10;
//  623   if(StableNumbers<4) Error=LastError;
??DirectionCtrol_43:
        LDR.N    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BGE.N    ??DirectionCtrol_44
        LDR.N    R0,??DataTable4_67
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_24
        STR      R0,[R1, #+0]
//  624   //        else if(Error<0&&mode4<8)Error *=2;
//  625   //Print6x8int(106,2,Error);//阈值显示
//  626   if(sfminline_last&&!sfminline&&fabss(Error-LastError)>20)Error=LastError;
??DirectionCtrol_44:
        LDR.N    R0,??DataTable4_68
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??DirectionCtrol_45
        LDR.N    R0,??DataTable4_69
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??DirectionCtrol_45
        LDR.N    R0,??DataTable4_24
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_67
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       `fabss`
        CMP      R0,#+21
        BLT.N    ??DirectionCtrol_45
        LDR.N    R0,??DataTable4_67
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_24
        STR      R0,[R1, #+0]
//  627   
//  628   interror=Error;
??DirectionCtrol_45:
        LDR.N    R0,??DataTable4_24
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_70
        STR      R0,[R1, #+0]
//  629   sfminline_last=sfminline;
        LDR.N    R0,??DataTable4_69
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_68
        STR      R0,[R1, #+0]
//  630   //舵机PD控制
//  631   //       if(g_Derict==0&&fabss(Error)>30) Error=0;
//  632   //      if(g_Derict==1&&Error>0) Error=0;     
//  633   //       if(g_Derict==2&&Error<0) Error=0;
//  634   SteerUpdatePWM(0,SteerPidCal(Error));
        LDR.N    R0,??DataTable4_24
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2f
        BL       SteerPidCal
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       __aeabi_ui2f
        MOVS     R1,R0
        MOVS     R0,#+0
        BL       SteerUpdatePWM
//  635   LastError = Error;	
        LDR.N    R0,??DataTable4_24
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_67
        STR      R0,[R1, #+0]
//  636   //duoji=SteerPidCal(Error);
//  637   
//  638   }	 
        POP      {R0,R4-R7,PC}    ;; return
//  639   
//  640   //翻转刹车

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  641   int StopCarCount=0;
StopCarCount:
        DS8 4

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  642   void StopCar(int stopspeed,int count)
//  643   {	  
StopCar:
        PUSH     {R4,LR}
        MOVS     R4,R1
//  644     if(MotorSpeed>10)
        LDR.N    R1,??DataTable4_71
        LDRB     R1,[R1, #+0]
        CMP      R1,#+11
        BLT.N    ??StopCar_0
//  645     {
//  646       StopCarCount++;
        LDR.N    R1,??DataTable4_72
        LDR      R1,[R1, #+0]
        ADDS     R1,R1,#+1
        LDR.N    R2,??DataTable4_72
        STR      R1,[R2, #+0]
//  647       if(StopCarCount > count)
        LDR.N    R1,??DataTable4_72
        LDR      R1,[R1, #+0]
        CMP      R4,R1
        BGE.N    ??StopCar_1
//  648       {
//  649         MotorUpdatePWM(0,0);
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       MotorUpdatePWM
//  650         StopCarCount =count;	
        LDR.N    R0,??DataTable4_72
        STR      R4,[R0, #+0]
        B.N      ??StopCar_2
//  651       }
//  652       else
//  653         MotorUpdatePWM(0,stopspeed);	
??StopCar_1:
        MOVS     R1,R0
        MOVS     R0,#+0
        BL       MotorUpdatePWM
        B.N      ??StopCar_2
//  654     }
//  655     else
//  656       MotorUpdatePWM(0,0);
??StopCar_0:
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       MotorUpdatePWM
//  657     
//  658   }
??StopCar_2:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     IsStartLine

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     IsOutRoad

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     SpeedPid

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     StableNumbers

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     IsCrossing

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     RoadType

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     StraightSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     AllStraightCount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     AllSmallSCount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     HighSpeedFlag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     SmallSSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     BigSSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     BendSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DC32     StraightToBendSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_14:
        DC32     CommonSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_15:
        DC32     CanSpeedUp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_16:
        DC32     IncreaseSpeed1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_17:
        DC32     IncreaseSpeed2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_18:
        DC32     IncreaseSpeed3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_19:
        DC32     BlackLineData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_20:
        DC32     LineWeight

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_21:
        DC32     zaw_mode_last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_22:
        DC32     zaw_mode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_23:
        DC32     0x3ff00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_24:
        DC32     Error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_25:
        DC32     StraightFS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_26:
        DC32     Foresight

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_27:
        DC32     StraightK

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_28:
        DC32     k

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_29:
        DC32     StraightEnd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_30:
        DC32     LastRoadType

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_31:
        DC32     SmallSFS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_32:
        DC32     SmallSK

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_33:
        DC32     SmallSEnd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_34:
        DC32     BigFS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_35:
        DC32     BigSK

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_36:
        DC32     BigSEnd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_37:
        DC32     BendFS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_38:
        DC32     BendK

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_39:
        DC32     BendEnd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_40:
        DC32     StraightToBendFS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_41:
        DC32     StraightToBenEnd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_42:
        DC32     StraightToBendK

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_43:
        DC32     CommonK

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_44:
        DC32     CommonEnd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_45:
        DC32     MidPos

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_46:
        DC32     Errora

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_47:
        DC32     hx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_48:
        DC32     BlackEndMax

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_49:
        DC32     0x3f8ccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_50:
        DC32     0x3fb33333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_51:
        DC32     0x3fe66666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_52:
        DC32     0x400ccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_53:
        DC32     0x40200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_54:
        DC32     0x4039999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_55:
        DC32     0x40533333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_56:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_57:
        DC32     0x3ff19999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_58:
        DC32     0x3fee6666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_59:
        DC32     0x43fe0a54

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_60:
        DC32     0xcccccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_61:
        DC32     0x3feccccc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_62:
        DC32     duojizkb0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_63:
        DC32     duojizkb

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_64:
        DC32     duojizkb1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_65:
        DC32     Setk

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_66:
        DC32     0x3ff4cccc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_67:
        DC32     LastError

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_68:
        DC32     sfminline_last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_69:
        DC32     sfminline

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_70:
        DC32     interror

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_71:
        DC32     MotorSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_72:
        DC32     StopCarCount

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
//   482 bytes in section .bss
//    81 bytes in section .data
// 2 280 bytes in section .text
// 
// 2 280 bytes of CODE memory
//   563 bytes of DATA memory
//
//Errors: none
//Warnings: none

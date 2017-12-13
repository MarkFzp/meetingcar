///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       28/Jul/2015  13:28:01
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-28-3.23封\app\IMAGE.c
//    Command line =  
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-28-3.23封\app\IMAGE.c
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
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-28-3.23封\iar\FLASH\List\IMAGE.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN AllSmallSCount
        EXTERN AllStraightCount
        EXTERN FloatToChar
        EXTERN ImageData
        EXTERN IsCrossing
        EXTERN IsStartLine
        EXTERN LPLD_UART_PutChar
        EXTERN LPLD_UART_PutCharArr
        EXTERN MidPos
        EXTERN ThresholdData
        EXTERN __aeabi_cdcmple
        EXTERN __aeabi_cfcmpeq
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2d
        EXTERN __aeabi_i2f
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_ui2d
        EXTERN fs
        EXTERN sa

        PUBLIC AllBendCount
        PUBLIC AllBigSCount
        PUBLIC AverageFilter
        PUBLIC BanMa_Derict
        PUBLIC BanMa_Left
        PUBLIC BanMa_Right
        PUBLIC BlackEndA
        PUBLIC BlackEndB
        PUBLIC BlackEndC
        PUBLIC BlackEndColumnMax
        PUBLIC BlackEndD
        PUBLIC BlackEndE
        PUBLIC BlackEndF
        PUBLIC BlackEndG
        PUBLIC BlackEndL
        PUBLIC BlackEndLMR
        PUBLIC BlackEndM
        PUBLIC BlackEndMax
        PUBLIC BlackEndR
        PUBLIC BlackLineData
        PUBLIC BlackRow
        PUBLIC BlackRow1
        PUBLIC CheckStartLine
        PUBLIC CommonRectificate
        PUBLIC CompensateCount
        PUBLIC CrossingMidFilter
        PUBLIC CrossingStable
        PUBLIC EPerCount
        PUBLIC ElementCount2
        PUBLIC EndType
        PUBLIC Endline
        PUBLIC Excursion
        PUBLIC FindHeixian
        PUBLIC FindMidLine_lastismidline
        PUBLIC FindMidLine_lastisnotmidline
        PUBLIC Find_Endline
        PUBLIC GetBlackEndParam
        PUBLIC GetBlackEndParam2
        PUBLIC GetCrossingMidLine
        PUBLIC GetEPerCount
        PUBLIC GetFinalMidLine
        PUBLIC GetImageParam
        PUBLIC GetLMR
        PUBLIC GetMidLineVariance
        PUBLIC GetSectionParam
        PUBLIC GetSpecialError
        PUBLIC Head2
        PUBLIC HistoryRTProccess
        PUBLIC HistoryRoadType
        PUBLIC HistoryRoadTypeCount
        PUBLIC ImageProcess
        PUBLIC IsStraightToBend
        PUBLIC LAverageFilter
        PUBLIC LCrossingTripPos
        PUBLIC LastRoadType
        PUBLIC LeftBlack
        PUBLIC LeftStableNumbers
        PUBLIC LeftWhite
        PUBLIC LineType
        PUBLIC MidLineCompensate
        PUBLIC MidLineExcursion
        PUBLIC MidLineProcess
        PUBLIC MidLineVariance
        PUBLIC Mid_K1
        PUBLIC Mid_K2
        PUBLIC NoValidLMax
        PUBLIC NoValidMax
        PUBLIC NoValidRMax
        PUBLIC P0_X
        PUBLIC P0_Y
        PUBLIC P1_X
        PUBLIC P1_Y
        PUBLIC P2_X
        PUBLIC P2_Y
        PUBLIC ProcessCrossing
        PUBLIC ProcessFlag
        PUBLIC RAverageFilter
        PUBLIC RCrossingTripPos
        PUBLIC RTRecognition
        PUBLIC Rear2
        PUBLIC Rectification
        PUBLIC RectificationMidLine
        PUBLIC RightBlack
        PUBLIC RightStableNumbers
        PUBLIC RightWhite
        PUBLIC RoadMode
        PUBLIC RoadType
        PUBLIC RoadTypeData2
        PUBLIC SCProcessing
        PUBLIC StableNumbers
        PUBLIC StableNumbers2
        PUBLIC StandardRoadType
        PUBLIC StaticThreshold
        PUBLIC StoreFlag
        PUBLIC StoreMidLine
        PUBLIC StraightToBendCount
        PUBLIC SubBasePoint
        PUBLIC SubBasePointLen
        PUBLIC SubValue
        PUBLIC TemMidLineData
        PUBLIC ThresholdValue
        PUBLIC TopE1
        PUBLIC TopE2
        PUBLIC TopLen1
        PUBLIC TopLen2
        PUBLIC TripPointPos
        PUBLIC UseStaticFlag
        PUBLIC UseTemMidLine
        PUBLIC ValidExcursionCount
        PUBLIC ValidLine
        PUBLIC ValidLineCount
        PUBLIC ValidLineCount1
        PUBLIC ValidLineCount2
        PUBLIC ValidLineL
        PUBLIC ValidLineR
        PUBLIC WhiteRow
        PUBLIC WhiteRow1
        PUBLIC bFoundTripPoint
        PUBLIC countMax
        PUBLIC endPos
        PUBLIC endline
        PUBLIC `fabss`
        PUBLIC firstline_l
        PUBLIC firstline_m
        PUBLIC firstline_r
        PUBLIC g_BasePos
        PUBLIC g_Derict
        PUBLIC g_Head
        PUBLIC g_Rear
        PUBLIC getmidline
        PUBLIC hx
        PUBLIC hx_end
        PUBLIC hx_end_line
        PUBLIC hx_find_count_max
        PUBLIC hx_found_Column
        PUBLIC hx_i
        PUBLIC last_is_midline
        PUBLIC mid_line_count
        PUBLIC mid_line_count_last
        PUBLIC mid_line_count_ls
        PUBLIC midline_fcount
        PUBLIC midline_fcount_max
        PUBLIC mode1
        PUBLIC mode2
        PUBLIC mode3
        PUBLIC mode4
        PUBLIC mode4_zhangai
        PUBLIC sfminline
        PUBLIC sfzj
        PUBLIC startPos
        PUBLIC tbs_all
        PUBLIC tbs_y
        PUBLIC tbs_z
        PUBLIC temCount
        PUBLIC temPos
        PUBLIC this_is_midline
        PUBLIC tiaobian_Left
        PUBLIC tiaobian_Right
        PUBLIC yxhs
        PUBLIC zaw_mode

// C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-28-3.23封\app\IMAGE.c
//    1 #include "sys.h" 
//    2 #include "IMAGE.h"
//    3 #include "common.h"
//    4 void ProcessCrossing();
//    5 void SmoothLeftRight(void);
//    6 void  GetCrossingMidLine();
//    7 //int Find_Endline(row,column);
//    8 void CommonRectificate(int data[],unsigned char begin,unsigned char end);
//    9 void SCProcessing();
//   10 void GetBlackEndParam2();
//   11 int FindMidLine_lastisnotmidline(int row,int lastmidline,int lastleft,int lastright);
//   12 int FindMidLine_lastismidline(int row,int lastmidline,int lastleft,int lastright);

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   13 signed char RoadType = -1;								//赛道类型
RoadType:
        DATA
        DC8 -1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   14 signed char LastRoadType = 0;	
LastRoadType:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   15 char endline;
endline:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   16 int LCrossingTripPos = 0;
LCrossingTripPos:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   17 int RCrossingTripPos = 0;
RCrossingTripPos:
        DS8 4
//   18 //找到十字的跳变点

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   19 unsigned char bFoundTripPoint = 0;
bFoundTripPoint:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   20 int firstline_l=-1,firstline_r=-1,firstline_m=-1;
firstline_l:
        DATA
        DC32 -1

        SECTION `.data`:DATA:REORDER:NOROOT(2)
firstline_r:
        DATA
        DC32 -1

        SECTION `.data`:DATA:REORDER:NOROOT(2)
firstline_m:
        DATA
        DC32 -1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   21 int tiaobian_Left[RowMax]={0},tiaobian_Right[RowMax]={0};
tiaobian_Left:
        DS8 400

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
tiaobian_Right:
        DS8 400
//   22 //可全速使能

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   23 int Endline=0;
Endline:
        DS8 4
//   24 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   25 unsigned char g_BasePos = ColumnMax/2;
g_BasePos:
        DATA
        DC8 45

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   26 unsigned char BanMa_Derict=0,BanMa_Left,BanMa_Right;
BanMa_Derict:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
BanMa_Left:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
BanMa_Right:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   27 unsigned char ValidLineR[RowMax]={0}; 			//十字道右边行有效标志数组
ValidLineR:
        DS8 100

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   28 unsigned char ValidLineL[RowMax]={0};			//十字道左边行有效标志数组
ValidLineL:
        DS8 100

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   29 unsigned char NoValidLMax = 0;					//十字交叉道左边连续丢线计数
NoValidLMax:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   30 unsigned char NoValidRMax = 0;					//十字交叉道右边连续丢线计数
NoValidRMax:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   31 unsigned char CrossingStable = 0;
CrossingStable:
        DS8 1
//   32 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   33 int startPos=0,endPos=0,temCount=0,countMax=0,temPos=0;
startPos:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
endPos:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
temCount:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
countMax:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
temPos:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   34 int ProcessFlag=0;
ProcessFlag:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   35 int sfzj=0;
sfzj:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   36 int ThresholdValue = 130;		//二值化阈值
ThresholdValue:
        DATA
        DC32 130

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   37 int UseStaticFlag = 1;		       // 是否使用静态阈值标志
UseStaticFlag:
        DATA
        DC32 1

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   38 int StaticThreshold = 130;          //二值化静态阀值  
StaticThreshold:
        DATA
        DC32 130

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   39 int LeftBlack[RowMax];	//左边缘黑线数组					 
LeftBlack:
        DS8 400

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   40 int RightBlack[RowMax];//右边缘黑线数组					 
RightBlack:
        DS8 400

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   41 int BlackLineData[RowMax];// 提取黑线值数据
BlackLineData:
        DS8 400

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   42 unsigned char g_Derict = 0; //方向 正-0 左-1 右-2
g_Derict:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   43 int BlackEndL = 0;
BlackEndL:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   44 int BlackEndM = 0;
BlackEndM:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   45 int BlackEndR = 0;
BlackEndR:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   46 int BlackEndMax = 0;
BlackEndMax:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   47 int BlackEndLMR = 0;
BlackEndLMR:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   48 int hx_found_Column=0;
hx_found_Column:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   49 int hx_find_count_max=0;
hx_find_count_max:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   50 int RoadMode[RowMax]=0;
RoadMode:
        DS8 400

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   51 int zaw_mode=0;
zaw_mode:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   52 int BlackEndA = 0;
BlackEndA:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   53 int BlackEndB = 0;
BlackEndB:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   54 int BlackEndC = 0;
BlackEndC:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   55 int BlackEndD = 0;
BlackEndD:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   56 int BlackEndE = 0;
BlackEndE:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   57 int BlackEndF = 0;
BlackEndF:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   58 int BlackEndG = 0;
BlackEndG:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   59 int BlackEndColumnMax=1;
BlackEndColumnMax:
        DATA
        DC32 1
//   60 
//   61 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   62 int StableNumbers = 0;
StableNumbers:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   63 int StableNumbers2 = 0;
StableNumbers2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   64 int CompensateCount = 0;
CompensateCount:
        DS8 4
//   65 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   66 int LeftStableNumbers = 0;
LeftStableNumbers:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   67 int RightStableNumbers = 0;
RightStableNumbers:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   68 int ValidLineCount = 0;
ValidLineCount:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   69 int ValidLineCount1 = 0; //左边缘找到并且右边找到
ValidLineCount1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   70 int ValidLineCount2 = 0;//左边缘找到或者右边找到
ValidLineCount2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   71 int P0_X = 0;
P0_X:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   72 int P0_Y = 0;
P0_Y:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   73 int P1_X = 0;
P1_X:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   74 int P1_Y = 0;
P1_Y:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   75 int P2_X = 0;
P2_X:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   76 int P2_Y = 0;
P2_Y:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   77 float Mid_K1 = 0.0;
Mid_K1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   78 float Mid_K2 = 0.0;
Mid_K2:
        DS8 4
//   79 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   80 int TopE1=0;//中心线上半部分偏差
TopE1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   81 int TopE2=0;//中心线下半部分偏差
TopE2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   82 int TopLen1=0;//中心线上半部分偏差
TopLen1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   83 int TopLen2=0;//中心线上半部分偏差 
TopLen2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   84 int SubBasePoint = 0;//中心线下半部分距基准点的最大偏差
SubBasePoint:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   85 int SubBasePointLen = 0;
SubBasePointLen:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   86 int yxhs=0;//图像有效行数
yxhs:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   87 int tbs_z=0,tbs_y=0,tbs_all=0;//图像边线跳变数
tbs_z:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
tbs_y:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
tbs_all:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   88 int Excursion = 0;
Excursion:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   89 int ValidExcursionCount=0;
ValidExcursionCount:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   90 char RightWhite=0;
RightWhite:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   91 char LeftWhite=0;
LeftWhite:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   92 int midline_fcount=0,midline_fcount_max=0;
midline_fcount:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
midline_fcount_max:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   93 unsigned char BlackRow=0;
BlackRow:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   94 unsigned char BlackRow1=0;
BlackRow1:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   95 unsigned char WhiteRow=0;
WhiteRow:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   96 unsigned char WhiteRow1=0;
WhiteRow1:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   97 unsigned char LineType[RowMax] = {0};
LineType:
        DS8 100

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   98 int StoreFlag = 0;
StoreFlag:
        DS8 4
//   99 signed char TemMidLineData[RowMax];//提取黑线值数据2	

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
//  100 double MidLineVariance = 0.0;
MidLineVariance:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  101 int MidLineExcursion = 0;
MidLineExcursion:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  102 signed char TripPointPos[RowMax];
TripPointPos:
        DS8 100

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  103 signed char SubValue[RowMax];
SubValue:
        DS8 100

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  104 void ImageProcess()
//  105 {
ImageProcess:
        PUSH     {R4}
//  106   int i=0,j=0;
        MOVS     R0,#+0
        MOVS     R1,#+0
//  107   unsigned char *p=0;
        MOVS     R2,#+0
//  108   unsigned char *q=0;
        MOVS     R3,#+0
//  109   
//  110   //使用静态阈值
//  111   if(UseStaticFlag)     //UseStaticFlag=0.
        LDR.W    R4,??DataTable6
        LDR      R4,[R4, #+0]
        CMP      R4,#+0
        BEQ.N    ??ImageProcess_0
//  112   {
//  113     ThresholdValue = StaticThreshold;
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_2
        STR      R0,[R1, #+0]
//  114   }
//  115   else
//  116   {
//  117     //使用动态取阈值
//  118     
//  119   }
//  120   
//  121   
//  122   //对噪点取均值滤波
//  123   for (i = 1;i < V_A-1;i++)
??ImageProcess_0:
        MOVS     R0,#+1
        B.N      ??ImageProcess_1
//  124   {
//  125     for (j = 1;j < H_A-1;j++)
//  126     {
//  127       if (ImageData[i][j] < 30 || ImageData[i][j] > 220)
??ImageProcess_2:
        LDR.W    R2,??DataTable6_3
        MOVS     R3,#+90
        MLA      R2,R3,R0,R2
        LDRB     R2,[R1, R2]
        SUBS     R2,R2,#+30
        CMP      R2,#+191
        BCC.N    ??ImageProcess_3
//  128       {
//  129         ImageData[i][j] = (ImageData[i-1][j-1]+ImageData[i-1][j]+ImageData[i-1][j+1]+ImageData[i][j-1]+ImageData[i][j+1]+ImageData[i+1][j-1]+ImageData[i+1][j]+ImageData[i+1][j+1])/8;
        LDR.W    R2,??DataTable6_3
        MOVS     R3,#+90
        MLA      R2,R3,R0,R2
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #-91]
        LDR.W    R3,??DataTable6_3
        MOVS     R4,#+90
        MLA      R3,R4,R0,R3
        ADDS     R3,R1,R3
        LDRB     R3,[R3, #-90]
        UXTAB    R2,R3,R2
        LDR.W    R3,??DataTable6_3
        MOVS     R4,#+90
        MLA      R3,R4,R0,R3
        ADDS     R3,R1,R3
        LDRB     R3,[R3, #-89]
        UXTAB    R2,R2,R3
        LDR.W    R3,??DataTable6_3
        MOVS     R4,#+90
        MLA      R3,R4,R0,R3
        ADDS     R3,R1,R3
        LDRB     R3,[R3, #-1]
        UXTAB    R2,R2,R3
        LDR.W    R3,??DataTable6_3
        MOVS     R4,#+90
        MLA      R3,R4,R0,R3
        ADDS     R3,R1,R3
        LDRB     R3,[R3, #+1]
        UXTAB    R2,R2,R3
        LDR.W    R3,??DataTable6_3
        MOVS     R4,#+90
        MLA      R3,R4,R0,R3
        ADDS     R3,R1,R3
        LDRB     R3,[R3, #+89]
        UXTAB    R2,R2,R3
        LDR.W    R3,??DataTable6_3
        MOVS     R4,#+90
        MLA      R3,R4,R0,R3
        ADDS     R3,R1,R3
        LDRB     R3,[R3, #+90]
        UXTAB    R2,R2,R3
        LDR.W    R3,??DataTable6_3
        MOVS     R4,#+90
        MLA      R3,R4,R0,R3
        ADDS     R3,R1,R3
        LDRB     R3,[R3, #+91]
        UXTAB    R2,R2,R3
        MOVS     R3,#+8
        SDIV     R2,R2,R3
        LDR.W    R3,??DataTable6_3
        MOVS     R4,#+90
        MLA      R3,R4,R0,R3
        STRB     R2,[R1, R3]
//  130       }
//  131     }
??ImageProcess_3:
        ADDS     R1,R1,#+1
??ImageProcess_4:
        CMP      R1,#+89
        BLT.N    ??ImageProcess_2
        ADDS     R0,R0,#+1
??ImageProcess_1:
        CMP      R0,#+99
        BGE.N    ??ImageProcess_5
        MOVS     R1,#+1
        B.N      ??ImageProcess_4
//  132   }  
//  133   
//  134   //图像二值化
//  135   for (p = &ImageData[0][0],q = &ThresholdData[0][0]; p <= &ImageData[V_A-1][H_A-1]; p++,q++)
??ImageProcess_5:
        LDR.W    R2,??DataTable6_3
        LDR.W    R3,??DataTable7
        B.N      ??ImageProcess_6
//  136   {
//  137     if (*p > ThresholdValue){*q = White;}
//  138     else{*q = Black;}
??ImageProcess_7:
        MOVS     R0,#+30
        STRB     R0,[R3, #+0]
??ImageProcess_8:
        ADDS     R2,R2,#+1
        ADDS     R3,R3,#+1
??ImageProcess_6:
        LDR.W    R0,??DataTable7_1
        CMP      R0,R2
        BCC.N    ??ImageProcess_9
        LDR.W    R0,??DataTable6_2
        LDR      R0,[R0, #+0]
        LDRB     R1,[R2, #+0]
        CMP      R0,R1
        BGE.N    ??ImageProcess_7
        MOVS     R0,#+200
        STRB     R0,[R3, #+0]
        B.N      ??ImageProcess_8
//  139   }  
//  140   
//  141   
//  142   
//  143   //        //噪点滤波 白黑白 => 白白白   黑白黑=>黑黑黑
//  144   for (i = 1;i < V_A-1;i++)
??ImageProcess_9:
        MOVS     R0,#+1
        B.N      ??ImageProcess_10
??ImageProcess_11:
        ADDS     R0,R0,#+1
??ImageProcess_10:
        CMP      R0,#+99
        BGE.N    ??ImageProcess_12
//  145   {
//  146     p = &ThresholdData[i][1];
        LDR.W    R1,??DataTable7
        MOVS     R2,#+90
        MLA      R1,R2,R0,R1
        ADDS     R2,R1,#+1
        B.N      ??ImageProcess_13
//  147     while (p < &ThresholdData[i][H_A-1])
//  148     {
//  149       if (*(p-1) == White && *p == Black && *(p+1) == White//白黑白
//  150           &&*(p-H_A) == White&&*(p-H_A-1) == White&&*(p-H_A+1) == White
//  151             &&*(p+H_A) == White&&*(p+H_A-1) == White&&*(p+H_A+1) == White                            
//  152               )
//  153         
//  154       {
//  155         *p = White;
//  156       }
//  157       else if (*(p-1) == Black && *p == White && *(p+1) == Black)
??ImageProcess_14:
        LDRB     R1,[R2, #-1]
        CMP      R1,#+30
        BNE.N    ??ImageProcess_15
        LDRB     R1,[R2, #+0]
        CMP      R1,#+200
        BNE.N    ??ImageProcess_15
        LDRB     R1,[R2, #+1]
        CMP      R1,#+30
        BNE.N    ??ImageProcess_15
//  158       {
//  159         *p = Black;
        MOVS     R1,#+30
        STRB     R1,[R2, #+0]
//  160       }
//  161       p++;
??ImageProcess_15:
        ADDS     R2,R2,#+1
??ImageProcess_13:
        LDR.W    R1,??DataTable7
        MOVS     R3,#+90
        MLA      R1,R3,R0,R1
        ADDS     R1,R1,#+89
        CMP      R2,R1
        BCS.N    ??ImageProcess_11
        LDRB     R1,[R2, #-1]
        CMP      R1,#+200
        BNE.N    ??ImageProcess_14
        LDRB     R1,[R2, #+0]
        CMP      R1,#+30
        BNE.N    ??ImageProcess_14
        LDRB     R1,[R2, #+1]
        CMP      R1,#+200
        BNE.N    ??ImageProcess_14
        LDRB     R1,[R2, #-90]
        CMP      R1,#+200
        BNE.N    ??ImageProcess_14
        LDRB     R1,[R2, #-91]
        CMP      R1,#+200
        BNE.N    ??ImageProcess_14
        LDRB     R1,[R2, #-89]
        CMP      R1,#+200
        BNE.N    ??ImageProcess_14
        LDRB     R1,[R2, #+90]
        CMP      R1,#+200
        BNE.N    ??ImageProcess_14
        LDRB     R1,[R2, #+89]
        CMP      R1,#+200
        BNE.N    ??ImageProcess_14
        LDRB     R1,[R2, #+91]
        CMP      R1,#+200
        BNE.N    ??ImageProcess_14
        MOVS     R1,#+200
        STRB     R1,[R2, #+0]
        B.N      ??ImageProcess_15
//  162     }
//  163   }
//  164   
//  165 }
??ImageProcess_12:
        POP      {R4}
        BX       LR               ;; return
//  166 //提取图像特征值

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  167 void GetImageParam()
//  168 {
GetImageParam:
        PUSH     {R7,LR}
//  169   GetBlackEndParam2();  //获取黑线截止行
        BL       GetBlackEndParam2
//  170   
//  171 }
        POP      {R0,PC}          ;; return
//  172 
//  173 //获取黑线截止行

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  174 void GetBlackEndParam()
//  175 {
GetBlackEndParam:
        PUSH     {R3-R5,LR}
//  176   unsigned char LEndFlag = 0;
        MOVS     R0,#+0
//  177   unsigned char MEndFlag = 0;
        MOVS     R1,#+0
//  178   unsigned char REndFlag = 0;
        MOVS     R2,#+0
//  179   int i=0;
        MOVS     R3,#+0
//  180   BlackEndL = 0;
        MOVS     R4,#+0
        LDR.W    R5,??DataTable7_2
        STR      R4,[R5, #+0]
//  181   BlackEndM = 0;
        MOVS     R4,#+0
        LDR.W    R5,??DataTable7_3
        STR      R4,[R5, #+0]
//  182   BlackEndR = 0;
        MOVS     R4,#+0
        LDR.W    R5,??DataTable7_4
        STR      R4,[R5, #+0]
//  183   for (i = RowMax-1; i >= 0 ; i--)
        MOVS     R4,#+99
        MOVS     R3,R4
        B.N      ??GetBlackEndParam_0
//  184   {
//  185     // LeftBlack[i]=0;
//  186     // RightBlack[i]=ColumnMax-1;//边界初始化
//  187     if(ThresholdData[i][ColumnMax/2] == White && !MEndFlag ){
//  188       BlackEndM++;
//  189     }
//  190     else if(i > 1 && ThresholdData[i-1][ColumnMax/2] == Black && ThresholdData[i-2][ColumnMax/2] == Black){
//  191       MEndFlag = 1;
//  192     }
//  193     if(ThresholdData[i][ColumnMax/4] == White && !LEndFlag ){
//  194       BlackEndL++;
//  195     }
//  196     else if(i > 1 && ThresholdData[i-1][ColumnMax/4] == Black && ThresholdData[i-2][ColumnMax/4] == Black){
//  197       LEndFlag = 1;
//  198     }
//  199     if(ThresholdData[i][ColumnMax*3/4] == White && !REndFlag ){
//  200       BlackEndR++;
//  201     }
//  202     else if(i > 1 && ThresholdData[i-1][ColumnMax*3/4] == Black && ThresholdData[i-2][ColumnMax*3/4] == Black){
??GetBlackEndParam_1:
        CMP      R3,#+2
        BLT.N    ??GetBlackEndParam_2
        LDR.W    R4,??DataTable7
        MOVS     R5,#+90
        MLA      R4,R5,R3,R4
        LDRB     R4,[R4, #-23]
        CMP      R4,#+30
        BNE.N    ??GetBlackEndParam_2
        LDR.W    R4,??DataTable7
        MOVS     R5,#+90
        MLA      R4,R5,R3,R4
        LDRB     R4,[R4, #-113]
        CMP      R4,#+30
        BNE.N    ??GetBlackEndParam_2
//  203       REndFlag = 1;
        MOVS     R2,#+1
//  204     }
??GetBlackEndParam_2:
        SUBS     R3,R3,#+1
??GetBlackEndParam_0:
        CMP      R3,#+0
        BMI.N    ??GetBlackEndParam_3
        LDR.W    R4,??DataTable7
        MOVS     R5,#+90
        MLA      R4,R5,R3,R4
        LDRB     R4,[R4, #+45]
        CMP      R4,#+200
        BNE.N    ??GetBlackEndParam_4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??GetBlackEndParam_4
        LDR.W    R4,??DataTable7_3
        LDR      R4,[R4, #+0]
        ADDS     R4,R4,#+1
        LDR.W    R5,??DataTable7_3
        STR      R4,[R5, #+0]
        B.N      ??GetBlackEndParam_5
??GetBlackEndParam_4:
        CMP      R3,#+2
        BLT.N    ??GetBlackEndParam_5
        LDR.W    R4,??DataTable7
        MOVS     R5,#+90
        MLA      R4,R5,R3,R4
        LDRB     R4,[R4, #-45]
        CMP      R4,#+30
        BNE.N    ??GetBlackEndParam_5
        LDR.W    R4,??DataTable7
        MOVS     R5,#+90
        MLA      R4,R5,R3,R4
        LDRB     R4,[R4, #-135]
        CMP      R4,#+30
        BNE.N    ??GetBlackEndParam_5
        MOVS     R1,#+1
??GetBlackEndParam_5:
        LDR.W    R4,??DataTable7
        MOVS     R5,#+90
        MLA      R4,R5,R3,R4
        LDRB     R4,[R4, #+22]
        CMP      R4,#+200
        BNE.N    ??GetBlackEndParam_6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??GetBlackEndParam_6
        LDR.W    R4,??DataTable7_2
        LDR      R4,[R4, #+0]
        ADDS     R4,R4,#+1
        LDR.W    R5,??DataTable7_2
        STR      R4,[R5, #+0]
        B.N      ??GetBlackEndParam_7
??GetBlackEndParam_6:
        CMP      R3,#+2
        BLT.N    ??GetBlackEndParam_7
        LDR.W    R4,??DataTable7
        MOVS     R5,#+90
        MLA      R4,R5,R3,R4
        LDRB     R4,[R4, #-68]
        CMP      R4,#+30
        BNE.N    ??GetBlackEndParam_7
        LDR.W    R4,??DataTable7
        MOVS     R5,#+90
        MLA      R4,R5,R3,R4
        LDRB     R4,[R4, #-158]
        CMP      R4,#+30
        BNE.N    ??GetBlackEndParam_7
        MOVS     R0,#+1
??GetBlackEndParam_7:
        LDR.W    R4,??DataTable7
        MOVS     R5,#+90
        MLA      R4,R5,R3,R4
        LDRB     R4,[R4, #+67]
        CMP      R4,#+200
        BNE.N    ??GetBlackEndParam_1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BNE.N    ??GetBlackEndParam_1
        LDR.W    R4,??DataTable7_4
        LDR      R4,[R4, #+0]
        ADDS     R4,R4,#+1
        LDR.W    R5,??DataTable7_4
        STR      R4,[R5, #+0]
        B.N      ??GetBlackEndParam_2
//  205   }
//  206   BlackEndMax = MAX(BlackEndL,BlackEndM);
??GetBlackEndParam_3:
        LDR.W    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??GetBlackEndParam_8
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_5
        STR      R0,[R1, #+0]
        B.N      ??GetBlackEndParam_9
??GetBlackEndParam_8:
        LDR.W    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_5
        STR      R0,[R1, #+0]
//  207   BlackEndMax = MAX(BlackEndMax,BlackEndR);
??GetBlackEndParam_9:
        LDR.W    R0,??DataTable7_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_5
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??GetBlackEndParam_10
        LDR.W    R0,??DataTable7_5
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_5
        STR      R0,[R1, #+0]
        B.N      ??GetBlackEndParam_11
??GetBlackEndParam_10:
        LDR.W    R0,??DataTable7_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_5
        STR      R0,[R1, #+0]
//  208   BlackEndLMR = BlackEndL + BlackEndM + BlackEndR;
??GetBlackEndParam_11:
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_3
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable7_4
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable7_6
        STR      R0,[R1, #+0]
//  209   //		//判断十字左右倾
//  210   if (BlackEndMax == BlackEndL)
        LDR.W    R0,??DataTable7_5
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BNE.N    ??GetBlackEndParam_12
//  211   {
//  212     g_Derict = 1;//左倾
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_7
        STRB     R0,[R1, #+0]
        B.N      ??GetBlackEndParam_13
//  213   }
//  214   else if (BlackEndMax == BlackEndR)
??GetBlackEndParam_12:
        LDR.W    R0,??DataTable7_5
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_4
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BNE.N    ??GetBlackEndParam_14
//  215   {
//  216     g_Derict =2;//右倾
        MOVS     R0,#+2
        LDR.W    R1,??DataTable7_7
        STRB     R0,[R1, #+0]
        B.N      ??GetBlackEndParam_13
//  217   }
//  218   else if (BlackEndMax == BlackEndM)
??GetBlackEndParam_14:
        LDR.W    R0,??DataTable7_5
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_3
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BNE.N    ??GetBlackEndParam_13
//  219   {
//  220     if (fabss(BlackEndL-BlackEndR) < 5)
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_4
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       `fabss`
        CMP      R0,#+5
        BGE.N    ??GetBlackEndParam_15
//  221     {
//  222       g_Derict = 0;//正十字
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_7
        STRB     R0,[R1, #+0]
        B.N      ??GetBlackEndParam_13
//  223     }
//  224     else if (BlackEndL > BlackEndR)
??GetBlackEndParam_15:
        LDR.W    R0,??DataTable7_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??GetBlackEndParam_16
//  225     {
//  226       g_Derict = 1;//左
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_7
        STRB     R0,[R1, #+0]
        B.N      ??GetBlackEndParam_13
//  227     }
//  228     else
//  229     {
//  230       g_Derict = 2;//右
??GetBlackEndParam_16:
        MOVS     R0,#+2
        LDR.W    R1,??DataTable7_7
        STRB     R0,[R1, #+0]
//  231     }
//  232   }
//  233   
//  234 }
??GetBlackEndParam_13:
        POP      {R0,R4,R5,PC}    ;; return
//  235 
//  236 
//  237 //获取黑线截止行

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  238 void GetBlackEndParam2()
//  239 {
GetBlackEndParam2:
        PUSH     {R3-R5,LR}
//  240   int getlmr_i=0;
        MOVS     R1,#+0
//  241   int w_n;
//  242   int w_m;
//  243   int find_column;
//  244   int end_max=1;
        MOVS     R2,#+1
//  245   int end_max_count;
//  246   BlackEndA = 0;
        MOVS     R0,#+0
        LDR.W    R3,??DataTable7_8
        STR      R0,[R3, #+0]
//  247   BlackEndB = 0;
        MOVS     R0,#+0
        LDR.W    R3,??DataTable7_9
        STR      R0,[R3, #+0]
//  248   BlackEndC = 0;
        MOVS     R0,#+0
        LDR.W    R3,??DataTable7_10
        STR      R0,[R3, #+0]
//  249   BlackEndD = 0;
        MOVS     R0,#+0
        LDR.W    R3,??DataTable7_11
        STR      R0,[R3, #+0]
//  250   BlackEndE = 0;
        MOVS     R0,#+0
        LDR.W    R3,??DataTable7_12
        STR      R0,[R3, #+0]
//  251   BlackEndF = 0;
        MOVS     R0,#+0
        LDR.W    R3,??DataTable7_13
        STR      R0,[R3, #+0]
//  252   BlackEndG = 0;
        MOVS     R0,#+0
        LDR.W    R3,??DataTable7_14
        STR      R0,[R3, #+0]
//  253   
//  254   find_column= ColumnMax*4/8; //1
        MOVS     R4,#+45
//  255   w_n=RowMax-1;
        MOVS     R5,#+99
//  256   w_m=1;
        MOVS     R0,#+1
        B.N      ??GetBlackEndParam2_0
//  257   while(w_m)
//  258   {
//  259     w_m=Find_Endline(w_n,find_column);
??GetBlackEndParam2_1:
        MOVS     R1,R4
        MOVS     R0,R5
        BL       Find_Endline
//  260     w_n-=w_m; 
        SUBS     R5,R5,R0
//  261     BlackEndA+=w_m;
        LDR.W    R1,??DataTable7_8
        LDR      R1,[R1, #+0]
        ADDS     R1,R0,R1
        LDR.W    R2,??DataTable7_8
        STR      R1,[R2, #+0]
//  262     if(w_n<2) w_m=0;
        CMP      R5,#+2
        BGE.N    ??GetBlackEndParam2_0
        MOVS     R0,#+0
//  263   } 
??GetBlackEndParam2_0:
        CMP      R0,#+0
        BNE.N    ??GetBlackEndParam2_1
//  264   BlackEndMax=  BlackEndA;
        LDR.W    R0,??DataTable7_8
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_5
        STR      R0,[R1, #+0]
//  265   BlackEndColumnMax=find_column;
        LDR.W    R0,??DataTable7_15
        STR      R4,[R0, #+0]
//  266   
//  267   
//  268   
//  269   find_column= ColumnMax*3/8; //2
        MOVS     R4,#+33
//  270   w_n=RowMax-1;
        MOVS     R5,#+99
//  271   w_m=1;
        MOVS     R0,#+1
        B.N      ??GetBlackEndParam2_2
//  272   while(w_m)
//  273   {
//  274     w_m=Find_Endline(w_n,find_column);
??GetBlackEndParam2_3:
        MOVS     R1,R4
        MOVS     R0,R5
        BL       Find_Endline
//  275     w_n-=w_m; 
        SUBS     R5,R5,R0
//  276     BlackEndB+=w_m;
        LDR.W    R1,??DataTable7_9
        LDR      R1,[R1, #+0]
        ADDS     R1,R0,R1
        LDR.W    R2,??DataTable7_9
        STR      R1,[R2, #+0]
//  277     if(w_n<2) w_m=0;
        CMP      R5,#+2
        BGE.N    ??GetBlackEndParam2_2
        MOVS     R0,#+0
//  278   } 
??GetBlackEndParam2_2:
        CMP      R0,#+0
        BNE.N    ??GetBlackEndParam2_3
//  279   if(BlackEndMax<BlackEndB)
        LDR.W    R0,??DataTable7_5
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_9
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??GetBlackEndParam2_4
//  280   {BlackEndMax=  BlackEndB;
        LDR.W    R0,??DataTable7_9
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_5
        STR      R0,[R1, #+0]
//  281   BlackEndColumnMax=find_column;
        LDR.W    R0,??DataTable7_15
        STR      R4,[R0, #+0]
//  282   }
//  283   
//  284   
//  285   
//  286   
//  287   find_column= ColumnMax*5/8; //3
??GetBlackEndParam2_4:
        MOVS     R4,#+56
//  288   w_n=RowMax-1;
        MOVS     R5,#+99
//  289   w_m=1;
        MOVS     R0,#+1
        B.N      ??GetBlackEndParam2_5
//  290   while(w_m)
//  291   {
//  292     w_m=Find_Endline(w_n,find_column);
??GetBlackEndParam2_6:
        MOVS     R1,R4
        MOVS     R0,R5
        BL       Find_Endline
//  293     w_n-=w_m; 
        SUBS     R5,R5,R0
//  294     BlackEndC+=w_m;
        LDR.W    R1,??DataTable7_10
        LDR      R1,[R1, #+0]
        ADDS     R1,R0,R1
        LDR.W    R2,??DataTable7_10
        STR      R1,[R2, #+0]
//  295     if(w_n<2) w_m=0;
        CMP      R5,#+2
        BGE.N    ??GetBlackEndParam2_5
        MOVS     R0,#+0
//  296   } 
??GetBlackEndParam2_5:
        CMP      R0,#+0
        BNE.N    ??GetBlackEndParam2_6
//  297   if(BlackEndMax<BlackEndC)
        LDR.W    R0,??DataTable7_5
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_10
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??GetBlackEndParam2_7
//  298   {
//  299     BlackEndMax=  BlackEndC;
        LDR.W    R0,??DataTable7_10
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_5
        STR      R0,[R1, #+0]
//  300   BlackEndColumnMax=find_column;
        LDR.W    R0,??DataTable7_15
        STR      R4,[R0, #+0]
//  301   }
//  302   
//  303   
//  304   
//  305   find_column= ColumnMax*2/8; //4
??GetBlackEndParam2_7:
        MOVS     R4,#+22
//  306   w_n=RowMax-1;
        MOVS     R5,#+99
//  307   w_m=1;
        MOVS     R0,#+1
        B.N      ??GetBlackEndParam2_8
//  308   while(w_m)
//  309   {
//  310     w_m=Find_Endline(w_n,find_column);
??GetBlackEndParam2_9:
        MOVS     R1,R4
        MOVS     R0,R5
        BL       Find_Endline
//  311     w_n-=w_m; 
        SUBS     R5,R5,R0
//  312     BlackEndD+=w_m;
        LDR.W    R1,??DataTable7_11
        LDR      R1,[R1, #+0]
        ADDS     R1,R0,R1
        LDR.W    R2,??DataTable7_11
        STR      R1,[R2, #+0]
//  313     if(w_n<2) w_m=0;
        CMP      R5,#+2
        BGE.N    ??GetBlackEndParam2_8
        MOVS     R0,#+0
//  314   } 
??GetBlackEndParam2_8:
        CMP      R0,#+0
        BNE.N    ??GetBlackEndParam2_9
//  315   if(BlackEndMax<BlackEndD)
        LDR.W    R0,??DataTable7_5
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_11
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??GetBlackEndParam2_10
//  316   {
//  317     BlackEndMax=  BlackEndD;
        LDR.W    R0,??DataTable7_11
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_5
        STR      R0,[R1, #+0]
//  318   BlackEndColumnMax=find_column;
        LDR.W    R0,??DataTable7_15
        STR      R4,[R0, #+0]
//  319   }
//  320   
//  321   
//  322   find_column= ColumnMax*6/8; //5
??GetBlackEndParam2_10:
        MOVS     R4,#+67
//  323   w_n=RowMax-1;
        MOVS     R5,#+99
//  324   w_m=1;
        MOVS     R0,#+1
        B.N      ??GetBlackEndParam2_11
//  325   while(w_m)
//  326   {
//  327     w_m=Find_Endline(w_n,find_column);
??GetBlackEndParam2_12:
        MOVS     R1,R4
        MOVS     R0,R5
        BL       Find_Endline
//  328     w_n-=w_m; 
        SUBS     R5,R5,R0
//  329     BlackEndE+=w_m;
        LDR.W    R1,??DataTable7_12
        LDR      R1,[R1, #+0]
        ADDS     R1,R0,R1
        LDR.W    R2,??DataTable7_12
        STR      R1,[R2, #+0]
//  330     if(w_n<2) w_m=0;
        CMP      R5,#+2
        BGE.N    ??GetBlackEndParam2_11
        MOVS     R0,#+0
//  331   } 
??GetBlackEndParam2_11:
        CMP      R0,#+0
        BNE.N    ??GetBlackEndParam2_12
//  332   if(BlackEndMax<BlackEndE)
        LDR.W    R0,??DataTable7_5
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_12
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??GetBlackEndParam2_13
//  333   {
//  334     BlackEndMax=  BlackEndE;
        LDR.W    R0,??DataTable7_12
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_5
        STR      R0,[R1, #+0]
//  335   BlackEndColumnMax=find_column;
        LDR.W    R0,??DataTable7_15
        STR      R4,[R0, #+0]
//  336   }
//  337   
//  338   
//  339   find_column= ColumnMax*1/8; //6
??GetBlackEndParam2_13:
        MOVS     R4,#+11
//  340   w_n=RowMax-1;
        MOVS     R5,#+99
//  341   w_m=1;
        MOVS     R0,#+1
        B.N      ??GetBlackEndParam2_14
//  342   while(w_m)
//  343   {
//  344     w_m=Find_Endline(w_n,find_column);
??GetBlackEndParam2_15:
        MOVS     R1,R4
        MOVS     R0,R5
        BL       Find_Endline
//  345     w_n-=w_m; 
        SUBS     R5,R5,R0
//  346     BlackEndF+=w_m;
        LDR.W    R1,??DataTable7_13
        LDR      R1,[R1, #+0]
        ADDS     R1,R0,R1
        LDR.W    R2,??DataTable7_13
        STR      R1,[R2, #+0]
//  347     if(w_n<2) w_m=0;
        CMP      R5,#+2
        BGE.N    ??GetBlackEndParam2_14
        MOVS     R0,#+0
//  348   } 
??GetBlackEndParam2_14:
        CMP      R0,#+0
        BNE.N    ??GetBlackEndParam2_15
//  349   if(BlackEndMax<BlackEndF)
        LDR.W    R0,??DataTable7_5
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_13
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??GetBlackEndParam2_16
//  350   {
//  351     BlackEndMax=  BlackEndF;
        LDR.W    R0,??DataTable7_13
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_5
        STR      R0,[R1, #+0]
//  352   BlackEndColumnMax=find_column;
        LDR.W    R0,??DataTable7_15
        STR      R4,[R0, #+0]
//  353   }
//  354   
//  355   
//  356   find_column= ColumnMax*7/8; //7
??GetBlackEndParam2_16:
        MOVS     R4,#+78
//  357   w_n=RowMax-1;
        MOVS     R5,#+99
//  358   w_m=1;
        MOVS     R0,#+1
        B.N      ??GetBlackEndParam2_17
//  359   while(w_m)
//  360   {
//  361     w_m=Find_Endline(w_n,find_column);
??GetBlackEndParam2_18:
        MOVS     R1,R4
        MOVS     R0,R5
        BL       Find_Endline
//  362     w_n-=w_m; 
        SUBS     R5,R5,R0
//  363     BlackEndG+=w_m;
        LDR.W    R1,??DataTable7_14
        LDR      R1,[R1, #+0]
        ADDS     R1,R0,R1
        LDR.W    R2,??DataTable7_14
        STR      R1,[R2, #+0]
//  364     if(w_n<2) w_m=0;
        CMP      R5,#+2
        BGE.N    ??GetBlackEndParam2_17
        MOVS     R0,#+0
//  365   } 
??GetBlackEndParam2_17:
        CMP      R0,#+0
        BNE.N    ??GetBlackEndParam2_18
//  366   if(BlackEndMax<BlackEndG)
        LDR.W    R0,??DataTable7_5
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_14
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??GetBlackEndParam2_19
//  367   {
//  368     BlackEndMax=  BlackEndG;
        LDR.W    R0,??DataTable7_14
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_5
        STR      R0,[R1, #+0]
//  369   BlackEndColumnMax=find_column;
        LDR.W    R0,??DataTable7_15
        STR      R4,[R0, #+0]
//  370   }
//  371   
//  372   BlackEndL=MAX(BlackEndB,BlackEndA);
??GetBlackEndParam2_19:
        LDR.W    R0,??DataTable7_8
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_9
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??GetBlackEndParam2_20
        LDR.W    R0,??DataTable7_9
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+0]
        B.N      ??GetBlackEndParam2_21
??GetBlackEndParam2_20:
        LDR.W    R0,??DataTable7_8
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_2
        STR      R0,[R1, #+0]
//  373   BlackEndM=BlackEndD;
??GetBlackEndParam2_21:
        LDR.W    R0,??DataTable7_11
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_3
        STR      R0,[R1, #+0]
//  374   BlackEndR=MAX(BlackEndG,BlackEndF);
        LDR.W    R0,??DataTable7_13
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_14
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??GetBlackEndParam2_22
        LDR.W    R0,??DataTable7_14
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_4
        STR      R0,[R1, #+0]
        B.N      ??GetBlackEndParam2_23
??GetBlackEndParam2_22:
        LDR.W    R0,??DataTable7_13
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_4
        STR      R0,[R1, #+0]
//  375   BlackEndLMR = BlackEndL + BlackEndM + BlackEndR;
??GetBlackEndParam2_23:
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_3
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable7_4
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable7_6
        STR      R0,[R1, #+0]
//  376   //		//判断十字左右倾
//  377   if (BlackEndMax == BlackEndL)
        LDR.W    R0,??DataTable7_5
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BNE.N    ??GetBlackEndParam2_24
//  378   {
//  379     g_Derict = 1;//左倾
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_7
        STRB     R0,[R1, #+0]
        B.N      ??GetBlackEndParam2_25
//  380   }
//  381   else if (BlackEndMax == BlackEndR)
??GetBlackEndParam2_24:
        LDR.W    R0,??DataTable7_5
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_4
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BNE.N    ??GetBlackEndParam2_26
//  382   {
//  383     g_Derict =2;//右倾
        MOVS     R0,#+2
        LDR.W    R1,??DataTable7_7
        STRB     R0,[R1, #+0]
        B.N      ??GetBlackEndParam2_25
//  384   }
//  385   else if (BlackEndMax == BlackEndM)
??GetBlackEndParam2_26:
        LDR.W    R0,??DataTable7_5
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_3
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BNE.N    ??GetBlackEndParam2_25
//  386   {
//  387     if (fabss(BlackEndL-BlackEndR) < 5)
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_4
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       `fabss`
        CMP      R0,#+5
        BGE.N    ??GetBlackEndParam2_27
//  388     {
//  389       g_Derict = 0;//正十字
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_7
        STRB     R0,[R1, #+0]
        B.N      ??GetBlackEndParam2_25
//  390     }
//  391     else if (BlackEndL > BlackEndR)
??GetBlackEndParam2_27:
        LDR.W    R0,??DataTable7_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??GetBlackEndParam2_28
//  392     {
//  393       g_Derict = 1;//左
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_7
        STRB     R0,[R1, #+0]
        B.N      ??GetBlackEndParam2_25
//  394     }
//  395     else
//  396     {
//  397       g_Derict = 2;//右
??GetBlackEndParam2_28:
        MOVS     R0,#+2
        LDR.W    R1,??DataTable7_7
        STRB     R0,[R1, #+0]
//  398     }
//  399   }
//  400   
//  401   
//  402   
//  403 }
??GetBlackEndParam2_25:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  404 int Find_Endline(int row,int column)
//  405 {
//  406   
//  407   
//  408   if(ThresholdData[row][column]==White)//起始点是白点
Find_Endline:
        LDR.W    R2,??DataTable7
        MOVS     R3,#+90
        MLA      R2,R3,R0,R2
        LDRB     R2,[R1, R2]
        CMP      R2,#+200
        BNE.N    ??Find_Endline_0
//  409   {
//  410     if(ThresholdData[row-1][column]==White)
        LDR.W    R2,??DataTable7
        MOVS     R3,#+90
        MLA      R0,R3,R0,R2
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #-90]
        CMP      R0,#+200
        BNE.N    ??Find_Endline_1
//  411       return 2;
        MOVS     R0,#+2
        B.N      ??Find_Endline_2
//  412     else
//  413       return 1;
??Find_Endline_1:
        MOVS     R0,#+1
        B.N      ??Find_Endline_2
//  414     
//  415   }
//  416   else//如果起始点是黑点
//  417   {
//  418     if(ThresholdData[row-1][column]==Black&&ThresholdData[row-2][column]==Black) //黑黑黑 
??Find_Endline_0:
        LDR.W    R2,??DataTable7
        MOVS     R3,#+90
        MLA      R2,R3,R0,R2
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #-90]
        CMP      R2,#+30
        BNE.N    ??Find_Endline_3
        LDR.W    R2,??DataTable7
        MOVS     R3,#+90
        MLA      R0,R3,R0,R2
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #-180]
        CMP      R0,#+30
        BNE.N    ??Find_Endline_3
//  419       return 0;
        MOVS     R0,#+0
        B.N      ??Find_Endline_2
//  420     else 
//  421       return 1;
??Find_Endline_3:
        MOVS     R0,#+1
??Find_Endline_2:
        BX       LR               ;; return
//  422   }
//  423   
//  424   
//  425 }
//  426 
//  427 //中心线处理
//  428 extern int flag_ren,IF_CAR_CONTROL1;

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  429 void MidLineProcess()
//  430 {       
MidLineProcess:
        PUSH     {R7,LR}
//  431   // gpio_turn(PTE1);
//  432   //gpio_turn(PTE2);  
//  433   StoreFlag = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_16
        STR      R0,[R1, #+0]
//  434   GetLMR();//提取左边缘、右边缘和中心线
        BL       GetLMR
//  435   
//  436   GetEPerCount();  //求有效偏移量,和平均每列偏移量	
        BL       GetEPerCount
//  437   //getmidline();
//  438   
//  439   
//  440   
//  441   
//  442   //		LAverageFilter();//左边缘滤波
//  443   //		RAverageFilter();//右边缘滤波*/
//  444   // GetFinalMidLine();//通过左右边缘取得控制舵机的中心线
//  445   
//  446   //AverageFilter();//中心线滤波处理
//  447   //MidLineCompensate();//中心线补偿处
//  448   //		StoreFlag=1;
//  449   //		StoreMidLine();
//  450   
//  451   //RectificationMidLine();
//  452   
//  453   GetSectionParam();//对中心线分段提取偏差
        BL       GetSectionParam
//  454   GetMidLineVariance();//提取中心线方差
        BL       GetMidLineVariance
//  455   
//  456   
//  457   
//  458   //        ProcessCrossing();	//检测并处理十字
//  459   
//  460   //		if(StoreFlag)
//  461   //		{
//  462   //			UseTemMidLine();
//  463   //		}
//  464   
//  465   
//  466 }
        POP      {R0,PC}          ;; return
//  467 
//  468 //

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  469 int HistoryRoadType[4] = {0};
HistoryRoadType:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  470 int g_Head = 0,g_Rear=0;
g_Head:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
g_Rear:
        DS8 4
//  471 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  472 unsigned char StandardRoadType = 1;
StandardRoadType:
        DATA
        DC8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  473 int StraightToBendCount = 0;
StraightToBendCount:
        DS8 4
//  474 //赛道识别

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  475 void RTRecognition()
//  476 {
RTRecognition:
        PUSH     {R7,LR}
//  477   signed char temRoadType = -1;
        MOVS     R0,#-1
//  478   int MinStable = 0;
        MOVS     R1,#+0
//  479   //        
//  480   //        if(StableNumbers >= RowMax*0.9)
//  481   //        {
//  482   //        temRoadType = 0;
//  483   //        }
//  484   //         else if(StableNumbers >= RowMax*0.8)
//  485   //        {
//  486   //        temRoadType = 1;
//  487   //        }
//  488   //        
//  489   //        else if(StableNumbers >= RowMax*0.6)
//  490   //        {
//  491   //        temRoadType = 2;
//  492   //        }
//  493   //        
//  494   //        else
//  495   //        {
//  496   //        temRoadType = 3;
//  497   //        }
//  498   //        RoadType = temRoadType;//赛道类型判断成功
//  499   //   return;
//  500   MinStable = MIN(StableNumbers,LeftStableNumbers);
        LDR.W    R2,??DataTable7_17
        LDR      R2,[R2, #+0]
        LDR.W    R3,??DataTable7_18
        LDR      R3,[R3, #+0]
        CMP      R2,R3
        BGE.N    ??RTRecognition_0
        LDR.W    R1,??DataTable7_17
        LDR      R1,[R1, #+0]
        B.N      ??RTRecognition_1
??RTRecognition_0:
        LDR.W    R1,??DataTable7_18
        LDR      R1,[R1, #+0]
//  501   MinStable = MIN(MinStable,RightStableNumbers);
??RTRecognition_1:
        LDR.W    R2,??DataTable7_19
        LDR      R2,[R2, #+0]
        CMP      R1,R2
        BLT.N    ??RTRecognition_2
??RTRecognition_3:
        LDR.W    R1,??DataTable7_19
        LDR      R1,[R1, #+0]
//  502   //标准的赛道类型 3、2
//  503   /*if(fabss(Excursion) > 30)
//  504   {
//  505   if(EPerCount >= 1.2 && BlackEndMax < 15)
//  506   {
//  507   temRoadType = 3;	
//  508 }
//  509 		else if(EPerCount >= 1.0 && StableNumbers <= 28 && BlackEndMax < 22)
//  510   {
//  511   temRoadType = 2;			   	
//  512 }
//  513   
//  514 }
//  515   //标准的赛道类型 1、0
//  516   if(BlackEndMax >= RowMax-1)
//  517   {
//  518   if(fabss(Excursion)< 5 && MidLineVariance < 2&& EPerCount < 0.1)
//  519   {
//  520   temRoadType = 0;	
//  521 }
//  522 		else if(fabss(Excursion)< 15 && MidLineVariance < 20)
//  523   {
//  524   temRoadType = 1;
//  525 }
//  526 }*/
//  527   
//  528   
//  529   //标准的赛道类型 1、0
//  530   if(StableNumbers >= RowMax*0.7)
??RTRecognition_2:
        LDR.W    R1,??DataTable7_17
        LDR      R1,[R1, #+0]
        CMP      R1,#+70
        BLT.N    ??RTRecognition_4
//  531   {
//  532     if( fabss(MidLineExcursion) < 35&&fabss(TopE1-TopE2)<20&&MidLineVariance<100||StableNumbers >= RowMax*0.9)
        LDR.W    R0,??DataTable7_20
        LDR      R0,[R0, #+0]
        BL       `fabss`
        CMP      R0,#+35
        BGE.N    ??RTRecognition_5
        LDR.W    R0,??DataTable7_21
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_22
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       `fabss`
        CMP      R0,#+20
        BGE.N    ??RTRecognition_5
        LDR.W    R2,??DataTable7_23
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+0
        LDR.W    R3,??DataTable7_24  ;; 0x40590000
        BL       __aeabi_cdcmple
        BCC.N    ??RTRecognition_6
??RTRecognition_5:
        LDR.W    R0,??DataTable7_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+90
        BLT.N    ??RTRecognition_7
//  533     {
//  534       temRoadType = 0;	
??RTRecognition_6:
        MOVS     R0,#+0
        B.N      ??RTRecognition_4
//  535     }
//  536     else// if(/*EPerCount < 0.9 &&*/ MidLineVariance > 25)
//  537     {
//  538       temRoadType = 1;
??RTRecognition_7:
        MOVS     R0,#+1
//  539     }
//  540   }
//  541   if(StableNumbers < RowMax*0.7)
??RTRecognition_4:
        LDR.W    R1,??DataTable7_17
        LDR      R1,[R1, #+0]
        CMP      R1,#+70
        BGE.N    ??RTRecognition_8
//  542   {
//  543     if( fabss(MidLineExcursion)<55&&MidLineVariance<150&&StableNumbers >= RowMax*0.5)
        LDR.W    R0,??DataTable7_20
        LDR      R0,[R0, #+0]
        BL       `fabss`
        CMP      R0,#+55
        BGE.N    ??RTRecognition_9
        LDR.W    R2,??DataTable7_23
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+0
        LDR.W    R3,??DataTable7_25  ;; 0x4062c000
        BL       __aeabi_cdcmple
        BCS.N    ??RTRecognition_9
        LDR.W    R0,??DataTable7_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+50
        BLT.N    ??RTRecognition_9
//  544     {
//  545       temRoadType = 2;	
        MOVS     R0,#+2
        B.N      ??RTRecognition_8
//  546     }
//  547     else 
//  548     {
//  549       temRoadType = 3;	
??RTRecognition_9:
        MOVS     R0,#+3
//  550     }
//  551     
//  552   }
//  553   //  //非标准的赛道处理
//  554   //  if(temRoadType==-1)
//  555   //  {
//  556   //    StandardRoadType = 0;
//  557   //    if(StableNumbers > RowMax*0.7)
//  558   //    {
//  559   //      temRoadType = 0;
//  560   //      if (fabss(TopE1-TopE2) > 45 || Mid_K1 > 1.2 || Mid_K2 > 1.2)
//  561   //      {		   
//  562   //        temRoadType = 2;
//  563   //        StandardRoadType = 2;
//  564   //      }
//  565   //      
//  566   //    }
//  567   //    else if (StableNumbers > RowMax*0.6/*&&fabss(TopE1-TopE2) > 27*/)
//  568   //    {
//  569   //      temRoadType = 2;
//  570   //    }
//  571   //    else 
//  572   //    {
//  573   //      temRoadType = 3;
//  574   //    }
//  575   //  }
//  576   //  else
//  577   //  {
//  578   //    StandardRoadType = 1;
//  579   //  }
//  580   //	if(LastRoadType == 103)
//  581   //	{
//  582   //		StraightToBendCount++;
//  583   //		if(StraightToBendCount > 15)
//  584   //		{
//  585   //			StraightToBendCount=0;	
//  586   //		}
//  587   //		else
//  588   //		{
//  589   //			temRoadType = 103;
//  590   //		}
//  591   //	}
//  592   RoadType = temRoadType;//赛道类型判断成功
??RTRecognition_8:
        LDR.W    R1,??DataTable7_26
        STRB     R0,[R1, #+0]
//  593   return;
        POP      {R0,PC}          ;; return
//  594   HistoryRTProccess();//对历史赛道类型信息进行处理
//  595   if(IsStraightToBend() /*&& ElementCount2 > 20 && AllSmallSCount > 30*/)//判断是否是直入弯
//  596   {
//  597     RoadType = 103;
//  598   }
//  599   if(RoadType != 103)
//  600   {
//  601     StraightToBendCount = 0;
//  602   }
//  603   
//  604   HistoryRoadType[g_Rear] = RoadType;
//  605   g_Rear = (g_Rear+1)%4;
//  606   if(RoadType != HistoryRoadType[g_Head] && HistoryRoadType[g_Head] == HistoryRoadType[(g_Head+1)%4])
//  607   {
//  608     RoadType = HistoryRoadType[g_Head];	
//  609   }
//  610   if((g_Rear+1)%4 == g_Head)
//  611   {
//  612     g_Head = (g_Head+1)%4;
//  613   }
//  614   //	if(IsCrossing)
//  615   //	{
//  616   //		RoadType=2;
//  617   //	}	
//  618 }

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  619 int last_is_midline=0,this_is_midline=0;
last_is_midline:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
this_is_midline:
        DS8 4

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  620 int FindMidLine_lastismidline(int row,int lastmidline,int lastleft,int lastright)
//  621 {
FindMidLine_lastismidline:
        PUSH     {R0-R10,LR}
        MOVS     R6,R0
        MOVS     R4,R2
        MOVS     R5,R3
//  622   lastleft-=10;
        SUBS     R4,R4,#+10
//  623   lastright+=10;
        ADDS     R5,R5,#+10
//  624   this_is_midline=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_27
        STR      R0,[R1, #+0]
//  625   int FindMidLine_i,FindMidLine_j,FindMidLine_k;
//  626   int FindMidLine_count=0,FindMidLine_count_Black=0;
        MOVS     R7,#+0
        MOVS     R8,#+0
//  627   int FindMidLine_data[4]=0;
        ADD      R0,SP,#+0
        MOVS     R1,#+16
        BL       __aeabi_memclr4
//  628   int row_a,row_b,row_c,row_d,row_e;
//  629   int tezheng=0;
        MOVS     R3,#+0
//  630   if(lastleft<7) lastleft=7;
        CMP      R4,#+7
        BGE.N    ??FindMidLine_lastismidline_0
        MOVS     R4,#+7
//  631   if(lastright>ColumnMax-8)lastright=ColumnMax-8;
??FindMidLine_lastismidline_0:
        CMP      R5,#+83
        BLT.N    ??FindMidLine_lastismidline_1
        MOVS     R5,#+82
//  632   
//  633   row_a=row-1;
??FindMidLine_lastismidline_1:
        SUBS     R0,R6,#+1
//  634   row_b=row;
        MOVS     R1,R6
//  635   row_c=row+1;
        ADDS     R2,R6,#+1
//  636   row_d=row-4;
        SUBS     R3,R6,#+4
//  637   row_e=row+4;
        ADDS     R12,R6,#+4
//  638   if(row_a<0)row_a=0;
        CMP      R0,#+0
        BPL.N    ??FindMidLine_lastismidline_2
        MOVS     R0,#+0
//  639   if(row_b<0)row_b=0;
??FindMidLine_lastismidline_2:
        CMP      R1,#+0
        BPL.N    ??FindMidLine_lastismidline_3
        MOVS     R1,#+0
//  640   if(row_c<0)row_c=0;
??FindMidLine_lastismidline_3:
        CMP      R2,#+0
        BPL.N    ??FindMidLine_lastismidline_4
        MOVS     R2,#+0
//  641   if(row_d<0)row_d=0;
??FindMidLine_lastismidline_4:
        CMP      R3,#+0
        BPL.N    ??FindMidLine_lastismidline_5
        MOVS     R3,#+0
//  642   if(row_e<0)row_e=0;
??FindMidLine_lastismidline_5:
        CMP      R12,#+0
        BPL.N    ??FindMidLine_lastismidline_6
        MOVS     R12,#+0
//  643   if(row_a>RowMax-1)row_a=RowMax-1;
??FindMidLine_lastismidline_6:
        CMP      R0,#+100
        BLT.N    ??FindMidLine_lastismidline_7
        MOVS     R0,#+99
//  644   if(row_b>RowMax-1)row_b=RowMax-1;
??FindMidLine_lastismidline_7:
        CMP      R1,#+100
        BLT.N    ??FindMidLine_lastismidline_8
        MOVS     R1,#+99
//  645   if(row_c>RowMax-1)row_c=RowMax-1;
??FindMidLine_lastismidline_8:
        CMP      R2,#+100
        BLT.N    ??FindMidLine_lastismidline_9
        MOVS     R2,#+99
//  646   if(row_d>RowMax-1)row_d=RowMax-1;
??FindMidLine_lastismidline_9:
        CMP      R3,#+100
        BLT.N    ??FindMidLine_lastismidline_10
        MOVS     R3,#+99
//  647   if(row_e>RowMax-1)row_e=RowMax-1;
??FindMidLine_lastismidline_10:
        CMP      R12,#+100
        BLT.N    ??FindMidLine_lastismidline_11
        MOVS     R12,#+99
//  648   for(FindMidLine_i=lastleft;FindMidLine_i<=lastright;FindMidLine_i++)
??FindMidLine_lastismidline_11:
        B.N      ??FindMidLine_lastismidline_12
//  649   {  tezheng=0;
//  650   if(ThresholdData[row_b][FindMidLine_i]==Black&&
//  651      ThresholdData[row_b][FindMidLine_i-3]==White&&
//  652        ThresholdData[row_b][FindMidLine_i+3]==White
//  653          ) 
//  654     
//  655     tezheng=1000;
//  656   if(tezheng<1000) continue;
??FindMidLine_lastismidline_13:
??FindMidLine_lastismidline_14:
        ADDS     R4,R4,#+1
??FindMidLine_lastismidline_12:
        CMP      R5,R4
        BLT.W    ??FindMidLine_lastismidline_15
        MOVS     R3,#+0
        LDR.W    R12,??DataTable7
        MOVS     LR,#+90
        MLA      R12,LR,R1,R12
        LDRB     R12,[R4, R12]
        CMP      R12,#+30
        BNE.N    ??FindMidLine_lastismidline_16
        LDR.W    R12,??DataTable7
        MOVS     LR,#+90
        MLA      R12,LR,R1,R12
        ADDS     R12,R4,R12
        LDRB     R12,[R12, #-3]
        CMP      R12,#+200
        BNE.N    ??FindMidLine_lastismidline_16
        LDR.W    R12,??DataTable7
        MOVS     LR,#+90
        MLA      R12,LR,R1,R12
        ADDS     R12,R4,R12
        LDRB     R12,[R12, #+3]
        CMP      R12,#+200
        BNE.N    ??FindMidLine_lastismidline_16
        MOV      R3,#+1000
??FindMidLine_lastismidline_16:
        CMP      R3,#+1000
        BLT.N    ??FindMidLine_lastismidline_13
//  657   if(row_c!=row_b&&
//  658      (ThresholdData[row_c][FindMidLine_i]==Black||
//  659       ThresholdData[row_c][FindMidLine_i-1]==Black||
//  660         ThresholdData[row_c][FindMidLine_i+1]==Black)
//  661        )
        CMP      R2,R1
        BEQ.N    ??FindMidLine_lastismidline_17
        LDR.W    R12,??DataTable7
        MOVS     LR,#+90
        MLA      R12,LR,R2,R12
        LDRB     R12,[R4, R12]
        CMP      R12,#+30
        BEQ.N    ??FindMidLine_lastismidline_18
        LDR.W    R12,??DataTable7
        MOVS     LR,#+90
        MLA      R12,LR,R2,R12
        ADDS     R12,R4,R12
        LDRB     R12,[R12, #-1]
        CMP      R12,#+30
        BEQ.N    ??FindMidLine_lastismidline_18
        LDR.W    R12,??DataTable7
        MOVS     LR,#+90
        MLA      R12,LR,R2,R12
        ADDS     R12,R4,R12
        LDRB     R12,[R12, #+1]
        CMP      R12,#+30
        BNE.N    ??FindMidLine_lastismidline_17
//  662     tezheng+=100;
??FindMidLine_lastismidline_18:
        ADDS     R3,R3,#+100
//  663   if(row_a!=row_b&&
//  664      (ThresholdData[row_a][FindMidLine_i]==Black||
//  665       ThresholdData[row_a][FindMidLine_i-1]==Black||
//  666         ThresholdData[row_a][FindMidLine_i+1]==Black)
//  667        &&tezheng<1100
//  668          )
??FindMidLine_lastismidline_17:
        CMP      R0,R1
        BEQ.N    ??FindMidLine_lastismidline_19
        LDR.W    R12,??DataTable7
        MOVS     LR,#+90
        MLA      R12,LR,R0,R12
        LDRB     R12,[R4, R12]
        CMP      R12,#+30
        BEQ.N    ??FindMidLine_lastismidline_20
        LDR.W    R12,??DataTable7
        MOVS     LR,#+90
        MLA      R12,LR,R0,R12
        ADDS     R12,R4,R12
        LDRB     R12,[R12, #-1]
        CMP      R12,#+30
        BEQ.N    ??FindMidLine_lastismidline_20
        LDR.W    R12,??DataTable7
        MOVS     LR,#+90
        MLA      R12,LR,R0,R12
        ADDS     R12,R4,R12
        LDRB     R12,[R12, #+1]
        CMP      R12,#+30
        BNE.N    ??FindMidLine_lastismidline_19
??FindMidLine_lastismidline_20:
        MOVW     R12,#+1100
        CMP      R3,R12
        BGE.N    ??FindMidLine_lastismidline_19
//  669     tezheng+=100;
        ADDS     R3,R3,#+100
//  670   if(tezheng<1100) continue;
??FindMidLine_lastismidline_19:
        MOVW     R12,#+1100
        CMP      R3,R12
        BLT.W    ??FindMidLine_lastismidline_14
//  671   FindMidLine_count_Black=0;
??FindMidLine_lastismidline_21:
        MOVS     R8,#+0
//  672   for(FindMidLine_j=row_a;FindMidLine_j<=row_c;FindMidLine_j++)
        MOV      R12,R0
        B.N      ??FindMidLine_lastismidline_22
//  673   {
//  674     for(FindMidLine_k=FindMidLine_i-7;FindMidLine_k<=FindMidLine_i+7;FindMidLine_k++)
//  675     {
//  676       if(ThresholdData[FindMidLine_j][FindMidLine_k]==Black)FindMidLine_count_Black++;
??FindMidLine_lastismidline_23:
        LDR.W    R9,??DataTable7
        MOVS     R10,#+90
        MLA      R9,R10,R12,R9
        LDRB     R9,[LR, R9]
        CMP      R9,#+30
        BNE.N    ??FindMidLine_lastismidline_24
        ADDS     R8,R8,#+1
//  677     }   
??FindMidLine_lastismidline_24:
        ADDS     LR,LR,#+1
??FindMidLine_lastismidline_25:
        ADDS     R9,R4,#+7
        CMP      R9,LR
        BGE.N    ??FindMidLine_lastismidline_23
        ADDS     R12,R12,#+1
??FindMidLine_lastismidline_22:
        CMP      R2,R12
        BLT.N    ??FindMidLine_lastismidline_26
        SUBS     LR,R4,#+7
        B.N      ??FindMidLine_lastismidline_25
//  678   }
//  679   
//  680   if(FindMidLine_count_Black<=8*(row_c-row_a+1))tezheng+=10;
??FindMidLine_lastismidline_26:
        SUBS     R12,R2,R0
        ADDS     R12,R12,#+1
        LSLS     R12,R12,#+3
        CMP      R12,R8
        BLT.N    ??FindMidLine_lastismidline_27
        ADDS     R3,R3,#+10
//  681   
//  682   if(tezheng>=1110) 
??FindMidLine_lastismidline_27:
        MOVW     R12,#+1110
        CMP      R3,R12
        BLT.W    ??FindMidLine_lastismidline_14
//  683   {
//  684     FindMidLine_data[FindMidLine_count++]=FindMidLine_i;
        ADD      R0,SP,#+0
        STR      R4,[R0, R7, LSL #+2]
        ADDS     R7,R7,#+1
//  685     FindMidLine_i+=7;
        ADDS     R4,R4,#+7
//  686     if(row>RowMax-BlackEndMax&&(fabss(FindMidLine_data[0]-BlackEndColumnMax)>30))   return -1;
        LDR.N    R0,??DataTable7_5
        LDR      R0,[R0, #+0]
        RSBS     R0,R0,#+100
        CMP      R0,R6
        BGE.N    ??FindMidLine_lastismidline_28
        LDR      R0,[SP, #+0]
        LDR.N    R1,??DataTable7_15
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       `fabss`
        CMP      R0,#+31
        BLT.N    ??FindMidLine_lastismidline_28
        MOVS     R0,#-1
        B.N      ??FindMidLine_lastismidline_29
//  687     this_is_midline=1;
??FindMidLine_lastismidline_28:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_27
        STR      R0,[R1, #+0]
//  688     return FindMidLine_data[0]+2;
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+2
        B.N      ??FindMidLine_lastismidline_29
//  689     
//  690   }
//  691   
//  692   }
//  693   
//  694   if(FindMidLine_count==0)
??FindMidLine_lastismidline_15:
        CMP      R7,#+0
        BNE.N    ??FindMidLine_lastismidline_30
//  695   {
//  696     return -1;
        MOVS     R0,#-1
        B.N      ??FindMidLine_lastismidline_29
//  697   }
//  698   else 
//  699   { if(row>RowMax-BlackEndMax&&(fabss(FindMidLine_data[0]-BlackEndColumnMax)>30))   return -1;
??FindMidLine_lastismidline_30:
        LDR.N    R0,??DataTable7_5
        LDR      R0,[R0, #+0]
        RSBS     R0,R0,#+100
        CMP      R0,R6
        BGE.N    ??FindMidLine_lastismidline_31
        LDR      R0,[SP, #+0]
        LDR.N    R1,??DataTable7_15
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       `fabss`
        CMP      R0,#+31
        BLT.N    ??FindMidLine_lastismidline_31
        MOVS     R0,#-1
        B.N      ??FindMidLine_lastismidline_29
//  700     this_is_midline=1;
??FindMidLine_lastismidline_31:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_27
        STR      R0,[R1, #+0]
//  701     return FindMidLine_data[0];
        LDR      R0,[SP, #+0]
??FindMidLine_lastismidline_29:
        ADD      SP,SP,#+16
        POP      {R4-R10,PC}      ;; return
//  702   }
//  703   
//  704   
//  705   
//  706   
//  707   
//  708   
//  709   
//  710   
//  711 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     UseStaticFlag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     StaticThreshold

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     ThresholdValue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     ImageData
//  712 
//  713 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  714 int FindMidLine_lastisnotmidline(int row,int lastmidline,int lastleft,int lastright)
//  715 { return FindMidLine_lastismidline(row,lastmidline,lastleft,lastright);
FindMidLine_lastisnotmidline:
        PUSH     {R7,LR}
        BL       FindMidLine_lastismidline
        POP      {R1,PC}          ;; return
//  716 int i_FindMidLine=0;
//  717 int i_Find_left,i_Find_right;
//  718 int Find_leftline=-45,Find_rightline=-15;
//  719 this_is_midline=0;
//  720 int f_left,f_right;
//  721 int found_left=-1,found_right=-1;
//  722 for(i_FindMidLine=0;i_FindMidLine<40;i_FindMidLine++)
//  723 {
//  724   found_left=-1;found_right=-1;
//  725   f_left=lastmidline-i_FindMidLine;
//  726   f_right=lastmidline+i_FindMidLine;
//  727   
//  728   if(f_left<8)f_left=8;
//  729   if(f_right>ColumnMax-9)f_right=ColumnMax-9;
//  730   if(ThresholdData[row][f_left]==Black&&ThresholdData[row][f_left+2]==White&&ThresholdData[row][f_left+3]==White&&ThresholdData[row][f_left+1]==White&&ThresholdData[row][f_left-8]==White
//  731      &&(ThresholdData[row][f_left+1]==Black||ThresholdData[row][f_left-1]==Black||ThresholdData[row+1][f_left]==Black||ThresholdData[row][f_left-1]==Black)) found_left=f_left;
//  732   if(ThresholdData[row][f_right]==Black&&ThresholdData[row][f_right-2]==White&&ThresholdData[row][f_right-3]==White&&ThresholdData[row][f_right-1]==White&&ThresholdData[row][f_right+8]==White
//  733      &&(ThresholdData[row][f_right+1]==Black==Black||ThresholdData[row][f_right-1]==Black||ThresholdData[row+1][f_right]==Black||ThresholdData[row][f_right-1]==Black)) found_right=f_right;  
//  734   if(found_left>-1||found_right>-1) break;
//  735 }
//  736 
//  737 if(found_left>-1)
//  738 {
//  739   this_is_midline=1;
//  740   
//  741   return found_left;
//  742 }
//  743 else if(found_right>-1)
//  744 {
//  745   this_is_midline=1;
//  746   
//  747   return found_right;
//  748 }
//  749 
//  750 
//  751 else
//  752 {
//  753   this_is_midline=0;
//  754   return -1;
//  755 }
//  756 
//  757 
//  758 
//  759 
//  760 }

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  761 int hx_end[ColumnMax]=0;
hx_end:
        DS8 360

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  762 int hx_end_line=RowMax;
hx_end_line:
        DATA
        DC32 100

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  763 int FindHeixian()
//  764 {
FindHeixian:
        PUSH     {R3-R7,LR}
//  765   int hx_j,hx_k;
//  766   int Cfind,Rfind;
//  767   int hx_row=12;
        MOVS     R0,#+12
//  768   int hx_find_count;
//  769   int find_white=0;
        MOVS     R1,#+0
//  770   hx_end_line=RowMax;
        MOVS     R2,#+100
        LDR.N    R3,??DataTable7_28
        STR      R2,[R3, #+0]
//  771   hx_find_count_max=0;
        MOVS     R2,#+0
        LDR.N    R3,??DataTable7_29
        STR      R2,[R3, #+0]
//  772   hx_found_Column=0;
        MOVS     R2,#+0
        LDR.N    R3,??DataTable7_30
        STR      R2,[R3, #+0]
//  773   Cfind=1;
        MOVS     R2,#+1
//  774   hx_find_count=0;
        MOVS     R4,#+0
//  775   
//  776   for(hx_j=0;hx_j<ColumnMax-1;hx_j++)
        MOVS     R5,#+0
        B.N      ??FindHeixian_0
//  777   {find_white=0;
//  778     Rfind=1;
//  779    
//  780     for(hx_k=RowMax-1;hx_k>40;hx_k--)
//  781     {  if(hx_k>90)hx_row=14;else hx_row=12;
//  782       if(ThresholdData[hx_k][hx_j]==White) 
//  783       {find_white++;}
//  784       else if(ThresholdData[hx_k-1][hx_j]==Black&&ThresholdData[hx_k-2][hx_j]==Black&&ThresholdData[hx_k-3][hx_j]==Black&&
//  785               ThresholdData[hx_k-hx_row][hx_j]==White&&ThresholdData[hx_k-hx_row-1][hx_j]==White&&(BlackEndMax<8||find_white>0)       
//  786               &&hx_k<(RowMax-BlackEndMax+15)
//  787                 )
//  788       {
//  789         hx_find_count++; 
//  790         hx_end[hx_j]=hx_k-hx_row;
//  791         break;
//  792       }
//  793       else if(ThresholdData[hx_k-1][hx_j]==Black&&ThresholdData[hx_k-2][hx_j]==Black&&ThresholdData[hx_k-3][hx_j]==Black&&
//  794               ThresholdData[hx_k-hx_row][hx_j]==Black&&ThresholdData[hx_k-hx_row-1][hx_j]==Black       
//  795                 )
??FindHeixian_1:
        LDR.N    R3,??DataTable7
        MOVS     R7,#+90
        MLA      R3,R7,R2,R3
        ADDS     R3,R5,R3
        LDRB     R3,[R3, #-90]
        CMP      R3,#+30
        BNE.N    ??FindHeixian_2
        LDR.N    R3,??DataTable7
        MOVS     R7,#+90
        MLA      R3,R7,R2,R3
        ADDS     R3,R5,R3
        LDRB     R3,[R3, #-180]
        CMP      R3,#+30
        BNE.N    ??FindHeixian_2
        LDR.N    R3,??DataTable7
        MOVS     R7,#+90
        MLA      R3,R7,R2,R3
        ADDS     R3,R5,R3
        SUBS     R3,R3,#+270
        LDRB     R3,[R3, #+0]
        CMP      R3,#+30
        BNE.N    ??FindHeixian_2
        LDR.N    R3,??DataTable7
        SUBS     R7,R2,R0
        MOVS     R12,#+90
        MLA      R3,R12,R7,R3
        LDRB     R3,[R5, R3]
        CMP      R3,#+30
        BNE.N    ??FindHeixian_2
        LDR.N    R3,??DataTable7
        SUBS     R0,R2,R0
        MOVS     R7,#+90
        MLA      R0,R7,R0,R3
        ADDS     R0,R5,R0
        LDRB     R0,[R0, #-90]
        CMP      R0,#+30
        BNE.N    ??FindHeixian_2
//  796       {
//  797         Rfind=0;
        MOVS     R6,#+0
//  798         break;
//  799       }
//  800       
//  801     }
//  802     if(hx_find_count>hx_find_count_max)
??FindHeixian_3:
        LDR.N    R0,??DataTable7_29
        LDR      R0,[R0, #+0]
        CMP      R0,R4
        BGE.N    ??FindHeixian_4
//  803     {
//  804       hx_find_count_max=hx_find_count;
        LDR.N    R0,??DataTable7_29
        STR      R4,[R0, #+0]
//  805       hx_found_Column=hx_j-(int)(hx_find_count*0.5);    
        MOVS     R0,R4
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable7_31  ;; 0x3fe00000
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        SUBS     R0,R5,R0
        LDR.N    R1,??DataTable7_30
        STR      R0,[R1, #+0]
//  806     }
//  807     
//  808     if(Rfind==0){hx_find_count=0;}
??FindHeixian_4:
        CMP      R6,#+0
        BNE.N    ??FindHeixian_5
        MOVS     R4,#+0
??FindHeixian_5:
        ADDS     R5,R5,#+1
??FindHeixian_0:
        CMP      R5,#+89
        BGE.N    ??FindHeixian_6
        MOVS     R1,#+0
        MOVS     R6,#+1
        MOVS     R2,#+99
        B.N      ??FindHeixian_7
??FindHeixian_8:
        MOVS     R0,#+12
??FindHeixian_9:
        LDR.N    R3,??DataTable7
        MOVS     R7,#+90
        MLA      R3,R7,R2,R3
        LDRB     R3,[R5, R3]
        CMP      R3,#+200
        BNE.N    ??FindHeixian_10
        ADDS     R1,R1,#+1
??FindHeixian_2:
        SUBS     R2,R2,#+1
??FindHeixian_7:
        CMP      R2,#+41
        BLT.N    ??FindHeixian_3
        CMP      R2,#+91
        BLT.N    ??FindHeixian_8
        MOVS     R0,#+14
        B.N      ??FindHeixian_9
??FindHeixian_10:
        LDR.N    R3,??DataTable7
        MOVS     R7,#+90
        MLA      R3,R7,R2,R3
        ADDS     R3,R5,R3
        LDRB     R3,[R3, #-90]
        CMP      R3,#+30
        BNE.N    ??FindHeixian_1
        LDR.N    R3,??DataTable7
        MOVS     R7,#+90
        MLA      R3,R7,R2,R3
        ADDS     R3,R5,R3
        LDRB     R3,[R3, #-180]
        CMP      R3,#+30
        BNE.N    ??FindHeixian_1
        LDR.N    R3,??DataTable7
        MOVS     R7,#+90
        MLA      R3,R7,R2,R3
        ADDS     R3,R5,R3
        SUBS     R3,R3,#+270
        LDRB     R3,[R3, #+0]
        CMP      R3,#+30
        BNE.N    ??FindHeixian_1
        LDR.N    R3,??DataTable7
        SUBS     R7,R2,R0
        MOVS     R12,#+90
        MLA      R3,R12,R7,R3
        LDRB     R3,[R5, R3]
        CMP      R3,#+200
        BNE.W    ??FindHeixian_1
        LDR.N    R3,??DataTable7
        SUBS     R7,R2,R0
        MOVS     R12,#+90
        MLA      R3,R12,R7,R3
        ADDS     R3,R5,R3
        LDRB     R3,[R3, #-90]
        CMP      R3,#+200
        BNE.W    ??FindHeixian_1
        LDR.N    R3,??DataTable7_5
        LDR      R3,[R3, #+0]
        CMP      R3,#+8
        BLT.N    ??FindHeixian_11
        CMP      R1,#+1
        BLT.W    ??FindHeixian_1
??FindHeixian_11:
        LDR.N    R3,??DataTable7_5
        LDR      R3,[R3, #+0]
        RSBS     R3,R3,#+115
        CMP      R2,R3
        BGE.W    ??FindHeixian_1
        ADDS     R4,R4,#+1
        SUBS     R0,R2,R0
        LDR.N    R1,??DataTable7_32
        STR      R0,[R1, R5, LSL #+2]
        B.N      ??FindHeixian_3
//  809     
//  810     
//  811     
//  812   }
//  813   
//  814   hx_end_line=hx_end[hx_found_Column]-8;
??FindHeixian_6:
        LDR.N    R0,??DataTable7_32
        LDR.N    R1,??DataTable7_30
        LDR      R1,[R1, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        SUBS     R0,R0,#+8
        LDR.N    R1,??DataTable7_28
        STR      R0,[R1, #+0]
//  815   if(hx_end_line<10)hx_end_line=10;
        LDR.N    R0,??DataTable7_28
        LDR      R0,[R0, #+0]
        CMP      R0,#+10
        BGE.N    ??FindHeixian_12
        MOVS     R0,#+10
        LDR.N    R1,??DataTable7_28
        STR      R0,[R1, #+0]
//  816   return hx_find_count_max; 
??FindHeixian_12:
        LDR.N    R0,??DataTable7_29
        LDR      R0,[R0, #+0]
        POP      {R1,R4-R7,PC}    ;; return
//  817   
//  818   
//  819 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     ThresholdData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     ImageData+0x2327

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     BlackEndL

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     BlackEndM

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     BlackEndR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     BlackEndMax

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DC32     BlackEndLMR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_7:
        DC32     g_Derict

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_8:
        DC32     BlackEndA

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_9:
        DC32     BlackEndB

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_10:
        DC32     BlackEndC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_11:
        DC32     BlackEndD

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_12:
        DC32     BlackEndE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_13:
        DC32     BlackEndF

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_14:
        DC32     BlackEndG

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_15:
        DC32     BlackEndColumnMax

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_16:
        DC32     StoreFlag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_17:
        DC32     StableNumbers

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_18:
        DC32     LeftStableNumbers

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_19:
        DC32     RightStableNumbers

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_20:
        DC32     MidLineExcursion

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_21:
        DC32     TopE1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_22:
        DC32     TopE2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_23:
        DC32     MidLineVariance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_24:
        DC32     0x40590000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_25:
        DC32     0x4062c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_26:
        DC32     RoadType

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_27:
        DC32     this_is_midline

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_28:
        DC32     hx_end_line

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_29:
        DC32     hx_find_count_max

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_30:
        DC32     hx_found_Column

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_31:
        DC32     0x3fe00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_32:
        DC32     hx_end
//  820 
//  821 
//  822 
//  823 
//  824 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  825 unsigned char ValidLine[RowMax] = {0};//1 - 左找到线 2--右找到线  两边都找到线-3 都找不到线-0
ValidLine:
        DS8 100

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  826 int NoValidMax = 0;//连续两边找不到线计数
NoValidMax:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  827 int hx=0,hx_i=5000,sfminline=-1;
hx:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
hx_i:
        DATA
        DC32 5000

        SECTION `.data`:DATA:REORDER:NOROOT(2)
sfminline:
        DATA
        DC32 -1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  828 int EndType=0;
EndType:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  829 int mid_line_count=0;
mid_line_count:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  830 int mode1=0,mode2=0,mode3=0,mode4=0;
mode1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
mode2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
mode3:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
mode4:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  831 int mode4_zhangai=0;
mode4_zhangai:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  832 int mid_line_count_ls=0;
mid_line_count_ls:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  833 int mid_line_count_last=0;
mid_line_count_last:
        DS8 4
//  834 //提取图像中心线

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  835 void GetLMR()
//  836 {	
GetLMR:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+68
//  837   int i=0,j=0;
        MOVS     R6,#+0
        MOVS     R0,#+0
//  838   int temLeft = 0;
        MOVS     R1,#+0
        STR      R1,[SP, #+4]
//  839   int temRight = 0;
        MOVS     R1,#+0
        STR      R1,[SP, #+4]
//  840   int pLeft = ColumnMax/2,pRight = ColumnMax/2;
        MOVS     R9,#+45
        MOVS     R4,#+45
//  841   unsigned char bFoundLeft = 0;
        MOVS     R1,#+0
        STRB     R1,[SP, #+0]
//  842   unsigned char bFoundRight = 0;
        MOVS     R8,#+0
//  843   unsigned char TripLen = 3;
        MOVS     R1,#+3
        STRB     R1,[SP, #+1]
//  844   
//  845   int LeftEnd = 0;
        MOVS     R1,#+0
        STR      R1,[SP, #+24]
//  846   int RightEnd = 0;
        MOVS     R1,#+0
        STR      R1,[SP, #+20]
//  847   int MidEnd = 0;
        MOVS     R1,#+0
        STR      R1,[SP, #+12]
//  848   unsigned char LeftMiss = 0;
        MOVS     R1,#+0
        STRB     R1,[SP, #+1]
//  849   unsigned char RightMiss = 0;
        MOVS     R1,#+0
        STRB     R1,[SP, #+1]
//  850   
//  851   unsigned char MidToBlackCount = 0;
        MOVS     R1,#+0
        STRB     R1,[SP, #+1]
//  852   int zhijiao=0;
        MOVS     R1,#+0
        STR      R1,[SP, #+64]
//  853   
//  854   int NoValidCount = 0;
        MOVS     R1,#+0
        STR      R1,[SP, #+4]
//  855   NoValidMax = 0;
        MOVS     R1,#+0
        LDR.W    R2,??GetLMR_0
        STR      R1,[R2, #+0]
//  856   
//  857   StableNumbers = 0;
        MOVS     R1,#+0
        LDR.W    R2,??GetLMR_0+0x4
        STR      R1,[R2, #+0]
//  858   LeftStableNumbers = 0;
        MOVS     R1,#+0
        LDR.W    R2,??GetLMR_0+0x8
        STR      R1,[R2, #+0]
//  859   RightStableNumbers = 0;
        MOVS     R1,#+0
        LDR.W    R2,??GetLMR_0+0xC
        STR      R1,[R2, #+0]
//  860   EndType=0;
        MOVS     R1,#+0
        LDR.W    R2,??GetLMR_0+0x10
        STR      R1,[R2, #+0]
//  861   ValidLineCount1 = 0;
        MOVS     R1,#+0
        LDR.W    R2,??GetLMR_0+0x14
        STR      R1,[R2, #+0]
//  862   ValidLineCount2 = 0;
        MOVS     R1,#+0
        LDR.W    R2,??GetLMR_0+0x18
        STR      R1,[R2, #+0]
//  863   int CountBlack = 0;
        MOVS     R1,#+0
        STR      R1,[SP, #+44]
//  864   int CountWhite = 0;
        MOVS     R1,#+0
        STR      R1,[SP, #+40]
//  865   midline_fcount=0;
        MOVS     R1,#+0
        LDR.W    R2,??GetLMR_0+0x1C
        STR      R1,[R2, #+0]
//  866   midline_fcount_max=0;
        MOVS     R1,#+0
        LDR.W    R2,??GetLMR_0+0x20
        STR      R1,[R2, #+0]
//  867   last_is_midline=0;
        MOVS     R1,#+0
        LDR.W    R2,??GetLMR_0+0x24
        STR      R1,[R2, #+0]
//  868   this_is_midline=0;
        MOVS     R1,#+0
        LDR.W    R2,??GetLMR_0+0x28
        STR      R1,[R2, #+0]
//  869   BlackRow=0;
        MOVS     R1,#+0
        LDR.W    R2,??GetLMR_0+0x2C
        STRB     R1,[R2, #+0]
//  870   WhiteRow=0;
        MOVS     R1,#+0
        LDR.W    R2,??GetLMR_1
        STRB     R1,[R2, #+0]
//  871   WhiteRow1=0;
        MOVS     R1,#+0
        LDR.W    R2,??GetLMR_1+0x4
        STRB     R1,[R2, #+0]
//  872   sfminline=-1;
        MOVS     R1,#-1
        LDR.W    R2,??GetLMR_1+0x8
        STR      R1,[R2, #+0]
//  873   mid_line_count=0;
        MOVS     R1,#+0
        LDR.W    R2,??GetLMR_1+0xC
        STR      R1,[R2, #+0]
//  874   mid_line_count_ls=0;
        MOVS     R1,#+0
        LDR.W    R2,??GetLMR_1+0x10
        STR      R1,[R2, #+0]
//  875   LeftWhite = RightWhite = 0;
        MOVS     R1,#+0
        LDR.W    R2,??GetLMR_1+0x14
        STRB     R1,[R2, #+0]
        LDR.W    R1,??GetLMR_1+0x14
        LDRB     R1,[R1, #+0]
        LDR.W    R2,??GetLMR_1+0x18
        STRB     R1,[R2, #+0]
//  876   int czh; //要查找的列数
//  877   int cz_z,cz_y;//左右查找截至列
//  878   //定义左右查找黑白点数
//  879   int CountWhite_Left=0,CountBlack_Left=0,CountWhite_Right=0,CountBlack_Right=0;
        MOVS     R11,#+0
        MOVS     R10,#+0
        MOVS     R7,#+0
        MOVS     R5,#+0
//  880   int tb_z_r=0,tb_y_r=0;
        MOVS     R1,#+0
        STR      R1,[SP, #+52]
        MOVS     R1,#+0
        STR      R1,[SP, #+48]
//  881   yxhs=0;
        MOVS     R1,#+0
        LDR.W    R2,??GetLMR_2
        STR      R1,[R2, #+0]
//  882   tbs_z=0;
        MOVS     R1,#+0
        LDR.W    R2,??GetLMR_2+0x4
        STR      R1,[R2, #+0]
//  883   tbs_y=0;
        MOVS     R1,#+0
        LDR.W    R2,??GetLMR_2+0x8
        STR      R1,[R2, #+0]
//  884   
//  885   int shizi=0;
        MOVS     R1,#+0
        STR      R1,[SP, #+4]
//  886   int last_all_find=RowMax;
        MOVS     R1,#+100
        STR      R1,[SP, #+32]
//  887   mode1=0;mode2=0;mode3=0;mode4=0;
        MOVS     R1,#+0
        LDR.W    R2,??GetLMR_2+0xC
        STR      R1,[R2, #+0]
        MOVS     R1,#+0
        LDR.W    R2,??GetLMR_2+0x10
        STR      R1,[R2, #+0]
        MOVS     R1,#+0
        LDR.W    R2,??GetLMR_2+0x14
        STR      R1,[R2, #+0]
        MOVS     R1,#+0
        LDR.W    R2,??GetLMR_2+0x18
        STR      R1,[R2, #+0]
//  888   mode4_zhangai=0;
        MOVS     R1,#+0
        LDR.W    R2,??GetLMR_2+0x1C
        STR      R1,[R2, #+0]
//  889   zaw_mode=0;
        MOVS     R1,#+0
        LDR.W    R2,??GetLMR_2+0x20
        STR      R1,[R2, #+0]
//  890   int heixian=RowMax;
        MOVS     R1,#+100
        STR      R1,[SP, #+8]
//  891   int heidian_count=0;
        MOVS     R1,#+0
//  892   int line_7=1;
        MOVS     R2,#+1
        STR      R2,[SP, #+60]
//  893   int line_8=1;
        MOVS     R2,#+1
        STR      R2,[SP, #+56]
//  894   
//  895   
//  896   int heixian_find_start=RowMax-1;
        MOVS     R2,#+99
//  897   
//  898   int hx_j=0;
        MOVS     R3,#+0
//  899   int hx_count=0;
        MOVS     R12,#+0
//  900   int hx_ls_find;
//  901   if(BlackEndMax<RowMax*0.6&&FindMidLine_lastismidline(RowMax-1,MidPos,0,ColumnMax)==-1)
        LDR.W    LR,??GetLMR_2+0x24
        LDR      LR,[LR, #+0]
        CMP      LR,#+60
        BGE.N    ??GetLMR_3
        MOVS     R3,#+90
        MOVS     R2,#+0
        LDR.W    R0,??GetLMR_4
        LDR      R1,[R0, #+0]
        MOVS     R0,#+99
        BL       FindMidLine_lastismidline
        CMN      R0,#+1
        BNE.N    ??GetLMR_3
//  902   {
//  903   hx_find_count_max=0;
        MOVS     R0,#+0
        LDR.W    R1,??GetLMR_4+0x4
        STR      R0,[R1, #+0]
//  904   hx_ls_find=FindHeixian();
        BL       FindHeixian
//  905   if(hx_find_count_max>20)
        LDR.W    R1,??GetLMR_4+0x4
        LDR      R1,[R1, #+0]
        CMP      R1,#+21
        BLT.N    ??GetLMR_3
//  906   {hx_i=0;
        MOVS     R0,#+0
        LDR.W    R1,??GetLMR_4+0x8
        STR      R0,[R1, #+0]
//  907   heixian=hx_end_line;
        LDR.W    R0,??GetLMR_4+0xC
        LDR      R0,[R0, #+0]
        STR      R0,[SP, #+8]
//  908   }   
//  909   }
//  910   //  if(ThresholdData[(int)(RowMax*0.7)][MidPos]==White&&BlackEndMax<RowMax*0.5)
//  911   //  { int baidian=0,heidian=0;
//  912   //  for(i = RowMax-1;i >= RowMax*0.7;i--)
//  913   //  {
//  914   //    if(ThresholdData[i][MidPos]==White) baidian++;
//  915   //    else heidian++;               
//  916   //  }
//  917   //  
//  918   //  if(heidian>0&&heidian<14)
//  919   //  {
//  920   //    
//  921   //    for(i = RowMax-1;i >=RowMax*0.7;i--)
//  922   //    {
//  923   //      if(ThresholdData[i][MidPos]==Black&&ThresholdData[i-1][MidPos]==White&&ThresholdData[i-2][MidPos]==White)
//  924   //        //        for(hx_i=i;hx_i<RowMax-1;hx_i++)
//  925   //        //        {hx_count=0;
//  926   //        //        for(hx_j=(int)(ColumnMax*0.25);hx_j<ColumnMax*0.75;hx_j++)
//  927   //        //        {
//  928   //        //          if(ThresholdData[hx_i][hx_j]==White) hx_count++;
//  929   //        //        }
//  930   //        //        if(hx_count<8) break;
//  931   //        //        }
//  932   //        //      if(hx_count<8)  heixian=i-2;
//  933   //        heixian=i-2;
//  934   //      
//  935   //    }
//  936   //    
//  937   //  }
//  938   //  } 
//  939   
//  940   
//  941   if(hx_i<92) hx_i++;
??GetLMR_3:
        LDR.W    R0,??GetLMR_4+0x8
        LDR      R0,[R0, #+0]
        CMP      R0,#+92
        BGE.N    ??GetLMR_5
        LDR.W    R0,??GetLMR_4+0x8
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??GetLMR_4+0x8
        STR      R0,[R1, #+0]
//  942   if(hx_i<90) hx=1;else hx=0; 
??GetLMR_5:
        LDR.W    R0,??GetLMR_4+0x8
        LDR      R0,[R0, #+0]
        CMP      R0,#+90
        BGE.N    ??GetLMR_6
        MOVS     R0,#+1
        LDR.W    R1,??GetLMR_4+0x10
        STR      R0,[R1, #+0]
        B.N      ??GetLMR_7
??GetLMR_6:
        MOVS     R0,#+0
        LDR.W    R1,??GetLMR_4+0x10
        STR      R0,[R1, #+0]
//  943   
//  944   
//  945   //    if (mid_line_count_last>4)
//  946   //  {
//  947   //  
//  948   //  heixian=RowMax-15;
//  949   //  }
//  950 label_hx:       
//  951   if(heixian!=RowMax)
??GetLMR_7:
        LDR      R0,[SP, #+8]
        CMP      R0,#+100
        BEQ.N    ??GetLMR_8
//  952   {
//  953     hx_i=0;
        MOVS     R0,#+0
        LDR.W    R1,??GetLMR_4+0x8
        STR      R0,[R1, #+0]
//  954     for(i=RowMax-1;i>=heixian;i--)
        MOVS     R6,#+99
        B.N      ??GetLMR_9
//  955     {
//  956       BlackLineData[i] = hx_found_Column;
??GetLMR_10:
        LDR.W    R0,??GetLMR_4+0x14
        LDR      R0,[R0, #+0]
        LDR.W    R1,??GetLMR_4+0x18
        STR      R0,[R1, R6, LSL #+2]
//  957     }
        SUBS     R6,R6,#+1
??GetLMR_9:
        LDR      R0,[SP, #+8]
        CMP      R6,R0
        BGE.N    ??GetLMR_10
//  958     
//  959   }
//  960   
//  961   
//  962   
//  963   
//  964   StableNumbers=RowMax-heixian;
??GetLMR_8:
        LDR      R0,[SP, #+8]
        RSBS     R0,R0,#+100
        LDR.W    R1,??GetLMR_0+0x4
        STR      R0,[R1, #+0]
//  965   for (i = heixian-1;i >= 0 && !MidEnd;i--)
        LDR      R0,[SP, #+8]
        SUBS     R6,R0,#+1
        B.N      ??GetLMR_11
//  966   {tiaobian_Left[i]=0;tiaobian_Right[i]=0;
//  967   int sdk;
//  968   if(i>=RowMax*0.55)
//  969   {
//  970     sdk=i*0.4*100/RowMax;
//  971     
//  972   }
//  973   else
//  974     
//  975   {
//  976     sdk=5+i*0.3*100/RowMax;
//  977   }
//  978   // 初始化遍历指针
//  979   //    BlackEndColumnMax=1;BlackEndMax = 0;
//  980   if (i>RowMax*2/3) czh=30; else if (i>RowMax/3) czh=20; else czh=13;
//  981   if(RowMax-i<BlackEndMax-5&&line_7)
//  982   {
//  983     czh=40;  
//  984     pLeft = BlackEndColumnMax;
//  985     pRight = BlackEndColumnMax;
//  986     if (pLeft<0) pLeft=0;
//  987     if (pLeft>ColumnMax-2) pLeft=ColumnMax-2;
//  988     if (pRight<0) pRight=0;
//  989     if (pRight>ColumnMax-2) pRight=ColumnMax-2;
//  990     cz_z=3;
//  991     cz_y=ColumnMax-3;
//  992     
//  993     
//  994     
//  995   }
//  996   else if (i < RowMax - 3&&i != heixian-1)
//  997   {       
//  998     
//  999     
// 1000     
// 1001     if(tb_z_r>0&&(tb_z_r-i)<RowMax*0.4&&MAX(RightBlack[i+1],RightBlack[i+2])>ColumnMax-12)  //左边有过跳变 
// 1002     {
// 1003       pLeft = ColumnMax;
// 1004       pRight = ColumnMax;
// 1005     }
// 1006     else if(tb_y_r>0&&(tb_y_r-i)<RowMax*0.4&&MIN(LeftBlack[i+1],LeftBlack[i+2])<10)//右边有过跳变
// 1007     {
// 1008       pLeft = 0;
// 1009       pRight = 0;
// 1010     }
// 1011     else
// 1012     {
// 1013       pLeft = LeftBlack[i+1]+czh;
// 1014       pRight = RightBlack[i+1]-czh;
// 1015     }
// 1016     
// 1017     
// 1018     if (pLeft<0) pLeft=0;
// 1019     if (pLeft>ColumnMax-2) pLeft=ColumnMax-2;
// 1020     if (pRight<0) pRight=0;
// 1021     if (pRight>ColumnMax-2) pRight=ColumnMax-2;
// 1022     cz_z=LeftBlack[i+1]-czh;
// 1023     cz_y=RightBlack[i+1]+czh;
// 1024     
// 1025     if (cz_z<0) cz_z=0;
// 1026     if (cz_z>ColumnMax-1) cz_z=ColumnMax-1;
// 1027     if (cz_y<0) cz_y=0;
// 1028     if (cz_y>ColumnMax-1) cz_y=ColumnMax-1;
// 1029     
// 1030   }
// 1031   else
// 1032   {     
// 1033     int ss;
// 1034     if(BlackEndL < 5 && BlackEndR > BlackEndM)
// 1035     {
// 1036       pLeft = (int)(ColumnMax*3/4);//3/4
// 1037       pRight = (int)(ColumnMax*3/4);	
// 1038       
// 1039     }
// 1040     else if(BlackEndR < 5 && BlackEndL > BlackEndM)
// 1041     {
// 1042       pLeft = (int)(ColumnMax*1/4);//1/4
// 1043       pRight = (int)(ColumnMax*1/4);
// 1044     }
// 1045     else
// 1046     {
// 1047       pLeft = (int)(ColumnMax/2);
// 1048       pRight = (int)(ColumnMax/2);
// 1049     }
// 1050     
// 1051     cz_z=3;
// 1052     cz_y=ColumnMax-3;
// 1053     if(heixian!=RowMax)
// 1054     {
// 1055       pLeft = (int)hx_found_Column;
// 1056       pRight = (int)hx_found_Column;
// 1057     }
// 1058     
// 1059     
// 1060   }
// 1061   
// 1062   
// 1063   // 初始化标记
// 1064   bFoundLeft = bFoundRight = 0;
// 1065   CountBlack = CountWhite = 0;
// 1066   // 两条黑线边缘提取
// 1067   LeftBlack[i]=-1;
// 1068   RightBlack[i]=ColumnMax+1;
// 1069   CountWhite_Left=0;CountBlack_Left=0;CountWhite_Right=0;CountBlack_Right=0;
// 1070   //============================================================================================                
// 1071   int middata=0,lastmiddata=0;
// 1072   if(i > RowMax - 3)lastmiddata=MidPos; else lastmiddata=BlackLineData[i+1];
// 1073   
// 1074   if(last_is_midline)
// 1075   {
// 1076     if(i == heixian-1) middata=FindMidLine_lastismidline(i,MidPos,0,ColumnMax);
// 1077      else middata=FindMidLine_lastismidline(i,BlackLineData[i+1],LeftBlack[i+1],RightBlack[i+1]);
// 1078     last_is_midline=this_is_midline;
// 1079     
// 1080     
// 1081      if(this_is_midline)
// 1082     {
// 1083       midline_fcount++;
// 1084       if(midline_fcount_max<midline_fcount)midline_fcount_max=midline_fcount;
// 1085     
// 1086     }
// 1087     else
// 1088     {
// 1089      midline_fcount=0;
// 1090     }
// 1091     if(middata==-1&&sfminline)
// 1092     {
// 1093       if(i<RowMax*0.85&&(BlackLineData[i+1]<ColumnMax*0.4||BlackLineData[i+1]>ColumnMax*0.6)&&midline_fcount_max>4)  
// 1094       {EndType=5;
// 1095       MidEnd = 1;                   
// 1096       goto lable;
// 1097       }
// 1098       else if((BlackLineData[i+1]<ColumnMax*0.2||BlackLineData[i+1]>ColumnMax*0.8)&&midline_fcount_max>4)
// 1099       {EndType=6;
// 1100       MidEnd = 1;
// 1101       goto lable;
// 1102       }
// 1103       if( mid_line_count_ls>4&&i>30)
// 1104       {
// 1105         int mid_line_i_ls=0;
// 1106         int mid_line_i_stop=i-12;
// 1107         for(mid_line_i_ls=i;mid_line_i_ls>mid_line_i_stop&&mid_line_i_ls>=0;mid_line_i_ls--)
// 1108         {
// 1109           BlackLineData[mid_line_i_ls]=BlackEndColumnMax;
// 1110           LeftBlack[mid_line_i_ls]=BlackEndColumnMax-sdk*1;
// 1111           RightBlack[mid_line_i_ls]= BlackEndColumnMax+sdk*1;
// 1112           i--;
// 1113           StableNumbers++;
// 1114         }
// 1115         mid_line_count_ls=0; 
// 1116         goto lable;
// 1117       }
// 1118       mid_line_count_ls=0;
// 1119     }
// 1120     
// 1121     
// 1122     
// 1123   } 
// 1124   else   
// 1125   {
// 1126     if(i == heixian-1) middata=FindMidLine_lastisnotmidline(i,MidPos,LeftBlack[i+1],RightBlack[i+1]);
// 1127     else middata=FindMidLine_lastisnotmidline(i,BlackLineData[i+1],0,ColumnMax);
// 1128     last_is_midline=this_is_midline;
// 1129   }                
// 1130   if(this_is_midline&&sfminline<0) 
// 1131   {
// 1132   BlackLineData[i]=BlackEndColumnMax;
// 1133   LeftBlack[i]=BlackEndColumnMax-sdk*1;
// 1134   RightBlack[i]= BlackEndColumnMax+sdk*1;
// 1135   sfminline+=1;
// 1136   
// 1137   goto lable;
// 1138   }
// 1139   
// 1140   if(this_is_midline)
// 1141   {  
// 1142  
// 1143     //    if(heixian!=RowMax) 
// 1144     //    {
// 1145     //      heixian=RowMax;
// 1146     //      i=RowMax-1;
// 1147     //      StableNumbers=0;
// 1148     //      
// 1149     //      
// 1150     //      goto label_end;
// 1151     //    }
// 1152     
// 1153     mid_line_count++;
// 1154     mid_line_count_last=mid_line_count;
// 1155     BlackLineData[i]=middata;
// 1156     if(last_is_midline) 
// 1157     { mid_line_count_ls++;
// 1158     
// 1159     LeftBlack[i]=middata-sdk*1;
// 1160     RightBlack[i]=middata+sdk*1;
// 1161     }
// 1162     
// 1163     goto lable;
// 1164   }
// 1165   
// 1166   
// 1167   //================================================================================                
// 1168   for (j = 0;j < ColumnMax;j++)
// 1169   { //定义左右查找黑白点数
// 1170     
// 1171     
// 1172     if (ThresholdData[i][j] == Black){CountBlack++;}
// 1173     else{CountWhite++;}
// 1174     
// 1175     // 往左搜索
// 1176     if (bFoundLeft == 0 && pLeft >= cz_z )
// 1177     {// 未找到左边缘则寻找
// 1178       if (ThresholdData[i][pLeft+2] == Black){CountBlack_Left++;}
// 1179       else{CountWhite_Left++;}
// 1180       
// 1181       if (ThresholdData[i][pLeft] == Black&&ThresholdData[i][pLeft+3]== White&& 
// 1182           ThresholdData[i][pLeft+1] == Black&& ThresholdData[i][pLeft+4]== White&&
// 1183             ThresholdData[i][pLeft+2] == Black&& ThresholdData[i][pLeft+5]== White)
// 1184       {	// 找到左边缘
// 1185         
// 1186         
// 1187         if (pLeft+2 > 0)
// 1188         {       LeftBlack[i] = pLeft+2;
// 1189         bFoundLeft = 1;
// 1190         }
// 1191         
// 1192         
// 1193         // 如果右边缘也找到则退出
// 1194         if (bFoundRight)
// 1195         {
// 1196           break;
// 1197         }
// 1198       }
// 1199       else
// 1200       {
// 1201         pLeft--;
// 1202         //        if(pLeft<10)
// 1203         //                 LeftEnd = 1;
// 1204         
// 1205       }
// 1206     }// if结束--从左到右搜索边缘
// 1207     
// 1208     //往右搜索
// 1209     if (bFoundRight == 0 && pRight <= cz_y)
// 1210     {//未找到右边缘则寻找
// 1211       //if (pRight > ColumnMax - 3){break;}
// 1212       if (ThresholdData[i][pRight-2] == Black)
// 1213       {CountBlack_Right++;}
// 1214       else{CountWhite_Right++;}
// 1215       if (ThresholdData[i][pRight] == Black &&ThresholdData[i][pRight-3]== White&& 
// 1216           ThresholdData[i][pRight-1] == Black &&ThresholdData[i][pRight-4]== White&& 
// 1217             ThresholdData[i][pRight-2] == Black &&ThresholdData[i][pRight-5]== White)
// 1218       {  
// 1219         
// 1220         
// 1221         // 找到右边缘
// 1222         
// 1223         if (pRight-2 < ColumnMax-1)
// 1224         {       RightBlack[i] = pRight-2;
// 1225         bFoundRight = 1;
// 1226         }
// 1227         
// 1228         // 如果左边缘也找到则退出
// 1229         if (bFoundLeft)
// 1230         {
// 1231           break;
// 1232         }
// 1233       }
// 1234       else
// 1235       {
// 1236         pRight++;
// 1237         
// 1238       }
// 1239     }// if结束
// 1240   }//for结束
// 1241   
// 1242   //===============================左边线没找到处理==============================================             
// 1243   if (!bFoundLeft&&pLeft>-2&&CountWhite_Left>CountBlack_Left) //左边线没找到，且查找范围内超过一半是白点
// 1244   {
// 1245     CountBlack_Left=0;
// 1246     CountWhite_Left=0;
// 1247     tiaobian_Left[i]=1;
// 1248     if(pLeft<5)pLeft=5;
// 1249     for (j = pLeft+czh;j>0;j--)   // 继续往左搜索
// 1250     {
// 1251       if (bFoundLeft == 0 && pLeft >= 0)
// 1252       {// 未找到左边缘则寻找
// 1253         if (ThresholdData[i][pLeft+2] == Black){CountBlack_Left++;}
// 1254         else{CountWhite_Left++;}
// 1255         
// 1256         if (ThresholdData[i][pLeft] == Black&&ThresholdData[i][pLeft+3]== White&& 
// 1257             ThresholdData[i][pLeft+1] == Black&& ThresholdData[i][pLeft+4]== White&&
// 1258               ThresholdData[i][pLeft+2] == Black&& ThresholdData[i][pLeft+5]== White)
// 1259         {	// 找到左边缘
// 1260           
// 1261           
// 1262           if (pLeft+2 > 0)
// 1263           {       LeftBlack[i] = pLeft+2;
// 1264           bFoundLeft = 1;
// 1265           }
// 1266           
// 1267           
// 1268           break;
// 1269           
// 1270         }
// 1271         else
// 1272         {
// 1273           pLeft--;
// 1274           
// 1275         }
// 1276       }// if结束--从左到右搜索边缘
// 1277       
// 1278       
// 1279     }   //左边继续超找for结束
// 1280     if(!bFoundLeft&&CountWhite_Left>CountBlack_Left) //仍然未找到，且大部分是白点    
// 1281     {
// 1282       tiaobian_Left[i]=2;
// 1283       LeftBlack[i]=-5;
// 1284       bFoundLeft = 1;
// 1285     }    
// 1286   }
// 1287   
// 1288   
// 1289   
// 1290   else if(!bFoundLeft&&pLeft<ColumnMax&&CountWhite_Left<CountBlack_Left)//左边线没找到，且查找范围内超过一半是黑点
// 1291   {
// 1292     CountBlack_Left=0;
// 1293     CountWhite_Left=0;
// 1294     tiaobian_Left[i]=-1;
// 1295     for (j = pLeft;j<ColumnMax;j++)   // 继续往右搜索
// 1296     {
// 1297       if (bFoundLeft == 0 && pLeft >= 0)
// 1298       {// 未找到左边缘则寻找
// 1299         if (ThresholdData[i][pLeft+2] == Black){CountBlack_Left++;}
// 1300         else{CountWhite_Left++;}
// 1301         
// 1302         if (ThresholdData[i][pLeft] == Black&&ThresholdData[i][pLeft+3]== White&& 
// 1303             ThresholdData[i][pLeft+1] == Black&& ThresholdData[i][pLeft+4]== White&&
// 1304               ThresholdData[i][pLeft+2] == Black&& ThresholdData[i][pLeft+5]== White)
// 1305         {	// 找到左边缘
// 1306           
// 1307           
// 1308           if (pLeft+2 > 0)
// 1309           {       LeftBlack[i] = pLeft+2;
// 1310           bFoundLeft = 1;
// 1311           }
// 1312           
// 1313           
// 1314         }
// 1315         else
// 1316         {
// 1317           pLeft++;
// 1318           
// 1319         }
// 1320       }// if结束--从左到右搜索边缘
// 1321       
// 1322       
// 1323     }   //左边继续超找for结束
// 1324     if(!bFoundLeft&&CountWhite_Left<CountBlack_Left) //向右查找仍然未找到，且大部分是黑点    
// 1325     {
// 1326       tiaobian_Left[i]=-2;
// 1327       LeftEnd=1;
// 1328       LeftBlack[i]=ColumnMax+5;
// 1329     }    
// 1330   }
// 1331   
// 1332   //===============================右边线没找到处理==============================================        
// 1333   if (!bFoundRight&&pRight<=ColumnMax&&CountWhite_Right>CountBlack_Right) //右边线没找到，且查找范围内超过一半是白点
// 1334   {
// 1335     CountBlack_Right=0;
// 1336     CountWhite_Right=0;
// 1337     tiaobian_Right[i]=1;
// 1338     if(pRight>ColumnMax-1) pRight=ColumnMax-6;
// 1339     for (j = pRight-czh;j<ColumnMax;j++)   // 继续往右搜索
// 1340     {
// 1341       //往右搜索
// 1342       if (bFoundRight == 0 && pRight <ColumnMax)
// 1343       {//未找到右边缘则寻找
// 1344         
// 1345         if (ThresholdData[i][pRight-2] == Black){CountBlack_Right++;}
// 1346         else{CountWhite_Right++;}
// 1347         if (ThresholdData[i][pRight] == Black &&ThresholdData[i][pRight-3]== White&& 
// 1348             ThresholdData[i][pRight-1] == Black &&ThresholdData[i][pRight-4]== White&& 
// 1349               ThresholdData[i][pRight-2] == Black &&ThresholdData[i][pRight-5]== White)
// 1350         {
// 1351           // 找到右边缘
// 1352           
// 1353           if (pRight-2 < ColumnMax-1)
// 1354           {       RightBlack[i] = pRight-2;
// 1355           bFoundRight = 1;
// 1356           }
// 1357           
// 1358           break;
// 1359           
// 1360         }
// 1361         else
// 1362         {
// 1363           pRight++;
// 1364           
// 1365         }
// 1366       }// if结束
// 1367       
// 1368       
// 1369     }   //右边继续超找for结束
// 1370     if(!bFoundRight&&CountWhite_Right>CountBlack_Right) //仍然未找到，且大部分是白点    
// 1371     {
// 1372       tiaobian_Right[i]=2;
// 1373       RightBlack[i]=ColumnMax+5;
// 1374       bFoundRight = 1;
// 1375     }      
// 1376   }
// 1377   
// 1378   
// 1379   
// 1380   else if(!bFoundRight&&pRight>0&&CountWhite_Right<CountBlack_Right)   //右边线没找到，且查找范围内超过一半是黑点
// 1381   {
// 1382     CountBlack_Right=0;
// 1383     CountWhite_Right=0;
// 1384     tiaobian_Right[i]=-1;
// 1385     for (j = pRight;j>0;j--)   // 继续往左搜索
// 1386     {
// 1387       //往右搜索
// 1388       if (bFoundRight == 0 && pRight <ColumnMax)
// 1389       {//未找到右边缘则寻找
// 1390         
// 1391         if (ThresholdData[i][pRight-2] == Black){CountBlack_Right++;}
// 1392         else{CountWhite_Right++;}
// 1393         if (ThresholdData[i][pRight] == Black &&ThresholdData[i][pRight-3]== White&& 
// 1394             ThresholdData[i][pRight-1] == Black &&ThresholdData[i][pRight-4]== White&& 
// 1395               ThresholdData[i][pRight-2] == Black &&ThresholdData[i][pRight-5]== White)
// 1396         {
// 1397           // 找到右边缘
// 1398           
// 1399           if (pRight-2 < ColumnMax-1)
// 1400           { RightBlack[i] = pRight-2;
// 1401           bFoundRight = 1;
// 1402           }
// 1403           
// 1404           break;
// 1405           
// 1406         }
// 1407         else
// 1408         {
// 1409           pRight++;
// 1410           
// 1411         }
// 1412       }// if结束
// 1413       
// 1414       
// 1415     }   //右边继续超找for结束
// 1416     if(!bFoundRight&&CountBlack_Right>CountWhite_Right) //向左查找仍然未找到，且大部分是黑点    
// 1417     {
// 1418       tiaobian_Right[i]=-2;
// 1419       RightBlack[i]=-5;
// 1420       RightEnd=1;
// 1421     }    
// 1422   }
// 1423   //======================找线结束============================================================================== 
// 1424   
// 1425   if (RightBlack[i]-LeftBlack[i]<8)
// 1426     
// 1427   {  
// 1428     if(i<60) {StableNumbers=RowMax-i-6;}
// 1429     LeftEnd=1;
// 1430     RightEnd=1;
// 1431     MidEnd=1;
// 1432     EndType=7;
// 1433     if(BlackEndMax-(RowMax-i)>10)
// 1434     {
// 1435       LeftEnd=0;
// 1436       RightEnd=0;
// 1437       MidEnd=0;
// 1438       RightBlack[i] =  BlackEndColumnMax+30;
// 1439       LeftBlack[i] =  BlackEndColumnMax-30;
// 1440     }
// 1441     
// 1442     
// 1443   }
// 1444 //  if (RightBlack[i]-LeftBlack[i]<15&& i>50
// 1445 //      &&LeftBlack[i]>0&&LeftBlack[i]<ColumnMax&&RightBlack[i]>0&&RightBlack[i]<ColumnMax)
// 1446 //  {  if(i<70) {StableNumbers=RowMax-i-6;}
// 1447 //  LeftEnd=1;
// 1448 //  RightEnd=1;
// 1449 //  MidEnd=1;
// 1450 //  EndType=8;
// 1451 //  }
// 1452 //  if (RightBlack[i]-LeftBlack[i]<20&& i>60
// 1453 //      &&LeftBlack[i]>0&&LeftBlack[i]<ColumnMax&&RightBlack[i]>0&&RightBlack[i]<ColumnMax)
// 1454 //  {  if(i<70) {StableNumbers=RowMax-i-3;}
// 1455 //  LeftEnd=1;
// 1456 //  RightEnd=1;
// 1457 //  MidEnd=1;
// 1458 //  EndType=9;
// 1459 //  }
// 1460 //  if (RightBlack[i]-LeftBlack[i]<25&& i>80
// 1461 //      &&LeftBlack[i]>0&&LeftBlack[i]<ColumnMax&&RightBlack[i]>0&&RightBlack[i]<ColumnMax)
// 1462 //  { if(i<90) {StableNumbers=RowMax-i-3;}
// 1463 //  LeftEnd=1;
// 1464 //  RightEnd=1;
// 1465 //  MidEnd=1;
// 1466 //  EndType=10;
// 1467 //  }
// 1468 //  
// 1469   if (RightBlack[i]<14||LeftBlack[i]>ColumnMax-14)
// 1470   {  LeftEnd=1;
// 1471   RightEnd=1;
// 1472   MidEnd=1;
// 1473   EndType=11;
// 1474   }
// 1475   
// 1476 //  if (LeftBlack[i] > RightBlack[i])
// 1477 //  { if(tiaobian_Left[i]<0) LeftEnd=1;
// 1478 //  if(tiaobian_Right[i]<0) RightEnd=1;
// 1479 //  
// 1480 //  }
// 1481 //  
// 1482   
// 1483   
// 1484   
// 1485   if(CountBlack >=ColumnMax - 10)
// 1486   {
// 1487     
// 1488     CountBlack = 0;
// 1489     LineType[i] = 1;//全黑行标志
// 1490     BlackRow++;
// 1491     LeftEnd=1;
// 1492     RightEnd=1;
// 1493     MidEnd=1;
// 1494     EndType=12;
// 1495   }
// 1496   else if(CountWhite >= ColumnMax - 10 )
// 1497   {
// 1498     CountWhite = 0;
// 1499     
// 1500     WhiteRow++;
// 1501     LineType[i] = 2;//全白行标志
// 1502     
// 1503   }
// 1504   else
// 1505   {
// 1506     LineType[i] = 0;	
// 1507   }
// 1508   
// 1509   
// 1510   
// 1511   if (!LeftEnd){LeftStableNumbers++;}
// 1512   if (!RightEnd){RightStableNumbers++;}
// 1513   int useable_left,useable_right;
// 1514   useable_left=LeftEnd||!bFoundLeft; //1-左边线无效 0-左边线有效
// 1515   useable_right=RightEnd||!bFoundRight;
// 1516   if(useable_left+useable_right>0)
// 1517   {
// 1518     if (tiaobian_Left[i]!=0) tbs_z++;
// 1519     if (tiaobian_Right[i]!=0) tbs_y++;
// 1520     tbs_all=tbs_z+tbs_y;
// 1521   }
// 1522   
// 1523   if(!useable_left && !useable_right)//判断是否有一个边缘在屏幕外
// 1524   {
// 1525     if(RightBlack[i]>ColumnMax&&LeftBlack[i]>0 )
// 1526     {
// 1527       useable_right=!useable_right;
// 1528       
// 1529     }
// 1530     else if(RightBlack[i]<ColumnMax&&LeftBlack[i]<0 )
// 1531     {
// 1532       useable_left=!useable_left;
// 1533       
// 1534     }
// 1535     else if (RightBlack[i]>ColumnMax&&LeftBlack[i]<0 )
// 1536     {
// 1537       
// 1538     }
// 1539     
// 1540   }
// 1541 //  if((RightBlack[i]-RightBlack[i+1]>3||RightBlack[i]==ColumnMax+5) && LeftBlack[i+1]-LeftBlack[i]>3)//赛道变宽
// 1542 //    
// 1543 //  {
// 1544 //    if(shizi==0) shizi=i+3;
// 1545 //    
// 1546 //  }
// 1547 //  if((LeftBlack[i+1]-LeftBlack[i]>3||LeftBlack[i]==-5) && RightBlack[i]-RightBlack[i+1]>3)//赛道变宽
// 1548 //    
// 1549 //  {
// 1550 //    if(shizi==0) shizi=i+3;
// 1551 //    
// 1552 //  }
// 1553 //  
// 1554   if (useable_left && !useable_right)//只找到右边
// 1555   {   yxhs++;
// 1556   mode1++;
// 1557   RoadMode[i]=1;
// 1558   if( RoadType == 0||i > RowMax - 4)
// 1559   {
// 1560     BlackLineData[i] =  RightBlack[i] - sdk;
// 1561     
// 1562     
// 1563   }                    
// 1564   else
// 1565   {                       
// 1566     BlackLineData[i] = BlackLineData[i+1] + (RightBlack[i] - RightBlack[i+1]);
// 1567   }
// 1568   if(LeftBlack[i]==-5 && BlackLineData[i]>RightBlack[i]*0.4 && RightBlack[i]>RowMax*0.4) //0.2
// 1569   {                 
// 1570     BlackLineData[i]=RightBlack[i]*0.4;
// 1571     
// 1572   }
// 1573   
// 1574   if(mode1>10&&(RowMax-i)<41&&hx&&BlackEndMax<RowMax*0.6&&sfzj)
// 1575   { int zji;
// 1576   for(zji=RowMax-1;zji>(RowMax-43);zji--)
// 1577   {
// 1578     BlackLineData[zji]=1;                   
// 1579   }
// 1580   zhijiao=i;
// 1581   
// 1582   }
// 1583   if(i==(RowMax-1)) {  
// 1584     firstline_l=-1;
// 1585     firstline_r=RightBlack[i];
// 1586     firstline_m=BlackLineData[i];
// 1587   }
// 1588 //  //跳边边缘检测
// 1589 //  if(LeftBlack[i]==-5&& RightBlack[i+2]<RightBlack[i]&&RightBlack[i+2]<RightBlack[i+1]
// 1590 //     &&RightBlack[i+2]<RightBlack[i+3]&&RightBlack[i+2]<RightBlack[i+4]
// 1591 //       &&RightBlack[i+3]<RightBlack[i+5]&& i<(RowMax-5))
// 1592 //  {
// 1593 //    BlackLineData[i]= BlackLineData[i+2]-5;
// 1594 //    BlackLineData[i+1]= BlackLineData[i+2]-5;
// 1595 //    MidEnd=1;
// 1596 //    LeftEnd=1;
// 1597 //    RightEnd=1;
// 1598 //    
// 1599 //  }
// 1600   }   
// 1601   else if (!useable_left && useable_right)//只找到左边
// 1602   {  yxhs++;
// 1603   mode2++;
// 1604   RoadMode[i]=2;
// 1605   if( RoadType == 0||i < RowMax - 4 )
// 1606   {
// 1607     
// 1608     BlackLineData[i] =  LeftBlack[i] +sdk;
// 1609     
// 1610   }
// 1611   
// 1612   else
// 1613   {
// 1614     BlackLineData[i] = BlackLineData[i] + (LeftBlack[i] - LeftBlack[i+1]);
// 1615   }
// 1616   if(RightBlack[i]==ColumnMax+5 && BlackLineData[i]<(0.6*(ColumnMax-LeftBlack[i])+LeftBlack[i]) && LeftBlack[i] <RowMax*0.6)//0.8 
// 1617   {                 
// 1618     BlackLineData[i]=(0.6*(ColumnMax-LeftBlack[i])+LeftBlack[i]);
// 1619     
// 1620   }
// 1621   if(mode2>10&&(RowMax-i)<44&&hx&&BlackEndMax<RowMax*0.6&&sfzj)
// 1622   { int zji;
// 1623   for(zji=RowMax-1;zji>(RowMax-44);zji--)
// 1624   {
// 1625     BlackLineData[zji]=ColumnMax-1;                   
// 1626   }
// 1627   MidEnd=1;
// 1628   LeftEnd=1;
// 1629   RightEnd=1;
// 1630   
// 1631   }
// 1632   //                 
// 1633   //                 if(mode2>20&&(RowMax-i)<40)
// 1634   //                 { int zji;
// 1635   //                   for(zji=RowMax-1;zji>(RowMax-40);zji--)
// 1636   //                   {
// 1637   //                   BlackLineData[zji]=ColumnMax-1;                   
// 1638   //                   }
// 1639   //                    MidEnd=1;
// 1640   //                  LeftEnd=1;
// 1641   //                  RightEnd=1;
// 1642   //                 
// 1643   //                 }
// 1644   
// 1645 //  //跳边边缘检测
// 1646 //  if(RightBlack[i]>ColumnMax&& LeftBlack[i+2]>LeftBlack[i]&&LeftBlack[i+2]>LeftBlack[i+1]
// 1647 //     &&LeftBlack[i+2]>LeftBlack[i+3]&&LeftBlack[i+2]>LeftBlack[i+4]
// 1648 //       &&LeftBlack[i+3]>LeftBlack[i+5]&& i<(RowMax-5))
// 1649 //  {
// 1650 //    BlackLineData[i]= BlackLineData[i+2]+5;
// 1651 //    BlackLineData[i+1]= BlackLineData[i+2]+5;
// 1652 //    MidEnd=1;
// 1653 //    LeftEnd=1;
// 1654 //    RightEnd=1;
// 1655 //    
// 1656 //  }
// 1657   if(i==(RowMax-1)) 
// 1658   {  
// 1659     firstline_l=LeftBlack[i];
// 1660     firstline_r=-1;
// 1661     firstline_m=BlackLineData[i];
// 1662   }
// 1663   }  
// 1664   else if (useable_left && useable_right)//左右都没找到
// 1665   {   mode3++;
// 1666   RoadMode[i]=3;
// 1667   if(LineType[i] == 2) 
// 1668   {
// 1669     BlackLineData[i]=BlackEndColumnMax;
// 1670   }
// 1671   else
// 1672   {
// 1673     BlackLineData[i] = 298;
// 1674     if(i==(RowMax-1)) {  
// 1675       firstline_l=-1;
// 1676       firstline_r=-1;
// 1677       firstline_m=BlackLineData[i];}
// 1678     if(LeftEnd&&RightEnd)MidEnd = 1;
// 1679   }
// 1680   
// 1681   
// 1682   }
// 1683   else                         //左右都找到
// 1684   {       yxhs++;
// 1685   RoadMode[i]=5;
// 1686   if(LeftBlack[i]>1&&RightBlack[i]<ColumnMax-2) {mode4++;RoadMode[i]=4;}
// 1687 //===============障碍物处理=================================
// 1688  if(mode4>=heixian-3-i&&line_8)
// 1689  {
// 1690    if(fabss(LeftBlack[i]-LeftBlack[i+1])<=4&&(RightBlack[i+1]-RightBlack[i])>4&&RoadMode[i+1]==4)mode4_zhangai=i;    
// 1691    if(fabss(RightBlack[i]-RightBlack[i+1])<=4&&(LeftBlack[i]-LeftBlack[i+1])>4&&RoadMode[i+1]==4)mode4_zhangai=-i;
// 1692    if(mode4_zhangai<0&&(mode4_zhangai*-1-i)>5&&RoadMode[i+1]==4&&fabss(RightBlack[i]-RightBlack[i+1])<=4//确定左侧有障碍
// 1693       &&(LeftBlack[i+1]-LeftBlack[i])>4      
// 1694       )
// 1695    {mode4_zhangai=0;
// 1696     zaw_mode=-6;
// 1697     }
// 1698    
// 1699     if(mode4_zhangai>0&&(mode4_zhangai-i)>5&&RoadMode[i+1]==4&&fabss(LeftBlack[i]-LeftBlack[i+1])<=4//确定右侧有障碍
// 1700       &&(RightBlack[i]-RightBlack[i+1])>4      
// 1701       )
// 1702    {mode4_zhangai=0;
// 1703    zaw_mode=6;
// 1704     }
// 1705  
// 1706  
// 1707  
// 1708  
// 1709  
// 1710  }
// 1711 //==========================================================
// 1712  if(mode4==3&&(heixian-1-i)>0)
// 1713  { int mode4_i;
// 1714    for(mode4_i=heixian-1;mode4_i>i;mode4_i--)
// 1715      BlackLineData[mode4_i] =  (BlackLineData[i]+BlackLineData[i+1])/2;
// 1716  
// 1717  
// 1718  }
// 1719   
// 1720   BlackLineData[i] = LeftBlack[i] + (RightBlack[i]-LeftBlack[i] )/2;
// 1721  if(LeftBlack[i]<1&&RightBlack[i]>ColumnMax-2) BlackLineData[i]=BlackEndColumnMax;
// 1722  if(RightBlack[i]-LeftBlack[i]>sdk*2.5&&i>50)BlackLineData[i]=BlackEndColumnMax;
// 1723 //  int szcli;
// 1724 //  if(shizi>0)//检测到十字
// 1725 //  { 
// 1726 //    for(szcli=shizi;szcli<i;szcli++)
// 1727 //      
// 1728 //    {
// 1729 //      BlackLineData[szcli]= (BlackLineData[i]+ BlackLineData[shizi])/2;
// 1730 //      
// 1731 //    }
// 1732 //    
// 1733 //  }
// 1734   
// 1735   if((last_all_find-i)>3&&last_all_find<RowMax)
// 1736   {int last_find_i;
// 1737   for(last_find_i=last_all_find-1;last_find_i<i;last_find_i++)
// 1738   {
// 1739     if(BlackLineData[last_all_find]- BlackLineData[i]>=5)
// 1740     {
// 1741       BlackLineData[last_find_i]=( BlackLineData[last_all_find]+ BlackLineData[i])/2-1;
// 1742     }
// 1743     if(BlackLineData[last_all_find]- BlackLineData[i]<=-5)
// 1744     {
// 1745       BlackLineData[last_find_i]=( BlackLineData[last_all_find]+ BlackLineData[i])/2+1;
// 1746     }
// 1747     
// 1748   }
// 1749   
// 1750   
// 1751   }
// 1752   else if((last_all_find-i)>3&&0)
// 1753   {int last_find_i;
// 1754   for(last_find_i=last_all_find-1;last_find_i<i;last_find_i++)
// 1755   {
// 1756     
// 1757     BlackLineData[last_find_i]= BlackLineData[i];
// 1758   }
// 1759   
// 1760   
// 1761   }
// 1762   
// 1763   last_all_find=i;
// 1764   if(i==(RowMax-1)) {  
// 1765     firstline_l=LeftBlack[i];
// 1766     firstline_r=RightBlack[i];
// 1767     firstline_m=BlackLineData[i];}
// 1768   
// 1769   }
// 1770   
// 1771   
// 1772   lable:		if (!MidEnd)
// 1773   {
// 1774     StableNumbers++;
??GetLMR_12:
        LDR.W    R0,??GetLMR_0+0x4
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??GetLMR_0+0x4
        STR      R0,[R1, #+0]
// 1775     
// 1776   }
        SUBS     R6,R6,#+1
??GetLMR_11:
        CMP      R6,#+0
        BMI.W    ??GetLMR_13
        LDR      R0,[SP, #+12]
        CMP      R0,#+0
        BNE.W    ??GetLMR_13
        MOVS     R0,#+0
        LDR.W    R1,??GetLMR_4+0x1C
        STR      R0,[R1, R6, LSL #+2]
        MOVS     R0,#+0
        LDR.W    R1,??GetLMR_14
        STR      R0,[R1, R6, LSL #+2]
        CMP      R6,#+56
        BLT.N    ??GetLMR_15
        MOVS     R0,R6
        BL       __aeabi_i2d
        LDR.W    R2,??GetLMR_14+0x4  ;; 0x9999999a
        LDR.W    R3,??GetLMR_14+0x8  ;; 0x3fd99999
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.W    R3,??GetLMR_14+0xC  ;; 0x40590000
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.W    R3,??GetLMR_14+0xC  ;; 0x40590000
        BL       __aeabi_ddiv
        BL       __aeabi_d2iz
        STR      R0,[SP, #+16]
        B.N      ??GetLMR_16
??GetLMR_15:
        MOVS     R0,R6
        BL       __aeabi_i2d
        MOVS     R2,#+858993459
        LDR.W    R3,??GetLMR_14+0x10  ;; 0x3fd33333
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.W    R3,??GetLMR_14+0xC  ;; 0x40590000
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.W    R3,??GetLMR_14+0xC  ;; 0x40590000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.W    R3,??GetLMR_14+0x14  ;; 0x40140000
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        STR      R0,[SP, #+16]
??GetLMR_16:
        CMP      R6,#+67
        BLT.N    ??GetLMR_17
        MOVS     R0,#+30
        STR      R0,[SP, #+28]
        B.N      ??GetLMR_18
??GetLMR_17:
        CMP      R6,#+34
        BLT.N    ??GetLMR_19
        MOVS     R0,#+20
        STR      R0,[SP, #+28]
        B.N      ??GetLMR_18
??GetLMR_19:
        MOVS     R0,#+13
        STR      R0,[SP, #+28]
??GetLMR_18:
        RSBS     R0,R6,#+100
        LDR.W    R1,??GetLMR_2+0x24
        LDR      R1,[R1, #+0]
        SUBS     R1,R1,#+5
        CMP      R0,R1
        BGE.N    ??GetLMR_20
        LDR      R0,[SP, #+60]
        CMP      R0,#+0
        BEQ.N    ??GetLMR_20
        MOVS     R0,#+40
        STR      R0,[SP, #+28]
        LDR.W    R0,??GetLMR_14+0x18
        LDR      R9,[R0, #+0]
        LDR.W    R0,??GetLMR_14+0x18
        LDR      R4,[R0, #+0]
        CMP      R9,#+0
        BPL.N    ??GetLMR_21
        MOVS     R9,#+0
??GetLMR_21:
        CMP      R9,#+89
        BLT.N    ??GetLMR_22
        MOVS     R9,#+88
??GetLMR_22:
        CMP      R4,#+0
        BPL.N    ??GetLMR_23
        MOVS     R4,#+0
??GetLMR_23:
        CMP      R4,#+89
        BLT.N    ??GetLMR_24
        MOVS     R4,#+88
??GetLMR_24:
        MOVS     R0,#+3
        STR      R0,[SP, #+4]
        MOVS     R0,#+87
        STR      R0,[SP, #+36]
        B.N      ??GetLMR_25
??GetLMR_20:
        CMP      R6,#+97
        BGE.W    ??GetLMR_26
        LDR      R0,[SP, #+8]
        SUBS     R0,R0,#+1
        CMP      R6,R0
        BEQ.W    ??GetLMR_26
        LDR      R0,[SP, #+52]
        CMP      R0,#+1
        BLT.N    ??GetLMR_27
        LDR      R0,[SP, #+52]
        SUBS     R0,R0,R6
        CMP      R0,#+40
        BGE.N    ??GetLMR_27
        LDR.W    R0,??GetLMR_14+0x1C
        ADDS     R0,R0,R6, LSL #+2
        LDR      R0,[R0, #+8]
        LDR.W    R1,??GetLMR_14+0x1C
        ADDS     R1,R1,R6, LSL #+2
        LDR      R1,[R1, #+4]
        CMP      R0,R1
        BGE.N    ??GetLMR_28
        LDR.W    R0,??GetLMR_14+0x1C
        ADDS     R0,R0,R6, LSL #+2
        LDR      R0,[R0, #+4]
        B.N      ??GetLMR_29
??GetLMR_28:
        LDR.W    R0,??GetLMR_14+0x1C
        ADDS     R0,R0,R6, LSL #+2
        LDR      R0,[R0, #+8]
??GetLMR_29:
        CMP      R0,#+79
        BLT.N    ??GetLMR_27
        MOVS     R9,#+90
        MOVS     R4,#+90
        B.N      ??GetLMR_30
??GetLMR_27:
        LDR      R0,[SP, #+48]
        CMP      R0,#+1
        BLT.N    ??GetLMR_31
        LDR      R0,[SP, #+48]
        SUBS     R0,R0,R6
        CMP      R0,#+40
        BGE.N    ??GetLMR_31
        LDR.W    R0,??GetLMR_14+0x20
        ADDS     R0,R0,R6, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.W    R1,??GetLMR_14+0x20
        ADDS     R1,R1,R6, LSL #+2
        LDR      R1,[R1, #+8]
        CMP      R0,R1
        BGE.N    ??GetLMR_32
        LDR.W    R0,??GetLMR_14+0x20
        ADDS     R0,R0,R6, LSL #+2
        LDR      R0,[R0, #+4]
        B.N      ??GetLMR_33
??GetLMR_32:
        LDR.W    R0,??GetLMR_14+0x20
        ADDS     R0,R0,R6, LSL #+2
        LDR      R0,[R0, #+8]
??GetLMR_33:
        CMP      R0,#+10
        BGE.N    ??GetLMR_31
        MOVS     R9,#+0
        MOVS     R4,#+0
        B.N      ??GetLMR_30
??GetLMR_31:
        LDR.W    R0,??GetLMR_14+0x20
        ADDS     R0,R0,R6, LSL #+2
        LDR      R0,[R0, #+4]
        LDR      R1,[SP, #+28]
        ADDS     R9,R1,R0
        LDR.W    R0,??GetLMR_14+0x1C
        ADDS     R0,R0,R6, LSL #+2
        LDR      R0,[R0, #+4]
        LDR      R1,[SP, #+28]
        SUBS     R4,R0,R1
??GetLMR_30:
        CMP      R9,#+0
        BPL.N    ??GetLMR_34
        MOVS     R9,#+0
??GetLMR_34:
        CMP      R9,#+89
        BLT.N    ??GetLMR_35
        MOVS     R9,#+88
??GetLMR_35:
        CMP      R4,#+0
        BPL.N    ??GetLMR_36
        MOVS     R4,#+0
??GetLMR_36:
        CMP      R4,#+89
        BLT.N    ??GetLMR_37
        MOVS     R4,#+88
??GetLMR_37:
        LDR.W    R0,??GetLMR_14+0x20
        ADDS     R0,R0,R6, LSL #+2
        LDR      R0,[R0, #+4]
        LDR      R1,[SP, #+28]
        SUBS     R0,R0,R1
        STR      R0,[SP, #+4]
        LDR.W    R0,??GetLMR_14+0x1C
        ADDS     R0,R0,R6, LSL #+2
        LDR      R0,[R0, #+4]
        LDR      R1,[SP, #+28]
        ADDS     R0,R1,R0
        STR      R0,[SP, #+36]
        LDR      R0,[SP, #+4]
        CMP      R0,#+0
        BPL.N    ??GetLMR_38
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
??GetLMR_38:
        LDR      R0,[SP, #+4]
        CMP      R0,#+90
        BLT.N    ??GetLMR_39
        MOVS     R0,#+89
        STR      R0,[SP, #+4]
??GetLMR_39:
        LDR      R0,[SP, #+36]
        CMP      R0,#+0
        BPL.N    ??GetLMR_40
        MOVS     R0,#+0
        STR      R0,[SP, #+36]
??GetLMR_40:
        LDR      R0,[SP, #+36]
        CMP      R0,#+90
        BLT.N    ??GetLMR_25
        MOVS     R0,#+89
        STR      R0,[SP, #+36]
        B.N      ??GetLMR_25
??GetLMR_26:
        LDR.W    R0,??GetLMR_14+0x24
        LDR      R0,[R0, #+0]
        CMP      R0,#+5
        BGE.N    ??GetLMR_41
        LDR.W    R0,??GetLMR_14+0x28
        LDR      R0,[R0, #+0]
        LDR.W    R1,??GetLMR_14+0x2C
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??GetLMR_41
        MOVS     R9,#+67
        MOVS     R4,#+67
        B.N      ??GetLMR_42
??GetLMR_41:
        LDR.W    R0,??GetLMR_14+0x2C
        LDR      R0,[R0, #+0]
        CMP      R0,#+5
        BGE.N    ??GetLMR_43
        LDR.W    R0,??GetLMR_14+0x28
        LDR      R0,[R0, #+0]
        LDR.W    R1,??GetLMR_14+0x24
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??GetLMR_43
        MOVS     R9,#+22
        MOVS     R4,#+22
        B.N      ??GetLMR_42
??GetLMR_43:
        MOVS     R9,#+45
        MOVS     R4,#+45
??GetLMR_42:
        MOVS     R0,#+3
        STR      R0,[SP, #+4]
        MOVS     R0,#+87
        STR      R0,[SP, #+36]
        LDR      R0,[SP, #+8]
        CMP      R0,#+100
        BEQ.N    ??GetLMR_25
        LDR.W    R0,??GetLMR_4+0x14
        LDR      R9,[R0, #+0]
        LDR.W    R0,??GetLMR_4+0x14
        LDR      R4,[R0, #+0]
??GetLMR_25:
        MOVS     R8,#+0
        STRB     R8,[SP, #+0]
        MOVS     R0,#+0
        STR      R0,[SP, #+40]
        LDR      R0,[SP, #+40]
        STR      R0,[SP, #+44]
        MOVS     R0,#-1
        LDR.W    R1,??GetLMR_14+0x20
        STR      R0,[R1, R6, LSL #+2]
        MOVS     R0,#+91
        LDR.W    R1,??GetLMR_14+0x1C
        STR      R0,[R1, R6, LSL #+2]
        MOVS     R11,#+0
        MOVS     R10,#+0
        MOVS     R7,#+0
        MOVS     R5,#+0
        MOVS     R0,#+0
        MOVS     R1,#+0
        CMP      R6,#+98
        BLT.N    ??GetLMR_44
        LDR.W    R0,??GetLMR_4
        LDR      R1,[R0, #+0]
        B.N      ??GetLMR_45
??GetLMR_44:
        LDR.W    R0,??GetLMR_4+0x18
        ADDS     R0,R0,R6, LSL #+2
        LDR      R1,[R0, #+4]
??GetLMR_45:
        LDR.W    R0,??GetLMR_0+0x24
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??GetLMR_46
        LDR      R0,[SP, #+8]
        SUBS     R0,R0,#+1
        CMP      R6,R0
        BNE.N    ??GetLMR_47
        MOVS     R3,#+90
        MOVS     R2,#+0
        LDR.W    R0,??GetLMR_4
        LDR      R1,[R0, #+0]
        MOVS     R0,R6
        BL       FindMidLine_lastismidline
        B.N      ??GetLMR_48
??GetLMR_47:
        LDR.W    R0,??GetLMR_14+0x1C
        ADDS     R0,R0,R6, LSL #+2
        LDR      R3,[R0, #+4]
        LDR.W    R0,??GetLMR_14+0x20
        ADDS     R0,R0,R6, LSL #+2
        LDR      R2,[R0, #+4]
        LDR.W    R0,??GetLMR_4+0x18
        ADDS     R0,R0,R6, LSL #+2
        LDR      R1,[R0, #+4]
        MOVS     R0,R6
        BL       FindMidLine_lastismidline
??GetLMR_48:
        LDR.W    R1,??GetLMR_0+0x28
        LDR      R1,[R1, #+0]
        LDR.W    R2,??GetLMR_0+0x24
        STR      R1,[R2, #+0]
        LDR.W    R1,??GetLMR_0+0x28
        LDR      R1,[R1, #+0]
        CMP      R1,#+0
        BEQ.N    ??GetLMR_49
        LDR.W    R1,??GetLMR_0+0x1C
        LDR      R1,[R1, #+0]
        ADDS     R1,R1,#+1
        LDR.W    R2,??GetLMR_0+0x1C
        STR      R1,[R2, #+0]
        LDR.W    R1,??GetLMR_0+0x20
        LDR      R1,[R1, #+0]
        LDR.W    R2,??GetLMR_0+0x1C
        LDR      R2,[R2, #+0]
        CMP      R1,R2
        BGE.N    ??GetLMR_50
        LDR.W    R1,??GetLMR_0+0x1C
        LDR      R1,[R1, #+0]
        LDR.W    R2,??GetLMR_0+0x20
        STR      R1,[R2, #+0]
        B.N      ??GetLMR_50
??GetLMR_49:
        MOVS     R1,#+0
        LDR.W    R2,??GetLMR_0+0x1C
        STR      R1,[R2, #+0]
??GetLMR_50:
        CMN      R0,#+1
        BNE.W    ??GetLMR_51
        LDR.W    R1,??GetLMR_1+0x8
        LDR      R1,[R1, #+0]
        CMP      R1,#+0
        BEQ.W    ??GetLMR_51
        CMP      R6,#+85
        BGE.N    ??GetLMR_52
        LDR.W    R1,??GetLMR_4+0x18
        ADDS     R1,R1,R6, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R1,R1,#+36
        CMP      R1,#+19
        BCC.N    ??GetLMR_52
        LDR.W    R1,??GetLMR_0+0x20
        LDR      R1,[R1, #+0]
        CMP      R1,#+5
        BLT.N    ??GetLMR_52
        MOVS     R0,#+5
        LDR.W    R1,??GetLMR_0+0x10
        STR      R0,[R1, #+0]
        MOVS     R0,#+1
        STR      R0,[SP, #+12]
        B.W      ??GetLMR_53
??GetLMR_52:
        LDR.W    R1,??GetLMR_4+0x18
        ADDS     R1,R1,R6, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R1,R1,#+18
        CMP      R1,#+55
        BCC.N    ??GetLMR_54
        LDR.W    R1,??GetLMR_0+0x20
        LDR      R1,[R1, #+0]
        CMP      R1,#+5
        BLT.N    ??GetLMR_54
        MOVS     R0,#+6
        LDR.W    R1,??GetLMR_0+0x10
        STR      R0,[R1, #+0]
        MOVS     R0,#+1
        STR      R0,[SP, #+12]
        B.W      ??GetLMR_53
??GetLMR_54:
        LDR.W    R1,??GetLMR_1+0x10
        LDR      R1,[R1, #+0]
        CMP      R1,#+5
        BLT.N    ??GetLMR_55
        CMP      R6,#+31
        BLT.N    ??GetLMR_55
        MOVS     R0,#+0
        SUBS     R1,R6,#+12
        MOVS     R0,R6
        B.N      ??GetLMR_56
??GetLMR_57:
        LDR.W    R2,??GetLMR_14+0x18
        LDR      R2,[R2, #+0]
        LDR.W    R3,??GetLMR_4+0x18
        STR      R2,[R3, R0, LSL #+2]
        LDR.W    R2,??GetLMR_14+0x18
        LDR      R2,[R2, #+0]
        LDR      R3,[SP, #+16]
        SUBS     R2,R2,R3
        LDR.W    R3,??GetLMR_14+0x20
        STR      R2,[R3, R0, LSL #+2]
        LDR.W    R2,??GetLMR_14+0x18
        LDR      R2,[R2, #+0]
        LDR      R3,[SP, #+16]
        ADDS     R2,R3,R2
        LDR.W    R3,??GetLMR_14+0x1C
        STR      R2,[R3, R0, LSL #+2]
        SUBS     R6,R6,#+1
        LDR.W    R2,??GetLMR_0+0x4
        LDR      R2,[R2, #+0]
        ADDS     R2,R2,#+1
        LDR.W    R3,??GetLMR_0+0x4
        STR      R2,[R3, #+0]
        SUBS     R0,R0,#+1
??GetLMR_56:
        CMP      R1,R0
        BGE.N    ??GetLMR_58
        CMP      R0,#+0
        BPL.N    ??GetLMR_57
??GetLMR_58:
        MOVS     R0,#+0
        LDR.W    R1,??GetLMR_1+0x10
        STR      R0,[R1, #+0]
        B.W      ??GetLMR_53
??GetLMR_55:
        MOVS     R1,#+0
        LDR.W    R2,??GetLMR_1+0x10
        STR      R1,[R2, #+0]
        B.N      ??GetLMR_51
??GetLMR_46:
        LDR      R0,[SP, #+8]
        SUBS     R0,R0,#+1
        CMP      R6,R0
        BNE.N    ??GetLMR_59
        LDR.W    R0,??GetLMR_14+0x1C
        ADDS     R0,R0,R6, LSL #+2
        LDR      R3,[R0, #+4]
        LDR.W    R0,??GetLMR_14+0x20
        ADDS     R0,R0,R6, LSL #+2
        LDR      R2,[R0, #+4]
        LDR.W    R0,??GetLMR_4
        LDR      R1,[R0, #+0]
        MOVS     R0,R6
        BL       FindMidLine_lastisnotmidline
        B.N      ??GetLMR_60
??GetLMR_59:
        MOVS     R3,#+90
        MOVS     R2,#+0
        LDR.W    R0,??GetLMR_4+0x18
        ADDS     R0,R0,R6, LSL #+2
        LDR      R1,[R0, #+4]
        MOVS     R0,R6
        BL       FindMidLine_lastisnotmidline
??GetLMR_60:
        LDR.W    R1,??GetLMR_0+0x28
        LDR      R1,[R1, #+0]
        LDR.W    R2,??GetLMR_0+0x24
        STR      R1,[R2, #+0]
??GetLMR_51:
        LDR.W    R1,??GetLMR_0+0x28
        LDR      R1,[R1, #+0]
        CMP      R1,#+0
        BEQ.N    ??GetLMR_61
        LDR.W    R1,??GetLMR_1+0x8
        LDR      R1,[R1, #+0]
        CMP      R1,#+0
        BPL.N    ??GetLMR_61
        LDR.W    R0,??GetLMR_14+0x18
        LDR      R0,[R0, #+0]
        LDR.W    R1,??GetLMR_4+0x18
        STR      R0,[R1, R6, LSL #+2]
        LDR.W    R0,??GetLMR_14+0x18
        LDR      R0,[R0, #+0]
        LDR      R1,[SP, #+16]
        SUBS     R0,R0,R1
        LDR.W    R1,??GetLMR_14+0x20
        STR      R0,[R1, R6, LSL #+2]
        LDR.W    R0,??GetLMR_14+0x18
        LDR      R0,[R0, #+0]
        LDR      R1,[SP, #+16]
        ADDS     R0,R1,R0
        LDR.W    R1,??GetLMR_14+0x1C
        STR      R0,[R1, R6, LSL #+2]
        LDR.W    R0,??GetLMR_1+0x8
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??GetLMR_1+0x8
        STR      R0,[R1, #+0]
        B.W      ??GetLMR_53
??GetLMR_61:
        LDR.W    R1,??GetLMR_0+0x28
        LDR      R1,[R1, #+0]
        CMP      R1,#+0
        BEQ.N    ??GetLMR_62
        LDR.W    R1,??GetLMR_1+0xC
        LDR      R1,[R1, #+0]
        ADDS     R1,R1,#+1
        LDR.W    R2,??GetLMR_1+0xC
        STR      R1,[R2, #+0]
        LDR.W    R1,??GetLMR_1+0xC
        LDR      R1,[R1, #+0]
        LDR.W    R2,??GetLMR_63
        STR      R1,[R2, #+0]
        LDR.W    R1,??GetLMR_4+0x18
        STR      R0,[R1, R6, LSL #+2]
        LDR.W    R1,??GetLMR_0+0x24
        LDR      R1,[R1, #+0]
        CMP      R1,#+0
        BEQ.N    ??GetLMR_64
        LDR.W    R1,??GetLMR_1+0x10
        LDR      R1,[R1, #+0]
        ADDS     R1,R1,#+1
        LDR.W    R2,??GetLMR_1+0x10
        STR      R1,[R2, #+0]
        LDR      R1,[SP, #+16]
        SUBS     R1,R0,R1
        LDR.W    R2,??GetLMR_14+0x20
        STR      R1,[R2, R6, LSL #+2]
        LDR      R1,[SP, #+16]
        ADDS     R0,R1,R0
        LDR.W    R1,??GetLMR_14+0x1C
        STR      R0,[R1, R6, LSL #+2]
??GetLMR_64:
        B.W      ??GetLMR_53
??GetLMR_62:
        MOVS     R0,#+0
        B.N      ??GetLMR_65
??GetLMR_66:
        ADDS     R4,R4,#+1
??GetLMR_67:
        ADDS     R0,R0,#+1
??GetLMR_65:
        CMP      R0,#+90
        BGE.W    ??GetLMR_68
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        LDRB     R1,[R0, R1]
        CMP      R1,#+30
        BNE.N    ??GetLMR_69
        LDR      R1,[SP, #+44]
        ADDS     R1,R1,#+1
        STR      R1,[SP, #+44]
        B.N      ??GetLMR_70
??GetLMR_69:
        LDR      R1,[SP, #+40]
        ADDS     R1,R1,#+1
        STR      R1,[SP, #+40]
??GetLMR_70:
        LDRB     R1,[SP, #+0]
        CMP      R1,#+0
        BNE.N    ??GetLMR_71
        LDR      R1,[SP, #+4]
        CMP      R9,R1
        BLT.N    ??GetLMR_71
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R9,R1
        LDRB     R1,[R1, #+2]
        CMP      R1,#+30
        BNE.N    ??GetLMR_72
        ADDS     R10,R10,#+1
        B.N      ??GetLMR_73
??GetLMR_72:
        ADDS     R11,R11,#+1
??GetLMR_73:
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        LDRB     R1,[R9, R1]
        CMP      R1,#+30
        BNE.N    ??GetLMR_74
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R9,R1
        LDRB     R1,[R1, #+3]
        CMP      R1,#+200
        BNE.N    ??GetLMR_74
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R9,R1
        LDRB     R1,[R1, #+1]
        CMP      R1,#+30
        BNE.N    ??GetLMR_74
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R9,R1
        LDRB     R1,[R1, #+4]
        CMP      R1,#+200
        BNE.N    ??GetLMR_74
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R9,R1
        LDRB     R1,[R1, #+2]
        CMP      R1,#+30
        BNE.N    ??GetLMR_74
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R9,R1
        LDRB     R1,[R1, #+5]
        CMP      R1,#+200
        BNE.N    ??GetLMR_74
        ADDS     R1,R9,#+2
        CMP      R1,#+1
        BLT.N    ??GetLMR_75
        ADDS     R1,R9,#+2
        LDR.W    R2,??GetLMR_14+0x20
        STR      R1,[R2, R6, LSL #+2]
        MOVS     R1,#+1
        STRB     R1,[SP, #+0]
??GetLMR_75:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.N    ??GetLMR_71
        B.N      ??GetLMR_68
??GetLMR_74:
        SUBS     R9,R9,#+1
??GetLMR_71:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BNE.W    ??GetLMR_67
        LDR      R1,[SP, #+36]
        CMP      R1,R4
        BLT.W    ??GetLMR_67
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #-2]
        CMP      R1,#+30
        BNE.N    ??GetLMR_76
        ADDS     R5,R5,#+1
        B.N      ??GetLMR_77
??GetLMR_76:
        ADDS     R7,R7,#+1
??GetLMR_77:
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        LDRB     R1,[R4, R1]
        CMP      R1,#+30
        BNE.W    ??GetLMR_66
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #-3]
        CMP      R1,#+200
        BNE.W    ??GetLMR_66
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #-1]
        CMP      R1,#+30
        BNE.W    ??GetLMR_66
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #-4]
        CMP      R1,#+200
        BNE.W    ??GetLMR_66
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #-2]
        CMP      R1,#+30
        BNE.W    ??GetLMR_66
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #-5]
        CMP      R1,#+200
        BNE.W    ??GetLMR_66
        SUBS     R1,R4,#+2
        CMP      R1,#+89
        BGE.N    ??GetLMR_78
        SUBS     R1,R4,#+2
        LDR.W    R2,??GetLMR_14+0x1C
        STR      R1,[R2, R6, LSL #+2]
        MOVS     R8,#+1
??GetLMR_78:
        LDRB     R1,[SP, #+0]
        CMP      R1,#+0
        BEQ.W    ??GetLMR_67
??GetLMR_68:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BNE.W    ??GetLMR_79
        CMN      R9,#+1
        BLT.W    ??GetLMR_79
        CMP      R10,R11
        BGE.W    ??GetLMR_79
        MOVS     R10,#+0
        MOVS     R11,#+0
        MOVS     R0,#+1
        LDR.W    R1,??GetLMR_4+0x1C
        STR      R0,[R1, R6, LSL #+2]
        CMP      R9,#+5
        BGE.N    ??GetLMR_80
        MOVS     R9,#+5
??GetLMR_80:
        LDR      R0,[SP, #+28]
        ADDS     R0,R0,R9
        B.N      ??GetLMR_81
??GetLMR_82:
        SUBS     R9,R9,#+1
??GetLMR_83:
        SUBS     R0,R0,#+1
??GetLMR_81:
        CMP      R0,#+1
        BLT.N    ??GetLMR_84
        LDRB     R1,[SP, #+0]
        CMP      R1,#+0
        BNE.N    ??GetLMR_83
        CMP      R9,#+0
        BMI.N    ??GetLMR_83
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R9,R1
        LDRB     R1,[R1, #+2]
        CMP      R1,#+30
        BNE.N    ??GetLMR_85
        ADDS     R10,R10,#+1
        B.N      ??GetLMR_86
??GetLMR_85:
        ADDS     R11,R11,#+1
??GetLMR_86:
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        LDRB     R1,[R9, R1]
        CMP      R1,#+30
        BNE.N    ??GetLMR_82
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R9,R1
        LDRB     R1,[R1, #+3]
        CMP      R1,#+200
        BNE.N    ??GetLMR_82
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R9,R1
        LDRB     R1,[R1, #+1]
        CMP      R1,#+30
        BNE.N    ??GetLMR_82
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R9,R1
        LDRB     R1,[R1, #+4]
        CMP      R1,#+200
        BNE.N    ??GetLMR_82
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R9,R1
        LDRB     R1,[R1, #+2]
        CMP      R1,#+30
        BNE.N    ??GetLMR_82
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R9,R1
        LDRB     R1,[R1, #+5]
        CMP      R1,#+200
        BNE.N    ??GetLMR_82
        ADDS     R0,R9,#+2
        CMP      R0,#+1
        BLT.N    ??GetLMR_87
        ADDS     R0,R9,#+2
        LDR.W    R1,??GetLMR_14+0x20
        STR      R0,[R1, R6, LSL #+2]
        MOVS     R0,#+1
        STRB     R0,[SP, #+0]
??GetLMR_87:
??GetLMR_84:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BNE.W    ??GetLMR_88
        CMP      R10,R11
        BGE.W    ??GetLMR_88
        MOVS     R0,#+2
        LDR.W    R1,??GetLMR_4+0x1C
        STR      R0,[R1, R6, LSL #+2]
        MVNS     R0,#+4
        LDR.W    R1,??GetLMR_14+0x20
        STR      R0,[R1, R6, LSL #+2]
        MOVS     R0,#+1
        STRB     R0,[SP, #+0]
        B.N      ??GetLMR_88
??GetLMR_79:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BNE.W    ??GetLMR_88
        CMP      R9,#+90
        BGE.W    ??GetLMR_88
        CMP      R11,R10
        BGE.W    ??GetLMR_88
        MOVS     R10,#+0
        MOVS     R11,#+0
        MOVS     R0,#-1
        LDR.W    R1,??GetLMR_4+0x1C
        STR      R0,[R1, R6, LSL #+2]
        MOV      R0,R9
        B.N      ??GetLMR_89
??GetLMR_90:
        ADDS     R9,R9,#+1
??GetLMR_91:
        ADDS     R0,R0,#+1
??GetLMR_89:
        CMP      R0,#+90
        BGE.N    ??GetLMR_92
        LDRB     R1,[SP, #+0]
        CMP      R1,#+0
        BNE.N    ??GetLMR_91
        CMP      R9,#+0
        BMI.N    ??GetLMR_91
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R9,R1
        LDRB     R1,[R1, #+2]
        CMP      R1,#+30
        BNE.N    ??GetLMR_93
        ADDS     R10,R10,#+1
        B.N      ??GetLMR_94
??GetLMR_93:
        ADDS     R11,R11,#+1
??GetLMR_94:
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        LDRB     R1,[R9, R1]
        CMP      R1,#+30
        BNE.N    ??GetLMR_90
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R9,R1
        LDRB     R1,[R1, #+3]
        CMP      R1,#+200
        BNE.N    ??GetLMR_90
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R9,R1
        LDRB     R1,[R1, #+1]
        CMP      R1,#+30
        BNE.N    ??GetLMR_90
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R9,R1
        LDRB     R1,[R1, #+4]
        CMP      R1,#+200
        BNE.N    ??GetLMR_90
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R9,R1
        LDRB     R1,[R1, #+2]
        CMP      R1,#+30
        BNE.N    ??GetLMR_90
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R9,R1
        LDRB     R1,[R1, #+5]
        CMP      R1,#+200
        BNE.N    ??GetLMR_90
        ADDS     R1,R9,#+2
        CMP      R1,#+1
        BLT.N    ??GetLMR_91
        ADDS     R1,R9,#+2
        LDR.W    R2,??GetLMR_14+0x20
        STR      R1,[R2, R6, LSL #+2]
        MOVS     R1,#+1
        STRB     R1,[SP, #+0]
        B.N      ??GetLMR_91
??GetLMR_92:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BNE.N    ??GetLMR_88
        CMP      R11,R10
        BGE.N    ??GetLMR_88
        MVNS     R0,#+1
        LDR.W    R1,??GetLMR_4+0x1C
        STR      R0,[R1, R6, LSL #+2]
        MOVS     R0,#+1
        STR      R0,[SP, #+24]
        MOVS     R0,#+95
        LDR.W    R1,??GetLMR_14+0x20
        STR      R0,[R1, R6, LSL #+2]
??GetLMR_88:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BNE.W    ??GetLMR_95
        CMP      R4,#+91
        BGE.W    ??GetLMR_95
        CMP      R5,R7
        BGE.W    ??GetLMR_95
        MOVS     R5,#+0
        MOVS     R7,#+0
        MOVS     R0,#+1
        LDR.W    R1,??GetLMR_14
        STR      R0,[R1, R6, LSL #+2]
        CMP      R4,#+90
        BLT.N    ??GetLMR_96
        MOVS     R4,#+84
??GetLMR_96:
        LDR      R0,[SP, #+28]
        SUBS     R0,R4,R0
        B.N      ??GetLMR_97
??GetLMR_98:
        ADDS     R4,R4,#+1
??GetLMR_99:
        ADDS     R0,R0,#+1
??GetLMR_97:
        CMP      R0,#+90
        BGE.N    ??GetLMR_100
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BNE.N    ??GetLMR_99
        CMP      R4,#+90
        BGE.N    ??GetLMR_99
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #-2]
        CMP      R1,#+30
        BNE.N    ??GetLMR_101
        ADDS     R5,R5,#+1
        B.N      ??GetLMR_102
??GetLMR_101:
        ADDS     R7,R7,#+1
??GetLMR_102:
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        LDRB     R1,[R4, R1]
        CMP      R1,#+30
        BNE.N    ??GetLMR_98
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #-3]
        CMP      R1,#+200
        BNE.N    ??GetLMR_98
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #-1]
        CMP      R1,#+30
        BNE.N    ??GetLMR_98
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #-4]
        CMP      R1,#+200
        BNE.N    ??GetLMR_98
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #-2]
        CMP      R1,#+30
        BNE.N    ??GetLMR_98
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #-5]
        CMP      R1,#+200
        BNE.N    ??GetLMR_98
        SUBS     R0,R4,#+2
        CMP      R0,#+89
        BGE.N    ??GetLMR_103
        SUBS     R0,R4,#+2
        LDR.W    R1,??GetLMR_14+0x1C
        STR      R0,[R1, R6, LSL #+2]
        MOVS     R8,#+1
??GetLMR_103:
??GetLMR_100:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BNE.W    ??GetLMR_104
        CMP      R5,R7
        BGE.W    ??GetLMR_104
        MOVS     R0,#+2
        LDR.W    R1,??GetLMR_14
        STR      R0,[R1, R6, LSL #+2]
        MOVS     R0,#+95
        LDR.W    R1,??GetLMR_14+0x1C
        STR      R0,[R1, R6, LSL #+2]
        MOVS     R8,#+1
        B.N      ??GetLMR_104
??GetLMR_95:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BNE.W    ??GetLMR_104
        CMP      R4,#+1
        BLT.W    ??GetLMR_104
        CMP      R7,R5
        BGE.W    ??GetLMR_104
        MOVS     R5,#+0
        MOVS     R7,#+0
        MOVS     R0,#-1
        LDR.N    R1,??GetLMR_14
        STR      R0,[R1, R6, LSL #+2]
        MOVS     R0,R4
        B.N      ??GetLMR_105
??GetLMR_106:
        ADDS     R4,R4,#+1
??GetLMR_107:
        SUBS     R0,R0,#+1
??GetLMR_105:
        CMP      R0,#+1
        BLT.N    ??GetLMR_108
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BNE.N    ??GetLMR_107
        CMP      R4,#+90
        BGE.N    ??GetLMR_107
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #-2]
        CMP      R1,#+30
        BNE.N    ??GetLMR_109
        ADDS     R5,R5,#+1
        B.N      ??GetLMR_110
        DATA
??GetLMR_0:
        DC32     NoValidMax
        DC32     StableNumbers
        DC32     LeftStableNumbers
        DC32     RightStableNumbers
        DC32     EndType
        DC32     ValidLineCount1
        DC32     ValidLineCount2
        DC32     midline_fcount
        DC32     midline_fcount_max
        DC32     last_is_midline
        DC32     this_is_midline
        DC32     BlackRow
        THUMB
??GetLMR_109:
        ADDS     R7,R7,#+1
??GetLMR_110:
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        LDRB     R1,[R4, R1]
        CMP      R1,#+30
        BNE.N    ??GetLMR_106
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #-3]
        CMP      R1,#+200
        BNE.N    ??GetLMR_106
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #-1]
        CMP      R1,#+30
        BNE.N    ??GetLMR_106
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #-4]
        CMP      R1,#+200
        BNE.N    ??GetLMR_106
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #-2]
        CMP      R1,#+30
        BNE.N    ??GetLMR_106
        LDR.W    R1,??GetLMR_63+0x4
        MOVS     R2,#+90
        MLA      R1,R2,R6,R1
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #-5]
        CMP      R1,#+200
        BNE.N    ??GetLMR_106
        SUBS     R0,R4,#+2
        CMP      R0,#+89
        BGE.N    ??GetLMR_111
        SUBS     R0,R4,#+2
        LDR.N    R1,??GetLMR_14+0x1C
        STR      R0,[R1, R6, LSL #+2]
        MOVS     R8,#+1
??GetLMR_111:
??GetLMR_108:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BNE.N    ??GetLMR_104
        CMP      R7,R5
        BGE.N    ??GetLMR_104
        MVNS     R0,#+1
        LDR.N    R1,??GetLMR_14
        STR      R0,[R1, R6, LSL #+2]
        MVNS     R0,#+4
        LDR.N    R1,??GetLMR_14+0x1C
        STR      R0,[R1, R6, LSL #+2]
        MOVS     R0,#+1
        STR      R0,[SP, #+20]
??GetLMR_104:
        LDR.N    R0,??GetLMR_14+0x1C
        LDR      R0,[R0, R6, LSL #+2]
        LDR.N    R1,??GetLMR_14+0x20
        LDR      R1,[R1, R6, LSL #+2]
        SUBS     R0,R0,R1
        CMP      R0,#+8
        BGE.N    ??GetLMR_112
        CMP      R6,#+60
        BGE.N    ??GetLMR_113
        RSBS     R0,R6,#+94
        LDR.W    R1,??DataTable9
        STR      R0,[R1, #+0]
??GetLMR_113:
        MOVS     R0,#+1
        STR      R0,[SP, #+24]
        MOVS     R0,#+1
        STR      R0,[SP, #+20]
        MOVS     R0,#+1
        STR      R0,[SP, #+12]
        MOVS     R0,#+7
        LDR.W    R1,??DataTable9_1
        STR      R0,[R1, #+0]
        LDR.N    R0,??GetLMR_2+0x24
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+100
        ADDS     R0,R6,R0
        CMP      R0,#+11
        BLT.N    ??GetLMR_112
        MOVS     R0,#+0
        STR      R0,[SP, #+24]
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
        LDR.N    R0,??GetLMR_14+0x18
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+30
        LDR.N    R1,??GetLMR_14+0x1C
        STR      R0,[R1, R6, LSL #+2]
        LDR.N    R0,??GetLMR_14+0x18
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+30
        LDR.N    R1,??GetLMR_14+0x20
        STR      R0,[R1, R6, LSL #+2]
??GetLMR_112:
        LDR.N    R0,??GetLMR_14+0x1C
        LDR      R0,[R0, R6, LSL #+2]
        CMP      R0,#+14
        BLT.N    ??GetLMR_114
        LDR.N    R0,??GetLMR_14+0x20
        LDR      R0,[R0, R6, LSL #+2]
        CMP      R0,#+77
        BLT.N    ??GetLMR_115
??GetLMR_114:
        MOVS     R0,#+1
        STR      R0,[SP, #+24]
        MOVS     R0,#+1
        STR      R0,[SP, #+20]
        MOVS     R0,#+1
        STR      R0,[SP, #+12]
        MOVS     R0,#+11
        LDR.W    R1,??DataTable9_1
        STR      R0,[R1, #+0]
??GetLMR_115:
        LDR      R0,[SP, #+44]
        CMP      R0,#+80
        BLT.N    ??GetLMR_116
        MOVS     R0,#+0
        STR      R0,[SP, #+44]
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_2
        STRB     R0,[R6, R1]
        LDR.W    R0,??DataTable9_3
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable9_3
        STRB     R0,[R1, #+0]
        MOVS     R0,#+1
        STR      R0,[SP, #+24]
        MOVS     R0,#+1
        STR      R0,[SP, #+20]
        MOVS     R0,#+1
        STR      R0,[SP, #+12]
        MOVS     R0,#+12
        LDR.W    R1,??DataTable9_1
        STR      R0,[R1, #+0]
        B.N      ??GetLMR_117
        DATA
??GetLMR_1:
        DC32     WhiteRow
        DC32     WhiteRow1
        DC32     sfminline
        DC32     mid_line_count
        DC32     mid_line_count_ls
        DC32     RightWhite
        DC32     LeftWhite
        THUMB
??GetLMR_116:
        LDR      R0,[SP, #+40]
        CMP      R0,#+80
        BLT.N    ??GetLMR_118
        MOVS     R0,#+0
        STR      R0,[SP, #+40]
        LDR.W    R0,??DataTable9_4
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable9_4
        STRB     R0,[R1, #+0]
        MOVS     R0,#+2
        LDR.W    R1,??DataTable9_2
        STRB     R0,[R6, R1]
        B.N      ??GetLMR_117
        Nop      
        DATA
??GetLMR_2:
        DC32     yxhs
        DC32     tbs_z
        DC32     tbs_y
        DC32     mode1
        DC32     mode2
        DC32     mode3
        DC32     mode4
        DC32     mode4_zhangai
        DC32     zaw_mode
        DC32     BlackEndMax
        THUMB
??GetLMR_118:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_2
        STRB     R0,[R6, R1]
??GetLMR_117:
        LDR      R0,[SP, #+24]
        CMP      R0,#+0
        BNE.N    ??GetLMR_119
        LDR.W    R0,??DataTable9_5
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable9_5
        STR      R0,[R1, #+0]
??GetLMR_119:
        LDR      R0,[SP, #+20]
        CMP      R0,#+0
        BNE.N    ??GetLMR_120
        LDR.W    R0,??DataTable9_6
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable9_6
        STR      R0,[R1, #+0]
??GetLMR_120:
        LDR      R0,[SP, #+24]
        CMP      R0,#+0
        BNE.N    ??GetLMR_121
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BNE.N    ??GetLMR_122
??GetLMR_121:
        MOVS     R0,#+1
        B.N      ??GetLMR_123
        Nop      
        DATA
??GetLMR_4:
        DC32     MidPos
        DC32     hx_find_count_max
        DC32     hx_i
        DC32     hx_end_line
        DC32     hx
        DC32     hx_found_Column
        DC32     BlackLineData
        DC32     tiaobian_Left
        THUMB
??GetLMR_122:
        MOVS     R0,#+0
??GetLMR_123:
        LDR      R1,[SP, #+20]
        CMP      R1,#+0
        BNE.N    ??GetLMR_124
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BNE.N    ??GetLMR_125
??GetLMR_124:
        MOVS     R1,#+1
        B.N      ??GetLMR_126
??GetLMR_125:
        MOVS     R1,#+0
??GetLMR_126:
        ADDS     R2,R1,R0
        CMP      R2,#+1
        BLT.N    ??GetLMR_127
        LDR.W    R2,??DataTable9_7
        LDR      R2,[R2, R6, LSL #+2]
        CMP      R2,#+0
        BEQ.N    ??GetLMR_128
        LDR.W    R2,??DataTable9_8
        LDR      R2,[R2, #+0]
        ADDS     R2,R2,#+1
        LDR.W    R3,??DataTable9_8
        STR      R2,[R3, #+0]
??GetLMR_128:
        LDR.N    R2,??GetLMR_14
        LDR      R2,[R2, R6, LSL #+2]
        CMP      R2,#+0
        BEQ.N    ??GetLMR_129
        LDR.W    R2,??DataTable9_9
        LDR      R2,[R2, #+0]
        ADDS     R2,R2,#+1
        LDR.W    R3,??DataTable9_9
        STR      R2,[R3, #+0]
??GetLMR_129:
        LDR.W    R2,??DataTable9_8
        LDR      R2,[R2, #+0]
        LDR.W    R3,??DataTable9_9
        LDR      R3,[R3, #+0]
        ADDS     R2,R3,R2
        LDR.W    R3,??DataTable9_10
        STR      R2,[R3, #+0]
??GetLMR_127:
        ORRS     R2,R1,R0
        CMP      R2,#+0
        BNE.N    ??GetLMR_130
        LDR.N    R2,??GetLMR_14+0x1C
        LDR      R2,[R2, R6, LSL #+2]
        CMP      R2,#+91
        BLT.N    ??GetLMR_131
        LDR.N    R2,??GetLMR_14+0x20
        LDR      R2,[R2, R6, LSL #+2]
        CMP      R2,#+1
        BLT.N    ??GetLMR_131
        CMP      R1,#+0
        BNE.N    ??GetLMR_132
        MOVS     R1,#+1
        B.N      ??GetLMR_130
??GetLMR_132:
        MOVS     R1,#+0
        B.N      ??GetLMR_130
??GetLMR_131:
        LDR.N    R2,??GetLMR_14+0x1C
        LDR      R2,[R2, R6, LSL #+2]
        CMP      R2,#+90
        BGE.N    ??GetLMR_133
        LDR.N    R2,??GetLMR_14+0x20
        LDR      R2,[R2, R6, LSL #+2]
        CMP      R2,#+0
        BPL.N    ??GetLMR_133
        CMP      R0,#+0
        BNE.N    ??GetLMR_134
        MOVS     R0,#+1
        B.N      ??GetLMR_130
        DATA
??GetLMR_14:
        DC32     tiaobian_Right
        DC32     0x9999999a
        DC32     0x3fd99999
        DC32     0x40590000
        DC32     0x3fd33333
        DC32     0x40140000
        DC32     BlackEndColumnMax
        DC32     RightBlack
        DC32     LeftBlack
        DC32     BlackEndL
        DC32     BlackEndM
        DC32     BlackEndR
        THUMB
??GetLMR_134:
        MOVS     R0,#+0
        B.N      ??GetLMR_130
??GetLMR_133:
??GetLMR_130:
        CMP      R0,#+0
        BEQ.W    ??GetLMR_135
        CMP      R1,#+0
        BNE.W    ??GetLMR_135
        LDR.W    R0,??DataTable9_11
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable9_11
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable9_12
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable9_12
        STR      R0,[R1, #+0]
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10
        STR      R0,[R1, R6, LSL #+2]
        LDR.W    R0,??DataTable9_13
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??GetLMR_136
        CMP      R6,#+97
        BLT.N    ??GetLMR_137
??GetLMR_136:
        LDR.W    R0,??DataTable10_1
        LDR      R0,[R0, R6, LSL #+2]
        LDR      R1,[SP, #+16]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable10_2
        STR      R0,[R1, R6, LSL #+2]
        B.N      ??GetLMR_138
??GetLMR_137:
        LDR.W    R0,??DataTable10_2
        ADDS     R0,R0,R6, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable10_1
        LDR      R1,[R1, R6, LSL #+2]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable10_1
        ADDS     R1,R1,R6, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable10_2
        STR      R0,[R1, R6, LSL #+2]
??GetLMR_138:
        LDR.W    R0,??DataTable10_3
        LDR      R0,[R0, R6, LSL #+2]
        CMN      R0,#+5
        BNE.N    ??GetLMR_139
        LDR.W    R0,??DataTable10_2
        LDR      R0,[R0, R6, LSL #+2]
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R4,R2
        MOVS     R5,R3
        LDR.W    R0,??DataTable10_1
        LDR      R0,[R0, R6, LSL #+2]
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable10_4  ;; 0x9999999a
        LDR.W    R3,??DataTable10_5  ;; 0x3fd99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_cdcmple
        BCS.N    ??GetLMR_139
        LDR.W    R0,??DataTable10_1
        LDR      R0,[R0, R6, LSL #+2]
        CMP      R0,#+41
        BLT.N    ??GetLMR_139
        LDR.W    R0,??DataTable10_1
        LDR      R0,[R0, R6, LSL #+2]
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable10_4  ;; 0x9999999a
        LDR.W    R3,??DataTable10_5  ;; 0x3fd99999
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable10_2
        STR      R0,[R1, R6, LSL #+2]
??GetLMR_139:
        LDR.W    R0,??DataTable9_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+11
        BLT.N    ??GetLMR_140
        RSBS     R0,R6,#+100
        CMP      R0,#+41
        BGE.N    ??GetLMR_140
        LDR.W    R0,??DataTable10_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??GetLMR_140
        LDR.W    R0,??DataTable11
        LDR      R0,[R0, #+0]
        CMP      R0,#+60
        BGE.N    ??GetLMR_140
        LDR.W    R0,??DataTable11_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??GetLMR_140
        MOVS     R0,#+99
        B.N      ??GetLMR_141
??GetLMR_142:
        MOVS     R1,#+1
        LDR.W    R2,??DataTable10_2
        STR      R1,[R2, R0, LSL #+2]
        SUBS     R0,R0,#+1
??GetLMR_141:
        CMP      R0,#+58
        BGE.N    ??GetLMR_142
        STR      R6,[SP, #+64]
??GetLMR_140:
        CMP      R6,#+99
        BNE.W    ??GetLMR_53
        MOVS     R0,#-1
        LDR.W    R1,??DataTable11_2
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable10_1
        LDR      R0,[R0, R6, LSL #+2]
        LDR.W    R1,??DataTable11_3
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable10_2
        LDR      R0,[R0, R6, LSL #+2]
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+0]
        B.N      ??GetLMR_53
??GetLMR_135:
        CMP      R0,#+0
        BNE.W    ??GetLMR_143
        CMP      R1,#+0
        BEQ.W    ??GetLMR_143
        LDR.W    R0,??DataTable9_11
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable9_11
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable11_4
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable11_4
        STR      R0,[R1, #+0]
        MOVS     R0,#+2
        LDR.W    R1,??DataTable10
        STR      R0,[R1, R6, LSL #+2]
        LDR.W    R0,??DataTable9_13
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??GetLMR_144
        CMP      R6,#+96
        BGE.N    ??GetLMR_145
??GetLMR_144:
        LDR.W    R0,??DataTable10_3
        LDR      R0,[R0, R6, LSL #+2]
        LDR      R1,[SP, #+16]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable10_2
        STR      R0,[R1, R6, LSL #+2]
        B.N      ??GetLMR_146
??GetLMR_145:
        LDR.W    R0,??DataTable10_2
        LDR      R0,[R0, R6, LSL #+2]
        LDR.W    R1,??DataTable10_3
        LDR      R1,[R1, R6, LSL #+2]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable10_3
        ADDS     R1,R1,R6, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable10_2
        STR      R0,[R1, R6, LSL #+2]
??GetLMR_146:
        LDR.W    R0,??DataTable10_1
        LDR      R0,[R0, R6, LSL #+2]
        CMP      R0,#+95
        BNE.N    ??GetLMR_147
        LDR.W    R0,??DataTable10_3
        LDR      R0,[R0, R6, LSL #+2]
        RSBS     R0,R0,#+90
        BL       __aeabi_i2d
        MOVS     R2,#+858993459
        LDR.W    R3,??DataTable12_1  ;; 0x3fe33333
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable10_3
        LDR      R0,[R0, R6, LSL #+2]
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R4,R2
        MOVS     R5,R3
        LDR.W    R0,??DataTable10_2
        LDR      R0,[R0, R6, LSL #+2]
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_cdcmple
        BCS.N    ??GetLMR_147
        LDR.W    R0,??DataTable10_3
        LDR      R0,[R0, R6, LSL #+2]
        CMP      R0,#+60
        BGE.N    ??GetLMR_147
        LDR.W    R0,??DataTable10_3
        LDR      R0,[R0, R6, LSL #+2]
        RSBS     R0,R0,#+90
        BL       __aeabi_i2d
        MOVS     R2,#+858993459
        LDR.W    R3,??DataTable12_1  ;; 0x3fe33333
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable10_3
        LDR      R0,[R0, R6, LSL #+2]
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable10_2
        STR      R0,[R1, R6, LSL #+2]
??GetLMR_147:
        LDR.W    R0,??DataTable11_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+11
        BLT.N    ??GetLMR_148
        RSBS     R0,R6,#+100
        CMP      R0,#+44
        BGE.N    ??GetLMR_148
        LDR.W    R0,??DataTable10_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??GetLMR_148
        LDR.W    R0,??DataTable11
        LDR      R0,[R0, #+0]
        CMP      R0,#+60
        BGE.N    ??GetLMR_148
        LDR.W    R0,??DataTable11_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??GetLMR_148
        MOVS     R0,#+99
        B.N      ??GetLMR_149
        DATA
??GetLMR_63:
        DC32     mid_line_count_last
        DC32     ThresholdData
        THUMB
??GetLMR_150:
        MOVS     R1,#+89
        LDR.W    R2,??DataTable10_2
        STR      R1,[R2, R0, LSL #+2]
        SUBS     R0,R0,#+1
??GetLMR_149:
        CMP      R0,#+57
        BGE.N    ??GetLMR_150
        MOVS     R0,#+1
        STR      R0,[SP, #+12]
        MOVS     R0,#+1
        STR      R0,[SP, #+24]
        MOVS     R0,#+1
        STR      R0,[SP, #+20]
??GetLMR_148:
        CMP      R6,#+99
        BNE.W    ??GetLMR_53
        LDR.W    R0,??DataTable10_3
        LDR      R0,[R0, R6, LSL #+2]
        LDR.W    R1,??DataTable11_2
        STR      R0,[R1, #+0]
        MOVS     R0,#-1
        LDR.W    R1,??DataTable11_3
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable10_2
        LDR      R0,[R0, R6, LSL #+2]
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+0]
        B.N      ??GetLMR_53
??GetLMR_143:
        CMP      R0,#+0
        BEQ.N    ??GetLMR_151
        CMP      R1,#+0
        BEQ.N    ??GetLMR_151
        LDR.W    R0,??DataTable13
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable13
        STR      R0,[R1, #+0]
        MOVS     R0,#+3
        LDR.W    R1,??DataTable10
        STR      R0,[R1, R6, LSL #+2]
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R6, R0]
        CMP      R0,#+2
        BNE.N    ??GetLMR_152
        LDR.W    R0,??DataTable13_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable10_2
        STR      R0,[R1, R6, LSL #+2]
        B.N      ??GetLMR_53
??GetLMR_152:
        MOV      R0,#+298
        LDR.W    R1,??DataTable10_2
        STR      R0,[R1, R6, LSL #+2]
        CMP      R6,#+99
        BNE.N    ??GetLMR_153
        MOVS     R0,#-1
        LDR.W    R1,??DataTable11_2
        STR      R0,[R1, #+0]
        MOVS     R0,#-1
        LDR.W    R1,??DataTable11_3
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable10_2
        LDR      R0,[R0, R6, LSL #+2]
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+0]
??GetLMR_153:
        LDR      R0,[SP, #+24]
        CMP      R0,#+0
        BEQ.W    ??GetLMR_53
        LDR      R0,[SP, #+20]
        CMP      R0,#+0
        BEQ.W    ??GetLMR_53
        MOVS     R0,#+1
        STR      R0,[SP, #+12]
        B.N      ??GetLMR_53
??GetLMR_151:
        LDR.W    R0,??DataTable9_11
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable9_11
        STR      R0,[R1, #+0]
        MOVS     R0,#+5
        LDR.W    R1,??DataTable10
        STR      R0,[R1, R6, LSL #+2]
        LDR.W    R0,??DataTable10_3
        LDR      R0,[R0, R6, LSL #+2]
        CMP      R0,#+2
        BLT.N    ??GetLMR_154
        LDR.W    R0,??DataTable10_1
        LDR      R0,[R0, R6, LSL #+2]
        CMP      R0,#+88
        BGE.N    ??GetLMR_154
        LDR.W    R0,??DataTable14
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable14
        STR      R0,[R1, #+0]
        MOVS     R0,#+4
        LDR.W    R1,??DataTable10
        STR      R0,[R1, R6, LSL #+2]
??GetLMR_154:
        LDR.W    R0,??DataTable14
        LDR      R0,[R0, #+0]
        LDR      R1,[SP, #+8]
        SUBS     R1,R1,#+3
        SUBS     R1,R1,R6
        CMP      R0,R1
        BLT.W    ??GetLMR_155
        LDR      R0,[SP, #+56]
        CMP      R0,#+0
        BEQ.W    ??GetLMR_155
        LDR.W    R0,??DataTable10_3
        LDR      R0,[R0, R6, LSL #+2]
        LDR.W    R1,??DataTable10_3
        ADDS     R1,R1,R6, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        BL       `fabss`
        CMP      R0,#+5
        BGE.N    ??GetLMR_156
        LDR.W    R0,??DataTable10_1
        ADDS     R0,R0,R6, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable10_1
        LDR      R1,[R1, R6, LSL #+2]
        SUBS     R0,R0,R1
        CMP      R0,#+5
        BLT.N    ??GetLMR_156
        LDR.W    R0,??DataTable10
        ADDS     R0,R0,R6, LSL #+2
        LDR      R0,[R0, #+4]
        CMP      R0,#+4
        BNE.N    ??GetLMR_156
        LDR.W    R0,??DataTable14_1
        STR      R6,[R0, #+0]
??GetLMR_156:
        LDR.W    R0,??DataTable10_1
        LDR      R0,[R0, R6, LSL #+2]
        LDR.W    R1,??DataTable10_1
        ADDS     R1,R1,R6, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        BL       `fabss`
        CMP      R0,#+5
        BGE.N    ??GetLMR_157
        LDR.W    R0,??DataTable10_3
        LDR      R0,[R0, R6, LSL #+2]
        LDR.W    R1,??DataTable10_3
        ADDS     R1,R1,R6, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        CMP      R0,#+5
        BLT.N    ??GetLMR_157
        LDR.W    R0,??DataTable10
        ADDS     R0,R0,R6, LSL #+2
        LDR      R0,[R0, #+4]
        CMP      R0,#+4
        BNE.N    ??GetLMR_157
        RSBS     R0,R6,#+0
        LDR.W    R1,??DataTable14_1
        STR      R0,[R1, #+0]
??GetLMR_157:
        LDR.W    R0,??DataTable14_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??GetLMR_158
        LDR.W    R0,??DataTable14_1
        LDR      R0,[R0, #+0]
        MOVS     R1,#-1
        MULS     R0,R1,R0
        SUBS     R0,R0,R6
        CMP      R0,#+6
        BLT.N    ??GetLMR_158
        LDR.W    R0,??DataTable10
        ADDS     R0,R0,R6, LSL #+2
        LDR      R0,[R0, #+4]
        CMP      R0,#+4
        BNE.N    ??GetLMR_158
        LDR.W    R0,??DataTable10_1
        LDR      R0,[R0, R6, LSL #+2]
        LDR.W    R1,??DataTable10_1
        ADDS     R1,R1,R6, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        BL       `fabss`
        CMP      R0,#+5
        BGE.N    ??GetLMR_158
        LDR.W    R0,??DataTable10_3
        ADDS     R0,R0,R6, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable10_3
        LDR      R1,[R1, R6, LSL #+2]
        SUBS     R0,R0,R1
        CMP      R0,#+5
        BLT.N    ??GetLMR_158
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_1
        STR      R0,[R1, #+0]
        MVNS     R0,#+5
        LDR.W    R1,??DataTable14_2
        STR      R0,[R1, #+0]
??GetLMR_158:
        LDR.W    R0,??DataTable14_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BLT.N    ??GetLMR_155
        LDR.W    R0,??DataTable14_1
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,R6
        CMP      R0,#+6
        BLT.N    ??GetLMR_155
        LDR.W    R0,??DataTable10
        ADDS     R0,R0,R6, LSL #+2
        LDR      R0,[R0, #+4]
        CMP      R0,#+4
        BNE.N    ??GetLMR_155
        LDR.W    R0,??DataTable10_3
        LDR      R0,[R0, R6, LSL #+2]
        LDR.W    R1,??DataTable10_3
        ADDS     R1,R1,R6, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        BL       `fabss`
        CMP      R0,#+5
        BGE.N    ??GetLMR_155
        LDR.W    R0,??DataTable10_1
        LDR      R0,[R0, R6, LSL #+2]
        LDR.W    R1,??DataTable10_1
        ADDS     R1,R1,R6, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        CMP      R0,#+5
        BLT.N    ??GetLMR_155
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_1
        STR      R0,[R1, #+0]
        MOVS     R0,#+6
        LDR.W    R1,??DataTable14_2
        STR      R0,[R1, #+0]
??GetLMR_155:
        LDR.W    R0,??DataTable14
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??GetLMR_159
        LDR      R0,[SP, #+8]
        SUBS     R0,R0,#+1
        SUBS     R0,R0,R6
        CMP      R0,#+1
        BLT.N    ??GetLMR_159
        LDR      R0,[SP, #+8]
        SUBS     R0,R0,#+1
        B.N      ??GetLMR_160
??GetLMR_161:
        LDR.W    R1,??DataTable10_2
        LDR      R1,[R1, R6, LSL #+2]
        LDR.W    R2,??DataTable10_2
        ADDS     R2,R2,R6, LSL #+2
        LDR      R2,[R2, #+4]
        ADDS     R1,R2,R1
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        LDR.W    R2,??DataTable10_2
        STR      R1,[R2, R0, LSL #+2]
        SUBS     R0,R0,#+1
??GetLMR_160:
        CMP      R6,R0
        BLT.N    ??GetLMR_161
??GetLMR_159:
        LDR.W    R0,??DataTable10_3
        LDR      R0,[R0, R6, LSL #+2]
        LDR.W    R1,??DataTable10_1
        LDR      R1,[R1, R6, LSL #+2]
        LDR.W    R2,??DataTable10_3
        LDR      R2,[R2, R6, LSL #+2]
        SUBS     R1,R1,R2
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable10_2
        STR      R0,[R1, R6, LSL #+2]
        LDR.W    R0,??DataTable10_3
        LDR      R0,[R0, R6, LSL #+2]
        CMP      R0,#+1
        BGE.N    ??GetLMR_162
        LDR.W    R0,??DataTable10_1
        LDR      R0,[R0, R6, LSL #+2]
        CMP      R0,#+89
        BLT.N    ??GetLMR_162
        LDR.W    R0,??DataTable13_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable10_2
        STR      R0,[R1, R6, LSL #+2]
??GetLMR_162:
        LDR.W    R0,??DataTable10_1
        LDR      R0,[R0, R6, LSL #+2]
        LDR.W    R1,??DataTable10_3
        LDR      R1,[R1, R6, LSL #+2]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R4,R2
        MOVS     R5,R3
        LDR      R0,[SP, #+16]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable15  ;; 0x40040000
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_cdcmple
        BCS.N    ??GetLMR_163
        CMP      R6,#+51
        BLT.N    ??GetLMR_163
        LDR.W    R0,??DataTable13_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable10_2
        STR      R0,[R1, R6, LSL #+2]
??GetLMR_163:
        LDR      R0,[SP, #+32]
        SUBS     R0,R0,R6
        CMP      R0,#+4
        BLT.N    ??GetLMR_164
        LDR      R0,[SP, #+32]
        CMP      R0,#+100
        BGE.N    ??GetLMR_164
        LDR      R0,[SP, #+32]
        SUBS     R0,R0,#+1
??GetLMR_165:
        CMP      R0,R6
        BGE.N    ??GetLMR_166
        LDR.W    R1,??DataTable10_2
        LDR      R2,[SP, #+32]
        LDR      R1,[R1, R2, LSL #+2]
        LDR.W    R2,??DataTable10_2
        LDR      R2,[R2, R6, LSL #+2]
        SUBS     R1,R1,R2
        CMP      R1,#+5
        BLT.N    ??GetLMR_167
        LDR.W    R1,??DataTable10_2
        LDR      R2,[SP, #+32]
        LDR      R1,[R1, R2, LSL #+2]
        LDR.W    R2,??DataTable10_2
        LDR      R2,[R2, R6, LSL #+2]
        ADDS     R1,R2,R1
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        SUBS     R1,R1,#+1
        LDR.W    R2,??DataTable10_2
        STR      R1,[R2, R0, LSL #+2]
??GetLMR_167:
        LDR.W    R1,??DataTable10_2
        LDR      R2,[SP, #+32]
        LDR      R1,[R1, R2, LSL #+2]
        LDR.W    R2,??DataTable10_2
        LDR      R2,[R2, R6, LSL #+2]
        SUBS     R1,R1,R2
        CMN      R1,#+4
        BGE.N    ??GetLMR_168
        LDR.W    R1,??DataTable10_2
        LDR      R2,[SP, #+32]
        LDR      R1,[R1, R2, LSL #+2]
        LDR.W    R2,??DataTable10_2
        LDR      R2,[R2, R6, LSL #+2]
        ADDS     R1,R2,R1
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        ADDS     R1,R1,#+1
        LDR.W    R2,??DataTable10_2
        STR      R1,[R2, R0, LSL #+2]
??GetLMR_168:
        ADDS     R0,R0,#+1
        B.N      ??GetLMR_165
??GetLMR_164:
??GetLMR_166:
        STR      R6,[SP, #+32]
        CMP      R6,#+99
        BNE.N    ??GetLMR_53
        LDR.W    R0,??DataTable10_3
        LDR      R0,[R0, R6, LSL #+2]
        LDR.W    R1,??DataTable11_2
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable10_1
        LDR      R0,[R0, R6, LSL #+2]
        LDR.W    R1,??DataTable11_3
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable10_2
        LDR      R0,[R0, R6, LSL #+2]
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+0]
        B.N      ??GetLMR_53
// 1777   else
// 1778     
// 1779   {
// 1780     
// 1781    if(RowMax-i<BlackEndMax-5&&midline_fcount_max<4)
// 1782    {
// 1783    
// 1784       LeftEnd=0;
??GetLMR_169:
        MOVS     R0,#+0
        STR      R0,[SP, #+24]
// 1785       RightEnd=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
// 1786       MidEnd=0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
// 1787       RightBlack[i] =  BlackEndColumnMax+30;
        LDR.W    R0,??DataTable13_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+30
        LDR.W    R1,??DataTable10_1
        STR      R0,[R1, R6, LSL #+2]
// 1788       LeftBlack[i] =  BlackEndColumnMax-30;
        LDR.W    R0,??DataTable13_1
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+30
        LDR.W    R1,??DataTable10_3
        STR      R0,[R1, R6, LSL #+2]
// 1789       goto lable;
// 1790    }
??GetLMR_53:
        LDR      R0,[SP, #+12]
        CMP      R0,#+0
        BEQ.W    ??GetLMR_12
        RSBS     R0,R6,#+100
        LDR.W    R1,??DataTable11
        LDR      R1,[R1, #+0]
        SUBS     R1,R1,#+5
        CMP      R0,R1
        BGE.N    ??GetLMR_170
        LDR.W    R0,??DataTable20
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BLT.N    ??GetLMR_169
// 1791     //    if(zhijiao>0&&zhijiao<90 &&StableNumbers-(RowMax-zhijiao)<10)
// 1792     //      
// 1793     //    {
// 1794     //      StableNumbers=(RowMax-zhijiao);
// 1795     //    }
// 1796     //    
// 1797     return;
??GetLMR_170:
        B.N      ??GetLMR_171
// 1798   }
// 1799   
// 1800   label_end:
// 1801     
// 1802   }
// 1803   
// 1804   
// 1805 }
??GetLMR_13:
??GetLMR_171:
        ADD      SP,SP,#+68
        POP      {R4-R11,PC}      ;; return
// 1806 
// 1807 
// 1808 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// 1809 float EPerCount=0.0;
EPerCount:
        DS8 4
// 1810 //从偏差线提取偏差

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1811 void GetEPerCount()
// 1812 {
GetEPerCount:
        PUSH     {R3-R7,LR}
// 1813   unsigned char i=0,j=0;
        MOVS     R4,#+0
        MOVS     R0,#+0
// 1814   //中心点跳变计数
// 1815   unsigned char TripPointCount = 0;
        MOVS     R5,#+0
// 1816   // 连续中心线点数小于该数字则过滤掉
// 1817   unsigned char FilterNumber = 8;
        MOVS     R6,#+8
// 1818   // 跳变长度设定
// 1819   unsigned char TripLen = 3;
        MOVS     R7,#+3
// 1820   
// 1821   Excursion = 0;
        MOVS     R1,#+0
        LDR.W    R2,??DataTable20_1
        STR      R1,[R2, #+0]
// 1822   ValidLineCount=0;
        MOVS     R1,#+0
        LDR.W    R2,??DataTable16
        STR      R1,[R2, #+0]
// 1823   ValidExcursionCount=0;
        MOVS     R1,#+0
        LDR.W    R2,??DataTable16_1
        STR      R1,[R2, #+0]
// 1824   
// 1825   for (i = 0;i < RowMax;i++)
        MOVS     R1,#+0
        MOVS     R4,R1
        B.N      ??GetEPerCount_0
// 1826   {
// 1827     TripPointPos[i] = 0;	
??GetEPerCount_1:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable17
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STRB     R0,[R4, R1]
// 1828   }
        ADDS     R4,R4,#+1
??GetEPerCount_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+100
        BLT.N    ??GetEPerCount_1
// 1829   //根据跳变分段
// 1830   for (i = 0;i < RowMax;i++)
        MOVS     R4,#+0
        B.N      ??GetEPerCount_2
// 1831   {
// 1832     // 单边缘情况直接取边缘
// 1833     /*if (fabss(RightBlack[i] - LeftBlack[i]) < 5 )
// 1834     {
// 1835     BlackLineData[i] = LeftBlack[i];
// 1836   }
// 1837 		else
// 1838     {
// 1839     //正常两边黑线提取中心线
// 1840     BlackLineData[i] = LeftBlack[i] + (RightBlack[i] - LeftBlack[i])/2;
// 1841   }*/
// 1842     // 相邻中心点做差，找出中心线跳变处,进行分段处理
// 1843     if (i > 0)
??GetEPerCount_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??GetEPerCount_4
// 1844     {
// 1845       SubValue[i] = BlackLineData[i] - BlackLineData[i-1];
        LDR.W    R0,??DataTable10_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??DataTable10_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #-4]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable17_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STRB     R0,[R4, R1]
// 1846       //跳变判断
// 1847       if (fabss(SubValue[i]) > TripLen)
        LDR.W    R0,??DataTable17_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRSB    R0,[R4, R0]
        BL       `fabss`
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,R0
        BGE.N    ??GetEPerCount_4
// 1848       {
// 1849         //记录跳变位置（行标）
// 1850         TripPointPos[TripPointCount] = i;
        LDR.W    R0,??DataTable17
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R4,[R5, R0]
// 1851         TripPointCount++;	
        ADDS     R5,R5,#+1
// 1852       }
// 1853     }	
// 1854   }//for结束 
??GetEPerCount_4:
        ADDS     R4,R4,#+1
??GetEPerCount_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+100
        BLT.N    ??GetEPerCount_3
// 1855   if (TripPointCount == 0)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??GetEPerCount_5
// 1856   {
// 1857     for (i = 0;i < RowMax;i++)
        MOVS     R4,#+0
??GetEPerCount_6:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+100
        BGE.W    ??GetEPerCount_7
// 1858     {
// 1859       ValidLineCount++;
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable16
        STR      R0,[R1, #+0]
// 1860       if(i > 30 && i < RowMax)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        SUBS     R0,R4,#+31
        CMP      R0,#+69
        BCS.N    ??GetEPerCount_8
// 1861       {
// 1862         ValidExcursionCount++;
        LDR.W    R0,??DataTable16_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable16_1
        STR      R0,[R1, #+0]
// 1863         Excursion += (BlackLineData[i-1]-BlackLineData[i]);
        LDR.W    R0,??DataTable20_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable10_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #-4]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable10_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable20_1
        STR      R0,[R1, #+0]
// 1864       }
// 1865     }
??GetEPerCount_8:
        ADDS     R4,R4,#+1
        B.N      ??GetEPerCount_6
// 1866   }
// 1867   else 
// 1868   {	
// 1869     if (TripPointPos[0] > FilterNumber)
??GetEPerCount_5:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable17
        LDRSB    R1,[R1, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.N    ??GetEPerCount_9
// 1870     {
// 1871       for (i = 0;i < TripPointPos[0];i++)
        MOVS     R4,#+0
        B.N      ??GetEPerCount_10
// 1872       {
// 1873         ValidLineCount++;
??GetEPerCount_11:
        LDR.W    R0,??DataTable16
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable16
        STR      R0,[R1, #+0]
// 1874         if(i > 30)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+31
        BLT.N    ??GetEPerCount_12
// 1875         {
// 1876           ValidExcursionCount++;
        LDR.W    R0,??DataTable16_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable16_1
        STR      R0,[R1, #+0]
// 1877           Excursion += (BlackLineData[i-1]-BlackLineData[i]);
        LDR.W    R0,??DataTable20_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable10_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #-4]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable10_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable20_1
        STR      R0,[R1, #+0]
// 1878         }
// 1879       }
??GetEPerCount_12:
        ADDS     R4,R4,#+1
??GetEPerCount_10:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable17
        LDRSB    R1,[R1, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BLT.N    ??GetEPerCount_11
// 1880     }
// 1881     
// 1882     TripPointPos[TripPointCount] = RowMax;
??GetEPerCount_9:
        MOVS     R0,#+100
        LDR.W    R1,??DataTable17
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R1]
// 1883     for (j = 0;j < TripPointCount;j++)
        MOVS     R0,#+0
        B.N      ??GetEPerCount_13
// 1884     {
// 1885       if (TripPointPos[j+1] - TripPointPos[j] > FilterNumber)
// 1886       {
// 1887         for (i = TripPointPos[j];i < TripPointPos[j+1];i++)
// 1888         {
// 1889           ValidLineCount++;
??GetEPerCount_14:
        LDR.W    R1,??DataTable16
        LDR      R1,[R1, #+0]
        ADDS     R1,R1,#+1
        LDR.W    R2,??DataTable16
        STR      R1,[R2, #+0]
// 1890           if(i > TripPointPos[j] && i > 30)
        LDR.W    R1,??DataTable17
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDRSB    R1,[R0, R1]
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        CMP      R1,R2
        BGE.N    ??GetEPerCount_15
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+31
        BLT.N    ??GetEPerCount_15
// 1891           {
// 1892             ValidExcursionCount++;
        LDR.W    R1,??DataTable16_1
        LDR      R1,[R1, #+0]
        ADDS     R1,R1,#+1
        LDR.W    R2,??DataTable16_1
        STR      R1,[R2, #+0]
// 1893             Excursion += (BlackLineData[i-1]-BlackLineData[i]);
        LDR.W    R1,??DataTable20_1
        LDR      R1,[R1, #+0]
        LDR.W    R2,??DataTable10_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R2,R2,R4, LSL #+2
        LDR      R2,[R2, #-4]
        ADDS     R1,R2,R1
        LDR.W    R2,??DataTable10_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R2,[R2, R4, LSL #+2]
        SUBS     R1,R1,R2
        LDR.W    R2,??DataTable20_1
        STR      R1,[R2, #+0]
// 1894           }
// 1895         }
??GetEPerCount_15:
        ADDS     R4,R4,#+1
??GetEPerCount_16:
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??DataTable17
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R0,R2
        LDRSB    R2,[R2, #+1]
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        CMP      R1,R2
        BLT.N    ??GetEPerCount_14
??GetEPerCount_17:
        ADDS     R0,R0,#+1
??GetEPerCount_13:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R0,R5
        BCS.N    ??GetEPerCount_7
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R1,??DataTable17
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R0,R1
        LDRSB    R1,[R1, #+1]
        LDR.W    R2,??DataTable17
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDRSB    R2,[R0, R2]
        SUBS     R1,R1,R2
        CMP      R6,R1
        BGE.N    ??GetEPerCount_17
        LDR.W    R1,??DataTable17
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDRB     R4,[R0, R1]
        B.N      ??GetEPerCount_16
// 1896       }
// 1897     }
// 1898   }
// 1899   if(ValidExcursionCount > 1)
??GetEPerCount_7:
        LDR.W    R0,??DataTable16_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+2
        BLT.N    ??GetEPerCount_18
// 1900   {
// 1901     EPerCount = fabss(Excursion)/ValidExcursionCount;
        LDR.W    R0,??DataTable20_1
        LDR      R0,[R0, #+0]
        BL       `fabss`
        LDR.W    R1,??DataTable16_1
        LDR      R1,[R1, #+0]
        SDIV     R0,R0,R1
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable20_2
        STR      R0,[R1, #+0]
        B.N      ??GetEPerCount_19
// 1902   }
// 1903   else
// 1904   {
// 1905     EPerCount = 3;
??GetEPerCount_18:
        LDR.W    R0,??DataTable20_3  ;; 0x40400000
        LDR.W    R1,??DataTable20_2
        STR      R0,[R1, #+0]
// 1906     Excursion = 50;
        MOVS     R0,#+50
        LDR.W    R1,??DataTable20_1
        STR      R0,[R1, #+0]
// 1907   }
// 1908 }
??GetEPerCount_19:
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     StableNumbers

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     EndType

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     LineType

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     BlackRow

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_4:
        DC32     WhiteRow

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_5:
        DC32     LeftStableNumbers

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_6:
        DC32     RightStableNumbers

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_7:
        DC32     tiaobian_Left

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_8:
        DC32     tbs_z

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_9:
        DC32     tbs_y

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_10:
        DC32     tbs_all

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_11:
        DC32     yxhs

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_12:
        DC32     mode1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_13:
        DC32     RoadType

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1909 void getmidline()
// 1910 {
getmidline:
        PUSH     {R3-R11,LR}
// 1911   int i=0,j=0;
        MOVS     R4,#+0
        MOVS     R0,#+0
// 1912   unsigned char bFoundLeft = 0;
        MOVS     R1,#+0
// 1913   unsigned char bFoundRight = 0;
        MOVS     R5,#+0
// 1914   unsigned char TripLen = 5;
        MOVS     R2,#+5
        STRB     R2,[SP, #+0]
// 1915   
// 1916   unsigned int LeftStart=0;
        MOVS     R6,#+0
// 1917   unsigned int LeftEnd = 0;
        MOVS     R7,#+0
// 1918   unsigned int RightStart=0;
        MOVS     R8,#+0
// 1919   unsigned int RightEnd = 0;
        MOVS     R9,#+0
// 1920   
// 1921   unsigned char MidEnd = 0;
        MOVS     R10,#+0
// 1922   
// 1923   unsigned char MidToBlackCount = 0;
        MOVS     R11,#+0
// 1924   
// 1925   //int NoValidCount = 0;
// 1926   NoValidMax=0;
        MOVS     R2,#+0
        LDR.W    R3,??DataTable20_4
        STR      R2,[R3, #+0]
// 1927   
// 1928   StableNumbers=0;
        MOVS     R2,#+0
        LDR.W    R3,??DataTable20_5
        STR      R2,[R3, #+0]
// 1929   LeftStableNumbers = 0;
        MOVS     R2,#+0
        LDR.W    R3,??DataTable20_6
        STR      R2,[R3, #+0]
// 1930   RightStableNumbers = 0;
        MOVS     R2,#+0
        LDR.W    R3,??DataTable20_7
        STR      R2,[R3, #+0]
// 1931   
// 1932   ValidLineCount1=0;
        MOVS     R2,#+0
        LDR.W    R3,??DataTable20_8
        STR      R2,[R3, #+0]
// 1933   ValidLineCount2=0;
        MOVS     R2,#+0
        LDR.W    R3,??DataTable20_9
        STR      R2,[R3, #+0]
// 1934   
// 1935   for (i = RowMax-1;i >= 0 && !MidEnd;i--)
        MOVS     R2,#+99
        MOVS     R4,R2
        B.N      ??getmidline_0
// 1936   {
// 1937     if (i>RowMax-5)
// 1938     {
// 1939       LeftStart=ColumnMax/2;
// 1940       LeftEnd=2;
// 1941       RightStart=ColumnMax/2;
// 1942       RightEnd=ColumnMax-2;	
// 1943     }
// 1944     bFoundLeft=bFoundRight=0;
// 1945     
// 1946     for (j=LeftStart;j>LeftEnd;j--)
// 1947     {
// 1948       if (ThresholdData[i][j]==White&&ThresholdData[i][j-1]==Black)
// 1949       {
// 1950         LeftBlack[i]=j-1;
// 1951         if (LeftBlack[i]>1)
// 1952         {
// 1953           
// 1954           bFoundLeft=1;
// 1955           LeftStart=LeftBlack[i]+10;
// 1956           if (LeftBlack[i]<12)
// 1957           {
// 1958             LeftEnd=2;
// 1959           }
// 1960           else
// 1961           {
// 1962             LeftEnd=LeftBlack[i]-10;
// 1963           }
// 1964           break;
// 1965         }
// 1966       }
// 1967     }
// 1968     
// 1969     for (j=RightStart;j<RightEnd;j++)
// 1970     {
// 1971       if (ThresholdData[i][j]==White&&ThresholdData[i][j+1]==Black)
// 1972       {
// 1973         RightBlack[i]=j+1;
// 1974         
// 1975         if (RightBlack[i]<ColumnMax-2)
// 1976         {     
// 1977           bFoundRight=1;
// 1978           RightStart=RightBlack[i]-10;
// 1979           if (RightBlack[i]+10>ColumnMax)
// 1980           {
// 1981             RightEnd=ColumnMax-2;
// 1982           }
// 1983           else
// 1984           {
// 1985             RightEnd=RightBlack[i]+10;
// 1986           }
// 1987           break;
// 1988         }
// 1989       }
// 1990     }
// 1991     
// 1992     if (!bFoundLeft)
// 1993     {
// 1994       if (i<RowMax-20)
// 1995       {
// 1996         LeftBlack[i]=LeftBlack[i+1]+LeftBlack[i+1]-LeftBlack[i+2];
// 1997       }
// 1998       else
// 1999       {
// 2000         LeftBlack[i]=0;
// 2001       }
// 2002     }
// 2003     else if (i<RowMax-20&&fabss(LeftBlack[i]-LeftBlack[i+1])>TripLen)
// 2004     {
// 2005       LeftBlack[i]=LeftBlack[i+1]+LeftBlack[i+1]-LeftBlack[i+2];
// 2006     }
// 2007     if (!bFoundRight)
// 2008     {
// 2009       if (i<RowMax-20)
// 2010       {
// 2011         RightBlack[i]=RightBlack[i+1]+RightBlack[i+1]-RightBlack[i+2];
// 2012       }
// 2013       else
// 2014       {
// 2015         RightBlack[i]=ColumnMax-1;
// 2016       }
// 2017     }
// 2018     else if (i<RowMax-20&&fabss(RightBlack[i]-RightBlack[i+1])>TripLen)
// 2019     {
// 2020       RightBlack[i]=RightBlack[i+1]+RightBlack[i+1]-RightBlack[i+2];
// 2021     }
// 2022     
// 2023     BlackLineData[i]=LeftBlack[i]+(RightBlack[i]-LeftBlack[i])/2;
// 2024     
// 2025     
// 2026     //		if (i<RowMax-5)
// 2027     //		{
// 2028     //			if (!bFoundLeft&&bFoundRight)
// 2029     //			{
// 2030     //				BlackLineData[i]=RightBlack[i]-(RightBlack[i+1]-BlackLineData[i+1]);
// 2031     //			}
// 2032     //			if (!bFoundRight&&bFoundLeft)
// 2033     //			{
// 2034     //				BlackLineData[i]=LeftBlack[i]+(BlackLineData[i+1]-LeftBlack[i+1]);
// 2035     //			}
// 2036     //		}
// 2037     
// 2038     //中心线搜索截止
// 2039     if (BlackLineData[i]<4||BlackLineData[i]>ColumnMax-4)
// 2040     {
// 2041       MidEnd = 1;//中心线截止
// 2042       break;
// 2043     }
// 2044     if (i < RowMax-20 && fabss(BlackLineData[i]-BlackLineData[i+1]) > TripLen)
// 2045     {
// 2046       BlackLineData[i] = BlackLineData[i+1] + BlackLineData[i+1] - BlackLineData[i+2];
// 2047     }
// 2048     if (ThresholdData[i][BlackLineData[i]] == Black)
// 2049     {
// 2050       MidToBlackCount++;
// 2051       if (MidToBlackCount >= 2)
// 2052       {
// 2053         MidEnd = 1;
// 2054       }
// 2055     }
// 2056     else
// 2057     {
// 2058       MidToBlackCount = 0;
??getmidline_1:
        MOVS     R11,#+0
// 2059     }
// 2060     if (!MidEnd)
??getmidline_2:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+0
        BNE.N    ??getmidline_3
// 2061     {
// 2062       StableNumbers++;
        LDR.W    R0,??DataTable20_5
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable20_5
        STR      R0,[R1, #+0]
// 2063     }
??getmidline_3:
        SUBS     R4,R4,#+1
??getmidline_0:
        CMP      R4,#+0
        BMI.W    ??getmidline_4
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+0
        BNE.W    ??getmidline_4
        CMP      R4,#+96
        BLT.N    ??getmidline_5
        MOVS     R6,#+45
        MOVS     R7,#+2
        MOVS     R8,#+45
        MOVS     R9,#+88
??getmidline_5:
        MOVS     R5,#+0
        MOVS     R1,R5
        MOVS     R0,R6
        B.N      ??getmidline_6
??getmidline_7:
        SUBS     R0,R0,#+1
??getmidline_6:
        CMP      R7,R0
        BCS.N    ??getmidline_8
        LDR.W    R2,??DataTable20_10
        MOVS     R3,#+90
        MLA      R2,R3,R4,R2
        LDRB     R2,[R0, R2]
        CMP      R2,#+200
        BNE.N    ??getmidline_7
        LDR.W    R2,??DataTable20_10
        MOVS     R3,#+90
        MLA      R2,R3,R4,R2
        ADDS     R2,R0,R2
        LDRB     R2,[R2, #-1]
        CMP      R2,#+30
        BNE.N    ??getmidline_7
        SUBS     R2,R0,#+1
        LDR.N    R3,??DataTable10_3
        STR      R2,[R3, R4, LSL #+2]
        LDR.N    R2,??DataTable10_3
        LDR      R2,[R2, R4, LSL #+2]
        CMP      R2,#+2
        BLT.N    ??getmidline_7
        MOVS     R1,#+1
        LDR.N    R0,??DataTable10_3
        LDR      R0,[R0, R4, LSL #+2]
        ADDS     R6,R0,#+10
        LDR.N    R0,??DataTable10_3
        LDR      R0,[R0, R4, LSL #+2]
        CMP      R0,#+12
        BGE.N    ??getmidline_9
        MOVS     R7,#+2
        B.N      ??getmidline_10
??getmidline_9:
        LDR.N    R0,??DataTable10_3
        LDR      R0,[R0, R4, LSL #+2]
        SUBS     R7,R0,#+10
??getmidline_10:
??getmidline_8:
        MOV      R0,R8
        B.N      ??getmidline_11
??getmidline_12:
        ADDS     R0,R0,#+1
??getmidline_11:
        CMP      R0,R9
        BCS.N    ??getmidline_13
        LDR.W    R2,??DataTable20_10
        MOVS     R3,#+90
        MLA      R2,R3,R4,R2
        LDRB     R2,[R0, R2]
        CMP      R2,#+200
        BNE.N    ??getmidline_12
        LDR.W    R2,??DataTable20_10
        MOVS     R3,#+90
        MLA      R2,R3,R4,R2
        ADDS     R2,R0,R2
        LDRB     R2,[R2, #+1]
        CMP      R2,#+30
        BNE.N    ??getmidline_12
        ADDS     R2,R0,#+1
        LDR.N    R3,??DataTable10_1
        STR      R2,[R3, R4, LSL #+2]
        LDR.N    R2,??DataTable10_1
        LDR      R2,[R2, R4, LSL #+2]
        CMP      R2,#+88
        BGE.N    ??getmidline_12
        MOVS     R5,#+1
        LDR.N    R0,??DataTable10_1
        LDR      R0,[R0, R4, LSL #+2]
        SUBS     R8,R0,#+10
        LDR.N    R0,??DataTable10_1
        LDR      R0,[R0, R4, LSL #+2]
        ADDS     R0,R0,#+10
        CMP      R0,#+91
        BLT.N    ??getmidline_14
        MOVS     R9,#+88
        B.N      ??getmidline_15
??getmidline_14:
        LDR.N    R0,??DataTable10_1
        LDR      R0,[R0, R4, LSL #+2]
        ADDS     R9,R0,#+10
??getmidline_15:
??getmidline_13:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??getmidline_16
        CMP      R4,#+80
        BGE.N    ??getmidline_17
        LDR.N    R0,??DataTable10_3
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.N    R1,??DataTable10_3
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable10_3
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+8]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable10_3
        STR      R0,[R1, R4, LSL #+2]
        B.N      ??getmidline_18
??getmidline_17:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable10_3
        STR      R0,[R1, R4, LSL #+2]
        B.N      ??getmidline_18
??getmidline_16:
        CMP      R4,#+80
        BGE.N    ??getmidline_18
        LDR.N    R0,??DataTable10_3
        LDR      R0,[R0, R4, LSL #+2]
        LDR.N    R1,??DataTable10_3
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        BL       `fabss`
        LDRB     R1,[SP, #+0]
        CMP      R1,R0
        BGE.N    ??getmidline_18
        LDR.N    R0,??DataTable10_3
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.N    R1,??DataTable10_3
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable10_3
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+8]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable10_3
        STR      R0,[R1, R4, LSL #+2]
??getmidline_18:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??getmidline_19
        CMP      R4,#+80
        BGE.N    ??getmidline_20
        LDR.N    R0,??DataTable10_1
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.N    R1,??DataTable10_1
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable10_1
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+8]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable10_1
        STR      R0,[R1, R4, LSL #+2]
        B.N      ??getmidline_21
??getmidline_20:
        MOVS     R0,#+89
        LDR.N    R1,??DataTable10_1
        STR      R0,[R1, R4, LSL #+2]
        B.N      ??getmidline_21
??getmidline_19:
        CMP      R4,#+80
        BGE.N    ??getmidline_21
        LDR.N    R0,??DataTable10_1
        LDR      R0,[R0, R4, LSL #+2]
        LDR.N    R1,??DataTable10_1
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        BL       `fabss`
        LDRB     R1,[SP, #+0]
        CMP      R1,R0
        BGE.N    ??getmidline_21
        LDR.N    R0,??DataTable10_1
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.N    R1,??DataTable10_1
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable10_1
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+8]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable10_1
        STR      R0,[R1, R4, LSL #+2]
??getmidline_21:
        LDR.N    R0,??DataTable10_3
        LDR      R0,[R0, R4, LSL #+2]
        LDR.N    R1,??DataTable10_1
        LDR      R1,[R1, R4, LSL #+2]
        LDR.N    R2,??DataTable10_3
        LDR      R2,[R2, R4, LSL #+2]
        SUBS     R1,R1,R2
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable10_2
        STR      R0,[R1, R4, LSL #+2]
        LDR.N    R0,??DataTable10_2
        LDR      R0,[R0, R4, LSL #+2]
        SUBS     R0,R0,#+4
        CMP      R0,#+83
        BCC.N    ??getmidline_22
        MOVS     R10,#+1
// 2064   }
// 2065   
// 2066 }
??getmidline_4:
        POP      {R0,R4-R11,PC}   ;; return
??getmidline_22:
        CMP      R4,#+80
        BGE.N    ??getmidline_23
        LDR.N    R0,??DataTable10_2
        LDR      R0,[R0, R4, LSL #+2]
        LDR.N    R1,??DataTable10_2
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        BL       `fabss`
        LDRB     R1,[SP, #+0]
        CMP      R1,R0
        BGE.N    ??getmidline_23
        LDR.N    R0,??DataTable10_2
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.N    R1,??DataTable10_2
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable10_2
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+8]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable10_2
        STR      R0,[R1, R4, LSL #+2]
??getmidline_23:
        LDR.W    R0,??DataTable20_10
        MOVS     R1,#+90
        MLA      R0,R1,R4,R0
        LDR.N    R1,??DataTable10_2
        LDR      R1,[R1, R4, LSL #+2]
        LDRB     R0,[R1, R0]
        CMP      R0,#+30
        BNE.W    ??getmidline_1
        ADDS     R11,R11,#+1
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R11,#+2
        BLT.W    ??getmidline_2
        MOVS     R10,#+1
        B.N      ??getmidline_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     RoadMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     RightBlack

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     BlackLineData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_3:
        DC32     LeftBlack

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_4:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_5:
        DC32     0x3fd99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_6:
        DC32     hx
// 2067 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2068 void GetFinalMidLine()
// 2069 {
GetFinalMidLine:
        PUSH     {R4}
// 2070   int i = 0,MinStable = 0;
        MOVS     R1,#+0
        MOVS     R0,#+0
// 2071   MinStable = MIN(StableNumbers,LeftStableNumbers);
        LDR.W    R2,??DataTable20_5
        LDR      R2,[R2, #+0]
        LDR.W    R3,??DataTable20_6
        LDR      R3,[R3, #+0]
        CMP      R2,R3
        BGE.N    ??GetFinalMidLine_0
        LDR.W    R0,??DataTable20_5
        LDR      R0,[R0, #+0]
        B.N      ??GetFinalMidLine_1
??GetFinalMidLine_0:
        LDR.W    R0,??DataTable20_6
        LDR      R0,[R0, #+0]
// 2072   MinStable = MIN(MinStable,RightStableNumbers);
??GetFinalMidLine_1:
        LDR.W    R1,??DataTable20_7
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BLT.N    ??GetFinalMidLine_2
??GetFinalMidLine_3:
        LDR.W    R0,??DataTable20_7
        LDR      R0,[R0, #+0]
// 2073   for (i = RowMax-1;i > RowMax-(MinStable-0) ;i--)
??GetFinalMidLine_2:
        MOVS     R1,#+99
        B.N      ??GetFinalMidLine_4
// 2074   {
// 2075     //ThresholdData[i][BlackLineData[i]]=White;
// 2076     BlackLineData[i] = LeftBlack[i] + (RightBlack[i]-LeftBlack[i] )/2;
// 2077     
// 2078     if (BlackLineData[i] > ColumnMax-1){BlackLineData[i] = ColumnMax-1;}
// 2079     else if (BlackLineData[i] < 0){BlackLineData[i]=0;}
??GetFinalMidLine_5:
        LDR.W    R2,??DataTable21
        LDR      R2,[R2, R1, LSL #+2]
        CMP      R2,#+0
        BPL.N    ??GetFinalMidLine_6
        MOVS     R2,#+0
        LDR.W    R3,??DataTable21
        STR      R2,[R3, R1, LSL #+2]
??GetFinalMidLine_6:
        SUBS     R1,R1,#+1
??GetFinalMidLine_4:
        RSBS     R2,R0,#+100
        CMP      R2,R1
        BGE.N    ??GetFinalMidLine_7
        LDR.W    R2,??DataTable20_11
        LDR      R2,[R2, R1, LSL #+2]
        LDR.W    R3,??DataTable20_12
        LDR      R3,[R3, R1, LSL #+2]
        LDR.W    R4,??DataTable20_11
        LDR      R4,[R4, R1, LSL #+2]
        SUBS     R3,R3,R4
        MOVS     R4,#+2
        SDIV     R3,R3,R4
        ADDS     R2,R3,R2
        LDR.W    R3,??DataTable21
        STR      R2,[R3, R1, LSL #+2]
        LDR.W    R2,??DataTable21
        LDR      R2,[R2, R1, LSL #+2]
        CMP      R2,#+90
        BLT.N    ??GetFinalMidLine_5
        MOVS     R2,#+89
        LDR.W    R3,??DataTable21
        STR      R2,[R3, R1, LSL #+2]
        B.N      ??GetFinalMidLine_6
// 2080     
// 2081     //ThresholdData[i][BlackLineData[i]]=128;
// 2082   }
// 2083   /*if (LeftStableNumbers > MinStable)
// 2084   {
// 2085   for (i = RowMax-(MinStable-0);i > RowMax - (LeftStableNumbers-0);i--)
// 2086   {
// 2087   BlackLineData[i] = BlackLineData[i+1] + LeftBlack[i+1] - LeftBlack[i+2];
// 2088   if (BlackLineData[i] > ColumnMax-1){BlackLineData[i] = ColumnMax-1;}
// 2089 			else if (BlackLineData[i] < 0){BlackLineData[i]=0;}
// 2090 }
// 2091 }
// 2092   if (RightStableNumbers > MinStable)
// 2093   {
// 2094   for (i = RowMax-(MinStable-0);i > RowMax - (RightStableNumbers-0);i--)
// 2095   {
// 2096   BlackLineData[i] = BlackLineData[i+1] + RightBlack[i+1] - RightBlack[i+2];
// 2097   if (BlackLineData[i] > ColumnMax-1){BlackLineData[i] = ColumnMax-1;}
// 2098 			else if (BlackLineData[i] < 0){BlackLineData[i]=0;}
// 2099 }
// 2100 }*/
// 2101   //  if(LeftStableNumbers> MinStable)
// 2102 }
??GetFinalMidLine_7:
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     BlackEndMax

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC32     sfzj

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_2:
        DC32     firstline_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_3:
        DC32     firstline_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_4:
        DC32     mode2
// 2103 
// 2104 
// 2105 
// 2106 
// 2107 //左均值滤波

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2108 void LAverageFilter()
// 2109 {
LAverageFilter:
        PUSH     {R4}
// 2110   unsigned char i = 0;
        MOVS     R0,#+0
// 2111   unsigned char j = 0;
        MOVS     R1,#+0
// 2112   int sum = 0;
        MOVS     R2,#+0
// 2113   for (i = RowMax-1;i > RowMax-(LeftStableNumbers-5);i--)
        MOVS     R3,#+99
        MOVS     R0,R3
        B.N      ??LAverageFilter_0
// 2114   {
// 2115     sum = 0;
// 2116     for (j = 0;j < 5;j++)
// 2117     {
// 2118       sum += LeftBlack[i-j];
??LAverageFilter_1:
        LDR.W    R3,??DataTable20_11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        SUBS     R4,R0,R1
        LDR      R3,[R3, R4, LSL #+2]
        ADDS     R2,R3,R2
// 2119     }
        ADDS     R1,R1,#+1
??LAverageFilter_2:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+5
        BLT.N    ??LAverageFilter_1
// 2120     LeftBlack[i] = sum/5;
        MOVS     R1,#+5
        SDIV     R1,R2,R1
        LDR.W    R2,??DataTable20_11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R1,[R2, R0, LSL #+2]
        SUBS     R0,R0,#+1
??LAverageFilter_0:
        LDR.W    R1,??DataTable20_6
        LDR      R1,[R1, #+0]
        RSBS     R1,R1,#+100
        ADDS     R1,R1,#+5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R1,R0
        BGE.N    ??LAverageFilter_3
        MOVS     R2,#+0
        MOVS     R1,#+0
        B.N      ??LAverageFilter_2
// 2121   }
// 2122   P1_X = LeftBlack[RowMax-(LeftStableNumbers-6)];
??LAverageFilter_3:
        LDR.W    R0,??DataTable20_11
        LDR.W    R1,??DataTable20_6
        LDR      R1,[R1, #+0]
        RSBS     R1,R1,#+100
        ADDS     R1,R1,#+6
        LDR      R0,[R0, R1, LSL #+2]
        LDR.W    R1,??DataTable21_1
        STR      R0,[R1, #+0]
// 2123   P1_Y = RowMax-(LeftStableNumbers-6);
        LDR.W    R0,??DataTable20_6
        LDR      R0,[R0, #+0]
        RSBS     R0,R0,#+100
        ADDS     R0,R0,#+6
        LDR.W    R1,??DataTable22
        STR      R0,[R1, #+0]
// 2124 }
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     firstline_m

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DC32     0x3fe33333
// 2125 
// 2126 //右均值滤波

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2127 void RAverageFilter()
// 2128 {
RAverageFilter:
        PUSH     {R4}
// 2129   unsigned char i = 0;
        MOVS     R0,#+0
// 2130   unsigned char j = 0;
        MOVS     R1,#+0
// 2131   int sum = 0;
        MOVS     R2,#+0
// 2132   for (i = RowMax-1;i > RowMax-(RightStableNumbers-5);i--)
        MOVS     R3,#+99
        MOVS     R0,R3
        B.N      ??RAverageFilter_0
// 2133   {
// 2134     sum = 0;
// 2135     for (j = 0;j < 5;j++)
// 2136     {
// 2137       sum += RightBlack[i-j];
??RAverageFilter_1:
        LDR.W    R3,??DataTable20_12
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        SUBS     R4,R0,R1
        LDR      R3,[R3, R4, LSL #+2]
        ADDS     R2,R3,R2
// 2138     }
        ADDS     R1,R1,#+1
??RAverageFilter_2:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+5
        BLT.N    ??RAverageFilter_1
// 2139     RightBlack[i] = sum/5;
        MOVS     R1,#+5
        SDIV     R1,R2,R1
        LDR.W    R2,??DataTable20_12
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R1,[R2, R0, LSL #+2]
        SUBS     R0,R0,#+1
??RAverageFilter_0:
        LDR.W    R1,??DataTable20_7
        LDR      R1,[R1, #+0]
        RSBS     R1,R1,#+100
        ADDS     R1,R1,#+5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R1,R0
        BGE.N    ??RAverageFilter_3
        MOVS     R2,#+0
        MOVS     R1,#+0
        B.N      ??RAverageFilter_2
// 2140   }
// 2141   P2_X = RightBlack[RowMax-(RightStableNumbers-6)];
??RAverageFilter_3:
        LDR.W    R0,??DataTable20_12
        LDR.W    R1,??DataTable20_7
        LDR      R1,[R1, #+0]
        RSBS     R1,R1,#+100
        ADDS     R1,R1,#+6
        LDR      R0,[R0, R1, LSL #+2]
        LDR.W    R1,??DataTable21_2
        STR      R0,[R1, #+0]
// 2142   P2_Y = RowMax-(RightStableNumbers-6);
        LDR.W    R0,??DataTable20_7
        LDR      R0,[R0, #+0]
        RSBS     R0,R0,#+100
        ADDS     R0,R0,#+6
        LDR.W    R1,??DataTable23
        STR      R0,[R1, #+0]
// 2143   
// 2144 }
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13:
        DC32     mode3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_1:
        DC32     BlackEndColumnMax
// 2145 
// 2146 //中心线均值滤波

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2147 void AverageFilter()
// 2148 {
AverageFilter:
        PUSH     {R3-R5,LR}
// 2149   unsigned char i = 0;
        MOVS     R0,#+0
// 2150   unsigned char j = 0;
        MOVS     R1,#+0
// 2151   int sum = 0;
        MOVS     R2,#+0
// 2152   for (i = RowMax-1;i > RowMax-(StableNumbers);i--)
        MOVS     R3,#+99
        MOVS     R0,R3
        B.N      ??AverageFilter_0
// 2153   {
// 2154     sum = 0;
// 2155     for (j = 0;j < 5;j++)
// 2156     {
// 2157       sum += BlackLineData[i-j];
??AverageFilter_1:
        LDR.W    R3,??DataTable21
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        SUBS     R4,R0,R1
        LDR      R3,[R3, R4, LSL #+2]
        ADDS     R2,R3,R2
// 2158     }
        ADDS     R1,R1,#+1
??AverageFilter_2:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+5
        BLT.N    ??AverageFilter_1
// 2159     BlackLineData[i] = sum/5;
        MOVS     R1,#+5
        SDIV     R1,R2,R1
        LDR.W    R2,??DataTable21
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R1,[R2, R0, LSL #+2]
        SUBS     R0,R0,#+1
??AverageFilter_0:
        LDR.W    R1,??DataTable20_5
        LDR      R1,[R1, #+0]
        RSBS     R1,R1,#+100
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R1,R0
        BGE.N    ??AverageFilter_3
        MOVS     R2,#+0
        MOVS     R1,#+0
        B.N      ??AverageFilter_2
// 2160   }
// 2161   P0_X = BlackLineData[RowMax-1];
??AverageFilter_3:
        LDR.W    R0,??DataTable21
        LDR      R0,[R0, #+396]
        LDR.W    R1,??DataTable22_1
        STR      R0,[R1, #+0]
// 2162   P0_Y = RowMax-1;
        MOVS     R0,#+99
        LDR.W    R1,??DataTable22_2
        STR      R0,[R1, #+0]
// 2163   
// 2164   Mid_K1 = fabss(P0_X-P1_X)*1.0/fabss(P0_Y-P1_Y);
        LDR.W    R0,??DataTable22_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable21_1
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       `fabss`
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable22_3  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable22_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable22
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       `fabss`
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable22_4
        STR      R0,[R1, #+0]
// 2165   Mid_K2 = fabss(P0_X-P2_X)*1.0/fabss(P0_Y-P2_Y);
        LDR.W    R0,??DataTable22_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable21_2
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       `fabss`
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable22_3  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable22_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable23
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       `fabss`
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable24
        STR      R0,[R1, #+0]
// 2166   
// 2167 }
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DC32     mode4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_1:
        DC32     mode4_zhangai

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_2:
        DC32     zaw_mode
// 2168 
// 2169 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2170 void MidLineCompensate()
// 2171 {
MidLineCompensate:
        PUSH     {R4-R8,LR}
// 2172   int i=0,icount=0,j=0;
        MOVS     R6,#+0
        MOVS     R8,#+0
        MOVS     R3,#+0
// 2173   int CompensateData = 0;
        MOVS     R2,#+0
// 2174   
// 2175   int sum = 0;
        MOVS     R1,#+0
// 2176   float avg =0.0;
        MOVS     R0,#+0
// 2177   int tem = 1;
        MOVS     R7,#+1
// 2178   
// 2179   CompensateCount=0;
        MOVS     R4,#+0
        LDR.W    R5,??DataTable24_1
        STR      R4,[R5, #+0]
// 2180   
// 2181   for (i = RowMax-2,icount=0;i > RowMax-(StableNumbers-10);i--,icount++)
        MOVS     R4,#+98
        MOVS     R6,R4
        MOVS     R4,#+0
        MOV      R8,R4
        B.N      ??MidLineCompensate_0
// 2182   {
// 2183     sum += (BlackLineData[i]-BlackLineData[i+1]);
??MidLineCompensate_1:
        LDR.W    R0,??DataTable21
        LDR      R0,[R0, R6, LSL #+2]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable21
        ADDS     R1,R1,R6, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R1,R0,R1
// 2184   }
        SUBS     R6,R6,#+1
        ADDS     R8,R8,#+1
??MidLineCompensate_0:
        LDR.W    R0,??DataTable20_5
        LDR      R0,[R0, #+0]
        RSBS     R0,R0,#+100
        ADDS     R0,R0,#+10
        CMP      R0,R6
        BLT.N    ??MidLineCompensate_1
// 2185   avg = sum*1.0 / icount;
        MOVS     R0,R1
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable22_3  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R0,R8
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
// 2186   if (avg < 0)
        MOVS     R1,#+0
        BL       __aeabi_cfcmple
        BCS.N    ??MidLineCompensate_2
// 2187   {
// 2188     tem = -1;
        MOVS     R7,#-1
// 2189     avg = (-1)*avg;
        LDR.W    R1,??DataTable24_2  ;; 0xbf800000
        BL       __aeabi_fmul
// 2190   }
// 2191   if (avg > 1.0)
??MidLineCompensate_2:
        LDR.W    R1,??DataTable24_3  ;; 0x3f800001
        BL       __aeabi_cfrcmple
        BHI.N    ??MidLineCompensate_3
// 2192   {
// 2193     CompensateData = 4;
        MOVS     R2,#+4
        B.N      ??MidLineCompensate_4
// 2194   }else if (avg > 0.55)
??MidLineCompensate_3:
        LDR.W    R1,??DataTable24_4  ;; 0x3f0ccccd
        BL       __aeabi_cfrcmple
        BHI.N    ??MidLineCompensate_5
// 2195   {
// 2196     CompensateData = 3;
        MOVS     R2,#+3
        B.N      ??MidLineCompensate_4
// 2197   }
// 2198   else if (avg > 0.25)
??MidLineCompensate_5:
        LDR.W    R1,??DataTable24_5  ;; 0x3e800001
        BL       __aeabi_cfrcmple
        BHI.N    ??MidLineCompensate_6
// 2199   {
// 2200     CompensateData = 2;
        MOVS     R2,#+2
        B.N      ??MidLineCompensate_4
// 2201   }else
// 2202   {
// 2203     CompensateData = 0;
??MidLineCompensate_6:
        MOVS     R2,#+0
// 2204   }
// 2205   CompensateData = CompensateData*tem;
??MidLineCompensate_4:
        MULS     R2,R7,R2
// 2206   
// 2207   
// 2208   for (i = RowMax - (StableNumbers);i > 0;i--)
        LDR.W    R0,??DataTable20_5
        LDR      R0,[R0, #+0]
        RSBS     R6,R0,#+100
        B.N      ??MidLineCompensate_7
// 2209   {
// 2210     BlackLineData[i] = BlackLineData[i+1] + CompensateData;//BlackLineData[i+1] + BlackLineData[i+1]-BlackLineData[i+2];
// 2211     
// 2212     CompensateCount++;
// 2213     if (ThresholdData[i][BlackLineData[i]] == Black || BlackLineData[i] < 2 || BlackLineData[i] > ColumnMax -2)
// 2214     {
// 2215       break;
// 2216     }
// 2217     sum = 0;
// 2218     for (j = RowMax-2,icount=0;j > i;j--,icount++)
// 2219     {
// 2220       sum += (BlackLineData[j]-BlackLineData[j+1]);
// 2221     }
// 2222     avg = sum*1.0 / icount;
// 2223     if (avg < 0)
// 2224     {
// 2225       tem = -1;
// 2226       avg = (-1)*avg;
// 2227     }
// 2228     if (avg > 1.0)
// 2229     {
// 2230       CompensateData = 4;
// 2231     }else if (avg > 0.55)
// 2232     {
// 2233       CompensateData = 3;
// 2234     }
// 2235     else if (avg > 0.25)
// 2236     {
// 2237       CompensateData = 2;
// 2238     }else
// 2239     {
// 2240       CompensateData = 0;
??MidLineCompensate_8:
        MOVS     R2,#+0
// 2241     }
// 2242     CompensateData = CompensateData*tem;
??MidLineCompensate_9:
        MULS     R2,R7,R2
        SUBS     R6,R6,#+1
??MidLineCompensate_7:
        CMP      R6,#+1
        BLT.N    ??MidLineCompensate_10
        LDR.W    R0,??DataTable21
        ADDS     R0,R0,R6, LSL #+2
        LDR      R0,[R0, #+4]
        ADDS     R0,R2,R0
        LDR.W    R1,??DataTable21
        STR      R0,[R1, R6, LSL #+2]
        LDR.W    R0,??DataTable24_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable24_1
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable20_10
        MOVS     R1,#+90
        MLA      R0,R1,R6,R0
        LDR.W    R1,??DataTable21
        LDR      R1,[R1, R6, LSL #+2]
        LDRB     R0,[R1, R0]
        CMP      R0,#+30
        BEQ.N    ??MidLineCompensate_11
        LDR.W    R0,??DataTable21
        LDR      R0,[R0, R6, LSL #+2]
        SUBS     R0,R0,#+2
        CMP      R0,#+87
        BCC.N    ??MidLineCompensate_12
// 2243   }
// 2244 }
??MidLineCompensate_11:
??MidLineCompensate_10:
        POP      {R4-R8,PC}       ;; return
??MidLineCompensate_12:
        MOVS     R1,#+0
        MOVS     R3,#+98
        MOVS     R8,#+0
        B.N      ??MidLineCompensate_13
??MidLineCompensate_14:
        LDR.W    R0,??DataTable21
        LDR      R0,[R0, R3, LSL #+2]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable21
        ADDS     R1,R1,R3, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R1,R0,R1
        SUBS     R3,R3,#+1
        ADDS     R8,R8,#+1
??MidLineCompensate_13:
        CMP      R6,R3
        BLT.N    ??MidLineCompensate_14
        MOVS     R0,R1
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable22_3  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        MOV      R0,R8
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        MOVS     R1,#+0
        BL       __aeabi_cfcmple
        BCS.N    ??MidLineCompensate_15
        MOVS     R7,#-1
        LDR.W    R1,??DataTable24_2  ;; 0xbf800000
        BL       __aeabi_fmul
??MidLineCompensate_15:
        LDR.W    R1,??DataTable24_3  ;; 0x3f800001
        BL       __aeabi_cfrcmple
        BHI.N    ??MidLineCompensate_16
        MOVS     R2,#+4
        B.N      ??MidLineCompensate_9
??MidLineCompensate_16:
        LDR.W    R1,??DataTable24_4  ;; 0x3f0ccccd
        BL       __aeabi_cfrcmple
        BHI.N    ??MidLineCompensate_17
        MOVS     R2,#+3
        B.N      ??MidLineCompensate_9
??MidLineCompensate_17:
        LDR.W    R1,??DataTable24_5  ;; 0x3e800001
        BL       __aeabi_cfrcmple
        BHI.N    ??MidLineCompensate_8
        MOVS     R2,#+2
        B.N      ??MidLineCompensate_9

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15:
        DC32     0x40040000
// 2245 
// 2246 
// 2247 
// 2248 //获取中心线方差

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2249 void GetMidLineVariance()
// 2250 {
GetMidLineVariance:
        PUSH     {R4-R8,LR}
// 2251   unsigned char i=0;
        MOVS     R5,#+0
// 2252   unsigned char iCount=0;
        MOVS     R6,#+0
// 2253   unsigned int  Black_Sum=0;
        MOVS     R0,#+0
// 2254   float aver=0.0;
        MOVS     R4,#+0
// 2255   int end = RowMax - (StableNumbers - 0);
        LDR.N    R1,??DataTable20_5
        LDR      R1,[R1, #+0]
        RSBS     R7,R1,#+100
// 2256   
// 2257   MidLineExcursion = 0;
        MOVS     R1,#+0
        LDR.W    R2,??DataTable24_6
        STR      R1,[R2, #+0]
// 2258   //LPLD_UART_PutCharArr(UART4,"开始发送1",8);
// 2259   for(i=RowMax-5,iCount=0; i>end; i--,iCount++)    
        MOVS     R1,#+95
        MOVS     R5,R1
        MOVS     R1,#+0
        MOVS     R6,R1
        B.N      ??GetMidLineVariance_0
// 2260   {
// 2261     // LPLD_UART_PutChar(UART4,BlackLineData[i]+48);
// 2262     //  LPLD_UART_PutCharArr(UART4,"  ",1);
// 2263     Black_Sum += BlackLineData[i];
??GetMidLineVariance_1:
        LDR.W    R1,??DataTable21
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R1,[R1, R5, LSL #+2]
        ADDS     R0,R1,R0
// 2264     MidLineExcursion = MidLineExcursion + BlackLineData[i] - BlackLineData[i+1];
        LDR.W    R1,??DataTable24_6
        LDR      R1,[R1, #+0]
        LDR.W    R2,??DataTable21
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R2,[R2, R5, LSL #+2]
        ADDS     R1,R2,R1
        LDR.W    R2,??DataTable21
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R2,R2,R5, LSL #+2
        LDR      R2,[R2, #+4]
        SUBS     R1,R1,R2
        LDR.W    R2,??DataTable24_6
        STR      R1,[R2, #+0]
// 2265   }	
        SUBS     R5,R5,#+1
        ADDS     R6,R6,#+1
??GetMidLineVariance_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R7,R5
        BLT.N    ??GetMidLineVariance_1
// 2266   aver = Black_Sum*1.0 / iCount;
        BL       __aeabi_ui2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable22_3  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R0,R6
        BL       __aeabi_ui2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        MOVS     R4,R0
// 2267   MidLineVariance = 0.0;
        MOVS     R0,#+0
        MOVS     R1,#+0
        LDR.W    R2,??DataTable24_7
        STRD     R0,R1,[R2, #+0]
// 2268   for (i = RowMax-5;i > end;i--)
        MOVS     R5,#+95
        B.N      ??GetMidLineVariance_2
// 2269   {
// 2270     MidLineVariance+=(aver-BlackLineData[i])*(aver-BlackLineData[i]);
??GetMidLineVariance_3:
        LDR.W    R0,??DataTable21
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R0,[R0, R5, LSL #+2]
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fsub
        MOV      R8,R0
        LDR.W    R0,??DataTable21
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R0,[R0, R5, LSL #+2]
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fsub
        MOV      R1,R8
        BL       __aeabi_fmul
        BL       __aeabi_f2d
        LDR.W    R12,??DataTable24_7
        LDRD     R2,R3,[R12, #+0]
        BL       __aeabi_dadd
        LDR.W    R2,??DataTable24_7
        STRD     R0,R1,[R2, #+0]
// 2271   }
        SUBS     R5,R5,#+1
??GetMidLineVariance_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R7,R5
        BLT.N    ??GetMidLineVariance_3
// 2272   MidLineVariance = MidLineVariance/ iCount;
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R0,R6
        BL       __aeabi_ui2d
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.W    R4,??DataTable24_7
        LDRD     R0,R1,[R4, #+0]
        BL       __aeabi_ddiv
        LDR.W    R2,??DataTable24_7
        STRD     R0,R1,[R2, #+0]
// 2273 }
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16:
        DC32     ValidLineCount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_1:
        DC32     ValidExcursionCount
// 2274 
// 2275 //获取特殊中心线偏差 ，StableNumbers要大于2

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2276 void GetSpecialError()
// 2277 {
GetSpecialError:
        PUSH     {R4}
// 2278   unsigned char i=0;
        MOVS     R0,#+0
// 2279   int end = RowMax - StableNumbers-1;
        LDR.N    R1,??DataTable20_5
        LDR      R1,[R1, #+0]
        RSBS     R1,R1,#+99
// 2280   
// 2281   MidLineExcursion = 0;
        MOVS     R2,#+0
        LDR.W    R3,??DataTable24_6
        STR      R2,[R3, #+0]
// 2282   for (i = RowMax-1;i > end ;i--)
        MOVS     R2,#+99
        MOVS     R0,R2
        B.N      ??GetSpecialError_0
// 2283   {
// 2284     BlackLineData[i] = LeftBlack[i] + (RightBlack[i]-LeftBlack[i] )/2;		
??GetSpecialError_1:
        LDR.N    R2,??DataTable20_11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R2,[R2, R0, LSL #+2]
        LDR.N    R3,??DataTable20_12
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R3,[R3, R0, LSL #+2]
        LDR.N    R4,??DataTable20_11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R4,[R4, R0, LSL #+2]
        SUBS     R3,R3,R4
        MOVS     R4,#+2
        SDIV     R3,R3,R4
        ADDS     R2,R3,R2
        LDR.W    R3,??DataTable21
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R2,[R3, R0, LSL #+2]
// 2285   }
        SUBS     R0,R0,#+1
??GetSpecialError_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R1,R0
        BLT.N    ??GetSpecialError_1
// 2286   for(i=RowMax-2; i>end; i--)    
        MOVS     R0,#+98
        B.N      ??GetSpecialError_2
// 2287   {	
// 2288     MidLineExcursion = MidLineExcursion + BlackLineData[i] - BlackLineData[i+1];		
??GetSpecialError_3:
        LDR.W    R2,??DataTable24_6
        LDR      R2,[R2, #+0]
        LDR.W    R3,??DataTable21
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R3,[R3, R0, LSL #+2]
        ADDS     R2,R3,R2
        LDR.W    R3,??DataTable21
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R3,R3,R0, LSL #+2
        LDR      R3,[R3, #+4]
        SUBS     R2,R2,R3
        LDR.W    R3,??DataTable24_6
        STR      R2,[R3, #+0]
// 2289   }
        SUBS     R0,R0,#+1
??GetSpecialError_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R1,R0
        BLT.N    ??GetSpecialError_3
// 2290   //特殊情况给中心线方差极大
// 2291   MidLineVariance = 300;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable24_8  ;; 0x4072c000
        LDR.W    R2,??DataTable24_7
        STRD     R0,R1,[R2, #+0]
// 2292   //特殊情况给中心线偏差极大
// 2293   if(MidLineExcursion > 0)
        LDR.W    R0,??DataTable24_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BLT.N    ??GetSpecialError_4
// 2294   {
// 2295     MidLineExcursion = 40;
        MOVS     R0,#+40
        LDR.W    R1,??DataTable24_6
        STR      R0,[R1, #+0]
        B.N      ??GetSpecialError_5
// 2296   }
// 2297   else if(MidLineExcursion < 0)
??GetSpecialError_4:
        LDR.W    R0,??DataTable24_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??GetSpecialError_5
// 2298   {
// 2299     MidLineExcursion = -40;	
        MVNS     R0,#+39
        LDR.W    R1,??DataTable24_6
        STR      R0,[R1, #+0]
// 2300   }
// 2301 }
??GetSpecialError_5:
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17:
        DC32     TripPointPos

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_1:
        DC32     SubValue
// 2302 
// 2303 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2304 void GetSectionParam()
// 2305 {
GetSectionParam:
        PUSH     {R4-R8,LR}
// 2306   int TotalPoint = StableNumbers ;
        LDR.N    R0,??DataTable20_5
        LDR      R4,[R0, #+0]
// 2307   int icount = 0;
        MOVS     R5,#+0
// 2308   int i = 0;
        MOVS     R6,#+0
// 2309   int BasePoint = BlackLineData[RowMax-1];
        LDR.W    R0,??DataTable21
        LDR      R7,[R0, #+396]
// 2310   SubBasePoint = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable24_9
        STR      R0,[R1, #+0]
// 2311   TopE1=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable24_10
        STR      R0,[R1, #+0]
// 2312   TopE2=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable24_11
        STR      R0,[R1, #+0]
// 2313   TopLen1=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable24_12
        STR      R0,[R1, #+0]
// 2314   TopLen2=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable24_13
        STR      R0,[R1, #+0]
// 2315   
// 2316   for (i=RowMax-StableNumbers-1,icount=1;i < RowMax-2;i++,icount++)
        LDR.N    R0,??DataTable20_5
        LDR      R0,[R0, #+0]
        RSBS     R0,R0,#+99
        MOVS     R6,R0
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??GetSectionParam_0
// 2317   {
// 2318     if (icount < TotalPoint/2)
// 2319     {
// 2320       TopE1 += (BlackLineData[i]-BlackLineData[i+1]);
// 2321       TopLen1++;
// 2322     }
// 2323     else 
// 2324     {
// 2325       TopE2 += (BlackLineData[i]-BlackLineData[i+1]);
??GetSectionParam_1:
        LDR.W    R0,??DataTable24_11
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable21
        LDR      R1,[R1, R6, LSL #+2]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable21
        ADDS     R1,R1,R6, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable24_11
        STR      R0,[R1, #+0]
// 2326       TopLen2++;
        LDR.W    R0,??DataTable24_13
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable24_13
        STR      R0,[R1, #+0]
// 2327       
// 2328     }
// 2329     if (fabss(BlackLineData[i]-BasePoint) > fabss(SubBasePoint))
??GetSectionParam_2:
        LDR.W    R0,??DataTable24_9
        LDR      R0,[R0, #+0]
        BL       `fabss`
        MOV      R8,R0
        LDR.W    R0,??DataTable21
        LDR      R0,[R0, R6, LSL #+2]
        SUBS     R0,R0,R7
        BL       `fabss`
        CMP      R8,R0
        BGE.N    ??GetSectionParam_3
// 2330     {
// 2331       SubBasePoint = BlackLineData[i]-BasePoint;
        LDR.W    R0,??DataTable21
        LDR      R0,[R0, R6, LSL #+2]
        SUBS     R0,R0,R7
        LDR.W    R1,??DataTable24_9
        STR      R0,[R1, #+0]
// 2332       SubBasePointLen = i;
        LDR.W    R0,??DataTable24_14
        STR      R6,[R0, #+0]
// 2333       
// 2334     }
??GetSectionParam_3:
        ADDS     R6,R6,#+1
        ADDS     R5,R5,#+1
??GetSectionParam_0:
        CMP      R6,#+98
        BGE.N    ??GetSectionParam_4
        MOVS     R0,#+2
        SDIV     R0,R4,R0
        CMP      R5,R0
        BGE.N    ??GetSectionParam_1
        LDR.W    R0,??DataTable24_10
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable21
        LDR      R1,[R1, R6, LSL #+2]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable21
        ADDS     R1,R1,R6, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable24_10
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable24_12
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable24_12
        STR      R0,[R1, #+0]
        B.N      ??GetSectionParam_2
// 2335   }
// 2336 }
??GetSectionParam_4:
        POP      {R4-R8,PC}       ;; return
// 2337 
// 2338 
// 2339 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// 2340 signed char TemMidLineData[RowMax];//提取黑线值数据2
TemMidLineData:
        DS8 100
// 2341 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2342 void StoreMidLine()
// 2343 {
// 2344   int i = 0;
StoreMidLine:
        MOVS     R0,#+0
// 2345   for(i = 0;i < RowMax;i++)	
        MOVS     R1,#+0
        MOVS     R0,R1
        B.N      ??StoreMidLine_0
// 2346   {
// 2347     TemMidLineData[i] = BlackLineData[i];	
??StoreMidLine_1:
        LDR.W    R1,??DataTable21
        LDR      R1,[R1, R0, LSL #+2]
        LDR.W    R2,??DataTable24_15
        STRB     R1,[R0, R2]
// 2348   }
        ADDS     R0,R0,#+1
??StoreMidLine_0:
        CMP      R0,#+100
        BLT.N    ??StoreMidLine_1
// 2349 }
        BX       LR               ;; return
// 2350 
// 2351 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2352 void UseTemMidLine()
// 2353 {
// 2354   int i = 0;
UseTemMidLine:
        MOVS     R0,#+0
// 2355   for(i = 0;i < RowMax;i++)	
        MOVS     R1,#+0
        MOVS     R0,R1
        B.N      ??UseTemMidLine_0
// 2356   {
// 2357     BlackLineData[i] = TemMidLineData[i];	
??UseTemMidLine_1:
        LDR.W    R1,??DataTable24_15
        LDRSB    R1,[R0, R1]
        LDR.W    R2,??DataTable21
        STR      R1,[R2, R0, LSL #+2]
// 2358   }	
        ADDS     R0,R0,#+1
??UseTemMidLine_0:
        CMP      R0,#+100
        BLT.N    ??UseTemMidLine_1
// 2359 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20:
        DC32     midline_fcount_max

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_1:
        DC32     Excursion

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_2:
        DC32     EPerCount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_3:
        DC32     0x40400000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_4:
        DC32     NoValidMax

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_5:
        DC32     StableNumbers

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_6:
        DC32     LeftStableNumbers

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_7:
        DC32     RightStableNumbers

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_8:
        DC32     ValidLineCount1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_9:
        DC32     ValidLineCount2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_10:
        DC32     ThresholdData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_11:
        DC32     LeftBlack

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_12:
        DC32     RightBlack
// 2360 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2361 int fabss(int n)
// 2362 {
// 2363   if(n < 0)return (-1)*n;
`fabss`:
        CMP      R0,#+0
        BPL.N    ??fabss_0
        MOVS     R1,#-1
        MULS     R0,R1,R0
        B.N      ??fabss_1
// 2364   else return n;	
??fabss_0:
??fabss_1:
        BX       LR               ;; return
// 2365 }
// 2366 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2367 void CheckStartLine()
// 2368 {
CheckStartLine:
        PUSH     {R2-R11,LR}
// 2369   int start=30,end=50,i=0,j=0;
        MOVS     R0,#+30
        MOVS     R1,#+50
        STR      R1,[SP, #+4]
        MOVS     R5,#+0
        MOVS     R7,#+0
// 2370   int value = 80;
        MOVS     R1,#+80
// 2371   int NewBlock = 0;
        MOVS     R8,#+0
// 2372   int BlockCount = 0;
        MOVS     R6,#+0
// 2373   int lencount = 0;
        MOVS     R9,#+0
// 2374   int begin1=0,begin2=0,end1=0,end2=0;
        MOVS     R12,#+0
        MOVS     LR,#+0
        MOVS     R2,#+0
        MOVS     R10,#+0
// 2375   int startlinecount = 0;
        MOVS     R4,#+0
// 2376   int maybeflag = 0;
        MOVS     R3,#+0
// 2377   // 先暗化处理反光，并滤波
// 2378   for(i=start;i<end && BlackEndMax >= RowMax-5;i++)
        MOVS     R5,R0
        B.N      ??CheckStartLine_0
// 2379   {
// 2380     for(j=0;j<ColumnMax;j++)
// 2381     {
// 2382       if(ImageData[i][j] > 220)
??CheckStartLine_1:
        LDR.W    R6,??DataTable24_16
        MOVS     R12,#+90
        MLA      R6,R12,R5,R6
        LDRB     R6,[R7, R6]
        CMP      R6,#+221
        BLT.N    ??CheckStartLine_2
// 2383       {
// 2384         ImageData[i][j]=220;
        MOVS     R6,#+220
        LDR.W    R12,??DataTable24_16
        MOVS     LR,#+90
        MLA      R12,LR,R5,R12
        STRB     R6,[R7, R12]
// 2385       }
// 2386       if(ImageData[i][j] < ThresholdValue)
??CheckStartLine_2:
        LDR.W    R6,??DataTable24_16
        MOVS     R12,#+90
        MLA      R6,R12,R5,R6
        LDRB     R6,[R7, R6]
        LDR.W    R12,??DataTable24_17
        LDR      R12,[R12, #+0]
        CMP      R6,R12
        BGE.N    ??CheckStartLine_3
// 2387       {
// 2388         ImageData[i][j]=0;
        MOVS     R6,#+0
        LDR.W    R12,??DataTable24_16
        MOVS     LR,#+90
        MLA      R12,LR,R5,R12
        STRB     R6,[R7, R12]
// 2389       }
// 2390     }
??CheckStartLine_3:
        ADDS     R7,R7,#+1
??CheckStartLine_4:
        CMP      R7,#+90
        BLT.N    ??CheckStartLine_1
        ADDS     R5,R5,#+1
??CheckStartLine_0:
        LDR      R6,[SP, #+4]
        CMP      R5,R6
        BGE.N    ??CheckStartLine_5
        LDR.W    R6,??DataTable24_18
        LDR      R6,[R6, #+0]
        CMP      R6,#+95
        BLT.N    ??CheckStartLine_5
        MOVS     R7,#+0
        B.N      ??CheckStartLine_4
// 2391   }
// 2392   for(i=start;i<end && BlackEndMax >= RowMax-5;i++)
??CheckStartLine_5:
        MOVS     R5,R0
        B.N      ??CheckStartLine_6
??CheckStartLine_7:
        ADDS     R5,R5,#+1
??CheckStartLine_6:
        LDR      R6,[SP, #+4]
        CMP      R5,R6
        BGE.N    ??CheckStartLine_8
        LDR.W    R6,??DataTable24_18
        LDR      R6,[R6, #+0]
        CMP      R6,#+95
        BLT.N    ??CheckStartLine_8
// 2393   {
// 2394     for(j=0;j<ColumnMax;j++)
        MOVS     R7,#+0
        B.N      ??CheckStartLine_9
// 2395     {
// 2396       //白黑白
// 2397       if(ImageData[i][j]-ImageData[i][j+1] > value && ImageData[i][j+2]-ImageData[i][j+1] > value )	
// 2398       {
// 2399         ImageData[i][j+1]=220;
// 2400       }
// 2401       //黑白黑
// 2402       else if(ImageData[i][j+1]-ImageData[i][j] > value && ImageData[i][j+1]-ImageData[i][j+2] > value )
??CheckStartLine_10:
        LDR.W    R6,??DataTable24_16
        MOVS     R12,#+90
        MLA      R6,R12,R5,R6
        ADDS     R6,R7,R6
        LDRB     R6,[R6, #+1]
        LDR.W    R12,??DataTable24_16
        MOVS     LR,#+90
        MLA      R12,LR,R5,R12
        LDRB     R12,[R7, R12]
        SUBS     R6,R6,R12
        CMP      R1,R6
        BGE.N    ??CheckStartLine_11
        LDR.W    R6,??DataTable24_16
        MOVS     R12,#+90
        MLA      R6,R12,R5,R6
        ADDS     R6,R7,R6
        LDRB     R6,[R6, #+1]
        LDR.W    R12,??DataTable24_16
        MOVS     LR,#+90
        MLA      R12,LR,R5,R12
        ADDS     R12,R7,R12
        LDRB     R12,[R12, #+2]
        SUBS     R6,R6,R12
        CMP      R1,R6
        BGE.N    ??CheckStartLine_11
// 2403       {
// 2404         ImageData[i][j+1]=0;	
        LDR.W    R6,??DataTable24_16
        MOVS     R12,#+90
        MLA      R6,R12,R5,R6
        ADDS     R6,R7,R6
        MOVS     R12,#+0
        STRB     R12,[R6, #+1]
// 2405       }
??CheckStartLine_11:
        ADDS     R7,R7,#+1
??CheckStartLine_9:
        CMP      R7,#+90
        BGE.N    ??CheckStartLine_7
        LDR.W    R6,??DataTable24_16
        MOVS     R12,#+90
        MLA      R6,R12,R5,R6
        LDRB     R6,[R7, R6]
        LDR.W    R12,??DataTable24_16
        MOVS     LR,#+90
        MLA      R12,LR,R5,R12
        ADDS     R12,R7,R12
        LDRB     R12,[R12, #+1]
        SUBS     R6,R6,R12
        CMP      R1,R6
        BGE.N    ??CheckStartLine_10
        LDR.W    R6,??DataTable24_16
        MOVS     R12,#+90
        MLA      R6,R12,R5,R6
        ADDS     R6,R7,R6
        LDRB     R6,[R6, #+2]
        LDR.W    R12,??DataTable24_16
        MOVS     LR,#+90
        MLA      R12,LR,R5,R12
        ADDS     R12,R7,R12
        LDRB     R12,[R12, #+1]
        SUBS     R6,R6,R12
        CMP      R1,R6
        BGE.N    ??CheckStartLine_10
        LDR.W    R6,??DataTable24_16
        MOVS     R12,#+90
        MLA      R6,R12,R5,R6
        ADDS     R6,R7,R6
        MOVS     R12,#+220
        STRB     R12,[R6, #+1]
        B.N      ??CheckStartLine_11
// 2406     }
// 2407   }
// 2408   //求左右边缘
// 2409   for(i=start;i<end /*&& BlackEndMax >= RowMax-5*/;i++)
??CheckStartLine_8:
        MOVS     R5,R0
        B.N      ??CheckStartLine_12
// 2410   {
// 2411     for(j=1;j < ColumnMax/2;j++)
??CheckStartLine_13:
        ADDS     R7,R7,#+1
??CheckStartLine_14:
        CMP      R7,#+45
        BGE.N    ??CheckStartLine_15
// 2412     {
// 2413       if(ImageData[i][j] > ThresholdValue && ImageData[i][j+1] > ThresholdValue)
        LDR.W    R6,??DataTable24_17
        LDR      R6,[R6, #+0]
        LDR.W    R12,??DataTable24_16
        MOVS     LR,#+90
        MLA      R12,LR,R5,R12
        LDRB     R12,[R7, R12]
        CMP      R6,R12
        BGE.N    ??CheckStartLine_13
        LDR.W    R6,??DataTable24_17
        LDR      R6,[R6, #+0]
        LDR.W    R12,??DataTable24_16
        MOVS     LR,#+90
        MLA      R12,LR,R5,R12
        ADDS     R12,R7,R12
        LDRB     R12,[R12, #+1]
        CMP      R6,R12
        BGE.N    ??CheckStartLine_13
// 2414       {
// 2415         LeftBlack[i]=j-1;
        SUBS     R6,R7,#+1
        LDR.W    R7,??DataTable25
        STR      R6,[R7, R5, LSL #+2]
// 2416         break;	
// 2417       }	
// 2418     }	
??CheckStartLine_15:
        ADDS     R5,R5,#+1
??CheckStartLine_12:
        LDR      R6,[SP, #+4]
        CMP      R5,R6
        BGE.N    ??CheckStartLine_16
        MOVS     R7,#+1
        B.N      ??CheckStartLine_14
// 2419   }
// 2420   
// 2421   for(i=start;i<end/* && BlackEndMax >= RowMax-5*/;i++)
??CheckStartLine_16:
        MOVS     R5,R0
        B.N      ??CheckStartLine_17
// 2422   {
// 2423     for(j=ColumnMax-2;j > ColumnMax/2;j--)
??CheckStartLine_18:
        SUBS     R7,R7,#+1
??CheckStartLine_19:
        CMP      R7,#+46
        BLT.N    ??CheckStartLine_20
// 2424     {
// 2425       if(ImageData[i][j] > ThresholdValue && ImageData[i][j-1] > ThresholdValue)
        LDR.W    R6,??DataTable24_17
        LDR      R6,[R6, #+0]
        LDR.W    R12,??DataTable24_16
        MOVS     LR,#+90
        MLA      R12,LR,R5,R12
        LDRB     R12,[R7, R12]
        CMP      R6,R12
        BGE.N    ??CheckStartLine_18
        LDR.W    R6,??DataTable24_17
        LDR      R6,[R6, #+0]
        LDR.W    R12,??DataTable24_16
        MOVS     LR,#+90
        MLA      R12,LR,R5,R12
        ADDS     R12,R7,R12
        LDRB     R12,[R12, #-1]
        CMP      R6,R12
        BGE.N    ??CheckStartLine_18
// 2426       {
// 2427         RightBlack[i]=j+1;
        ADDS     R6,R7,#+1
        LDR.W    R7,??DataTable25_1
        STR      R6,[R7, R5, LSL #+2]
// 2428         break;	
// 2429       }	
// 2430     }	
??CheckStartLine_20:
        ADDS     R5,R5,#+1
??CheckStartLine_17:
        LDR      R6,[SP, #+4]
        CMP      R5,R6
        BGE.N    ??CheckStartLine_21
        MOVS     R7,#+88
        B.N      ??CheckStartLine_19
// 2431   }
// 2432   
// 2433   for(i=start;i<end /*&& BlackEndMax >= RowMax-5*/;i++)
??CheckStartLine_21:
        MOVS     R5,R0
        B.N      ??CheckStartLine_22
// 2434   {
// 2435     NewBlock=0;//新的黑条未开始
// 2436     BlockCount=0;//每行黑条计数初始化为0
// 2437     lencount=0;//黑条长度初始化
// 2438     begin1=0;//第一条黑条初始化为0
// 2439     begin2=0;//第二条黑条初始化为0
// 2440     //从左边缘开始往右边缘开始搜索其中间的黑条
// 2441     for(j=LeftBlack[i];j<RightBlack[i];j++)
// 2442     {
// 2443       //从白到黑的跳变
// 2444       if(ImageData[i][j]-ImageData[i][j+4] > value && ImageData[i][j]-ImageData[i][j+5] > value)
// 2445       {
// 2446         //新的黑条开始标志
// 2447         NewBlock=1;
// 2448         //该黑条长度初始化为0
// 2449         lencount=0;
// 2450         //记录第一块黑条起始位置
// 2451         if(BlockCount == 0)
// 2452         {
// 2453           if(j < 60 && j > 20)
// 2454           {
// 2455             begin1=j;
// 2456           }
// 2457           else
// 2458           {
// 2459             NewBlock=0;
// 2460             lencount=0;	
// 2461           }
// 2462         }
// 2463         else if(BlockCount == 1)
// 2464         {
// 2465           if(j > 60 && j < 100)
// 2466           {
// 2467             begin2=j;
// 2468           }
// 2469           else
// 2470           {
// 2471             NewBlock=0;
// 2472             lencount=0;							
// 2473           }
// 2474         }
// 2475       }
// 2476       //从黑到白的跳变
// 2477       else if(ImageData[i][j+4]-ImageData[i][j] > value && ImageData[i][j+5]-ImageData[i][j] > value)
// 2478       {
// 2479         //如果前面有黑条已经开始，并且长度合适，则黑条计数增加
// 2480         if(NewBlock && lencount > 10 && lencount < 50)
// 2481         {
// 2482           BlockCount++;
// 2483           if(BlockCount == 1)
// 2484           {
// 2485             end1 = j;
// 2486           }
// 2487           else if(BlockCount == 2)
// 2488           {
// 2489             end2 = j;
// 2490           }
// 2491         }
// 2492         NewBlock=0;
// 2493         lencount=0;
// 2494       }
// 2495       //不是跳变
// 2496       else
// 2497       {
// 2498         //如果新的黑条开始了，计数其长度
// 2499         if(NewBlock)
// 2500         {
// 2501           lencount++;	
// 2502         }
// 2503       }
// 2504     }
// 2505     //从黑条数和黑条间距判断起跑线
// 2506     if(BlockCount >= 2 && begin2-begin1 > 20 && begin2-end1 > 5 &&  begin2-end1 < 50)
??CheckStartLine_23:
        CMP      R6,#+2
        BLT.N    ??CheckStartLine_24
        SUBS     R6,LR,R12
        CMP      R6,#+21
        BLT.N    ??CheckStartLine_24
        SUBS     R6,LR,R2
        SUBS     R6,R6,#+6
        CMP      R6,#+44
        BCS.N    ??CheckStartLine_24
// 2507     {
// 2508       //IsStartLine=1;
// 2509       maybeflag=1;
        MOVS     R3,#+1
// 2510       startlinecount++;	
        ADDS     R4,R4,#+1
// 2511     }
??CheckStartLine_24:
        ADDS     R5,R5,#+1
??CheckStartLine_22:
        LDR      R6,[SP, #+4]
        CMP      R5,R6
        BGE.W    ??CheckStartLine_25
        MOVS     R8,#+0
        MOVS     R6,#+0
        MOVS     R9,#+0
        MOVS     R12,#+0
        MOVS     LR,#+0
        LDR.W    R7,??DataTable25
        LDR      R7,[R7, R5, LSL #+2]
        B.N      ??CheckStartLine_26
??CheckStartLine_27:
        CMP      R8,#+0
        BEQ.N    ??CheckStartLine_28
        ADDS     R9,R9,#+1
??CheckStartLine_28:
        ADDS     R7,R7,#+1
??CheckStartLine_26:
        LDR.W    R10,??DataTable25_1
        LDR      R10,[R10, R5, LSL #+2]
        CMP      R7,R10
        BGE.N    ??CheckStartLine_23
        LDR.W    R10,??DataTable24_16
        MOVS     R11,#+90
        MLA      R10,R11,R5,R10
        LDRB     R10,[R7, R10]
        STR      R10,[SP, #+0]
        LDR.W    R11,??DataTable24_16
        MOVS     R10,#+90
        MLA      R10,R10,R5,R11
        ADDS     R10,R7,R10
        LDRB     R10,[R10, #+4]
        LDR      R11,[SP, #+0]
        SUBS     R10,R11,R10
        CMP      R1,R10
        BGE.N    ??CheckStartLine_29
        LDR.W    R10,??DataTable24_16
        MOVS     R11,#+90
        MLA      R10,R11,R5,R10
        LDRB     R10,[R7, R10]
        STR      R10,[SP, #+0]
        LDR.W    R11,??DataTable24_16
        MOVS     R10,#+90
        MLA      R10,R10,R5,R11
        ADDS     R10,R7,R10
        LDRB     R10,[R10, #+5]
        LDR      R11,[SP, #+0]
        SUBS     R10,R11,R10
        CMP      R1,R10
        BGE.N    ??CheckStartLine_29
        MOVS     R8,#+1
        MOVS     R9,#+0
        CMP      R6,#+0
        BNE.N    ??CheckStartLine_30
        SUBS     R10,R7,#+21
        CMP      R10,#+39
        BCS.N    ??CheckStartLine_31
        MOV      R12,R7
        B.N      ??CheckStartLine_28
??CheckStartLine_31:
        MOVS     R8,#+0
        MOVS     R9,#+0
        B.N      ??CheckStartLine_28
??CheckStartLine_30:
        CMP      R6,#+1
        BNE.N    ??CheckStartLine_28
        SUBS     R10,R7,#+61
        CMP      R10,#+39
        BCS.N    ??CheckStartLine_32
        MOV      LR,R7
        B.N      ??CheckStartLine_28
??CheckStartLine_32:
        MOVS     R8,#+0
        MOVS     R9,#+0
        B.N      ??CheckStartLine_28
??CheckStartLine_29:
        LDR.W    R10,??DataTable24_16
        MOVS     R11,#+90
        MLA      R10,R11,R5,R10
        ADDS     R10,R7,R10
        LDRB     R10,[R10, #+4]
        STR      R10,[SP, #+0]
        LDR.W    R11,??DataTable24_16
        MOVS     R10,#+90
        MLA      R10,R10,R5,R11
        LDRB     R10,[R7, R10]
        LDR      R11,[SP, #+0]
        SUBS     R10,R11,R10
        CMP      R1,R10
        BGE.N    ??CheckStartLine_27
        LDR.W    R10,??DataTable24_16
        MOVS     R11,#+90
        MLA      R10,R11,R5,R10
        ADDS     R10,R7,R10
        LDRB     R10,[R10, #+5]
        STR      R10,[SP, #+0]
        LDR.W    R11,??DataTable24_16
        MOVS     R10,#+90
        MLA      R10,R10,R5,R11
        LDRB     R10,[R7, R10]
        LDR      R11,[SP, #+0]
        SUBS     R10,R11,R10
        CMP      R1,R10
        BGE.W    ??CheckStartLine_27
        CMP      R8,#+0
        BEQ.N    ??CheckStartLine_33
        SUBS     R8,R9,#+11
        CMP      R8,#+39
        BCS.N    ??CheckStartLine_33
        ADDS     R6,R6,#+1
        CMP      R6,#+1
        BNE.N    ??CheckStartLine_34
        MOVS     R2,R7
        B.N      ??CheckStartLine_33
??CheckStartLine_34:
        CMP      R6,#+2
        BNE.N    ??CheckStartLine_33
        MOV      R10,R7
??CheckStartLine_33:
        MOVS     R8,#+0
        MOVS     R9,#+0
        B.N      ??CheckStartLine_28
// 2512   }
// 2513   if(maybeflag /*&& startlinecount < 8*/)
??CheckStartLine_25:
        CMP      R3,#+0
        BEQ.N    ??CheckStartLine_35
// 2514   {
// 2515     IsStartLine=1;	
        MOVS     R3,#+1
        LDR.W    R4,??DataTable27
        STRB     R3,[R4, #+0]
// 2516   }
// 2517   
// 2518   //从右往左搜索时初始化，防止车偏右跑时检测不出来
// 2519   startlinecount=0;
??CheckStartLine_35:
        MOVS     R4,#+0
// 2520   maybeflag=0;
        MOVS     R3,#+0
// 2521   for(i=start;i<end && BlackEndMax >= RowMax-5;i++)
        MOVS     R5,R0
        B.N      ??CheckStartLine_36
// 2522   {
// 2523     NewBlock=0;//新的黑条未开始
// 2524     BlockCount=0;//每行黑条计数初始化为0
// 2525     lencount=0;//黑条长度初始化
// 2526     begin1=0;//第一条黑条初始化为0
// 2527     begin2=0;//第二条黑条初始化为0
// 2528     //从右边缘开始往左边缘搜索其中间的黑条
// 2529     for(j=RightBlack[i];j>LeftBlack[i];j--)
// 2530     {
// 2531       //从白到黑的跳变
// 2532       if(ImageData[i][j]-ImageData[i][j-4] > value && ImageData[i][j]-ImageData[i][j-5] > value)
// 2533       {
// 2534         //新的黑条开始标志
// 2535         NewBlock=1;
// 2536         //该黑条长度初始化为0
// 2537         lencount=0;
// 2538         //记录第一块黑条起始位置
// 2539         if(BlockCount == 0)
// 2540         {
// 2541           if(j > 60 && j < 100)
// 2542           {
// 2543             begin1 = j;
// 2544           }
// 2545           else
// 2546           {
// 2547             NewBlock = 0;
// 2548             lencount = 0;	
// 2549           }
// 2550         }
// 2551         else if(BlockCount == 1)
// 2552         {
// 2553           if(j < 60 && j > 20)
// 2554           {
// 2555             begin2=j;
// 2556           }
// 2557           else
// 2558           {
// 2559             NewBlock = 0;
// 2560             lencount = 0;							
// 2561           }
// 2562         }
// 2563       }
// 2564       //从黑到白的跳变
// 2565       else if(ImageData[i][j-4]-ImageData[i][j] > value && ImageData[i][j-5]-ImageData[i][j] > value)
// 2566       {
// 2567         //如果前面有黑条已经开始，并且长度合适，则黑条计数增加
// 2568         if(NewBlock && lencount > 10 && lencount < 50)
// 2569         {
// 2570           BlockCount++;
// 2571           if(BlockCount == 1)
// 2572           {
// 2573             end1 = j;
// 2574           }
// 2575           else if(BlockCount == 2)
// 2576           {
// 2577             end2 = j;
// 2578           }
// 2579         }
// 2580         NewBlock=0;
// 2581         lencount=0;
// 2582       }
// 2583       //不是跳变
// 2584       else
// 2585       {
// 2586         //如果新的黑条开始了，计数其长度
// 2587         if(NewBlock)
// 2588         {
// 2589           lencount++;	
// 2590         }
// 2591       }
// 2592     }
// 2593     //从黑条数和黑条间距判断起跑线
// 2594     if(BlockCount >= 2 && begin1-begin2 > 20 && end1-begin2 > 5 && end1 - begin2 < 50)
??CheckStartLine_37:
        CMP      R6,#+2
        BLT.N    ??CheckStartLine_38
        SUBS     R0,R12,LR
        CMP      R0,#+21
        BLT.N    ??CheckStartLine_38
        SUBS     R0,R2,LR
        SUBS     R0,R0,#+6
        CMP      R0,#+44
        BCS.N    ??CheckStartLine_38
// 2595     {
// 2596       //IsStartLine=1;
// 2597       maybeflag = 1;
        MOVS     R3,#+1
// 2598       startlinecount++;	
        ADDS     R4,R4,#+1
// 2599     }
??CheckStartLine_38:
        ADDS     R5,R5,#+1
??CheckStartLine_36:
        LDR      R0,[SP, #+4]
        CMP      R5,R0
        BGE.W    ??CheckStartLine_39
        LDR.N    R0,??DataTable24_18
        LDR      R0,[R0, #+0]
        CMP      R0,#+95
        BLT.W    ??CheckStartLine_39
        MOVS     R8,#+0
        MOVS     R6,#+0
        MOVS     R9,#+0
        MOVS     R12,#+0
        MOVS     LR,#+0
        LDR.W    R0,??DataTable25_1
        LDR      R7,[R0, R5, LSL #+2]
        B.N      ??CheckStartLine_40
??CheckStartLine_41:
        CMP      R8,#+0
        BEQ.N    ??CheckStartLine_42
        ADDS     R9,R9,#+1
??CheckStartLine_42:
        SUBS     R7,R7,#+1
??CheckStartLine_40:
        LDR.W    R0,??DataTable25
        LDR      R0,[R0, R5, LSL #+2]
        CMP      R0,R7
        BGE.N    ??CheckStartLine_37
        LDR.N    R0,??DataTable24_16
        MOVS     R10,#+90
        MLA      R0,R10,R5,R0
        LDRB     R0,[R7, R0]
        LDR.W    R10,??DataTable24_16
        MOVS     R11,#+90
        MLA      R10,R11,R5,R10
        ADDS     R10,R7,R10
        LDRB     R10,[R10, #-4]
        SUBS     R0,R0,R10
        CMP      R1,R0
        BGE.N    ??CheckStartLine_43
        LDR.N    R0,??DataTable24_16
        MOVS     R10,#+90
        MLA      R0,R10,R5,R0
        LDRB     R0,[R7, R0]
        LDR.W    R10,??DataTable24_16
        MOVS     R11,#+90
        MLA      R10,R11,R5,R10
        ADDS     R10,R7,R10
        LDRB     R10,[R10, #-5]
        SUBS     R0,R0,R10
        CMP      R1,R0
        BGE.N    ??CheckStartLine_43
        MOVS     R8,#+1
        MOVS     R9,#+0
        CMP      R6,#+0
        BNE.N    ??CheckStartLine_44
        SUBS     R0,R7,#+61
        CMP      R0,#+39
        BCS.N    ??CheckStartLine_45
        MOV      R12,R7
        B.N      ??CheckStartLine_42
??CheckStartLine_45:
        MOVS     R8,#+0
        MOVS     R9,#+0
        B.N      ??CheckStartLine_42
??CheckStartLine_44:
        CMP      R6,#+1
        BNE.N    ??CheckStartLine_42
        SUBS     R0,R7,#+21
        CMP      R0,#+39
        BCS.N    ??CheckStartLine_46
        MOV      LR,R7
        B.N      ??CheckStartLine_42
??CheckStartLine_46:
        MOVS     R8,#+0
        MOVS     R9,#+0
        B.N      ??CheckStartLine_42
??CheckStartLine_43:
        LDR.N    R0,??DataTable24_16
        MOVS     R10,#+90
        MLA      R0,R10,R5,R0
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #-4]
        LDR.W    R10,??DataTable24_16
        MOVS     R11,#+90
        MLA      R10,R11,R5,R10
        LDRB     R10,[R7, R10]
        SUBS     R0,R0,R10
        CMP      R1,R0
        BGE.N    ??CheckStartLine_41
        LDR.N    R0,??DataTable24_16
        MOVS     R10,#+90
        MLA      R0,R10,R5,R0
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #-5]
        LDR.W    R10,??DataTable24_16
        MOVS     R11,#+90
        MLA      R10,R11,R5,R10
        LDRB     R10,[R7, R10]
        SUBS     R0,R0,R10
        CMP      R1,R0
        BGE.N    ??CheckStartLine_41
        CMP      R8,#+0
        BEQ.N    ??CheckStartLine_47
        SUBS     R0,R9,#+11
        CMP      R0,#+39
        BCS.N    ??CheckStartLine_47
        ADDS     R6,R6,#+1
        CMP      R6,#+1
        BNE.N    ??CheckStartLine_48
        MOVS     R2,R7
        B.N      ??CheckStartLine_47
??CheckStartLine_48:
        CMP      R6,#+2
        BNE.N    ??CheckStartLine_47
        MOV      R10,R7
??CheckStartLine_47:
        MOVS     R8,#+0
        MOVS     R9,#+0
        B.N      ??CheckStartLine_42
// 2600   }
// 2601   if(maybeflag /*&& startlinecount < 8*/)
??CheckStartLine_39:
        CMP      R3,#+0
        BEQ.N    ??CheckStartLine_49
// 2602   {
// 2603     IsStartLine = 1;	
        MOVS     R0,#+1
        LDR.W    R1,??DataTable27
        STRB     R0,[R1, #+0]
// 2604   }
// 2605 }
??CheckStartLine_49:
        POP      {R0,R1,R4-R11,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21:
        DC32     BlackLineData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_1:
        DC32     P1_X

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_2:
        DC32     P2_X

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 2606 uint8 ElementCount2 = 0;
ElementCount2:
        DS8 1
// 2607 //头尾指针

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 2608 uint8 Head2 = 0,Rear2 = 0;
Head2:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
Rear2:
        DS8 1
// 2609 #define Size2 30
// 2610 //队列数组

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// 2611 signed char RoadTypeData2[Size2] = {0};
RoadTypeData2:
        DS8 32
// 2612 
// 2613 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// 2614 int AllBigSCount = 0;
AllBigSCount:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// 2615 int AllBendCount = 0;
AllBendCount:
        DS8 4
// 2616 //=================================================================================
// 2617 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2618 void HistoryRoadTypeCount()
// 2619 {
HistoryRoadTypeCount:
        PUSH     {R4-R7}
// 2620   int i=0;
        MOVS     R0,#+0
// 2621   int tem = 0;
        MOVS     R5,#+0
// 2622   int StraightCount = 0;
        MOVS     R1,#+0
// 2623   int SmallSCount = 0;
        MOVS     R2,#+0
// 2624   int BigSCount = 0;
        MOVS     R3,#+0
// 2625   int BendCount = 0;
        MOVS     R4,#+0
// 2626   AllStraightCount = 0;
        MOVS     R6,#+0
        LDR.W    R7,??DataTable27_1
        STRB     R6,[R7, #+0]
// 2627   AllSmallSCount = 0;
        MOVS     R6,#+0
        LDR.W    R7,??DataTable27_2
        STRB     R6,[R7, #+0]
// 2628   AllBigSCount = 0;
        MOVS     R6,#+0
        LDR.W    R7,??DataTable27_3
        STR      R6,[R7, #+0]
// 2629   AllBendCount = 0;
        MOVS     R6,#+0
        LDR.W    R7,??DataTable28
        STR      R6,[R7, #+0]
// 2630   tem = Rear2;
        LDR.W    R6,??DataTable27_4
        LDRB     R6,[R6, #+0]
        MOVS     R5,R6
// 2631   for(i = 0;i < ElementCount2;i++)
        MOVS     R6,#+0
        MOVS     R0,R6
        B.N      ??HistoryRoadTypeCount_0
// 2632   {
// 2633     if(RoadTypeData2[tem] == 0)
// 2634     {
// 2635       StraightCount++;
// 2636       if(AllStraightCount < StraightCount)
// 2637       {
// 2638         AllStraightCount = StraightCount;
// 2639       }
// 2640     }
// 2641     else
// 2642     {
// 2643       StraightCount = 0;
// 2644     }
// 2645     
// 2646     if(RoadTypeData2[tem] == 0 || RoadTypeData2[tem] == 1)
// 2647     {
// 2648       SmallSCount++;
// 2649       if(AllSmallSCount < SmallSCount)
// 2650       {
// 2651         AllSmallSCount = SmallSCount;
// 2652       }
// 2653     }
// 2654     else
// 2655     {
// 2656       SmallSCount = 0;
// 2657     }
// 2658     
// 2659     if(RoadTypeData2[tem] == 2)
// 2660     {
// 2661       BigSCount++;
// 2662       if(AllBigSCount < BigSCount)
// 2663       {
// 2664         AllBigSCount = BigSCount;
// 2665       }
// 2666     }
// 2667     else
// 2668     {
// 2669       BigSCount=0;
// 2670     }
// 2671     
// 2672     if(RoadTypeData2[tem] == 2 || RoadTypeData2[tem] == 3 )
// 2673     {
// 2674       BendCount++;
// 2675       if(AllBendCount < BendCount)
// 2676       {
// 2677         AllBendCount = BendCount;
// 2678       }
// 2679     }
// 2680     else
// 2681     {
// 2682       BendCount=0;
??HistoryRoadTypeCount_1:
        MOVS     R4,#+0
// 2683     }
// 2684     
// 2685     tem = (tem-1+Size2)%Size2;
??HistoryRoadTypeCount_2:
        ADDS     R5,R5,#+29
        MOVS     R6,#+30
        SDIV     R7,R5,R6
        MLS      R5,R6,R7,R5
        ADDS     R0,R0,#+1
??HistoryRoadTypeCount_0:
        LDR.W    R6,??DataTable27_5
        LDRB     R6,[R6, #+0]
        CMP      R0,R6
        BGE.N    ??HistoryRoadTypeCount_3
        LDR.W    R6,??DataTable28_1
        LDRSB    R6,[R5, R6]
        CMP      R6,#+0
        BNE.N    ??HistoryRoadTypeCount_4
        ADDS     R1,R1,#+1
        LDR.W    R6,??DataTable27_1
        LDRB     R6,[R6, #+0]
        CMP      R6,R1
        BGE.N    ??HistoryRoadTypeCount_5
        LDR.W    R6,??DataTable27_1
        STRB     R1,[R6, #+0]
        B.N      ??HistoryRoadTypeCount_5
??HistoryRoadTypeCount_4:
        MOVS     R1,#+0
??HistoryRoadTypeCount_5:
        LDR.W    R6,??DataTable28_1
        LDRSB    R6,[R5, R6]
        CMP      R6,#+0
        BEQ.N    ??HistoryRoadTypeCount_6
        LDR.W    R6,??DataTable28_1
        LDRSB    R6,[R5, R6]
        CMP      R6,#+1
        BNE.N    ??HistoryRoadTypeCount_7
??HistoryRoadTypeCount_6:
        ADDS     R2,R2,#+1
        LDR.W    R6,??DataTable27_2
        LDRB     R6,[R6, #+0]
        CMP      R6,R2
        BGE.N    ??HistoryRoadTypeCount_8
        LDR.W    R6,??DataTable27_2
        STRB     R2,[R6, #+0]
        B.N      ??HistoryRoadTypeCount_8
??HistoryRoadTypeCount_7:
        MOVS     R2,#+0
??HistoryRoadTypeCount_8:
        LDR.W    R6,??DataTable28_1
        LDRSB    R6,[R5, R6]
        CMP      R6,#+2
        BNE.N    ??HistoryRoadTypeCount_9
        ADDS     R3,R3,#+1
        LDR.W    R6,??DataTable27_3
        LDR      R6,[R6, #+0]
        CMP      R6,R3
        BGE.N    ??HistoryRoadTypeCount_10
        LDR.W    R6,??DataTable27_3
        STR      R3,[R6, #+0]
        B.N      ??HistoryRoadTypeCount_10
??HistoryRoadTypeCount_9:
        MOVS     R3,#+0
??HistoryRoadTypeCount_10:
        LDR.W    R6,??DataTable28_1
        LDRSB    R6,[R5, R6]
        CMP      R6,#+2
        BEQ.N    ??HistoryRoadTypeCount_11
        LDR.W    R6,??DataTable28_1
        LDRSB    R6,[R5, R6]
        CMP      R6,#+3
        BNE.N    ??HistoryRoadTypeCount_1
??HistoryRoadTypeCount_11:
        ADDS     R4,R4,#+1
        LDR.W    R6,??DataTable28
        LDR      R6,[R6, #+0]
        CMP      R6,R4
        BGE.N    ??HistoryRoadTypeCount_2
        LDR.W    R6,??DataTable28
        STR      R4,[R6, #+0]
        B.N      ??HistoryRoadTypeCount_2
// 2686   }	
// 2687 } 
??HistoryRoadTypeCount_3:
        POP      {R4-R7}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22:
        DC32     P1_Y

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_1:
        DC32     P0_X

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_2:
        DC32     P0_Y

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_3:
        DC32     0x3ff00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_4:
        DC32     Mid_K1
// 2688 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2689 void HistoryRTProccess()
// 2690 {
HistoryRTProccess:
        PUSH     {R7,LR}
// 2691   
// 2692   
// 2693   
// 2694   
// 2695   if(StandardRoadType && (RoadType == 0 || RoadType == 1))
        LDR.W    R0,??DataTable28_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??HistoryRTProccess_0
        LDR.W    R0,??DataTable28_3
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??HistoryRTProccess_1
        LDR.W    R0,??DataTable28_3
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??HistoryRTProccess_0
// 2696   {
// 2697     //把赛道类型存入循环队列中//标准的直道和小S
// 2698     RoadTypeData2[Rear2] = RoadType;	
??HistoryRTProccess_1:
        LDR.W    R0,??DataTable28_3
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable28_1
        LDR.W    R2,??DataTable27_4
        LDRB     R2,[R2, #+0]
        STRB     R0,[R2, R1]
        B.N      ??HistoryRTProccess_2
// 2699   }
// 2700   else
// 2701   {
// 2702     RoadTypeData2[Rear2] = 2;	
??HistoryRTProccess_0:
        MOVS     R0,#+2
        LDR.W    R1,??DataTable28_1
        LDR.W    R2,??DataTable27_4
        LDRB     R2,[R2, #+0]
        STRB     R0,[R2, R1]
// 2703   }
// 2704   
// 2705   Rear2 = (Rear2+1)%Size2;
??HistoryRTProccess_2:
        LDR.W    R0,??DataTable27_4
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        MOVS     R1,#+30
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        LDR.W    R1,??DataTable27_4
        STRB     R0,[R1, #+0]
// 2706   ElementCount2++;
        LDR.W    R0,??DataTable27_5
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable27_5
        STRB     R0,[R1, #+0]
// 2707   if(ElementCount2 > Size2-1)
        LDR.W    R0,??DataTable27_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+30
        BLT.N    ??HistoryRTProccess_3
// 2708   {
// 2709     ElementCount2=Size2-1;	
        MOVS     R0,#+29
        LDR.W    R1,??DataTable27_5
        STRB     R0,[R1, #+0]
// 2710   }
// 2711   
// 2712   //历史赛道类型统计
// 2713   HistoryRoadTypeCount();
??HistoryRTProccess_3:
        BL       HistoryRoadTypeCount
// 2714   
// 2715   //	//通过赛道历史记录判断直入弯
// 2716   //	TemCount = 0;
// 2717   //	pTem = Rear2;
// 2718   //	if((RoadType == 2 || RoadType == 3) )
// 2719   //	{
// 2720   //		for(i = 0;i < 20;i++)
// 2721   //		{
// 2722   //			if(RoadTypeData2[pTem] == 0 || RoadTypeData2[pTem] == 1 )
// 2723   //			{
// 2724   //				TemCount++;
// 2725   //				if(TemCount > 15)
// 2726   //				{
// 2727   //					RoadType = 103;		
// 2728   //				}
// 2729   //			}
// 2730   //			pTem = (pTem-1+Size2)%Size2;	
// 2731   //		}		
// 2732   //	}	
// 2733 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23:
        DC32     P2_Y
// 2734 
// 2735 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2736 unsigned char IsStraightToBend()
// 2737 {
IsStraightToBend:
        PUSH     {R7,LR}
// 2738   if (fabss(TopE1) > 12 && fabss(TopE2) < 3 && fabss(SubBasePoint) < 3 )// && BlackEndMax < RowMax - 4
        LDR.N    R0,??DataTable24_10
        LDR      R0,[R0, #+0]
        BL       `fabss`
        CMP      R0,#+13
        BLT.N    ??IsStraightToBend_0
        LDR.N    R0,??DataTable24_11
        LDR      R0,[R0, #+0]
        BL       `fabss`
        CMP      R0,#+3
        BGE.N    ??IsStraightToBend_0
        LDR.N    R0,??DataTable24_9
        LDR      R0,[R0, #+0]
        BL       `fabss`
        CMP      R0,#+3
        BGE.N    ??IsStraightToBend_0
// 2739   {
// 2740     return 1;
        MOVS     R0,#+1
        B.N      ??IsStraightToBend_1
// 2741     
// 2742   }else
// 2743   {
// 2744     return 0;
??IsStraightToBend_0:
        MOVS     R0,#+0
??IsStraightToBend_1:
        POP      {R1,PC}          ;; return
// 2745   }
// 2746 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24:
        DC32     Mid_K2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_1:
        DC32     CompensateCount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_2:
        DC32     0xbf800000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_3:
        DC32     0x3f800001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_4:
        DC32     0x3f0ccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_5:
        DC32     0x3e800001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_6:
        DC32     MidLineExcursion

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_7:
        DC32     MidLineVariance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_8:
        DC32     0x4072c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_9:
        DC32     SubBasePoint

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_10:
        DC32     TopE1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_11:
        DC32     TopE2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_12:
        DC32     TopLen1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_13:
        DC32     TopLen2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_14:
        DC32     SubBasePointLen

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_15:
        DC32     TemMidLineData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_16:
        DC32     ImageData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_17:
        DC32     ThresholdValue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_18:
        DC32     BlackEndMax
// 2747 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2748 void GetCrossingMidLine()
// 2749 {
GetCrossingMidLine:
        PUSH     {R3-R11,LR}
// 2750   unsigned char i = 0,j=0;
        MOVS     R4,#+0
        MOVS     R0,#+0
// 2751   //每行头尾遍历行指针
// 2752   unsigned char pLeft = ColumnMax/2,pRight = ColumnMax/2;
        MOVS     R1,#+45
        MOVS     R2,#+45
// 2753   unsigned char bFoundLeft = 0;
        MOVS     R3,#+0
// 2754   unsigned char bFoundRight = 0;
        MOVS     R7,#+0
// 2755   unsigned char temLeft = 0,temRight = 0,temi=0;
        MOVS     LR,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
// 2756   unsigned char temBasePos = 0;
        MOVS     R6,#+0
// 2757   
// 2758   unsigned char EndFlag = 0;
        MOVS     R5,#+0
        STRB     R5,[SP, #+1]
// 2759   unsigned char LCount=0;
        MOVS     R5,#+0
        STRB     R5,[SP, #+0]
// 2760   unsigned char RCount=0;
        MOVS     R5,#+0
// 2761   unsigned char bFoundFlag=0;
        MOVS     R12,#+0
// 2762   
// 2763   
// 2764   CrossingStable=0;
        MOVS     R10,#+0
        LDR.W    R11,??DataTable28_4
        STRB     R10,[R11, #+0]
// 2765   for (i = 0;i < RowMax;i++)
        MOVS     R10,#+0
        MOV      R4,R10
        B.N      ??GetCrossingMidLine_0
// 2766   {
// 2767     ValidLineR[i] = 0;
??GetCrossingMidLine_1:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable28_5
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STRB     R0,[R4, R1]
// 2768     ValidLineL[i] = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable28_6
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STRB     R0,[R4, R1]
// 2769   }
        ADDS     R4,R4,#+1
??GetCrossingMidLine_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+100
        BLT.N    ??GetCrossingMidLine_1
// 2770   
// 2771   //判断十字左右倾
// 2772   if (BlackEndMax == BlackEndL)
        LDR.W    R0,??DataTable28_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable28_8
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BNE.N    ??GetCrossingMidLine_2
// 2773   {
// 2774     g_Derict = 1;//左倾
        MOVS     R0,#+1
        LDR.W    R1,??DataTable28_9
        STRB     R0,[R1, #+0]
        B.N      ??GetCrossingMidLine_3
// 2775   }
// 2776   else if (BlackEndMax == BlackEndR)
??GetCrossingMidLine_2:
        LDR.W    R0,??DataTable28_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable28_10
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BNE.N    ??GetCrossingMidLine_4
// 2777   {
// 2778     g_Derict = 2;//右倾
        MOVS     R0,#+2
        LDR.W    R1,??DataTable28_9
        STRB     R0,[R1, #+0]
        B.N      ??GetCrossingMidLine_3
// 2779   }
// 2780   else if (BlackEndMax == BlackEndM)
??GetCrossingMidLine_4:
        LDR.W    R0,??DataTable28_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable28_11
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BNE.N    ??GetCrossingMidLine_3
// 2781   {
// 2782     if (fabss(BlackEndL-BlackEndR) < 5)
        LDR.W    R0,??DataTable28_8
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable28_10
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       `fabss`
        CMP      R0,#+5
        BGE.N    ??GetCrossingMidLine_5
// 2783     {
// 2784       g_Derict = 0;//正十字
        MOVS     R0,#+0
        LDR.W    R1,??DataTable28_9
        STRB     R0,[R1, #+0]
        B.N      ??GetCrossingMidLine_3
// 2785     }
// 2786     else if (BlackEndL > BlackEndR)
??GetCrossingMidLine_5:
        LDR.W    R0,??DataTable28_10
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable28_8
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??GetCrossingMidLine_6
// 2787     {
// 2788       g_Derict = 1;//左
        MOVS     R0,#+1
        LDR.W    R1,??DataTable28_9
        STRB     R0,[R1, #+0]
        B.N      ??GetCrossingMidLine_3
// 2789     }
// 2790     else
// 2791     {
// 2792       g_Derict = 2;//右
??GetCrossingMidLine_6:
        MOVS     R0,#+2
        LDR.W    R1,??DataTable28_9
        STRB     R0,[R1, #+0]
// 2793     }
// 2794   }
// 2795   
// 2796   //搜索十字两边线
// 2797   for (i = RowMax-1; i > 0;i--)
??GetCrossingMidLine_3:
        MOVS     R4,#+99
        B.N      ??GetCrossingMidLine_7
// 2798   {
// 2799     if (!EndFlag)
// 2800     {
// 2801       CrossingStable++;
// 2802     }
// 2803     //近端15行从中间往两边搜索
// 2804     if (i > RowMax - 15 )
// 2805     {
// 2806       // 初始化遍历指针
// 2807       pLeft = ColumnMax/2;
// 2808       pRight = ColumnMax/2;
// 2809     }
// 2810     else 
// 2811     {
// 2812       // 初始化遍历指针
// 2813       pLeft = g_BasePos;
// 2814       pRight = g_BasePos;
// 2815     }
// 2816     // 		str.Format("%d pLeft:%d  pRight:%d\r\n",i,pLeft,pRight);
// 2817     // 		fprintf(pfile,str);
// 2818     // 初始化搜着标记
// 2819     bFoundLeft = bFoundRight = 0;
// 2820     for (j = 0;j < ColumnMax;j++)
// 2821     {
// 2822       // 往左搜索
// 2823       if (bFoundLeft == 0 && pLeft > 0){// 未找到左边缘则寻找
// 2824         //if (pLeft < 1){break;}
// 2825         if ((ThresholdData[i][pLeft] == White && ThresholdData[i][pLeft-1] == Black) || pLeft == 1){
// 2826           //					ThresholdData[i][LeftBlack[i]]=White;
// 2827           // 找到左边缘
// 2828           LeftBlack[i] = pLeft-1;
// 2829           bFoundLeft = 1;
// 2830           //					ThresholdData[i][LeftBlack[i]]=100;
// 2831           if (LeftBlack[i] > 0)
// 2832           {
// 2833             ValidLineL[i]=1;
// 2834             LCount=0;
// 2835           }
// 2836           else
// 2837           {
// 2838             LCount++;
// 2839             if (LCount > NoValidLMax)
// 2840             {
// 2841               //左边连续丢线总数
// 2842               NoValidLMax=LCount;
// 2843             }
// 2844           }
// 2845           // 如果右边缘也找到则退出
// 2846           if (bFoundRight){
// 2847             break;
// 2848           }
// 2849         }
// 2850         else{
// 2851           pLeft--;
// 2852         }
// 2853       }// if结束--从左到右搜索边缘
// 2854       
// 2855       //往右搜索
// 2856       if (bFoundRight == 0 && pRight < ColumnMax-1 ){//未找到右边缘则寻找
// 2857         //if (pRight > ColumnMax - 3){break;}
// 2858         if ((ThresholdData[i][pRight] == White && ThresholdData[i][pRight+1] == Black) || pRight == ColumnMax-2){
// 2859           //					ThresholdData[i][RightBlack[i]]=White;
// 2860           // 找到右边缘
// 2861           RightBlack[i] = pRight + 1;
// 2862           //					ThresholdData[i][RightBlack[i]]=100;
// 2863           bFoundRight = 1;
// 2864           if (RightBlack[i] < ColumnMax-1)
// 2865           {
// 2866             ValidLineR[i] = 1;
// 2867             RCount=0;
// 2868           }else
// 2869           {
// 2870             RCount++;
// 2871             if (RCount > NoValidRMax)
// 2872             {
// 2873               NoValidRMax=RCount;
// 2874             }
// 2875           }
// 2876           
// 2877           // 如果左边缘也找到则退出
// 2878           if (bFoundLeft){
// 2879             break;
// 2880           }
// 2881         }
// 2882         else{
// 2883           pRight++;
// 2884         }
// 2885       }// if结束
// 2886     }//for结束
// 2887     
// 2888     //左边找不到边缘置0
// 2889     if (!bFoundLeft)
// 2890     {
// 2891       LeftBlack[i]=0;
// 2892       //ThresholdData[i][LeftBlack[i]]=100;
// 2893     }
// 2894     //右边找不到边缘置最大值
// 2895     if (!bFoundRight)
// 2896     {
// 2897       RightBlack[i]=ColumnMax-1;
// 2898       //ThresholdData[i][RightBlack[i]]=100;
// 2899     }
// 2900     
// 2901     //		if (i < RowMax-2 && fabss(LeftBlack[i] - LeftBlack[i+1]) > TripLen  )
// 2902     //		{
// 2903     //			ValidLine[i]=0;;
// 2904     //		}
// 2905     //		if (i < RowMax-2 && fabss(RightBlack[i] - RightBlack[i+1]) > TripLen )
// 2906     //		{
// 2907     //			ValidLine[i]=0;
// 2908     //		}
// 2909     
// 2910     if ( i < RowMax - 15)
// 2911     {
// 2912       //左倾的搜索情况，中心线逐渐往左
// 2913       if (g_Derict == 1)
// 2914       {
// 2915         //搜到的中心点位置偏左方向远离原基点位置，并且有效，作为新的搜索起点
// 2916         if (LeftBlack[i] + (RightBlack[i]-LeftBlack[i] )/2 < g_BasePos 
// 2917             && fabss((LeftBlack[i] - LeftBlack[i+1])) < 3 
// 2918               && fabss((RightBlack[i] - RightBlack[i+1])) < 3)
// 2919         {
// 2920           temBasePos = LeftBlack[i] + (RightBlack[i]-LeftBlack[i] )/2;
// 2921           if (fabss(temBasePos-g_BasePos)<20)
// 2922           {
// 2923             g_BasePos = temBasePos;
// 2924             if (g_BasePos < 2)
// 2925             {
// 2926               EndFlag = 1;
// 2927             }
// 2928           }
// 2929         }
// 2930         //搜到的中心点位置偏右方向远离原基点位置，或者右边缘趋势往右，则从新搜索起点
// 2931         else if (LeftBlack[i] + (RightBlack[i]-LeftBlack[i] )/2 > g_BasePos || RightBlack[i] > RightBlack[i+1]+2)
// 2932         {
// 2933           temLeft = 0;
// 2934           temRight = 0;
// 2935           bFoundFlag=0;
// 2936           //确定新的搜索起点
// 2937           // 					str.Format("搜索起点:g_BasePos %d  \r\n",g_BasePos);
// 2938           // 					fprintf(pfile,str);
// 2939           for (temi = 1;temi < ColumnMax-1;temi++)
// 2940           {
// 2941             if (ThresholdData[i][temi] == White && ThresholdData[i][temi+1] == White && temLeft == 0)
// 2942             {
// 2943               temLeft = temi;
// 2944             }
// 2945             if (temLeft != 0)
// 2946             {
// 2947               if (ThresholdData[i][temi]== Black && ThresholdData[i][temi+1] == Black && ThresholdData[i][temi+5] == Black)
// 2948               {
// 2949                 temRight = temi;
// 2950                 bFoundFlag=1;
// 2951                 break;
// 2952               }
// 2953             }
// 2954           }
// 2955           if(bFoundFlag && temLeft + (temRight-temLeft)/2 < g_BasePos)
// 2956           {
// 2957             temBasePos = temLeft + (temRight-temLeft)/2;
// 2958             g_BasePos = temBasePos;
// 2959             if (g_BasePos < 3)
// 2960             {
// 2961               //新的搜索起点已经到最左边了，无需再搜索了
// 2962               EndFlag = 1;
// 2963             }
// 2964           }
// 2965           // 					str.Format("找到新的搜索起点:g_BasePos %d  \r\n",g_BasePos);
// 2966           // 					fprintf(pfile,str);
// 2967         }
// 2968       }
// 2969       
// 2970       //十字右倾的情况
// 2971       if (g_Derict == 2 )
// 2972       {
// 2973         //搜到的中心点位置偏右方向远离原基点位置，并且有效，作为新的搜索起点
// 2974         if (LeftBlack[i] + (RightBlack[i]-LeftBlack[i] )/2 > g_BasePos 
// 2975             && fabss((LeftBlack[i] - LeftBlack[i+1])) < 3 
// 2976               && fabss((RightBlack[i] - RightBlack[i+1])) < 3)
// 2977         {
// 2978           temBasePos = LeftBlack[i] + (RightBlack[i]-LeftBlack[i] )/2;
// 2979           if (fabss(temBasePos-g_BasePos)<20)
// 2980           {
// 2981             g_BasePos = temBasePos;
// 2982             if (g_BasePos > ColumnMax-4)
// 2983             {
// 2984               EndFlag = 1;
// 2985             }
// 2986           }
// 2987         }
// 2988         //搜到的中心点位置偏左方向远离原基点位置，或者左边缘趋势往左，则从新搜索起点
// 2989         else if (LeftBlack[i] + (RightBlack[i]-LeftBlack[i] )/2 < g_BasePos || LeftBlack[i] < LeftBlack[i+1]-2)
// 2990         {
// 2991           temLeft = 0;
// 2992           temRight = 0;
// 2993           bFoundFlag = 0;
// 2994           //确定新的搜索起点
// 2995           for (temi = ColumnMax-1;temi > 1;temi--)
??GetCrossingMidLine_8:
        SUBS     R9,R9,#+1
??GetCrossingMidLine_9:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+2
        BLT.N    ??GetCrossingMidLine_10
// 2996           {
// 2997             if (ThresholdData[i][temi] == White && ThresholdData[i][temi-1] == White && temRight == 0)
        LDR.W    R0,??DataTable28_12
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,#+90
        MLA      R0,R1,R4,R0
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRB     R0,[R9, R0]
        CMP      R0,#+200
        BNE.N    ??GetCrossingMidLine_11
        LDR.W    R0,??DataTable28_12
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,#+90
        MLA      R0,R1,R4,R0
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        ADDS     R0,R9,R0
        LDRB     R0,[R0, #-1]
        CMP      R0,#+200
        BNE.N    ??GetCrossingMidLine_11
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BNE.N    ??GetCrossingMidLine_11
// 2998             {
// 2999               temRight = temi;
        MOV      R8,R9
// 3000             }
// 3001             if (temRight != 0)
??GetCrossingMidLine_11:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.N    ??GetCrossingMidLine_8
// 3002             {
// 3003               if (ThresholdData[i][temi]== Black && ThresholdData[i][temi-1]== Black && ThresholdData[i][temi-5] == Black )
        LDR.W    R0,??DataTable28_12
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,#+90
        MLA      R0,R1,R4,R0
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRB     R0,[R9, R0]
        CMP      R0,#+30
        BNE.N    ??GetCrossingMidLine_8
        LDR.W    R0,??DataTable28_12
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,#+90
        MLA      R0,R1,R4,R0
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        ADDS     R0,R9,R0
        LDRB     R0,[R0, #-1]
        CMP      R0,#+30
        BNE.N    ??GetCrossingMidLine_8
        LDR.W    R0,??DataTable28_12
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,#+90
        MLA      R0,R1,R4,R0
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        ADDS     R0,R9,R0
        LDRB     R0,[R0, #-5]
        CMP      R0,#+30
        BNE.N    ??GetCrossingMidLine_8
// 3004               {
// 3005                 temLeft = temi;
        MOV      LR,R9
// 3006                 bFoundFlag=1;
        MOVS     R12,#+1
// 3007                 break;
// 3008               }
// 3009             }
// 3010           }
// 3011           if(bFoundFlag && temLeft + (temRight-temLeft)/2 > g_BasePos)
??GetCrossingMidLine_10:
        UXTB     R12,R12          ;; ZeroExt  R12,R12,#+24,#+24
        CMP      R12,#+0
        BEQ.N    ??GetCrossingMidLine_12
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        UXTB     LR,LR            ;; ZeroExt  LR,LR,#+24,#+24
        SUBS     R0,R8,LR
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        UXTAB    R0,R0,LR
        LDR.W    R1,??DataTable28_13
        LDRB     R1,[R1, #+0]
        CMP      R1,R0
        BGE.N    ??GetCrossingMidLine_12
// 3012           {
// 3013             temBasePos = temLeft + (temRight-temLeft)/2;
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        MOV      R0,LR
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        SUBS     R0,R8,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        ADDS     R6,R0,LR
// 3014             g_BasePos = temBasePos;
        LDR.W    R0,??DataTable28_13
        STRB     R6,[R0, #+0]
// 3015             if (g_BasePos > ColumnMax-3)
        LDR.W    R0,??DataTable28_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+88
        BLT.N    ??GetCrossingMidLine_12
// 3016             {
// 3017               EndFlag = 1;
        MOVS     R0,#+1
        STRB     R0,[SP, #+1]
// 3018             }
// 3019           }
??GetCrossingMidLine_12:
        SUBS     R4,R4,#+1
??GetCrossingMidLine_7:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.W    ??GetCrossingMidLine_13
        LDRB     R0,[SP, #+1]
        CMP      R0,#+0
        BNE.N    ??GetCrossingMidLine_14
        LDR.W    R0,??DataTable28_4
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable28_4
        STRB     R0,[R1, #+0]
??GetCrossingMidLine_14:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+86
        BLT.N    ??GetCrossingMidLine_15
        MOVS     R1,#+45
        MOVS     R2,#+45
        B.N      ??GetCrossingMidLine_16
??GetCrossingMidLine_15:
        LDR.W    R0,??DataTable28_13
        LDRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable28_13
        LDRB     R2,[R0, #+0]
??GetCrossingMidLine_16:
        MOVS     R7,#+0
        MOVS     R3,R7
        MOVS     R0,#+0
        B.N      ??GetCrossingMidLine_17
??GetCrossingMidLine_18:
        ADDS     R2,R2,#+1
??GetCrossingMidLine_19:
        ADDS     R0,R0,#+1
??GetCrossingMidLine_17:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+90
        BGE.W    ??GetCrossingMidLine_20
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+0
        BNE.N    ??GetCrossingMidLine_21
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??GetCrossingMidLine_21
        LDR.W    R6,??DataTable28_12
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R12,#+90
        MLA      R6,R12,R4,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDRB     R6,[R1, R6]
        CMP      R6,#+200
        BNE.N    ??GetCrossingMidLine_22
        LDR.W    R6,??DataTable28_12
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R12,#+90
        MLA      R6,R12,R4,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R6,R1,R6
        LDRB     R6,[R6, #-1]
        CMP      R6,#+30
        BEQ.N    ??GetCrossingMidLine_23
??GetCrossingMidLine_22:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??GetCrossingMidLine_24
??GetCrossingMidLine_23:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        SUBS     R3,R1,#+1
        LDR.W    R6,??DataTable25
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R3,[R6, R4, LSL #+2]
        MOVS     R3,#+1
        LDR.W    R6,??DataTable25
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R6,[R6, R4, LSL #+2]
        CMP      R6,#+1
        BLT.N    ??GetCrossingMidLine_25
        MOVS     R6,#+1
        LDR.W    R12,??DataTable28_6
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STRB     R6,[R4, R12]
        MOVS     R6,#+0
        STRB     R6,[SP, #+0]
        B.N      ??GetCrossingMidLine_26
??GetCrossingMidLine_25:
        LDRB     R6,[SP, #+0]
        ADDS     R6,R6,#+1
        STRB     R6,[SP, #+0]
        LDR.W    R6,??DataTable28_14
        LDRB     R6,[R6, #+0]
        LDRB     R12,[SP, #+0]
        CMP      R6,R12
        BCS.N    ??GetCrossingMidLine_26
        LDRB     R6,[SP, #+0]
        LDR.W    R12,??DataTable28_14
        STRB     R6,[R12, #+0]
??GetCrossingMidLine_26:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BEQ.N    ??GetCrossingMidLine_21
        B.N      ??GetCrossingMidLine_20
??GetCrossingMidLine_24:
        SUBS     R1,R1,#+1
??GetCrossingMidLine_21:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BNE.N    ??GetCrossingMidLine_19
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+89
        BGE.N    ??GetCrossingMidLine_19
        LDR.W    R6,??DataTable28_12
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R12,#+90
        MLA      R6,R12,R4,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDRB     R6,[R2, R6]
        CMP      R6,#+200
        BNE.N    ??GetCrossingMidLine_27
        LDR.W    R6,??DataTable28_12
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R12,#+90
        MLA      R6,R12,R4,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADDS     R6,R2,R6
        LDRB     R6,[R6, #+1]
        CMP      R6,#+30
        BEQ.N    ??GetCrossingMidLine_28
??GetCrossingMidLine_27:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+88
        BNE.N    ??GetCrossingMidLine_18
??GetCrossingMidLine_28:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADDS     R6,R2,#+1
        LDR.W    R7,??DataTable25_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R6,[R7, R4, LSL #+2]
        MOVS     R7,#+1
        LDR.W    R6,??DataTable25_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R6,[R6, R4, LSL #+2]
        CMP      R6,#+89
        BGE.N    ??GetCrossingMidLine_29
        MOVS     R5,#+1
        LDR.W    R6,??DataTable28_5
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STRB     R5,[R4, R6]
        MOVS     R5,#+0
        B.N      ??GetCrossingMidLine_30
??GetCrossingMidLine_29:
        ADDS     R5,R5,#+1
        LDR.W    R6,??DataTable28_15
        LDRB     R6,[R6, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R6,R5
        BCS.N    ??GetCrossingMidLine_30
        LDR.W    R6,??DataTable28_15
        STRB     R5,[R6, #+0]
??GetCrossingMidLine_30:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+0
        BEQ.W    ??GetCrossingMidLine_19
??GetCrossingMidLine_20:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+0
        BNE.N    ??GetCrossingMidLine_31
        MOVS     R0,#+0
        LDR.N    R1,??DataTable25
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R0,[R1, R4, LSL #+2]
??GetCrossingMidLine_31:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BNE.N    ??GetCrossingMidLine_32
        MOVS     R0,#+89
        LDR.N    R1,??DataTable25_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R0,[R1, R4, LSL #+2]
??GetCrossingMidLine_32:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+85
        BGE.W    ??GetCrossingMidLine_12
        LDR.W    R0,??DataTable28_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??GetCrossingMidLine_33
        LDR.N    R0,??DataTable25
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR.N    R1,??DataTable25_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        LDR.N    R2,??DataTable25
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R2,[R2, R4, LSL #+2]
        SUBS     R1,R1,R2
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable28_13
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??GetCrossingMidLine_34
        LDR.N    R0,??DataTable25
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR.N    R1,??DataTable25
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        BL       `fabss`
        CMP      R0,#+3
        BGE.N    ??GetCrossingMidLine_34
        LDR.N    R0,??DataTable25_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR.N    R1,??DataTable25_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        BL       `fabss`
        CMP      R0,#+3
        BGE.N    ??GetCrossingMidLine_34
        LDR.N    R0,??DataTable25
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR.N    R1,??DataTable25_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        LDR.N    R2,??DataTable25
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R2,[R2, R4, LSL #+2]
        SUBS     R1,R1,R2
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        ADDS     R6,R1,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??DataTable28_13
        LDRB     R0,[R0, #+0]
        SUBS     R0,R6,R0
        BL       `fabss`
        CMP      R0,#+20
        BGE.W    ??GetCrossingMidLine_33
        LDR.W    R0,??DataTable28_13
        STRB     R6,[R0, #+0]
        LDR.W    R0,??DataTable28_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BGE.W    ??GetCrossingMidLine_33
        MOVS     R0,#+1
        STRB     R0,[SP, #+1]
        B.N      ??GetCrossingMidLine_33
??GetCrossingMidLine_34:
        LDR.N    R0,??DataTable25
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR.N    R1,??DataTable25_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        LDR.N    R2,??DataTable25
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R2,[R2, R4, LSL #+2]
        SUBS     R1,R1,R2
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable28_13
        LDRB     R1,[R1, #+0]
        CMP      R1,R0
        BLT.N    ??GetCrossingMidLine_35
        LDR.N    R0,??DataTable25_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        ADDS     R0,R0,#+2
        LDR.N    R1,??DataTable25_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        CMP      R0,R1
        BGE.W    ??GetCrossingMidLine_33
??GetCrossingMidLine_35:
        MOVS     LR,#+0
        MOVS     R8,#+0
        MOVS     R12,#+0
        MOVS     R9,#+1
        B.N      ??GetCrossingMidLine_36
??GetCrossingMidLine_37:
        ADDS     R9,R9,#+1
??GetCrossingMidLine_36:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+89
        BGE.N    ??GetCrossingMidLine_38
        LDR.W    R0,??DataTable28_12
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,#+90
        MLA      R0,R1,R4,R0
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRB     R0,[R9, R0]
        CMP      R0,#+200
        BNE.N    ??GetCrossingMidLine_39
        LDR.W    R0,??DataTable28_12
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,#+90
        MLA      R0,R1,R4,R0
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        ADDS     R0,R9,R0
        LDRB     R0,[R0, #+1]
        CMP      R0,#+200
        BNE.N    ??GetCrossingMidLine_39
        UXTB     LR,LR            ;; ZeroExt  LR,LR,#+24,#+24
        CMP      LR,#+0
        BNE.N    ??GetCrossingMidLine_39
        MOV      LR,R9
??GetCrossingMidLine_39:
        UXTB     LR,LR            ;; ZeroExt  LR,LR,#+24,#+24
        CMP      LR,#+0
        BEQ.N    ??GetCrossingMidLine_37
        LDR.W    R0,??DataTable28_12
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,#+90
        MLA      R0,R1,R4,R0
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRB     R0,[R9, R0]
        CMP      R0,#+30
        BNE.N    ??GetCrossingMidLine_37
        LDR.W    R0,??DataTable28_12
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,#+90
        MLA      R0,R1,R4,R0
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        ADDS     R0,R9,R0
        LDRB     R0,[R0, #+1]
        CMP      R0,#+30
        BNE.N    ??GetCrossingMidLine_37
        LDR.W    R0,??DataTable28_12
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,#+90
        MLA      R0,R1,R4,R0
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        ADDS     R0,R9,R0
        LDRB     R0,[R0, #+5]
        CMP      R0,#+30
        BNE.N    ??GetCrossingMidLine_37
        MOV      R8,R9
        MOVS     R12,#+1
??GetCrossingMidLine_38:
        UXTB     R12,R12          ;; ZeroExt  R12,R12,#+24,#+24
        CMP      R12,#+0
        BEQ.N    ??GetCrossingMidLine_33
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        UXTB     LR,LR            ;; ZeroExt  LR,LR,#+24,#+24
        SUBS     R0,R8,LR
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        UXTAB    R0,R0,LR
        LDR.W    R1,??DataTable28_13
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??GetCrossingMidLine_33
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        MOV      R0,LR
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        SUBS     R0,R8,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        ADDS     R6,R0,LR
        LDR.W    R0,??DataTable28_13
        STRB     R6,[R0, #+0]
        LDR.W    R0,??DataTable28_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BGE.N    ??GetCrossingMidLine_33
        MOVS     R0,#+1
        STRB     R0,[SP, #+1]
??GetCrossingMidLine_33:
        LDR.W    R0,??DataTable28_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.W    ??GetCrossingMidLine_12
        LDR.N    R0,??DataTable25
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR.N    R1,??DataTable25_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        LDR.N    R2,??DataTable25
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R2,[R2, R4, LSL #+2]
        SUBS     R1,R1,R2
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable28_13
        LDRB     R1,[R1, #+0]
        CMP      R1,R0
        BGE.N    ??GetCrossingMidLine_40
        LDR.N    R0,??DataTable25
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR.N    R1,??DataTable25
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        BL       `fabss`
        CMP      R0,#+3
        BGE.N    ??GetCrossingMidLine_40
        LDR.N    R0,??DataTable25_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR.N    R1,??DataTable25_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        BL       `fabss`
        CMP      R0,#+3
        BGE.N    ??GetCrossingMidLine_40
        LDR.N    R0,??DataTable25
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR.N    R1,??DataTable25_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        LDR.N    R2,??DataTable25
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R2,[R2, R4, LSL #+2]
        SUBS     R1,R1,R2
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        ADDS     R6,R1,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??DataTable28_13
        LDRB     R0,[R0, #+0]
        SUBS     R0,R6,R0
        BL       `fabss`
        CMP      R0,#+20
        BGE.W    ??GetCrossingMidLine_12
        LDR.W    R0,??DataTable28_13
        STRB     R6,[R0, #+0]
        LDR.W    R0,??DataTable28_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+87
        BLT.W    ??GetCrossingMidLine_12
        MOVS     R0,#+1
        STRB     R0,[SP, #+1]
        B.N      ??GetCrossingMidLine_12
??GetCrossingMidLine_40:
        LDR.N    R0,??DataTable25
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR.N    R1,??DataTable25_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        LDR.N    R2,??DataTable25
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R2,[R2, R4, LSL #+2]
        SUBS     R1,R1,R2
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable28_13
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BLT.N    ??GetCrossingMidLine_41
        LDR.N    R0,??DataTable25
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR.N    R1,??DataTable25
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R1,R1,#+2
        CMP      R0,R1
        BGE.W    ??GetCrossingMidLine_12
??GetCrossingMidLine_41:
        MOVS     LR,#+0
        MOVS     R8,#+0
        MOVS     R12,#+0
        MOVS     R9,#+89
        B.N      ??GetCrossingMidLine_9
// 3020           // 					str.Format("找到新的搜索起点:g_BasePos %d  \r\n",g_BasePos);
// 3021           // 					fprintf(pfile,str);
// 3022         }
// 3023       }
// 3024     }
// 3025   }
// 3026   
// 3027   // 	str.Format("CrossingStable:%d\r\n",CrossingStable);
// 3028   // 	fprintf(pfile,str);
// 3029   // 	str.Format("NoValidLMax:%d NoValidRMax:%d\r\n",NoValidLMax,NoValidRMax);
// 3030   // 	fprintf(pfile,str);
// 3031 }
??GetCrossingMidLine_13:
        POP      {R0,R4-R11,PC}   ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25:
        DC32     LeftBlack

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_1:
        DC32     RightBlack
// 3032 
// 3033 //曲线两点间拟合

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3034 void CommonRectificate(int data[],unsigned char begin,unsigned char end)
// 3035 {
CommonRectificate:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R2
// 3036   unsigned char MidPos = 0;
        MOVS     R6,#+0
// 3037   if (end > RowMax-1)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+100
        BLT.N    ??CommonRectificate_0
// 3038   {
// 3039     end = RowMax-1;
        MOVS     R5,#+99
// 3040   }
// 3041   if (begin == end)
??CommonRectificate_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R1,R5
        BNE.N    ??CommonRectificate_1
// 3042   {
// 3043     //		ThresholdData[begin][data[begin]]=White;
// 3044     
// 3045     data[begin] = (data[begin-1]+data[begin+1])/2;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R4,R1, LSL #+2
        LDR      R0,[R0, #-4]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R2,R4,R1, LSL #+2
        LDR      R2,[R2, #+4]
        ADDS     R0,R2,R0
        MOVS     R2,#+2
        SDIV     R0,R0,R2
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        STR      R0,[R4, R1, LSL #+2]
// 3046     // 		str.Format("补偿%d:%d  \r\n",n++,begin);
// 3047     // 		fprintf(pfile,str);
// 3048     //		ThresholdData[begin][data[begin]]=100;
// 3049     
// 3050     //		ThresholdData[begin][BlackLineData[begin]]=White;
// 3051     
// 3052     BlackLineData[begin] =  LeftBlack[begin] + (RightBlack[begin]-LeftBlack[begin])/2;
        LDR.W    R0,??DataTable29
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[R0, R1, LSL #+2]
        LDR.W    R2,??DataTable29_1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R2,[R2, R1, LSL #+2]
        LDR.W    R3,??DataTable29
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R3,[R3, R1, LSL #+2]
        SUBS     R2,R2,R3
        MOVS     R3,#+2
        SDIV     R2,R2,R3
        ADDS     R0,R2,R0
        LDR.W    R2,??DataTable31
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        STR      R0,[R2, R1, LSL #+2]
        B.N      ??CommonRectificate_2
// 3053     
// 3054     //		ThresholdData[begin][BlackLineData[begin]]=128;
// 3055     
// 3056   }
// 3057   else if(begin < end)
??CommonRectificate_1:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R1,R5
        BCS.N    ??CommonRectificate_2
// 3058   {
// 3059     MidPos = (begin+end)/2;	
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTAB    R0,R5,R1
        MOVS     R2,#+2
        SDIV     R6,R0,R2
// 3060     //		ThresholdData[MidPos][data[MidPos]]=White;
// 3061     data[MidPos] = (data[begin]+data[end])/2;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[R4, R1, LSL #+2]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R2,[R4, R5, LSL #+2]
        ADDS     R0,R2,R0
        MOVS     R2,#+2
        SDIV     R0,R0,R2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STR      R0,[R4, R6, LSL #+2]
// 3062     // 		str.Format("补偿%d:%d  \r\n",n++,MidPos);
// 3063     // 		fprintf(pfile,str);
// 3064     //		ThresholdData[MidPos][data[MidPos]]=100;
// 3065     
// 3066     //		ThresholdData[MidPos][data[MidPos]]=100;
// 3067     //		ThresholdData[MidPos][BlackLineData[MidPos]]=White;
// 3068     BlackLineData[MidPos] =  LeftBlack[MidPos] + (RightBlack[MidPos]-LeftBlack[MidPos])/2;	
        LDR.W    R0,??DataTable29
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR      R0,[R0, R6, LSL #+2]
        LDR.W    R2,??DataTable29_1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR      R2,[R2, R6, LSL #+2]
        LDR.W    R3,??DataTable29
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR      R3,[R3, R6, LSL #+2]
        SUBS     R2,R2,R3
        MOVS     R3,#+2
        SDIV     R2,R2,R3
        ADDS     R0,R2,R0
        LDR.W    R2,??DataTable31
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STR      R0,[R2, R6, LSL #+2]
// 3069     //		ThresholdData[MidPos][BlackLineData[MidPos]]=128;
// 3070     
// 3071     if (begin+1 < MidPos)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R1,#+1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R0,R6
        BGE.N    ??CommonRectificate_3
// 3072     {
// 3073       CommonRectificate(data,begin,MidPos);
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       CommonRectificate
// 3074     }
// 3075     if (MidPos+1 < end)
??CommonRectificate_3:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R0,R6,#+1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R0,R5
        BGE.N    ??CommonRectificate_2
// 3076     {
// 3077       CommonRectificate(data,MidPos,end);
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       CommonRectificate
// 3078     }
// 3079   }
// 3080 }
??CommonRectificate_2:
        POP      {R4-R6,PC}       ;; return
// 3081 
// 3082 //对新提取的十字交叉道中线进行滤波

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3083 void CrossingMidFilter()
// 3084 {
CrossingMidFilter:
        PUSH     {R4-R6,LR}
// 3085   signed char i = 0,j=0,MidEnd = 0;
        MOVS     R4,#+0
        MOVS     R0,#+0
        MOVS     R5,#+0
// 3086   unsigned char MidToBlackCount = 0;
        MOVS     R6,#+0
// 3087   int sum = 0;
        MOVS     R1,#+0
// 3088   StableNumbers2 = 0;
        MOVS     R2,#+0
        LDR.W    R3,??DataTable31_1
        STR      R2,[R3, #+0]
// 3089   
// 3090   for (i = RowMax-1;i >= 0 && !MidEnd;i--)
        MOVS     R2,#+99
        MOVS     R4,R2
        B.N      ??CrossingMidFilter_0
// 3091   {
// 3092     BlackLineData[i] = LeftBlack[i] + (RightBlack[i]-LeftBlack[i] )/2;
// 3093     //十字中心线稳定行	
// 3094     StableNumbers2++;
// 3095     //中心线搜索截止
// 3096     if (BlackLineData[i] < 4 || BlackLineData[i] > ColumnMax-4)
// 3097     {
// 3098       MidEnd = 1;
// 3099       break;
// 3100     }
// 3101     if (i < RowMax-5 && fabss(BlackLineData[i]-BlackLineData[i+1]) > 3)
??CrossingMidFilter_1:
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+95
        BGE.N    ??CrossingMidFilter_2
        LDR.W    R0,??DataTable31
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??DataTable31
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        BL       `fabss`
        CMP      R0,#+4
        BLT.N    ??CrossingMidFilter_2
// 3102     {
// 3103       BlackLineData[i] = BlackLineData[i+1] + BlackLineData[i+1] - BlackLineData[i+2];
        LDR.W    R0,??DataTable31
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable31
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable31
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+8]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable31
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        STR      R0,[R1, R4, LSL #+2]
// 3104     }
// 3105     if (ThresholdData[i][BlackLineData[i]] == Black)
??CrossingMidFilter_2:
        LDR.N    R0,??DataTable28_12
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        MOVS     R1,#+90
        SMLABB   R0,R4,R1,R0
        LDR.W    R1,??DataTable31
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        LDRB     R0,[R1, R0]
        CMP      R0,#+30
        BNE.N    ??CrossingMidFilter_3
// 3106     {
// 3107       MidToBlackCount++;
        ADDS     R6,R6,#+1
// 3108       if (MidToBlackCount >= 3)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+3
        BLT.N    ??CrossingMidFilter_3
// 3109       {
// 3110         //中心线碰到黑点了
// 3111         MidEnd = 1;
        MOVS     R5,#+1
// 3112       }
// 3113     }
??CrossingMidFilter_3:
        SUBS     R4,R4,#+1
??CrossingMidFilter_0:
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BMI.N    ??CrossingMidFilter_4
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??CrossingMidFilter_4
        LDR.W    R0,??DataTable29
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??DataTable29_1
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        LDR.W    R2,??DataTable29
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R2,[R2, R4, LSL #+2]
        SUBS     R1,R1,R2
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable31
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        STR      R0,[R1, R4, LSL #+2]
        LDR.W    R0,??DataTable31_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable31_1
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable31
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        SUBS     R0,R0,#+4
        CMP      R0,#+83
        BCC.N    ??CrossingMidFilter_1
        MOVS     R5,#+1
// 3114     //		else
// 3115     //		{
// 3116     //			MidToBlackCount = 0;
// 3117     //		}
// 3118   }
// 3119   
// 3120   for (i = RowMax-1;i > RowMax-(StableNumbers2-5);i--)
??CrossingMidFilter_4:
        MOVS     R4,#+99
        B.N      ??CrossingMidFilter_5
// 3121   {
// 3122     sum = 0;
// 3123     for (j = 0;j < 5;j++)
// 3124     {
// 3125       sum += BlackLineData[i-j];
??CrossingMidFilter_6:
        LDR.W    R2,??DataTable31
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        SUBS     R3,R4,R0
        LDR      R2,[R2, R3, LSL #+2]
        ADDS     R1,R2,R1
// 3126     }
        ADDS     R0,R0,#+1
??CrossingMidFilter_7:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,#+5
        BLT.N    ??CrossingMidFilter_6
// 3127     BlackLineData[i] = sum/5;
        MOVS     R0,#+5
        SDIV     R0,R1,R0
        LDR.W    R1,??DataTable31
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        STR      R0,[R1, R4, LSL #+2]
        SUBS     R4,R4,#+1
??CrossingMidFilter_5:
        LDR.W    R0,??DataTable31_1
        LDR      R0,[R0, #+0]
        RSBS     R0,R0,#+100
        ADDS     R0,R0,#+5
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R0,R4
        BGE.N    ??CrossingMidFilter_8
        MOVS     R1,#+0
        MOVS     R0,#+0
        B.N      ??CrossingMidFilter_7
// 3128     
// 3129     //ThresholdData[i][BlackLineData[i]]=128;
// 3130   }
// 3131 }
??CrossingMidFilter_8:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27:
        DC32     IsStartLine

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_1:
        DC32     AllStraightCount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_2:
        DC32     AllSmallSCount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_3:
        DC32     AllBigSCount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_4:
        DC32     Rear2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_5:
        DC32     ElementCount2
// 3132 
// 3133 //正十字的情况处理

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3134 void SCProcessing()
// 3135 {
SCProcessing:
        PUSH     {R4-R8,LR}
// 3136   char i = 0;
        MOVS     R4,#+0
// 3137   int startPos=0,endPos=0,temCount=0,countMax=0,temPos=0;
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        MOVS     R0,#+0
        MOVS     R12,#+0
// 3138   int ProcessFlag=0;
        MOVS     R5,#+0
// 3139   
// 3140   //跳变计数
// 3141   unsigned char TripPointCount = 0;
        MOVS     R6,#+0
// 3142   unsigned char TripLen = 3;
        MOVS     R7,#+3
// 3143   //取十字的边缘线
// 3144   //GetCrossingMidLine();
// 3145   
// 3146   // 	str.Format("正十字处理\r\n");
// 3147   // 	fprintf(pfile,str);
// 3148   for (i = 0;i < RowMax;i++)
        MOVS     LR,#+0
        MOV      R4,LR
        B.N      ??SCProcessing_0
// 3149   {
// 3150     TripPointPos[i] = 0;	
??SCProcessing_1:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable31_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STRB     R0,[R4, R1]
// 3151   }
        ADDS     R4,R4,#+1
??SCProcessing_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+100
        BLT.N    ??SCProcessing_1
// 3152   TripPointCount=0;
        MOVS     R6,#+0
// 3153   //根据跳变分段
// 3154   for (i = 0;i < RowMax;i++)
        MOVS     R4,#+0
        B.N      ??SCProcessing_2
// 3155   {
// 3156     // 相邻中心点做差，找出中心线跳变处,进行分段处理
// 3157     if (i > 0){
??SCProcessing_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??SCProcessing_4
// 3158       SubValue[i] = LeftBlack[i] - LeftBlack[i-1];
        LDR.W    R0,??DataTable29
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??DataTable29
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #-4]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable31_3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STRB     R0,[R4, R1]
// 3159       //跳变判断
// 3160       if (fabss(SubValue[i]) > TripLen || LeftBlack[i] <2){
        LDR.W    R0,??DataTable31_3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRSB    R0,[R4, R0]
        BL       `fabss`
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,R0
        BLT.N    ??SCProcessing_5
        LDR.W    R0,??DataTable29
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        CMP      R0,#+2
        BGE.N    ??SCProcessing_4
// 3161         //记录跳变位置（行标）
// 3162         TripPointPos[TripPointCount] = i;
??SCProcessing_5:
        LDR.W    R0,??DataTable31_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STRB     R4,[R6, R0]
// 3163         TripPointCount++;	
        ADDS     R6,R6,#+1
// 3164       }
// 3165     }	
// 3166   }//for结束 
??SCProcessing_4:
        ADDS     R4,R4,#+1
??SCProcessing_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+100
        BLT.N    ??SCProcessing_3
// 3167   TripPointPos[TripPointCount] = RowMax;
        MOVS     R0,#+100
        LDR.W    R1,??DataTable31_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STRB     R0,[R6, R1]
// 3168   temCount = 0;
        MOVS     R3,#+0
// 3169   countMax=0;
        MOVS     R0,#+0
// 3170   temPos = TripPointPos[0]-1;
        LDR.W    R1,??DataTable31_2
        LDRSB    R1,[R1, #+0]
        SUBS     R12,R1,#+1
// 3171   startPos = temPos;
        MOV      R1,R12
// 3172   endPos = 0;
        MOVS     R2,#+0
// 3173   for (i = 1;i < TripPointCount;i++)
        MOVS     R4,#+1
        B.N      ??SCProcessing_6
// 3174   {
// 3175     // 			str.Format("TripPointPos:%d \r\n",TripPointPos[i]);
// 3176     // 			fprintf(pfile,str);
// 3177     if (TripPointPos[i]-TripPointPos[i-1] < 3)
// 3178     {
// 3179       temCount++;
// 3180       if (temCount > countMax)
// 3181       {
// 3182         countMax = temCount;
// 3183         startPos = temPos;
// 3184         endPos = TripPointPos[i]+1;
// 3185       }
// 3186     }
// 3187     else /*if(LeftBlack[TripPointPos[i-1]]-LeftBlack[TripPointPos[i]]>15&&TripPointPos[i]>10)
// 3188     {
// 3189       temPos = TripPointPos[i]-1;
// 3190       startPos = temPos;
// 3191   }
// 3192                 else */ 
// 3193     {
// 3194       temPos = TripPointPos[i]-1;
??SCProcessing_7:
        LDR.W    R3,??DataTable31_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRSB    R3,[R4, R3]
        SUBS     R12,R3,#+1
// 3195       temCount=0;
        MOVS     R3,#+0
// 3196     }
??SCProcessing_8:
        ADDS     R4,R4,#+1
??SCProcessing_6:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R4,R6
        BCS.N    ??SCProcessing_9
        LDR.W    LR,??DataTable31_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRSB    LR,[R4, LR]
        LDR.W    R8,??DataTable31_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R8,R4,R8
        LDRSB    R8,[R8, #-1]
        SUBS     LR,LR,R8
        CMP      LR,#+3
        BGE.N    ??SCProcessing_7
        ADDS     R3,R3,#+1
        CMP      R0,R3
        BGE.N    ??SCProcessing_8
        MOVS     R0,R3
        MOV      R1,R12
        LDR.W    R2,??DataTable31_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRSB    R2,[R4, R2]
        ADDS     R2,R2,#+1
        B.N      ??SCProcessing_8
// 3197   }//End for
// 3198   // 	str.Format("startPos:%d endPos:%d \r\n",startPos,endPos);
// 3199   // 	fprintf(pfile,str);
// 3200   if (startPos > 10/* &&startPos> endline*/)
??SCProcessing_9:
        CMP      R1,#+11
        BLT.N    ??SCProcessing_10
// 3201   {
// 3202     CommonRectificate(&LeftBlack[0],startPos,endPos);
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable29
        BL       CommonRectificate
// 3203     ProcessFlag=1;
        MOVS     R5,#+1
// 3204   }
// 3205   
// 3206   //	if(endPos != 0 && endPos < 35)
// 3207   //	{
// 3208   //		LCrossingTripPos = endPos+5;
// 3209   //	}
// 3210   
// 3211   //右边缘补线
// 3212   for (i = 0;i < RowMax;i++)
??SCProcessing_10:
        MOVS     R4,#+0
        B.N      ??SCProcessing_11
// 3213   {
// 3214     TripPointPos[i] = 0;	
??SCProcessing_12:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable31_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STRB     R0,[R4, R1]
// 3215   }
        ADDS     R4,R4,#+1
??SCProcessing_11:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+100
        BLT.N    ??SCProcessing_12
// 3216   TripPointCount=0;
        MOVS     R6,#+0
// 3217   //根据跳变分段
// 3218   for (i = 1;i < RowMax;i++)
        MOVS     R4,#+1
        B.N      ??SCProcessing_13
// 3219   {
// 3220     // 相邻中心点做差，找出中心线跳变处,进行分段处理
// 3221     if (i > 0){
??SCProcessing_14:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??SCProcessing_15
// 3222       SubValue[i] = RightBlack[i] - RightBlack[i-1];
        LDR.W    R0,??DataTable29_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??DataTable29_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #-4]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable31_3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STRB     R0,[R4, R1]
// 3223       //跳变判断
// 3224       if (fabss(SubValue[i]) > TripLen || RightBlack[i] > (ColumnMax-3)){
        LDR.W    R0,??DataTable31_3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRSB    R0,[R4, R0]
        BL       `fabss`
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,R0
        BLT.N    ??SCProcessing_16
        LDR.W    R0,??DataTable29_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        CMP      R0,#+88
        BLT.N    ??SCProcessing_15
// 3225         //记录跳变位置（行标）
// 3226         TripPointPos[TripPointCount] = i;
??SCProcessing_16:
        LDR.W    R0,??DataTable31_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STRB     R4,[R6, R0]
// 3227         TripPointCount++;	
        ADDS     R6,R6,#+1
// 3228       }
// 3229     }	
// 3230   }//for结束 
??SCProcessing_15:
        ADDS     R4,R4,#+1
??SCProcessing_13:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+100
        BLT.N    ??SCProcessing_14
// 3231   // 		str.Format("TripPointCount:%d \r\n",TripPointCount);
// 3232   // 		fprintf(pfile,str);
// 3233   TripPointPos[TripPointCount] = RowMax;
        MOVS     R0,#+100
        LDR.W    R1,??DataTable31_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STRB     R0,[R6, R1]
// 3234   temCount = 0;
        MOVS     R3,#+0
// 3235   countMax=0;
        MOVS     R0,#+0
// 3236   
// 3237   endPos = 0;
        MOVS     R2,#+0
// 3238   temPos = TripPointPos[0]-1;	
        LDR.W    R1,??DataTable31_2
        LDRSB    R1,[R1, #+0]
        SUBS     R12,R1,#+1
// 3239   startPos = temPos;
        MOV      R1,R12
// 3240   for (i = 0;i < TripPointCount;i++)
        MOVS     R4,#+0
        B.N      ??SCProcessing_17
// 3241   {
// 3242     // 			str.Format("TripPointPos1:%d  \r\n",TripPointPos[i]);
// 3243     // 			fprintf(pfile,str);
// 3244     if (TripPointPos[i]-TripPointPos[i-1] < 3)
// 3245     {
// 3246       temCount++;
// 3247       if (temCount > countMax)
// 3248       {
// 3249         countMax = temCount;
// 3250         startPos = temPos;
// 3251         endPos = TripPointPos[i]+1;
// 3252       }
// 3253     }
// 3254     else  /*if(RightBlack[TripPointPos[i]]-RightBlack[TripPointPos[i-1]]>15&&TripPointPos[i]>10)
// 3255     {
// 3256       temPos = TripPointPos[i]-1;
// 3257       startPos = temPos;
// 3258   }
// 3259                 else */ 
// 3260     {
// 3261       temPos = TripPointPos[i]-1;
??SCProcessing_18:
        LDR.W    R3,??DataTable31_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRSB    R3,[R4, R3]
        SUBS     R12,R3,#+1
// 3262       temCount=0;
        MOVS     R3,#+0
// 3263     }
??SCProcessing_19:
        ADDS     R4,R4,#+1
??SCProcessing_17:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R4,R6
        BCS.N    ??SCProcessing_20
        LDR.W    R7,??DataTable31_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRSB    R7,[R4, R7]
        LDR.W    LR,??DataTable31_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     LR,R4,LR
        LDRSB    LR,[LR, #-1]
        SUBS     R7,R7,LR
        CMP      R7,#+3
        BGE.N    ??SCProcessing_18
        ADDS     R3,R3,#+1
        CMP      R0,R3
        BGE.N    ??SCProcessing_19
        MOVS     R0,R3
        MOV      R1,R12
        LDR.W    R2,??DataTable31_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRSB    R2,[R4, R2]
        ADDS     R2,R2,#+1
        B.N      ??SCProcessing_19
// 3264     
// 3265   }//End for
// 3266   // 	str.Format("startPos1:%d endPos1:%d \r\n",startPos,endPos);
// 3267   // 	fprintf(pfile,str);
// 3268   if (startPos > 10/*&&startPos> endline*/)
??SCProcessing_20:
        CMP      R1,#+11
        BLT.N    ??SCProcessing_21
// 3269   {
// 3270     //拟合右边缘
// 3271     CommonRectificate(&RightBlack[0],startPos,endPos);
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable29_1
        BL       CommonRectificate
// 3272     ProcessFlag=1;
        MOVS     R5,#+1
// 3273   }
// 3274   
// 3275   //	if(endPos < 35)
// 3276   //	{
// 3277   //		if( endPos > LCrossingTripPos)
// 3278   //		{
// 3279   //			LCrossingTripPos = endPos+5;
// 3280   //		} 
// 3281   //	}
// 3282   if(!ProcessFlag)
??SCProcessing_21:
        CMP      R5,#+0
        BNE.N    ??SCProcessing_22
// 3283   {
// 3284     IsCrossing = 0;	
        MOVS     R0,#+0
        LDR.W    R1,??DataTable31_4
        STRB     R0,[R1, #+0]
// 3285   }
// 3286 }
??SCProcessing_22:
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28:
        DC32     AllBendCount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_1:
        DC32     RoadTypeData2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_2:
        DC32     StandardRoadType

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_3:
        DC32     RoadType

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_4:
        DC32     CrossingStable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_5:
        DC32     ValidLineR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_6:
        DC32     ValidLineL

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_7:
        DC32     BlackEndMax

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_8:
        DC32     BlackEndL

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_9:
        DC32     g_Derict

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_10:
        DC32     BlackEndR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_11:
        DC32     BlackEndM

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_12:
        DC32     ThresholdData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_13:
        DC32     g_BasePos

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_14:
        DC32     NoValidLMax

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_15:
        DC32     NoValidRMax
// 3287 
// 3288 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3289 void ProcessCrossing()
// 3290 {
ProcessCrossing:
        PUSH     {R3-R11,LR}
// 3291   char i = 0,iStart= RowMax - StableNumbers -1,iEnd = RowMax-1;
        MOVS     R4,#+0
        LDR.W    R0,??DataTable31_5
        LDR      R0,[R0, #+0]
        RSBS     R0,R0,#+99
        STRB     R0,[SP, #+0]
        MOVS     R5,#+99
// 3292   unsigned char iCount=0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
// 3293   unsigned char TripPos = 0,pos = 0;
        MOVS     R6,#+0
        MOVS     R0,#+0
// 3294   unsigned char Count1 = 0,Count2=0;
        MOVS     R3,#+0
        MOVS     R12,#+0
// 3295   unsigned char tem0 = 0,tem1=0;
        MOVS     R7,#+0
        MOVS     R8,#+0
// 3296   int startPos=0,endPos=0;
        MOVS     R1,#+0
        MOVS     R2,#+0
// 3297   unsigned char ProcessFlag = 0;
        MOVS     R9,#+0
// 3298   endline = RowMax-1;
        MOVS     LR,#+99
        LDR.W    R10,??DataTable31_6
        STRB     LR,[R10, #+0]
// 3299   LCrossingTripPos = 0;
        MOVS     LR,#+0
        LDR.W    R10,??DataTable31_7
        STR      LR,[R10, #+0]
// 3300   RCrossingTripPos = 0;
        MOVS     LR,#+0
        LDR.W    R10,??DataTable31_8
        STR      LR,[R10, #+0]
// 3301   int cross_icount=0;
        MOVS     R10,#+0
// 3302   bFoundTripPoint = 0;
        MOVS     LR,#+0
        LDR.W    R11,??DataTable31_9
        STRB     LR,[R11, #+0]
// 3303   /*if (iStart < 5)
// 3304   {
// 3305   iStart = 5;
// 3306 }
// 3307   for (i =  RowMax-6;i >= 0;i--)
// 3308   {
// 3309   
// 3310   if(LineType[i] == 1 )
// 3311   {
// 3312   endline = i;
// 3313   break;
// 3314 }
// 3315           else if(LineType[i] == 2&&ValidLine[i]!=3)
// 3316   {
// 3317   iCount++;
// 3318 }
// 3319 }
// 3320   if (iCount > 5 )
// 3321   {
// 3322   
// 3323   IsCrossing = 1;
// 3324   
// 3325   
// 3326 }
// 3327         else
// 3328   {
// 3329   IsCrossing = 0;
// 3330   return;
// 3331 }*/
// 3332   
// 3333   
// 3334   
// 3335   
// 3336   if (iStart < 5)
        LDRB     LR,[SP, #+0]
        CMP      LR,#+5
        BGE.N    ??ProcessCrossing_0
// 3337   {
// 3338     iStart = 5;
        MOVS     R0,#+5
        STRB     R0,[SP, #+0]
// 3339   } 
// 3340   if (fs==5)   LPLD_UART_PutCharArr(UART4,"开发",4);
??ProcessCrossing_0:
        LDR.W    R0,??DataTable31_10
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable31_11  ;; 0x40a00000
        BL       __aeabi_cfcmpeq
        BNE.N    ??ProcessCrossing_1
        MOVS     R2,#+4
        LDR.W    R1,??DataTable31_12
        LDR.W    R0,??DataTable31_13  ;; 0x400ea000
        BL       LPLD_UART_PutCharArr
// 3341   for (i = iStart;i < iEnd;i++)
??ProcessCrossing_1:
        LDRB     R4,[SP, #+0]
        B.N      ??ProcessCrossing_2
// 3342   {
// 3343     tem0 = RightBlack[i]>ColumnMax-1 ? ColumnMax-1:RightBlack[i];
// 3344     tem1 = LeftBlack[i] < 0 ? 0:LeftBlack[i];
??ProcessCrossing_3:
        LDR.W    R0,??DataTable29
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R8,[R0, R4, LSL #+2]
// 3345     if (fs==5){ 
??ProcessCrossing_4:
        LDR.W    R0,??DataTable31_10
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable31_11  ;; 0x40a00000
        BL       __aeabi_cfcmpeq
        BNE.N    ??ProcessCrossing_5
// 3346       FloatToChar(tem0 - tem1,sa);    
        LDR.W    R1,??DataTable31_14
        MOV      R11,R1
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        SUBS     R0,R7,R8
        BL       __aeabi_i2f
        MOV      R1,R11
        BL       FloatToChar
// 3347       LPLD_UART_PutChar(UART4,'#');	
        MOVS     R1,#+35
        LDR.W    R0,??DataTable31_13  ;; 0x400ea000
        BL       LPLD_UART_PutChar
// 3348       LPLD_UART_PutCharArr(UART4,sa,4);
        MOVS     R2,#+4
        LDR.W    R1,??DataTable31_14
        LDR.W    R0,??DataTable31_13  ;; 0x400ea000
        BL       LPLD_UART_PutCharArr
// 3349     }	
// 3350     if (tem0 - tem1 > ColumnMax-5 )
??ProcessCrossing_5:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        SUBS     R0,R7,R8
        CMP      R0,#+86
        BLT.N    ??ProcessCrossing_6
// 3351     {
// 3352       cross_icount++;
        ADDS     R10,R10,#+1
// 3353     }
// 3354     if  (LineType[i] == 1)
??ProcessCrossing_6:
        LDR.W    R0,??DataTable31_15
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRB     R0,[R4, R0]
        CMP      R0,#+1
        BNE.N    ??ProcessCrossing_7
// 3355     {
// 3356       cross_icount = 0;
        MOVS     R10,#+0
// 3357       
// 3358     }
??ProcessCrossing_7:
        ADDS     R4,R4,#+1
??ProcessCrossing_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R4,R5
        BCS.N    ??ProcessCrossing_8
        LDR.W    R0,??DataTable29_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        CMP      R0,#+90
        BLT.N    ??ProcessCrossing_9
        MOVS     R7,#+89
        B.N      ??ProcessCrossing_10
??ProcessCrossing_9:
        LDR.W    R0,??DataTable29_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R7,[R0, R4, LSL #+2]
??ProcessCrossing_10:
        LDR.W    R0,??DataTable29
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        CMP      R0,#+0
        BPL.N    ??ProcessCrossing_3
        MOVS     R8,#+0
        B.N      ??ProcessCrossing_4
// 3359     // else
// 3360     //  {
// 3361     //break;
// 3362     //}
// 3363   }
// 3364   // 	str.Format("ICOUNT:%d g_Derict%d \r\n",iCount,g_Derict);
// 3365   // 	fprintf(pfile,str);
// 3366   
// 3367   // 	str.Format("iStart:%d iEnd:%d \r\n",iStart,iEnd);
// 3368   // 	fprintf(pfile,str);
// 3369   
// 3370   
// 3371   
// 3372   if (cross_icount > 10&&(StableNumbers>40||BlackEndL>40||BlackEndR>40))
??ProcessCrossing_8:
        CMP      R10,#+11
        BLT.N    ??ProcessCrossing_11
        LDR.W    R0,??DataTable31_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+41
        BGE.N    ??ProcessCrossing_12
        LDR.W    R0,??DataTable31_16
        LDR      R0,[R0, #+0]
        CMP      R0,#+41
        BGE.N    ??ProcessCrossing_12
        LDR.W    R0,??DataTable31_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+41
        BLT.N    ??ProcessCrossing_11
// 3373   {
// 3374     // 		str.Format("十字处理\r\n");
// 3375     // 		fprintf(pfile,str);
// 3376     IsCrossing = 1;
??ProcessCrossing_12:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable31_4
        STRB     R0,[R1, #+0]
// 3377   }
// 3378   else
// 3379   {
// 3380     if (NoValidMax > 10&&WhiteRow>10&&(StableNumbers>40||BlackEndL>40||BlackEndR>40))
// 3381     {
// 3382       IsCrossing = 1;
// 3383       // 			str.Format("十字处理2\r\n");
// 3384       // 			fprintf(pfile,str);
// 3385       if (ValidLine[RowMax-3] == 0)
// 3386       {
// 3387         //				SmoothLeftRight();
// 3388         //当做正十字处理
// 3389         SCProcessing();
// 3390         return;
// 3391       }
// 3392       else
// 3393       {
// 3394         //当做正十字处理
// 3395         SCProcessing();
// 3396         return;
// 3397       }
// 3398     }
// 3399     else
// 3400     {
// 3401       IsCrossing = 0;
// 3402       return;
// 3403     }
// 3404   }
// 3405   
// 3406   
// 3407   
// 3408   if(IsCrossing)
        LDR.W    R0,??DataTable31_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??ProcessCrossing_13
// 3409   {	
// 3410     SCProcessing();
// 3411     return;
// 3412   }
// 3413 #if   1
// 3414   //右倾找左边缘跳变
// 3415   if (IsCrossing && g_Derict == 2)
        LDR.W    R0,??DataTable31_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??ProcessCrossing_14
        LDR.W    R0,??DataTable31_18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.W    ??ProcessCrossing_14
// 3416   {
// 3417     // 		str.Format("右倾十字对左边缘处理\r\n");
// 3418     // 		fprintf(pfile,str);
// 3419     
// 3420     i = iStart;
        LDRB     R4,[SP, #+0]
        B.N      ??ProcessCrossing_15
??ProcessCrossing_11:
        LDR.W    R0,??DataTable31_19
        LDR      R0,[R0, #+0]
        CMP      R0,#+11
        BLT.N    ??ProcessCrossing_16
        LDR.W    R0,??DataTable31_20
        LDRB     R0,[R0, #+0]
        CMP      R0,#+11
        BLT.N    ??ProcessCrossing_16
        LDR.W    R0,??DataTable31_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+41
        BGE.N    ??ProcessCrossing_17
        LDR.W    R0,??DataTable31_16
        LDR      R0,[R0, #+0]
        CMP      R0,#+41
        BGE.N    ??ProcessCrossing_17
        LDR.W    R0,??DataTable31_17
        LDR      R0,[R0, #+0]
        CMP      R0,#+41
        BLT.N    ??ProcessCrossing_16
??ProcessCrossing_17:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable31_4
        STRB     R0,[R1, #+0]
        LDR.W    R0,??DataTable31_21
        LDRB     R0,[R0, #+97]
        CMP      R0,#+0
        BNE.N    ??ProcessCrossing_18
        BL       SCProcessing
        B.N      ??ProcessCrossing_19
??ProcessCrossing_18:
        BL       SCProcessing
        B.N      ??ProcessCrossing_19
??ProcessCrossing_16:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable31_4
        STRB     R0,[R1, #+0]
        B.N      ??ProcessCrossing_19
??ProcessCrossing_13:
        BL       SCProcessing
        B.N      ??ProcessCrossing_19
// 3421     while (i < iEnd && LeftBlack[i] - LeftBlack[i+1] == 0){i++;}
??ProcessCrossing_20:
        ADDS     R4,R4,#+1
??ProcessCrossing_15:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R4,R5
        BCS.N    ??ProcessCrossing_21
        LDR.W    R0,??DataTable29
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??DataTable29
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        CMP      R0,#+0
        BEQ.N    ??ProcessCrossing_20
// 3422     // 		str.Format("抵达:%d %d\r\n",i,LeftBlack[i]-LeftBlack[i+1]);
// 3423     // 		fprintf(pfile,str);
// 3424     Count1=0;
??ProcessCrossing_21:
        MOVS     R3,#+0
// 3425     Count2=0;
        MOVS     R12,#+0
// 3426     if (LeftBlack[i]-LeftBlack[i+1] > 0)
        LDR.W    R0,??DataTable29
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??DataTable29
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        CMP      R0,#+1
        BLT.N    ??ProcessCrossing_22
// 3427     {
// 3428       Count1++;
        ADDS     R3,R3,#+1
// 3429       i++;
        ADDS     R4,R4,#+1
        B.N      ??ProcessCrossing_23
// 3430       for (;i < iEnd;i++)
// 3431       {
// 3432         if (LeftBlack[i]-LeftBlack[i+1] > 0)
// 3433         {
// 3434           Count1++;
// 3435           if (Count2 != 0)
// 3436           {
// 3437             Count1 = 1;
// 3438             Count2 = 0;
// 3439           }
// 3440         }
// 3441         else if (LeftBlack[i]-LeftBlack[i+1] < 0)
??ProcessCrossing_24:
        LDR.W    R0,??DataTable29
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??DataTable29
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        CMP      R0,#+0
        BPL.N    ??ProcessCrossing_25
// 3442         {
// 3443           if (Count1 > 2 && TripPos == 0)
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+3
        BLT.N    ??ProcessCrossing_26
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??ProcessCrossing_26
// 3444           {
// 3445             TripPos = i;
        MOVS     R6,R4
// 3446           }
// 3447           Count2++;
??ProcessCrossing_26:
        ADDS     R12,R12,#+1
// 3448         }
??ProcessCrossing_25:
        ADDS     R4,R4,#+1
??ProcessCrossing_23:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R4,R5
        BCS.N    ??ProcessCrossing_27
        LDR.W    R0,??DataTable29
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??DataTable29
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        CMP      R0,#+1
        BLT.N    ??ProcessCrossing_24
        ADDS     R3,R3,#+1
        UXTB     R12,R12          ;; ZeroExt  R12,R12,#+24,#+24
        CMP      R12,#+0
        BEQ.N    ??ProcessCrossing_25
        MOVS     R3,#+1
        MOVS     R12,#+0
        B.N      ??ProcessCrossing_25
// 3449       }
// 3450       if (Count1 >2 && Count2 > 2)
??ProcessCrossing_27:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+3
        BLT.N    ??ProcessCrossing_14
        UXTB     R12,R12          ;; ZeroExt  R12,R12,#+24,#+24
        CMP      R12,#+3
        BLT.N    ??ProcessCrossing_14
// 3451       {
// 3452         bFoundTripPoint = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable31_9
        STRB     R0,[R1, #+0]
// 3453         LCrossingTripPos = TripPos;//左边缘跳变点找到
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??DataTable31_7
        STR      R6,[R0, #+0]
        B.N      ??ProcessCrossing_14
// 3454       }
// 3455     }
// 3456     else
// 3457     {
// 3458       Count1++;
??ProcessCrossing_22:
        ADDS     R3,R3,#+1
// 3459       i++;
        ADDS     R4,R4,#+1
        B.N      ??ProcessCrossing_28
// 3460       for (;i < iEnd;i++)
// 3461       {
// 3462         if (LeftBlack[i]-LeftBlack[i+1] < 0)
// 3463         {
// 3464           Count1++;
// 3465           if (Count2 != 0)
// 3466           {
// 3467             Count1 = 1;
// 3468             Count2 = 0;
// 3469           }
// 3470         }
// 3471         else if (LeftBlack[i]-LeftBlack[i+1] > 0)
??ProcessCrossing_29:
        LDR.W    R0,??DataTable29
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??DataTable29
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        CMP      R0,#+1
        BLT.N    ??ProcessCrossing_30
// 3472         {						
// 3473           if (Count1 >2 && TripPos == 0)
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+3
        BLT.N    ??ProcessCrossing_31
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??ProcessCrossing_31
// 3474           {
// 3475             TripPos = i;
        MOVS     R6,R4
// 3476           }
// 3477           Count2++;
??ProcessCrossing_31:
        ADDS     R12,R12,#+1
// 3478         }
??ProcessCrossing_30:
        ADDS     R4,R4,#+1
??ProcessCrossing_28:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R4,R5
        BCS.N    ??ProcessCrossing_32
        LDR.W    R0,??DataTable29
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??DataTable29
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        CMP      R0,#+0
        BPL.N    ??ProcessCrossing_29
        ADDS     R3,R3,#+1
        UXTB     R12,R12          ;; ZeroExt  R12,R12,#+24,#+24
        CMP      R12,#+0
        BEQ.N    ??ProcessCrossing_30
        MOVS     R3,#+1
        MOVS     R12,#+0
        B.N      ??ProcessCrossing_30
// 3479       }
// 3480       if (Count1 >2 && Count2 > 2)
??ProcessCrossing_32:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+3
        BLT.N    ??ProcessCrossing_14
        UXTB     R12,R12          ;; ZeroExt  R12,R12,#+24,#+24
        CMP      R12,#+3
        BLT.N    ??ProcessCrossing_14
// 3481       {
// 3482         bFoundTripPoint = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable31_9
        STRB     R0,[R1, #+0]
// 3483         LCrossingTripPos = TripPos;//左边缘跳变点找到
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??DataTable31_7
        STR      R6,[R0, #+0]
// 3484       }
// 3485     }
// 3486   }
// 3487   
// 3488   ////左倾找右边缘跳变点
// 3489   if (IsCrossing && g_Derict == 1)
??ProcessCrossing_14:
        LDR.W    R0,??DataTable31_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??ProcessCrossing_33
        LDR.W    R0,??DataTable31_18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??ProcessCrossing_33
// 3490   {
// 3491     // 		str.Format("左倾十字对右边缘处理\r\n");
// 3492     // 		fprintf(pfile,str);
// 3493     i = iStart;
        LDRB     R4,[SP, #+0]
// 3494     Count1=0;
        MOVS     R3,#+0
// 3495     Count2=0;
        MOVS     R12,#+0
        B.N      ??ProcessCrossing_34
// 3496     while (i < iEnd && RightBlack[i] - RightBlack[i+1] == 0){i++;}
??ProcessCrossing_35:
        ADDS     R4,R4,#+1
??ProcessCrossing_34:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R4,R5
        BCS.N    ??ProcessCrossing_36
        LDR.W    R0,??DataTable29_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??DataTable29_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        CMP      R0,#+0
        BEQ.N    ??ProcessCrossing_35
// 3497     // 		str.Format("抵达1:%d  %d\r\n",i,RightBlack[i]-RightBlack[i+1]);
// 3498     // 		fprintf(pfile,str);
// 3499     if (RightBlack[i]-RightBlack[i+1] > 0)
??ProcessCrossing_36:
        LDR.W    R0,??DataTable29_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??DataTable29_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        CMP      R0,#+1
        BLT.N    ??ProcessCrossing_37
// 3500     {
// 3501       Count1++;
        ADDS     R3,R3,#+1
// 3502       i++;
        ADDS     R4,R4,#+1
        B.N      ??ProcessCrossing_38
// 3503       for (;i < iEnd;i++)
// 3504       {
// 3505         if (RightBlack[i]-RightBlack[i+1] > 0)
// 3506         {
// 3507           Count1++;
// 3508           if (Count2 != 0)
// 3509           {
// 3510             Count1 = 1;
// 3511             Count2 = 0;
// 3512           }
// 3513         }
// 3514         else if (RightBlack[i]-RightBlack[i+1] < 0)
??ProcessCrossing_39:
        LDR.W    R0,??DataTable29_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??DataTable29_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        CMP      R0,#+0
        BPL.N    ??ProcessCrossing_40
// 3515         {
// 3516           if (Count1 >2 && TripPos == 0)
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+3
        BLT.N    ??ProcessCrossing_41
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??ProcessCrossing_41
// 3517           {
// 3518             TripPos = i;
        MOVS     R6,R4
// 3519             
// 3520           }
// 3521           Count2++;
??ProcessCrossing_41:
        ADDS     R12,R12,#+1
// 3522         }
??ProcessCrossing_40:
        ADDS     R4,R4,#+1
??ProcessCrossing_38:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R4,R5
        BCS.N    ??ProcessCrossing_42
        LDR.W    R0,??DataTable29_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??DataTable29_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        CMP      R0,#+1
        BLT.N    ??ProcessCrossing_39
        ADDS     R3,R3,#+1
        UXTB     R12,R12          ;; ZeroExt  R12,R12,#+24,#+24
        CMP      R12,#+0
        BEQ.N    ??ProcessCrossing_40
        MOVS     R3,#+1
        MOVS     R12,#+0
        B.N      ??ProcessCrossing_40
// 3523       }
// 3524       if (Count1 > 2 && Count2 > 2)
??ProcessCrossing_42:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+3
        BLT.N    ??ProcessCrossing_33
        UXTB     R12,R12          ;; ZeroExt  R12,R12,#+24,#+24
        CMP      R12,#+3
        BLT.N    ??ProcessCrossing_33
// 3525       {
// 3526         bFoundTripPoint = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable31_9
        STRB     R0,[R1, #+0]
// 3527         RCrossingTripPos = TripPos;//右边缘跳变点找到
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??DataTable31_8
        STR      R6,[R0, #+0]
        B.N      ??ProcessCrossing_33
// 3528       }
// 3529     }
// 3530     else
// 3531     {
// 3532       Count1++;
??ProcessCrossing_37:
        ADDS     R3,R3,#+1
// 3533       i++;
        ADDS     R4,R4,#+1
        B.N      ??ProcessCrossing_43
// 3534       for (;i < iEnd;i++)
// 3535       {
// 3536         if (RightBlack[i]-RightBlack[i+1] < 0)
// 3537         {
// 3538           Count1++;
// 3539           if (Count2 != 0)
// 3540           {
// 3541             Count1 = 1;
// 3542             Count2 = 0;
// 3543           }
// 3544         }
// 3545         else if (RightBlack[i]-RightBlack[i+1] > 0)
??ProcessCrossing_44:
        LDR.W    R0,??DataTable29_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??DataTable29_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        CMP      R0,#+1
        BLT.N    ??ProcessCrossing_45
// 3546         {
// 3547           if (Count1 > 2 && TripPos == 0)
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+3
        BLT.N    ??ProcessCrossing_46
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??ProcessCrossing_46
// 3548           {
// 3549             TripPos = i;
        MOVS     R6,R4
// 3550             
// 3551           }
// 3552           Count2++;
??ProcessCrossing_46:
        ADDS     R12,R12,#+1
// 3553         }
??ProcessCrossing_45:
        ADDS     R4,R4,#+1
??ProcessCrossing_43:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R4,R5
        BCS.N    ??ProcessCrossing_47
        LDR.W    R0,??DataTable29_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDR.W    R1,??DataTable29_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+2
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        CMP      R0,#+0
        BPL.N    ??ProcessCrossing_44
        ADDS     R3,R3,#+1
        UXTB     R12,R12          ;; ZeroExt  R12,R12,#+24,#+24
        CMP      R12,#+0
        BEQ.N    ??ProcessCrossing_45
        MOVS     R3,#+1
        MOVS     R12,#+0
        B.N      ??ProcessCrossing_45
// 3554       }
// 3555       if (Count1 > 2 && Count2 > 2)
??ProcessCrossing_47:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+3
        BLT.N    ??ProcessCrossing_33
        UXTB     R12,R12          ;; ZeroExt  R12,R12,#+24,#+24
        CMP      R12,#+3
        BLT.N    ??ProcessCrossing_33
// 3556       {
// 3557         bFoundTripPoint = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable31_9
        STRB     R0,[R1, #+0]
// 3558         RCrossingTripPos = TripPos;//右边缘跳变点找到
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??DataTable31_8
        STR      R6,[R0, #+0]
// 3559       }
// 3560     }
// 3561   }
// 3562   if (bFoundTripPoint)
??ProcessCrossing_33:
        LDR.W    R0,??DataTable31_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??ProcessCrossing_48
// 3563   {
// 3564     GetCrossingMidLine();//取十字的边缘线
        BL       GetCrossingMidLine
// 3565     // 		str.Format("找到跳变点处理\r\n");
// 3566     // 		fprintf(pfile,str);
// 3567     // 		str.Format("跳变点:%d  %d  1:%d  2:%d\r\n",TripPos,RightBlack[TripPos],Count1,Count2);
// 3568     // 		fprintf(pfile,str);
// 3569     if (g_Derict == 1)//左倾
        LDR.W    R0,??DataTable31_18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ProcessCrossing_49
// 3570     {
// 3571       pos = TripPos-8;
        SUBS     R0,R6,#+8
        B.N      ??ProcessCrossing_50
// 3572       while(pos > 0 && (ValidLineR[pos] == 0 || RightBlack[pos] > RightBlack[TripPos])){pos--;}
??ProcessCrossing_51:
        SUBS     R0,R0,#+1
??ProcessCrossing_50:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??ProcessCrossing_52
        LDR.W    R1,??DataTable31_22
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDRB     R1,[R0, R1]
        CMP      R1,#+0
        BEQ.N    ??ProcessCrossing_51
        LDR.N    R1,??DataTable29_1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR      R1,[R1, R6, LSL #+2]
        LDR.N    R2,??DataTable29_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R2,[R2, R0, LSL #+2]
        CMP      R1,R2
        BLT.N    ??ProcessCrossing_51
// 3573       // 			str.Format("补偿起点:%d RightBlack[%d]=%d\r\n",pos-2,pos-2,RightBlack[pos-2]);
// 3574       // 			fprintf(pfile,str);
// 3575       // 			if (RowMax-CrossingStable > pos-2)
// 3576       // 			{
// 3577       // 				if (RightBlack[RowMax-CrossingStable] < RightBlack[TripPos])
// 3578       // 				{
// 3579       // 					//右边缘拟合
// 3580       // 					CommonRectificate(&RightBlack[0],RowMax-CrossingStable,TripPos);
// 3581       // 					ProcessFlag = 1;
// 3582       // 				}
// 3583       // 				else
// 3584       // 				{
// 3585       // 					for (i = 0;i < ColumnMax;i++)
// 3586       // 					{
// 3587       // 						if (ThresholdData[RowMax-CrossingStable][i] == White && ThresholdData[RowMax-CrossingStable][i+1] == Black)
// 3588       // 						{
// 3589       // 							pos = i;
// 3590       // 							RightBlack[RowMax-CrossingStable]=i;
// 3591       // 							break;
// 3592       // 						}
// 3593       // 					}
// 3594       // 					if (RightBlack[RowMax-CrossingStable] < RightBlack[TripPos])
// 3595       // 					{
// 3596       // 						//右边缘拟合
// 3597       // 						CommonRectificate(&RightBlack[0],RowMax-CrossingStable,TripPos);
// 3598       // 						ProcessFlag = 1;
// 3599       // 					}
// 3600       // 					else
// 3601       // 					{
// 3602       // 						RightBlack[RowMax-CrossingStable]=1;
// 3603       // 						//右边缘拟合
// 3604       // 						CommonRectificate(&RightBlack[0],RowMax-CrossingStable,TripPos);
// 3605       // 						ProcessFlag = 1;
// 3606       // 					}
// 3607       // 				}
// 3608       // 			}
// 3609       // 			else 
// 3610       if (RightBlack[pos-2] < RightBlack[TripPos]/*&&TripPos-(pos-2)<30*/)//拟合起点合理，可以进行拟合
??ProcessCrossing_52:
        LDR.N    R1,??DataTable29_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #-8]
        LDR.N    R2,??DataTable29_1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR      R2,[R2, R6, LSL #+2]
        CMP      R1,R2
        BGE.N    ??ProcessCrossing_53
// 3611       {
// 3612         //右边缘拟合
// 3613         CommonRectificate(&RightBlack[0],pos-2,TripPos);
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        SUBS     R1,R0,#+2
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable29_1
        BL       CommonRectificate
// 3614         ProcessFlag = 1;
        MOVS     R9,#+1
        B.N      ??ProcessCrossing_54
// 3615       }
// 3616       else
// 3617       {
// 3618         //进行另一种方式拟合
// 3619         for (i = 0;i < ColumnMax;i++)
??ProcessCrossing_53:
        MOVS     R4,#+0
        B.N      ??ProcessCrossing_55
??ProcessCrossing_56:
        ADDS     R4,R4,#+1
??ProcessCrossing_55:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+90
        BGE.N    ??ProcessCrossing_57
// 3620         {
// 3621           if (ThresholdData[pos-2][i] == White && ThresholdData[pos-2][i+1] == Black)
        LDR.W    R1,??DataTable31_23
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R2,#+90
        MLA      R1,R2,R0,R1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #-180]
        CMP      R1,#+200
        BNE.N    ??ProcessCrossing_56
        LDR.W    R1,??DataTable31_23
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R2,#+90
        MLA      R1,R2,R0,R1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #-179]
        CMP      R1,#+30
        BNE.N    ??ProcessCrossing_56
// 3622           {
// 3623             RightBlack[pos-2]=i;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable29_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+2
        STR      R4,[R1, #-8]
// 3624             break;
// 3625           }
// 3626         }
// 3627         if (RightBlack[pos-2] < RightBlack[TripPos]/*&&TripPos-(pos-2)<30*/)//拟合起点合理，可以进行拟合
??ProcessCrossing_57:
        LDR.N    R1,??DataTable29_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #-8]
        LDR.N    R2,??DataTable29_1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR      R2,[R2, R6, LSL #+2]
        CMP      R1,R2
        BGE.N    ??ProcessCrossing_58
// 3628         {
// 3629           //右边缘拟合
// 3630           CommonRectificate(&RightBlack[0],pos-2,TripPos);
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        SUBS     R1,R0,#+2
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable29_1
        BL       CommonRectificate
// 3631           ProcessFlag = 1;
        MOVS     R9,#+1
        B.N      ??ProcessCrossing_54
// 3632         }
// 3633         else if (NoValidLMax > 20/*&&TripPos-(pos-2)<30*/)
??ProcessCrossing_58:
        LDR.N    R1,??DataTable31_24
        LDRB     R1,[R1, #+0]
        CMP      R1,#+21
        BLT.W    ??ProcessCrossing_54
// 3634         {
// 3635           RightBlack[pos-2]=2;
        MOVS     R1,#+2
        LDR.N    R2,??DataTable29_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+2
        STR      R1,[R2, #-8]
// 3636           CommonRectificate(&RightBlack[0],pos-2,TripPos);
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        SUBS     R1,R0,#+2
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable29_1
        BL       CommonRectificate
// 3637           ProcessFlag = 1;
        MOVS     R9,#+1
        B.N      ??ProcessCrossing_54
// 3638           
// 3639         }
// 3640       }
// 3641       //			//处理左边缘
// 3642       //			if (NoValidLMax < 20)
// 3643       //			{
// 3644       //				startPos = 0;
// 3645       //				endPos = 0;
// 3646       //				for (i = RowMax-1;i > 0;i--)
// 3647       //				{
// 3648       //					if (ValidLineL[i] == 0 && endPos == 0)
// 3649       //					{
// 3650       //						endPos = i+4;
// 3651       //					}
// 3652       //					if (endPos != 0 && startPos == 0 && ValidLineL[i]==1)
// 3653       //					{
// 3654       //						startPos = i-4;
// 3655       //					}
// 3656       //					
// 3657       //					if (startPos != 0 && endPos != 0)
// 3658       //					{
// 3659       //// 						str.Format("L补偿起点:%d \r\n",startPos,endPos);
// 3660       //// 						fprintf(pfile,str);
// 3661       //						CommonRectificate(&LeftBlack[0],startPos,endPos);
// 3662       //						startPos = 0;
// 3663       //						endPos = 0;
// 3664       //						ProcessFlag = 1;
// 3665       //					}
// 3666       //				}
// 3667       //			}
// 3668     }
// 3669     else if (g_Derict == 2)//右倾
??ProcessCrossing_49:
        LDR.N    R0,??DataTable31_18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.W    ??ProcessCrossing_54
// 3670     {
// 3671       pos = TripPos-8;
        SUBS     R0,R6,#+8
        B.N      ??ProcessCrossing_59
// 3672       while(pos > 0 && ValidLineL[pos] == 0 || LeftBlack[pos] < LeftBlack[TripPos]){pos--;}
??ProcessCrossing_60:
        SUBS     R0,R0,#+1
??ProcessCrossing_59:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??ProcessCrossing_61
        LDR.N    R1,??DataTable31_25
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDRB     R1,[R0, R1]
        CMP      R1,#+0
        BEQ.N    ??ProcessCrossing_60
??ProcessCrossing_61:
        LDR.N    R1,??DataTable29
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R1,[R1, R0, LSL #+2]
        LDR.N    R2,??DataTable29
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR      R2,[R2, R6, LSL #+2]
        CMP      R1,R2
        BLT.N    ??ProcessCrossing_60
// 3673       // 			str.Format("补偿起点:%d LeftBlack[pos-2]%d\r\n",pos-2,LeftBlack[pos-2]);
// 3674       // 			fprintf(pfile,str);
// 3675       
// 3676       
// 3677       // 			if (RowMax-CrossingStable > pos-2)
// 3678       // 			{
// 3679       // 				if (LeftBlack[RowMax-CrossingStable] > LeftBlack[TripPos])
// 3680       // 				{
// 3681       // 					//右边缘拟合
// 3682       // 					CommonRectificate(&LeftBlack[0],RowMax-CrossingStable,TripPos);
// 3683       // 					ProcessFlag = 1;
// 3684       // 				}
// 3685       // 				else
// 3686       // 				{
// 3687       // 					for (i = ColumnMax-1;i > 0;i--)
// 3688       // 					{
// 3689       // 						if (ThresholdData[RowMax-CrossingStable][i] == White && ThresholdData[RowMax-CrossingStable][i-1] == Black)
// 3690       // 						{
// 3691       // 							pos = i;
// 3692       // 							RightBlack[RowMax-CrossingStable]=i;
// 3693       // 							break;
// 3694       // 						}
// 3695       // 					}
// 3696       // 					if (LeftBlack[RowMax-CrossingStable] > LeftBlack[TripPos])
// 3697       // 					{
// 3698       // 						//右边缘拟合
// 3699       // 						CommonRectificate(&LeftBlack[0],RowMax-CrossingStable,TripPos);
// 3700       // 						ProcessFlag = 1;
// 3701       // 					}
// 3702       // 					else
// 3703       // 					{
// 3704       // 						RightBlack[RowMax-CrossingStable]=ColumnMax-2;
// 3705       // 						//右边缘拟合
// 3706       // 						CommonRectificate(&LeftBlack[0],RowMax-CrossingStable,TripPos);
// 3707       // 						ProcessFlag = 1;
// 3708       // 					}
// 3709       // 				}
// 3710       // 			}
// 3711       // 			else 
// 3712       if (LeftBlack[pos-2] > LeftBlack[TripPos]/*&&TripPos-(pos-2)<30*/)
        LDR.N    R1,??DataTable29
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR      R1,[R1, R6, LSL #+2]
        LDR.N    R2,??DataTable29
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+2
        LDR      R2,[R2, #-8]
        CMP      R1,R2
        BGE.N    ??ProcessCrossing_62
// 3713       {
// 3714         CommonRectificate(&LeftBlack[0],pos-2,TripPos);
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        SUBS     R1,R0,#+2
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable29
        BL       CommonRectificate
// 3715         ProcessFlag = 1;
        MOVS     R9,#+1
        B.N      ??ProcessCrossing_54
// 3716       }
// 3717       else
// 3718       {
// 3719         //另外一种方式进行拟合
// 3720         for (i = ColumnMax-1;i > 0;i--)
??ProcessCrossing_62:
        MOVS     R4,#+89
        B.N      ??ProcessCrossing_63
??ProcessCrossing_64:
        SUBS     R4,R4,#+1
??ProcessCrossing_63:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??ProcessCrossing_65
// 3721         {
// 3722           if (ThresholdData[pos-2][i] == White && ThresholdData[pos-2][i-1] == Black)
        LDR.N    R1,??DataTable31_23
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R2,#+90
        MLA      R1,R2,R0,R1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #-180]
        CMP      R1,#+200
        BNE.N    ??ProcessCrossing_64
        LDR.N    R1,??DataTable31_23
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R2,#+90
        MLA      R1,R2,R0,R1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #-181]
        CMP      R1,#+30
        BNE.N    ??ProcessCrossing_64
// 3723           {
// 3724             LeftBlack[pos-2]=i;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable29
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+2
        STR      R4,[R1, #-8]
// 3725             break;
// 3726           }
// 3727         }
// 3728         if (LeftBlack[pos-2] > LeftBlack[TripPos] /*&&TripPos-(pos-2)<30*/)
??ProcessCrossing_65:
        LDR.N    R1,??DataTable29
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR      R1,[R1, R6, LSL #+2]
        LDR.N    R2,??DataTable29
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+2
        LDR      R2,[R2, #-8]
        CMP      R1,R2
        BGE.N    ??ProcessCrossing_66
// 3729         {
// 3730           CommonRectificate(&LeftBlack[0],pos-2,TripPos);
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        SUBS     R1,R0,#+2
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable29
        BL       CommonRectificate
// 3731           ProcessFlag = 1;
        MOVS     R9,#+1
        B.N      ??ProcessCrossing_54
// 3732         }
// 3733         else if (NoValidRMax > 20 /*&&TripPos-(pos-2)<30*/)
??ProcessCrossing_66:
        LDR.N    R1,??DataTable31_26
        LDRB     R1,[R1, #+0]
        CMP      R1,#+21
        BLT.N    ??ProcessCrossing_54
// 3734         {
// 3735           LeftBlack[pos-2]=ColumnMax-2;
        MOVS     R1,#+88
        LDR.N    R2,??DataTable29
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+2
        STR      R1,[R2, #-8]
// 3736           CommonRectificate(&LeftBlack[0],pos-2,TripPos);
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        SUBS     R1,R0,#+2
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable29
        BL       CommonRectificate
// 3737           ProcessFlag = 1;
        MOVS     R9,#+1
        B.N      ??ProcessCrossing_54
// 3738         }
// 3739       }
// 3740       
// 3741       //			//处理右边缘
// 3742       //			if (NoValidRMax < 20)
// 3743       //			{
// 3744       //				startPos = 0;
// 3745       //				endPos = 0;
// 3746       //				for (i = RowMax-1;i > 0;i--)
// 3747       //				{
// 3748       //					if (ValidLineR[i] == 0 && endPos == 0)
// 3749       //					{
// 3750       //						endPos = i+4;
// 3751       //					}
// 3752       //					if (endPos != 0 && startPos == 0 && ValidLineR[i]==1)
// 3753       //					{
// 3754       //						startPos = i-4;
// 3755       //					}
// 3756       //					
// 3757       //					if (startPos != 0 && endPos != 0)
// 3758       //					{
// 3759       //// 						str.Format("R补偿起点:%d \r\n",startPos,endPos);
// 3760       //// 						fprintf(pfile,str);
// 3761       //						CommonRectificate(&RightBlack[0],startPos,endPos);
// 3762       //						startPos = 0;
// 3763       //						endPos = 0;
// 3764       //						ProcessFlag = 1;
// 3765       //					}
// 3766       //				}
// 3767       //			}
// 3768     }
// 3769   }
// 3770   else//找不到跳变点
// 3771   {
// 3772     // 		str.Format("未找到跳变点处理\r\n");
// 3773     // 		fprintf(pfile,str);
// 3774     GetCrossingMidLine();//取十字的边缘线
??ProcessCrossing_48:
        BL       GetCrossingMidLine
// 3775     if (g_Derict == 1)//左倾
        LDR.N    R0,??DataTable31_18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ProcessCrossing_67
// 3776     {
// 3777       pos=20;
        MOVS     R0,#+20
        B.N      ??ProcessCrossing_68
// 3778       while (ValidLineR[pos]==0)
// 3779       {
// 3780         pos++;
??ProcessCrossing_69:
        ADDS     R0,R0,#+1
// 3781       }
??ProcessCrossing_68:
        LDR.N    R1,??DataTable31_22
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDRB     R1,[R0, R1]
        CMP      R1,#+0
        BEQ.N    ??ProcessCrossing_69
// 3782       while(ValidLineR[pos]==1)
??ProcessCrossing_70:
        LDR.N    R1,??DataTable31_22
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDRB     R1,[R0, R1]
        CMP      R1,#+1
        BNE.N    ??ProcessCrossing_71
// 3783       {
// 3784         pos++;
        ADDS     R0,R0,#+1
        B.N      ??ProcessCrossing_70
// 3785       }
// 3786       startPos = pos-2;
??ProcessCrossing_71:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        SUBS     R1,R0,#+2
// 3787       pos += 8;
        ADDS     R0,R0,#+8
        B.N      ??ProcessCrossing_72
// 3788       while (pos < RowMax-1 && (ValidLineR[pos] == 0 || RightBlack[pos] > ColumnMax-3 ))
// 3789       {
// 3790         pos++;
??ProcessCrossing_73:
        ADDS     R0,R0,#+1
// 3791       }
??ProcessCrossing_72:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+99
        BGE.N    ??ProcessCrossing_74
        LDR.N    R2,??DataTable31_22
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDRB     R2,[R0, R2]
        CMP      R2,#+0
        BEQ.N    ??ProcessCrossing_73
        LDR.N    R2,??DataTable29_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R2,[R2, R0, LSL #+2]
        CMP      R2,#+88
        BGE.N    ??ProcessCrossing_73
// 3792       endPos = pos+4;
??ProcessCrossing_74:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R0,#+4
// 3793       // 
// 3794       // 			str.Format("startPos:%d. endPos %d\r\n",startPos,endPos);
// 3795       // 			fprintf(pfile,str);
// 3796       //if (RightBlack[pos-1] < 40)
// 3797       //			if(endPos-startPos<30)
// 3798       {
// 3799         CommonRectificate(&RightBlack[0],startPos,endPos);
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable29_1
        BL       CommonRectificate
// 3800         ProcessFlag = 1;
        MOVS     R9,#+1
        B.N      ??ProcessCrossing_54
// 3801       }
// 3802     }
// 3803     else if (g_Derict == 2)
??ProcessCrossing_67:
        LDR.N    R0,??DataTable31_18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??ProcessCrossing_54
// 3804     {
// 3805       pos=20;
        MOVS     R0,#+20
        B.N      ??ProcessCrossing_75
// 3806       while (ValidLineL[pos]==0)
// 3807       {
// 3808         pos++;
??ProcessCrossing_76:
        ADDS     R0,R0,#+1
// 3809       }
??ProcessCrossing_75:
        LDR.N    R1,??DataTable31_25
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDRB     R1,[R0, R1]
        CMP      R1,#+0
        BEQ.N    ??ProcessCrossing_76
// 3810       while(ValidLineL[pos]==1)
??ProcessCrossing_77:
        LDR.N    R1,??DataTable31_25
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDRB     R1,[R0, R1]
        CMP      R1,#+1
        BNE.N    ??ProcessCrossing_78
// 3811       {
// 3812         pos++;
        ADDS     R0,R0,#+1
        B.N      ??ProcessCrossing_77
// 3813       }
// 3814       startPos = pos-2;
??ProcessCrossing_78:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        SUBS     R1,R0,#+2
// 3815       pos += 8;
        ADDS     R0,R0,#+8
        B.N      ??ProcessCrossing_79
// 3816       while (pos < RowMax-1 && (ValidLineL[pos] == 0 || LeftBlack[pos] < 3 ))
// 3817       {
// 3818         pos++;
??ProcessCrossing_80:
        ADDS     R0,R0,#+1
// 3819       }
??ProcessCrossing_79:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+99
        BGE.N    ??ProcessCrossing_81
        LDR.N    R2,??DataTable31_25
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDRB     R2,[R0, R2]
        CMP      R2,#+0
        BEQ.N    ??ProcessCrossing_80
        LDR.N    R2,??DataTable29
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R2,[R2, R0, LSL #+2]
        CMP      R2,#+3
        BLT.N    ??ProcessCrossing_80
// 3820       endPos = pos+4;
??ProcessCrossing_81:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R0,#+4
// 3821       // 			str.Format("startPos:%d. endPos %d\r\n",startPos,endPos);
// 3822       // 			fprintf(pfile,str);
// 3823       //if (RightBlack[pos-1] < 40)
// 3824       //			if(endPos-startPos<30)
// 3825       {
// 3826         CommonRectificate(&LeftBlack[0],startPos,endPos);
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable29
        BL       CommonRectificate
// 3827         ProcessFlag = 1;
        MOVS     R9,#+1
// 3828       }
// 3829     }
// 3830   }
// 3831   
// 3832   if (ProcessFlag == 0)
??ProcessCrossing_54:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+0
        BNE.N    ??ProcessCrossing_82
// 3833   {	
// 3834     IsCrossing = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable31_4
        STRB     R0,[R1, #+0]
// 3835     return;
        B.N      ??ProcessCrossing_19
// 3836   }
// 3837 #endif
// 3838 }
??ProcessCrossing_82:
??ProcessCrossing_19:
        POP      {R0,R4-R11,PC}   ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29:
        DC32     LeftBlack

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_1:
        DC32     RightBlack
// 3839 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3840 void Rectification(unsigned char begin,unsigned char end)
// 3841 {
Rectification:
        PUSH     {R3-R5,LR}
        MOVS     R4,R1
// 3842   unsigned char MidPos = (begin+end)/2;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UXTAB    R1,R4,R0
        MOVS     R2,#+2
        SDIV     R5,R1,R2
// 3843   if (end > RowMax-1)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+100
        BLT.N    ??Rectification_0
// 3844   {
// 3845     end = RowMax-1;
        MOVS     R4,#+99
// 3846   }
// 3847   if (begin == end)
??Rectification_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R0,R4
        BNE.N    ??Rectification_1
// 3848   {
// 3849     //		ThresholdData[begin][BlackLineData[begin]]=White;
// 3850     BlackLineData[begin] = (BlackLineData[begin-1]+BlackLineData[begin+1])/2;
        LDR.N    R1,??DataTable31
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R1,R0, LSL #+2
        LDR      R1,[R1, #-4]
        LDR.N    R2,??DataTable31
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+2
        LDR      R2,[R2, #+4]
        ADDS     R1,R2,R1
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        LDR.N    R2,??DataTable31
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R1,[R2, R0, LSL #+2]
        B.N      ??Rectification_2
// 3851     // 		str.Format("补偿%d:%d  \r\n",n++,begin);
// 3852     // 		fprintf(pfile,str);
// 3853     //		ThresholdData[begin][BlackLineData[begin]]=128;
// 3854   }
// 3855   else if(begin < end)
??Rectification_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R0,R4
        BCS.N    ??Rectification_2
// 3856   {	
// 3857     //		ThresholdData[MidPos][BlackLineData[MidPos]]=White;
// 3858     BlackLineData[MidPos] = (BlackLineData[begin]+BlackLineData[end])/2;
        LDR.N    R1,??DataTable31
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R1,[R1, R0, LSL #+2]
        LDR.N    R2,??DataTable31
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R2,[R2, R4, LSL #+2]
        ADDS     R1,R2,R1
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        LDR.N    R2,??DataTable31
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R1,[R2, R5, LSL #+2]
// 3859     // 		str.Format("补偿%d:%d  \r\n",n++,MidPos);
// 3860     // 		fprintf(pfile,str);
// 3861     //		ThresholdData[MidPos][BlackLineData[MidPos]]=128;
// 3862     if (begin+1 < MidPos)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R1,R0,#+1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R1,R5
        BGE.N    ??Rectification_3
// 3863     {
// 3864       Rectification(begin,MidPos);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Rectification
// 3865     }
// 3866     if (MidPos+1 < end)
??Rectification_3:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R5,#+1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R0,R4
        BGE.N    ??Rectification_2
// 3867     {
// 3868       Rectification(MidPos,end);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Rectification
// 3869     }
// 3870   }
// 3871 }
??Rectification_2:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3872 void RectificationMidLine()
// 3873 {
RectificationMidLine:
        PUSH     {R7,LR}
// 3874   int iStart = RowMax - (StableNumbers+CompensateCount-12),iEnd=iStart+CompensateCount+5;
        LDR.N    R0,??DataTable31_5
        LDR      R0,[R0, #+0]
        RSBS     R0,R0,#+100
        LDR.N    R1,??DataTable31_27
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        ADDS     R0,R0,#+12
        LDR.N    R1,??DataTable31_27
        LDR      R1,[R1, #+0]
        ADDS     R1,R1,R0
        ADDS     R1,R1,#+5
// 3875   Rectification(iStart,iEnd);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Rectification
// 3876 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31:
        DC32     BlackLineData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_1:
        DC32     StableNumbers2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_2:
        DC32     TripPointPos

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_3:
        DC32     SubValue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_4:
        DC32     IsCrossing

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_5:
        DC32     StableNumbers

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_6:
        DC32     endline

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_7:
        DC32     LCrossingTripPos

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_8:
        DC32     RCrossingTripPos

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_9:
        DC32     bFoundTripPoint

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_10:
        DC32     fs

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_11:
        DC32     0x40a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_12:
        DC32     ?_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_13:
        DC32     0x400ea000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_14:
        DC32     sa

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_15:
        DC32     LineType

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_16:
        DC32     BlackEndL

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_17:
        DC32     BlackEndR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_18:
        DC32     g_Derict

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_19:
        DC32     NoValidMax

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_20:
        DC32     WhiteRow

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_21:
        DC32     ValidLine

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_22:
        DC32     ValidLineR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_23:
        DC32     ThresholdData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_24:
        DC32     NoValidLMax

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_25:
        DC32     ValidLineL

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_26:
        DC32     NoValidRMax

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_27:
        DC32     CompensateCount

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_1:
        DATA
        DC8 "\277\252\267\242"
        DC8 0, 0, 0

        END
// 3877 
// 3878 
// 3879 //
// 3880 ////平滑左右边缘线
// 3881 //void SmoothLeftRight()
// 3882 //{
// 3883 //	unsigned char i = 20;
// 3884 //	unsigned char end = 0,end1=0;
// 3885 //	unsigned char iCount = 0;
// 3886 //	int sum = 0;
// 3887 //	
// 3888 //	//右边缘补线
// 3889 //	while (i < RowMax && (ValidLine[i] == 0 || ValidLine[i] == 1)){i++;}
// 3890 //	sum=0;
// 3891 //	while ((ValidLine[i] == 3 || ValidLine[i] == 2) && fabss(RightBlack[i]-RightBlack[i+1]) < 3 && i < RowMax)
// 3892 //	{
// 3893 //		iCount++;
// 3894 //		sum += (RightBlack[i]-RightBlack[i+1]);
// 3895 //		i++;
// 3896 //	}
// 3897 //	if (iCount > 5)
// 3898 //	{
// 3899 //		end = i-1;
// 3900 //		
// 3901 //// 		str.Format("start:%d  end:%d  sum:%d iCount:%d\r\n",start,end,sum,iCount);
// 3902 //// 		fprintf(pfile,str);
// 3903 //		
// 3904 //		end1 = RightBlack[end] - (RowMax-end)*sum/iCount;
// 3905 //		
// 3906 //// 		str.Format("补偿点0:%d\r\n",end1);
// 3907 //// 		fprintf(pfile,str);
// 3908 //		
// 3909 //		RightBlack[RowMax-1] = end1;
// 3910 //		CommonRectificate(&RightBlack[0],end,RowMax-1);
// 3911 //	}
// 3912 //
// 3913 //	i=20;
// 3914 //
// 3915 //	//左边缘补线
// 3916 //	while (i < RowMax && (ValidLine[i] == 0 || ValidLine[i] == 2))
// 3917 //	{
// 3918 //		i++;
// 3919 //	}
// 3920 //	iCount=0;
// 3921 //	sum=0;
// 3922 //	while ((ValidLine[i] == 3 || ValidLine[i] == 1) && fabss(LeftBlack[i]-LeftBlack[i+1]) < 3 && i < RowMax)
// 3923 //	{
// 3924 //		iCount++;
// 3925 //		sum += (LeftBlack[i]-LeftBlack[i+1]);
// 3926 //		i++;
// 3927 //	}
// 3928 //	if (iCount > 5)
// 3929 //	{
// 3930 //		end = i-1;
// 3931 //		
// 3932 //// 		str.Format("start1:%d  end1:%d  sum1:%d iCount1:%d\r\n",start,end,sum,iCount);
// 3933 //// 		fprintf(pfile,str);
// 3934 //		
// 3935 //		end1 = LeftBlack[end] - (RowMax-end)*sum/iCount;
// 3936 //		
// 3937 //// 		str.Format("补偿点1:%d\r\n",end1);
// 3938 //// 		fprintf(pfile,str);
// 3939 //		
// 3940 //		LeftBlack[RowMax-1] = end1;
// 3941 //		CommonRectificate(&LeftBlack[0],end,RowMax-1);
// 3942 //	}	
// 3943 //}
// 3944 //
// 
//  3 839 bytes in section .bss
//     43 bytes in section .data
//     24 bytes in section .rodata
// 19 970 bytes in section .text
// 
// 19 970 bytes of CODE  memory
//     24 bytes of CONST memory
//  3 882 bytes of DATA  memory
//
//Errors: none
//Warnings: 38

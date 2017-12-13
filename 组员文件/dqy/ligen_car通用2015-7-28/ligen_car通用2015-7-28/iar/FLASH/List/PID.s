///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       27/Jul/2015  23:36:04
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-27-3.54\app\PID.c
//    Command line =  
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-27-3.54\app\PID.c
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
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-27-3.54\iar\FLASH\List\PID.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN MotorSpeed
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_dmul
        EXTERN __aeabi_dsub
        EXTERN __aeabi_f2d
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2d
        EXTERN __aeabi_i2f
        EXTERN bm_z
        EXTERN duoji

        PUBLIC DirectLeft
        PUBLIC DirectRight
        PUBLIC MotorPID
        PUBLIC MotorPidCal
        PUBLIC Showdirect
        PUBLIC SpeedPid_D
        PUBLIC SpeedPid_I
        PUBLIC SpeedPid_P
        PUBLIC SteerPID
        PUBLIC SteerPidCal
        PUBLIC lastDirect

// C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-27-3.54\app\PID.c
//    1 /*============================================================================
//    2 文件名称：PID.c
//    3 功能概要：MCF52255 PID
//    4 =============================================================================*/
//    5 #include "sys.h"              
//    6 #include "PID.h"
//    7 
//    8 #include <stdlib.h>
//    9 #include <math.h>
//   10 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   11 float DirectLeft=(DirectMiddle-80);// 900	  //舵机右值
DirectLeft:
        DATA
        DC32 44238000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   12 float DirectRight=(DirectMiddle+80); //2100舵机左值
DirectRight:
        DATA
        DC32 444B8000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   13 float SpeedPid_P = 30;
SpeedPid_P:
        DATA
        DC32 41F00000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   14 float SpeedPid_I = 1.8;
SpeedPid_I:
        DATA
        DC32 3FE66666H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   15 float SpeedPid_D = 10.0;
SpeedPid_D:
        DATA
        DC32 41200000H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   16 int Showdirect=0;
Showdirect:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   17 uint16 lastDirect=0;
lastDirect:
        DS8 2
//   18 
//   19 /*============================================================================
//   20 函数名称：SteerPID
//   21 函数返回：无
//   22 参数说明：       
//   23 功能概要：舵机PID函数
//   24 =============================================================================*/
//   25 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   26  SteetPidStruct SteerPID;
SteerPID:
        DS8 16
//   27  

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   28  MotorPidStruct MotorPID;
MotorPID:
        DS8 36
//   29 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   30 uint16 SteerPidCal(float _excursion)
//   31 {     
SteerPidCal:
        PUSH     {R4-R6,LR}
//   32 	int16 Direct  = 0; 
        MOVS     R4,#+0
//   33 	int16 LDirect = 0;
        MOVS     R5,#+0
//   34 	
//   35         
//   36 
//   37 SteerPID.Kp =1;
        MOVS     R1,#+1065353216
        LDR.N    R2,??DataTable1
        STR      R1,[R2, #+0]
//   38 SteerPID.Kd = 0.3;
        LDR.N    R1,??DataTable1_1  ;; 0x3e99999a
        LDR.N    R2,??DataTable1
        STR      R1,[R2, #+4]
//   39 
//   40 	
//   41 	SteerPID.e0 = _excursion;
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable1
        STRH     R0,[R1, #+8]
//   42 	duoji=SteerPID.Kp;
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable1_2
        STR      R0,[R1, #+0]
//   43  Direct = (uint16)(DirectMiddle-SteerPID.Kp*SteerPID.e0 - SteerPID.Kd*(SteerPID.e1-SteerPID.e2) );
        LDR.N    R0,??DataTable1
        LDRSH    R0,[R0, #+8]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable1
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR.N    R0,??DataTable1_3  ;; 0x44378000
        BL       __aeabi_fsub
        MOVS     R6,R0
        LDR.N    R0,??DataTable1
        LDRSH    R0,[R0, #+10]
        LDR.N    R1,??DataTable1
        LDRSH    R1,[R1, #+12]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable1
        LDR      R1,[R1, #+4]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R6
        BL       __aeabi_fsub
        BL       __aeabi_f2iz
        MOVS     R4,R0
//   44 
//   45 
//   46  if(Direct < DirectLeft)
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        MOVS     R0,R4
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable1_4
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??SteerPidCal_0
//   47 	{
//   48 		Direct = DirectLeft;	
        LDR.N    R0,??DataTable1_4
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        MOVS     R4,R0
        B.N      ??SteerPidCal_1
//   49 	}
//   50 	else if(Direct > DirectRight)
??SteerPidCal_0:
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        MOVS     R0,R4
        BL       __aeabi_i2f
        MOVS     R1,R0
        LDR.N    R0,??DataTable1_5
        LDR      R0,[R0, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??SteerPidCal_1
//   51 	{
//   52 		Direct = DirectRight;	
        LDR.N    R0,??DataTable1_5
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        MOVS     R4,R0
//   53 	}
//   54 	Showdirect=Direct;
??SteerPidCal_1:
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDR.N    R0,??DataTable1_6
        STR      R4,[R0, #+0]
//   55 	SteerPID.e2 = SteerPID.e1;
        LDR.N    R0,??DataTable1
        LDRH     R0,[R0, #+10]
        LDR.N    R1,??DataTable1
        STRH     R0,[R1, #+12]
//   56 	SteerPID.e1 = SteerPID.e0;
        LDR.N    R0,??DataTable1
        LDRH     R0,[R0, #+8]
        LDR.N    R1,??DataTable1
        STRH     R0,[R1, #+10]
//   57 	lastDirect=Direct;
        LDR.N    R0,??DataTable1_7
        STRH     R4,[R0, #+0]
//   58         
//   59 
//   60         
//   61 	return Direct;
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4-R6,PC}       ;; return
//   62 }
//   63 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   64 int32 MotorPidCal(uint16 SpeedSet)         
//   65 {    MotorSpeed=bm_z;
MotorPidCal:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        LDR.N    R0,??DataTable1_8
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable1_9
        STRB     R0,[R1, #+0]
//   66 	MotorPID.e2 = MotorPID.e1;
        LDR.N    R0,??DataTable1_10
        LDR      R0,[R0, #+16]
        LDR.N    R1,??DataTable1_10
        STR      R0,[R1, #+20]
//   67 	MotorPID.e1 = MotorPID.e0;
        LDR.N    R0,??DataTable1_10
        LDR      R0,[R0, #+12]
        LDR.N    R1,??DataTable1_10
        STR      R0,[R1, #+16]
//   68 	MotorPID.e0 = SpeedSet-MotorSpeed;
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LDR.N    R0,??DataTable1_9
        LDRB     R0,[R0, #+0]
        SUBS     R0,R4,R0
        LDR.N    R1,??DataTable1_10
        STR      R0,[R1, #+12]
//   69        
//   70 //	
//   71 	MotorPID.Kp = SpeedPid_P;//12.0;
        LDR.N    R0,??DataTable1_11
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_10
        STR      R0,[R1, #+0]
//   72 	MotorPID.Ki = SpeedPid_I;//0.5;
        LDR.N    R0,??DataTable1_12
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_10
        STR      R0,[R1, #+4]
//   73 	MotorPID.Kd = SpeedPid_D;//7.0;
        LDR.N    R0,??DataTable1_13
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_10
        STR      R0,[R1, #+8]
//   74 
//   75 //	MotorPID.Kp = 12.0;//30;
//   76 //	MotorPID.Ki = 0.5;//1.8;
//   77 //	MotorPID.Kd = 7.0;//10.0;
//   78 
//   79 	MotorPID.DefaultSum = MotorPID.Kp*(MotorPID.e0-MotorPID.e1) + MotorPID.Ki*MotorPID.e0 + MotorPID.Kd*(MotorPID.e0 - 2.0*MotorPID.e1 + MotorPID.e2);
        LDR.N    R0,??DataTable1_10
        LDR      R0,[R0, #+12]
        LDR.N    R1,??DataTable1_10
        LDR      R1,[R1, #+16]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable1_10
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.N    R0,??DataTable1_10
        LDR      R0,[R0, #+12]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable1_10
        LDR      R1,[R1, #+4]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        BL       __aeabi_f2d
        MOV      R8,R0
        MOV      R9,R1
        LDR.N    R0,??DataTable1_10
        LDR      R0,[R0, #+8]
        BL       __aeabi_f2d
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.N    R0,??DataTable1_10
        LDR      R0,[R0, #+12]
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable1_10
        LDR      R0,[R0, #+16]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        MOVS     R3,#+1073741824
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_dsub
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable1_10
        LDR      R0,[R0, #+20]
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable1_10
        STR      R0,[R1, #+28]
//   80 	    
//   81 	MotorPID.Sum += MotorPID.DefaultSum;
        LDR.N    R0,??DataTable1_10
        LDR      R0,[R0, #+24]
        LDR.N    R1,??DataTable1_10
        LDR      R1,[R1, #+28]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable1_10
        STR      R0,[R1, #+24]
//   82 	if(MotorPID.Sum > MotorMax)
        LDR.N    R0,??DataTable1_10
        LDR      R0,[R0, #+24]
        CMP      R0,#+8000
        BLE.N    ??MotorPidCal_0
//   83 		MotorPID.Sum = MotorMax;
        MOV      R0,#+8000
        LDR.N    R1,??DataTable1_10
        STR      R0,[R1, #+24]
//   84 	
//   85 	if(MotorPID.Sum < MotorMin)
??MotorPidCal_0:
        LDR.N    R0,??DataTable1_10
        LDR      R0,[R0, #+24]
        CMN      R0,#+8000
        BGE.N    ??MotorPidCal_1
//   86 	  	MotorPID.Sum = MotorMin;
        LDR.N    R0,??DataTable1_14  ;; 0xffffe0c0
        LDR.N    R1,??DataTable1_10
        STR      R0,[R1, #+24]
//   87 	
//   88 //	  	if(MotorPID.Sum<MotorMin)
//   89 //		{
//   90 //			LED3_On;
//   91 //	  		MotorPID.Sum = MotorMin;
//   92 //	  	}
//   93 
//   94 	 return MotorPID.Sum;
??MotorPidCal_1:
        LDR.N    R0,??DataTable1_10
        LDR      R0,[R0, #+24]
        POP      {R1,R4-R9,PC}    ;; return
//   95 }              

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     SteerPID

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0x3e99999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     duoji

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0x44378000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     DirectLeft

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     DirectRight

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     Showdirect

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     lastDirect

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     bm_z

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DC32     MotorSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DC32     MotorPID

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_11:
        DC32     SpeedPid_P

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_12:
        DC32     SpeedPid_I

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_13:
        DC32     SpeedPid_D

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_14:
        DC32     0xffffe0c0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   96 
//   97 
// 
//  58 bytes in section .bss
//  20 bytes in section .data
// 538 bytes in section .text
// 
// 538 bytes of CODE memory
//  78 bytes of DATA memory
//
//Errors: none
//Warnings: 7

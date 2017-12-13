///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       25/Jul/2015  16:58:12
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\lib\LPLD\HW\HW_PDB.c
//    Command line =  
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\lib\LPLD\HW\HW_PDB.c
//        -D LPLD_K60 -D USE_K60F12 -lCN
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_carͨ��7-23-20.36\iar\FLASH\List\
//        -lB
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_carͨ��7-23-20.36\iar\FLASH\List\
//        -o
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_carͨ��7-23-20.36\iar\FLASH\Obj\
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4F -e --fpu=None --dlib_config "C:\Program Files\IAR
//        Systems\Embedded Workbench 7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_carͨ��7-23-20.36\iar\..\app\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_carͨ��7-23-20.36\iar\..\..\..\lib\CPU\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_carͨ��7-23-20.36\iar\..\..\..\lib\common\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_carͨ��7-23-20.36\iar\..\..\..\lib\LPLD\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_carͨ��7-23-20.36\iar\..\..\..\lib\LPLD\HW\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_carͨ��7-23-20.36\iar\..\..\..\lib\LPLD\DEV\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_carͨ��7-23-20.36\iar\..\..\..\lib\LPLD\FUNC\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_carͨ��7-23-20.36\iar\..\..\..\lib\uCOS-II\Ports\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_carͨ��7-23-20.36\iar\..\..\..\lib\uCOS-II\Source\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_carͨ��7-23-20.36\iar\..\..\..\lib\FatFs\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_carͨ��7-23-20.36\iar\..\..\..\lib\FatFs\option\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_carͨ��7-23-20.36\iar\..\..\..\lib\USB\common\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_carͨ��7-23-20.36\iar\..\..\..\lib\USB\driver\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_carͨ��7-23-20.36\iar\..\..\..\lib\USB\descriptor\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_carͨ��7-23-20.36\iar\..\..\..\lib\USB\class\
//        -Ol -I "C:\Program Files\IAR Systems\Embedded Workbench
//        7.0\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    List file    =  
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_carͨ��7-23-20.36\iar\FLASH\List\HW_PDB.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_f2uiz
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_ui2f
        EXTERN g_bus_clock

        PUBLIC LPLD_PDB_AdcTriggerCfg
        PUBLIC LPLD_PDB_DacTriggerCfg
        PUBLIC LPLD_PDB_Deinit
        PUBLIC LPLD_PDB_Init
        PUBLIC PDB_IRQHandler
        PUBLIC PDB_ISR
        PUBLIC PDB_SE_ISR
        PUBLIC pdb_sc_mults

// C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\lib\LPLD\HW\HW_PDB.c
//    1 /**
//    2  * @file HW_PDB.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief PDB�ײ�ģ����غ���
//    6  *
//    7  * ���Ľ���:�������޸�
//    8  *
//    9  * ��Ȩ����:�����������µ��Ӽ������޹�˾
//   10  * http://www.lpld.cn
//   11  * mail:support@lpld.cn
//   12  *
//   13  * @par
//   14  * ����������������[LPLD]������ά������������ʹ���߿���Դ���롣
//   15  * �����߿���������ʹ�û��Դ���롣�����μ�����ע��Ӧ���Ա�����
//   16  * ���ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߡ�
//   17  * ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
//   18  * �������²���������ʹ�ñ��������������κ��¹ʡ��������λ���ز���Ӱ�졣
//   19  * ����������������͡�˵��������ľ���ԭ�����ܡ�ʵ�ַ�����
//   20  * ������������[LPLD]��Ȩ�������߲��ý�������������ҵ��Ʒ��
//   21  */
//   22 #include "common.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_DisableIRQ(IRQn_Type)
NVIC_DisableIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        LDR.W    R2,??DataTable5  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return
//   23 #include "HW_PDB.h"
//   24 
//   25 //�û��Զ����жϷ���������

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   26 PDB_ISR_CALLBACK PDB_ISR[1];
PDB_ISR:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   27 PDB_ISR_CALLBACK PDB_SE_ISR[1];
PDB_SE_ISR:
        DS8 4
//   28 
//   29 //PDBʱ��Ԥ��Ƶϵ������

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   30 const uint8 pdb_sc_mults[4] = {1, 10, 20, 40};
pdb_sc_mults:
        DATA
        DC8 1, 10, 20, 40
//   31 
//   32 
//   33 /*
//   34  * LPLD_PDB_Init
//   35  * PDBxģ��ͨ�ó�ʼ����������ʼ��PDBx���������ڡ�����ģʽ������Դ���жϵ�����
//   36  * 
//   37  * ����:
//   38  *    pdb_init_struct--PDBx��ʼ���ṹ�壬
//   39  *                        ���嶨���PDB_InitTypeDef
//   40  *
//   41  * ���:
//   42  *    0--���ô���
//   43  *    1--���óɹ�
//   44  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   45 uint8 LPLD_PDB_Init(PDB_InitTypeDef pdb_init_struct)
//   46 {
LPLD_PDB_Init:
        PUSH     {R0-R3}
        PUSH     {R3-R9,LR}
//   47   uint32 us = pdb_init_struct.PDB_CounterPeriodUs
//   48             + pdb_init_struct.PDB_CounterPeriodMs*1000
//   49             + pdb_init_struct.PDB_CounterPeriodS*1000000;
        LDR      R0,[SP, #+32]
        LDR      R1,[SP, #+36]
        MOV      R2,#+1000
        MLA      R0,R2,R1,R0
        LDR      R1,[SP, #+40]
        LDR.W    R2,??DataTable5_1  ;; 0xf4240
        MLA      R4,R2,R1,R0
//   50   uint32 delayus = pdb_init_struct.PDB_DelayUs
//   51             + pdb_init_struct.PDB_DelayMs*1000
//   52             + pdb_init_struct.PDB_DelayS*1000000;
        LDR      R0,[SP, #+52]
        LDR      R1,[SP, #+56]
        MOV      R2,#+1000
        MLA      R0,R2,R1,R0
        LDR      R1,[SP, #+60]
        LDR.W    R2,??DataTable5_1  ;; 0xf4240
        MLA      R5,R2,R1,R0
//   53   uint8 loadmode = pdb_init_struct.PDB_LoadModeSel;
        LDRB     R1,[SP, #+44]
//   54   uint8 trriger = pdb_init_struct.PDB_TriggerInputSourceSel;
        LDRB     R2,[SP, #+45]
//   55   uint32 bus_clk = g_bus_clock/1000000;
        LDR.W    R0,??DataTable5_2
        LDR      R0,[R0, #+0]
        LDR.W    R3,??DataTable5_1  ;; 0xf4240
        UDIV     R3,R0,R3
//   56   uint8 prescaler, mult;
//   57   uint32 mod;
//   58   float32 temp;
//   59   
//   60   //�������
//   61   ASSERT( loadmode <= LOADMODE_3 );       //����ģʽѡ��
//   62   ASSERT( trriger <= TRIGGER_SOFTWARE );  //��������Դѡ��
//   63   
//   64 /*
//   65  *************************************************
//   66   ��LPLDע�⡿PDB�ؼ�ϵ��
//   67   prescaler(����ʱ��Ԥ��Ƶϵ��): 2^n(n:0~7)
//   68   mult(prescaler�ı���): 1��10��20��40
//   69   mod(������ģ����Ӱ�����������): 0~0xFFFF
//   70   ���������� = (prescaler*mult*mod)/bus_clk
//   71  *************************************************
//   72  */
//   73   
//   74   //���������ļ����������Զ��趨prescaler��mult��mod��ֵ
//   75   for(uint8 i=0; i<4; i++)
        MOVS     R6,#+0
        B.N      ??LPLD_PDB_Init_0
??LPLD_PDB_Init_1:
        ADDS     R6,R6,#+1
??LPLD_PDB_Init_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+4
        BGE.N    ??LPLD_PDB_Init_2
//   76   {
//   77     mult = i;
        MOVS     R7,R6
//   78     for(uint8 j=0; j<8; j++)
        MOVS     R12,#+0
        B.N      ??LPLD_PDB_Init_3
??LPLD_PDB_Init_4:
        ADDS     R12,R12,#+1
??LPLD_PDB_Init_3:
        UXTB     R12,R12          ;; ZeroExt  R12,R12,#+24,#+24
        CMP      R12,#+8
        BGE.N    ??LPLD_PDB_Init_5
//   79     {
//   80       prescaler = j;
        MOV      LR,R12
//   81       mod = (bus_clk*us)/((1<<j)*pdb_sc_mults[i]);
        MUL      R0,R4,R3
        MOVS     R8,#+1
        LSLS     R8,R8,R12
        LDR.W    R9,??DataTable5_3
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R9,[R6, R9]
        MUL      R8,R9,R8
        UDIV     R0,R0,R8
//   82       if(mod <= 0xFFFFu)
        CMP      R0,#+65536
        BCS.N    ??LPLD_PDB_Init_4
//   83         break;
//   84     }
//   85     if(mod <= 0xFFFFu)
??LPLD_PDB_Init_5:
        CMP      R0,#+65536
        BCS.N    ??LPLD_PDB_Init_6
//   86       break;
//   87     else if(i == 3)
//   88       return 0;         //PDB�����������õĹ�С���������
//   89   }
//   90   
//   91   //ʹ��PDBʱ��
//   92   SIM->SCGC6 |= SIM_SCGC6_PDB_MASK;
??LPLD_PDB_Init_2:
        LDR.W    R3,??DataTable5_4  ;; 0x4004803c
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x400000
        LDR.W    R6,??DataTable5_4  ;; 0x4004803c
        STR      R3,[R6, #+0]
//   93   
//   94   //��ʼ��SC�Ĵ���
//   95   PDB0->SC = 0x00;
        MOVS     R3,#+0
        LDR.W    R6,??DataTable5_5  ;; 0x40036000
        STR      R3,[R6, #+0]
//   96   //ʹ��PDB
//   97   PDB0->SC |= PDB_SC_PDBEN_MASK;
        LDR.W    R3,??DataTable5_5  ;; 0x40036000
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x80
        LDR.W    R6,??DataTable5_5  ;; 0x40036000
        STR      R3,[R6, #+0]
//   98   PDB0->SC |= PDB_SC_MULT(mult);
        LDR.W    R3,??DataTable5_5  ;; 0x40036000
        LDR      R3,[R3, #+0]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R6,R7,#+2
        ANDS     R6,R6,#0xC
        ORRS     R3,R6,R3
        LDR.W    R6,??DataTable5_5  ;; 0x40036000
        STR      R3,[R6, #+0]
//   99   PDB0->SC |= PDB_SC_PRESCALER(prescaler);
        LDR.N    R3,??DataTable5_5  ;; 0x40036000
        LDR      R3,[R3, #+0]
        UXTB     LR,LR            ;; ZeroExt  LR,LR,#+24,#+24
        LSLS     R6,LR,#+12
        ANDS     R6,R6,#0x7000
        ORRS     R3,R6,R3
        LDR.N    R6,??DataTable5_5  ;; 0x40036000
        STR      R3,[R6, #+0]
//  100   //����MOD��IDLY��CHnDLYm��INTx��POyDLY�Ĵ����ļ���ģʽ
//  101   PDB0->SC |= PDB_SC_LDMOD(loadmode); 
        LDR.N    R3,??DataTable5_5  ;; 0x40036000
        LDR      R3,[R3, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+18
        ANDS     R1,R1,#0xC0000
        ORRS     R1,R1,R3
        LDR.N    R3,??DataTable5_5  ;; 0x40036000
        STR      R1,[R3, #+0]
//  102   //���ô�������Դ
//  103   PDB0->SC |= PDB_SC_TRGSEL(trriger);
        LDR.N    R1,??DataTable5_5  ;; 0x40036000
        LDR      R1,[R1, #+0]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R2,R2,#+8
        ANDS     R2,R2,#0xF00
        ORRS     R1,R2,R1
        LDR.N    R2,??DataTable5_5  ;; 0x40036000
        STR      R1,[R2, #+0]
//  104   
//  105   //�Ƿ�ʹ������ģʽ
//  106   if(pdb_init_struct.PDB_ContinuousModeEnable == TRUE)
        LDRB     R1,[SP, #+46]
        CMP      R1,#+1
        BNE.N    ??LPLD_PDB_Init_7
//  107     PDB0->SC |= PDB_SC_CONT_MASK;
        LDR.N    R1,??DataTable5_5  ;; 0x40036000
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x2
        LDR.N    R2,??DataTable5_5  ;; 0x40036000
        STR      R1,[R2, #+0]
        B.N      ??LPLD_PDB_Init_8
??LPLD_PDB_Init_6:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+3
        BNE.N    ??LPLD_PDB_Init_1
        MOVS     R0,#+0
        B.N      ??LPLD_PDB_Init_9
//  108   else
//  109     PDB0->SC &= ~(PDB_SC_CONT_MASK);
??LPLD_PDB_Init_7:
        LDR.N    R1,??DataTable5_5  ;; 0x40036000
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x2
        LDR.N    R2,??DataTable5_5  ;; 0x40036000
        STR      R1,[R2, #+0]
//  110   
//  111   //�Ƿ�ʹ��DMA
//  112   if(pdb_init_struct.PDB_DmaEnable == TRUE)
??LPLD_PDB_Init_8:
        LDRB     R1,[SP, #+47]
        CMP      R1,#+1
        BNE.N    ??LPLD_PDB_Init_10
//  113     PDB0->SC |= PDB_SC_DMAEN_MASK;
        LDR.N    R1,??DataTable5_5  ;; 0x40036000
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x8000
        LDR.N    R2,??DataTable5_5  ;; 0x40036000
        STR      R1,[R2, #+0]
        B.N      ??LPLD_PDB_Init_11
//  114   else
//  115     PDB0->SC &= ~(PDB_SC_DMAEN_MASK);
??LPLD_PDB_Init_10:
        LDR.N    R1,??DataTable5_5  ;; 0x40036000
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x8000
        LDR.N    R2,??DataTable5_5  ;; 0x40036000
        STR      R1,[R2, #+0]
//  116   
//  117   if(pdb_init_struct.PDB_Isr != NULL)
??LPLD_PDB_Init_11:
        LDR      R1,[SP, #+64]
        CMP      R1,#+0
        BEQ.N    ??LPLD_PDB_Init_12
//  118   {
//  119     PDB_ISR[0] = pdb_init_struct.PDB_Isr;
        LDR      R1,[SP, #+64]
        LDR.N    R2,??DataTable5_6
        STR      R1,[R2, #+0]
//  120     //�Ƿ�ʹ��PDB�ж�
//  121     if(pdb_init_struct.PDB_IntEnable == TRUE)
        LDRB     R1,[SP, #+48]
        CMP      R1,#+1
        BNE.N    ??LPLD_PDB_Init_13
//  122       PDB0->SC |= PDB_SC_PDBIE_MASK;
        LDR.N    R1,??DataTable5_5  ;; 0x40036000
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x20
        LDR.N    R2,??DataTable5_5  ;; 0x40036000
        STR      R1,[R2, #+0]
        B.N      ??LPLD_PDB_Init_12
//  123     else
//  124       PDB0->SC &= ~(PDB_SC_PDBIE_MASK);
??LPLD_PDB_Init_13:
        LDR.N    R1,??DataTable5_5  ;; 0x40036000
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x20
        LDR.N    R2,??DataTable5_5  ;; 0x40036000
        STR      R1,[R2, #+0]
//  125   }
//  126   
//  127   if(pdb_init_struct.PDB_SeqErrIsr != NULL)
??LPLD_PDB_Init_12:
        LDR      R1,[SP, #+68]
        CMP      R1,#+0
        BEQ.N    ??LPLD_PDB_Init_14
//  128   {
//  129     PDB_SE_ISR[0] = pdb_init_struct.PDB_SeqErrIsr;
        LDR      R1,[SP, #+68]
        LDR.N    R2,??DataTable5_7
        STR      R1,[R2, #+0]
//  130     //�Ƿ�ʹ��PDB���д����ж�
//  131     if(pdb_init_struct.PDB_SeqErrIntEnable == TRUE)
        LDRB     R1,[SP, #+49]
        CMP      R1,#+1
        BNE.N    ??LPLD_PDB_Init_15
//  132       PDB0->SC |= PDB_SC_PDBEIE_MASK;
        LDR.N    R1,??DataTable5_5  ;; 0x40036000
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x20000
        LDR.N    R2,??DataTable5_5  ;; 0x40036000
        STR      R1,[R2, #+0]
        B.N      ??LPLD_PDB_Init_14
//  133     else
//  134       PDB0->SC &= ~(PDB_SC_PDBEIE_MASK);
??LPLD_PDB_Init_15:
        LDR.N    R1,??DataTable5_5  ;; 0x40036000
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x20000
        LDR.N    R2,??DataTable5_5  ;; 0x40036000
        STR      R1,[R2, #+0]
//  135   }
//  136   
//  137   //����PDB�ж���ʱʱ��
//  138   if( delayus <= us )
??LPLD_PDB_Init_14:
        CMP      R4,R5
        BCC.N    ??LPLD_PDB_Init_16
//  139   {
//  140     temp = (float32)mod/(float32)us;
        BL       __aeabi_ui2f
        MOVS     R6,R0
        MOVS     R0,R4
        BL       __aeabi_ui2f
        MOVS     R1,R0
        MOVS     R0,R6
        BL       __aeabi_fdiv
        MOVS     R4,R0
//  141     PDB0->IDLY = (uint32)(delayus*temp);
        MOVS     R0,R5
        BL       __aeabi_ui2f
        MOVS     R1,R4
        BL       __aeabi_fmul
        BL       __aeabi_f2uiz
        LDR.N    R1,??DataTable5_8  ;; 0x4003600c
        STR      R0,[R1, #+0]
//  142   }
//  143   
//  144   //����ֵ
//  145   PDB0->SC |= PDB_SC_LDOK_MASK;
??LPLD_PDB_Init_16:
        LDR.N    R0,??DataTable5_5  ;; 0x40036000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable5_5  ;; 0x40036000
        STR      R0,[R1, #+0]
//  146   
//  147   return 1;
        MOVS     R0,#+1
??LPLD_PDB_Init_9:
        POP      {R1,R4-R9}
        LDR      PC,[SP], #+20    ;; return
//  148 }
//  149 
//  150 /*
//  151  * LPLD_PDB_Deinit
//  152  * PDBxģ�鷴��ʼ������������PDBx���й���
//  153  * 
//  154  * ����:
//  155  *    ��
//  156  *
//  157  * ���:
//  158  *    ��
//  159  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  160 void LPLD_PDB_Deinit(void)
//  161 {
LPLD_PDB_Deinit:
        PUSH     {R7,LR}
//  162  
//  163   PDB0->CH[0].C1 = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_9  ;; 0x40036010
        STR      R0,[R1, #+0]
//  164   PDB0->CH[1].C1 = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_10  ;; 0x40036038
        STR      R0,[R1, #+0]
//  165   
//  166   PDB0->DAC[0].INTC = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_11  ;; 0x40036150
        STR      R0,[R1, #+0]
//  167   PDB0->DAC[1].INTC = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_12  ;; 0x40036158
        STR      R0,[R1, #+0]
//  168   
//  169   PDB0->SC = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_5  ;; 0x40036000
        STR      R0,[R1, #+0]
//  170   
//  171   //����PDBʱ��
//  172   SIM->SCGC6 &= ~(SIM_SCGC6_PDB_MASK);
        LDR.N    R0,??DataTable5_4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x400000
        LDR.N    R1,??DataTable5_4  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  173   
//  174   disable_irq(PDB0_IRQn);
        MOVS     R0,#+72
        BL       NVIC_DisableIRQ
//  175 }
        POP      {R0,PC}          ;; return
//  176 
//  177 
//  178 /*
//  179  * LPLD_PDB_AdcTriggerCfg
//  180  * PDBx����ADCxģ�����ú���
//  181  * 
//  182  * ����:
//  183  *    adcx--ADCxģ���
//  184  *      |__ADC0          --ADC0
//  185  *      |__ADC1          --ADC1
//  186  *    cfg--ADCxԤ�����������ã��ɶ��ֵ�ϲ�����(eg. cfg=PRETRIG_EN_A|PRETRIG_DLY_A;)
//  187  *      ADCx A������
//  188  *      |__PRETRIG_EN_A  --ʹ��ADCx��A��Ԥ��������
//  189  *      |__PRETRIG_DLY_A --ʹ��ADCx��A����ʱ���Ԥ��������
//  190  *      |__PRETRIG_BB_A  --ʹ��ADCx��A�顰Back to Back��ģʽ
//  191  *      ADCx B������
//  192  *      |__PRETRIG_EN_B  --ʹ��ADCx��B��Ԥ��������
//  193  *      |__PRETRIG_DLY_B --ʹ��ADCx��B����ʱ���Ԥ��������
//  194  *      |__PRETRIG_BB_B  --ʹ��ADCx��B�顰Back to Back��ģʽ
//  195  *    delay--ADCx A��B�����ʱ���Ԥ����ʱ�䣬��λus
//  196  *      |__0~0xFFFF      --0~4095us
//  197  *
//  198  * ���:
//  199  *    0--���ô���
//  200  *    1--���óɹ�
//  201  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  202 uint8 LPLD_PDB_AdcTriggerCfg(ADC_Type *adcx, uint32 cfg, uint16 delay)
//  203 {
LPLD_PDB_AdcTriggerCfg:
        PUSH     {R4-R7}
//  204   uint8 n,m;
//  205   uint8 prescaler, mult;
//  206   uint32 bus_clk = g_bus_clock/1000000;
        LDR.N    R3,??DataTable5_2
        LDR      R3,[R3, #+0]
        LDR.N    R4,??DataTable5_1  ;; 0xf4240
        UDIV     R3,R3,R4
//  207 
//  208   if(adcx == ADC0)
        LDR.N    R4,??DataTable5_13  ;; 0x4003b000
        CMP      R0,R4
        BNE.N    ??LPLD_PDB_AdcTriggerCfg_0
//  209     n = 0;
        MOVS     R0,#+0
//  210   else if(adcx == ADC1)
//  211     n = 1;
//  212 #if defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  213   else if(adcx == ADC2)
//  214     n = 2;
//  215   else if(adcx == ADC3)
//  216     n = 3;  
//  217 #endif 
//  218   else
//  219     return 0;
//  220     
//  221   if(cfg & 0x01)
??LPLD_PDB_AdcTriggerCfg_1:
        LSLS     R4,R1,#+31
        BPL.N    ??LPLD_PDB_AdcTriggerCfg_2
//  222     m = 0;
        MOVS     R4,#+0
//  223   else if(cfg & 0x02)
//  224     m = 1;
//  225   else
//  226     return 0;
//  227   
//  228   prescaler = 1<<((PDB0->SC & PDB_SC_PRESCALER_MASK) >> PDB_SC_PRESCALER_SHIFT);
??LPLD_PDB_AdcTriggerCfg_3:
        MOVS     R5,#+1
        LDR.N    R6,??DataTable5_5  ;; 0x40036000
        LDR      R6,[R6, #+0]
        LSRS     R6,R6,#+12
        ANDS     R6,R6,#0x7
        LSLS     R5,R5,R6
//  229   mult = pdb_sc_mults[(PDB0->SC & PDB_SC_MULT_MASK) >> PDB_SC_MULT_SHIFT];
        LDR.N    R6,??DataTable5_3
        LDR.N    R7,??DataTable5_5  ;; 0x40036000
        LDR      R7,[R7, #+0]
        UBFX     R7,R7,#+2,#+2
        LDRB     R6,[R7, R6]
//  230   
//  231   PDB0->CH[n].C1 |= cfg;        //���ݲ�������BBģʽ��ѡ��Ԥ���������ʹ��Ԥ����
        LDR.N    R7,??DataTable5_9  ;; 0x40036010
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R12,#+40
        MLA      R7,R12,R0,R7
        LDR      R7,[R7, #+0]
        ORRS     R1,R1,R7
        LDR.N    R7,??DataTable5_9  ;; 0x40036010
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R12,#+40
        MLA      R7,R12,R0,R7
        STR      R1,[R7, #+0]
//  232   PDB0->CH[n].DLY[m] = (bus_clk * delay)/(prescaler * mult);    //����ADCn��m��Ԥ������ʱֵ
        LDR.N    R1,??DataTable5_9  ;; 0x40036010
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R7,#+40
        MLA      R0,R7,R0,R1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R0,R0,R4, LSL #+2
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MUL      R1,R2,R3
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MUL      R2,R6,R5
        UDIV     R1,R1,R2
        STR      R1,[R0, #+8]
//  233   
//  234   PDB0->SC |= PDB_SC_LDOK_MASK; //����ֵ
        LDR.N    R0,??DataTable5_5  ;; 0x40036000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable5_5  ;; 0x40036000
        STR      R0,[R1, #+0]
//  235   
//  236   return 1;
        MOVS     R0,#+1
??LPLD_PDB_AdcTriggerCfg_4:
        POP      {R4-R7}
        BX       LR               ;; return
??LPLD_PDB_AdcTriggerCfg_0:
        LDR.N    R4,??DataTable5_14  ;; 0x400bb000
        CMP      R0,R4
        BNE.N    ??LPLD_PDB_AdcTriggerCfg_5
        MOVS     R0,#+1
        B.N      ??LPLD_PDB_AdcTriggerCfg_1
??LPLD_PDB_AdcTriggerCfg_5:
        LDR.N    R4,??DataTable5_15  ;; 0x4003c000
        CMP      R0,R4
        BNE.N    ??LPLD_PDB_AdcTriggerCfg_6
        MOVS     R0,#+2
        B.N      ??LPLD_PDB_AdcTriggerCfg_1
??LPLD_PDB_AdcTriggerCfg_6:
        LDR.N    R4,??DataTable5_16  ;; 0x400bc000
        CMP      R0,R4
        BNE.N    ??LPLD_PDB_AdcTriggerCfg_7
        MOVS     R0,#+3
        B.N      ??LPLD_PDB_AdcTriggerCfg_1
??LPLD_PDB_AdcTriggerCfg_7:
        MOVS     R0,#+0
        B.N      ??LPLD_PDB_AdcTriggerCfg_4
??LPLD_PDB_AdcTriggerCfg_2:
        LSLS     R4,R1,#+30
        BPL.N    ??LPLD_PDB_AdcTriggerCfg_8
        MOVS     R4,#+1
        B.N      ??LPLD_PDB_AdcTriggerCfg_3
??LPLD_PDB_AdcTriggerCfg_8:
        MOVS     R0,#+0
        B.N      ??LPLD_PDB_AdcTriggerCfg_4
//  237 }
//  238 
//  239 /*
//  240  * LPLD_PDB_DacTriggerCfg
//  241  * PDBx����DACxģ�����ú���
//  242  * 
//  243  * ����:
//  244  *    dacx--DACxģ���
//  245  *      |__DAC0          --DAC0
//  246  *      |__DAC1          --DAC1
//  247  *    cfg--DACx������������
//  248  *      |__EXT_TRIG_EN   --ʹ���ⲿ����
//  249  *      |__EINT_TRIG_EN  --ʹ���ڲ��������
//  250  *    int_delay--DACx�������ʱ�䣬��λus
//  251  *      |__0~0xFFFF      --0~4095us
//  252  *
//  253  * ���:
//  254  *    0--���ô���
//  255  *    1--���óɹ�
//  256  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  257 uint8 LPLD_PDB_DacTriggerCfg(DAC_Type *dacx, uint32 cfg, uint16 int_delay)
//  258 {
LPLD_PDB_DacTriggerCfg:
        PUSH     {R4-R6}
//  259   uint8 n;
//  260   uint8 prescaler, mult;
//  261   uint32 bus_clk = g_bus_clock/1000000;
        LDR.N    R3,??DataTable5_2
        LDR      R3,[R3, #+0]
        LDR.N    R4,??DataTable5_1  ;; 0xf4240
        UDIV     R3,R3,R4
//  262   
//  263   if(dacx == DAC0)
        LDR.N    R4,??DataTable5_17  ;; 0x400cc000
        CMP      R0,R4
        BNE.N    ??LPLD_PDB_DacTriggerCfg_0
//  264     n = 0;
        MOVS     R0,#+0
//  265   else if(dacx == DAC1)
//  266     n = 1;
//  267   else
//  268     return 0;
//  269   
//  270   prescaler = 1<<((PDB0->SC & PDB_SC_PRESCALER_MASK) >> PDB_SC_PRESCALER_SHIFT);
??LPLD_PDB_DacTriggerCfg_1:
        MOVS     R4,#+1
        LDR.N    R5,??DataTable5_5  ;; 0x40036000
        LDR      R5,[R5, #+0]
        LSRS     R5,R5,#+12
        ANDS     R5,R5,#0x7
        LSLS     R4,R4,R5
//  271   mult = pdb_sc_mults[(PDB0->SC & PDB_SC_MULT_MASK) >> PDB_SC_MULT_SHIFT];
        LDR.N    R5,??DataTable5_3
        LDR.N    R6,??DataTable5_5  ;; 0x40036000
        LDR      R6,[R6, #+0]
        UBFX     R6,R6,#+2,#+2
        LDRB     R5,[R6, R5]
//  272   
//  273   PDB0->DAC[n].INTC |= cfg;     //����ʹ���ⲿ���������ڲ��������
        LDR.N    R6,??DataTable5_11  ;; 0x40036150
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R6,[R6, R0, LSL #+3]
        ORRS     R1,R1,R6
        LDR.N    R6,??DataTable5_11  ;; 0x40036150
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R1,[R6, R0, LSL #+3]
//  274   PDB0->DAC[n].INT = (bus_clk * int_delay)/(prescaler * mult);    //����DACn�ļ������ʱ��
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MUL      R1,R2,R3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MUL      R2,R5,R4
        UDIV     R1,R1,R2
        LDR.N    R2,??DataTable5_11  ;; 0x40036150
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R0,R2,R0, LSL #+3
        STR      R1,[R0, #+4]
//  275   
//  276   PDB0->SC |= PDB_SC_LDOK_MASK; //����ֵ
        LDR.N    R0,??DataTable5_5  ;; 0x40036000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable5_5  ;; 0x40036000
        STR      R0,[R1, #+0]
//  277   
//  278   return 1;
        MOVS     R0,#+1
??LPLD_PDB_DacTriggerCfg_2:
        POP      {R4-R6}
        BX       LR               ;; return
??LPLD_PDB_DacTriggerCfg_0:
        LDR.N    R4,??DataTable5_18  ;; 0x400cd000
        CMP      R0,R4
        BNE.N    ??LPLD_PDB_DacTriggerCfg_3
        MOVS     R0,#+1
        B.N      ??LPLD_PDB_DacTriggerCfg_1
??LPLD_PDB_DacTriggerCfg_3:
        MOVS     R0,#+0
        B.N      ??LPLD_PDB_DacTriggerCfg_2
//  279 }
//  280 
//  281 /*
//  282  * PDB�жϴ�����
//  283  * �������ļ�startup_K60.s�е��ж����������
//  284  * �û������޸ģ������Զ������Ӧͨ���жϺ���
//  285  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  286 void PDB_IRQHandler(void)
//  287 {
PDB_IRQHandler:
        PUSH     {R7,LR}
//  288 #if (UCOS_II > 0u)
//  289   OS_CPU_SR  cpu_sr = 0u;
//  290   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  291   OSIntEnter();
//  292   OS_EXIT_CRITICAL();
//  293 #endif
//  294   
//  295   //�Ƿ�ΪPDB�ж�
//  296   if((PDB0->SC & PDB_SC_PDBIF_MASK) && (PDB0->SC & PDB_SC_PDBIE_MASK))
        LDR.N    R0,??DataTable5_5  ;; 0x40036000
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??PDB_IRQHandler_0
        LDR.N    R0,??DataTable5_5  ;; 0x40036000
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??PDB_IRQHandler_0
//  297   {
//  298     //�����û��Զ����жϷ���
//  299     PDB_ISR[0]();  
        LDR.N    R0,??DataTable5_6
        LDR      R0,[R0, #+0]
        BLX      R0
//  300     //����жϱ�־λ  
//  301     PDB0->SC &= ~PDB_SC_PDBIF_MASK;
        LDR.N    R0,??DataTable5_5  ;; 0x40036000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40
        LDR.N    R1,??DataTable5_5  ;; 0x40036000
        STR      R0,[R1, #+0]
//  302   }
//  303   
//  304   //�Ƿ�ΪPDB���д����ж� CH0
//  305   if((PDB0->CH[0].S & PDB_S_ERR(1)) && (PDB0->SC & PDB_SC_PDBEIE_MASK))
??PDB_IRQHandler_0:
        LDR.N    R0,??DataTable5_19  ;; 0x40036014
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??PDB_IRQHandler_1
        LDR.N    R0,??DataTable5_5  ;; 0x40036000
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BPL.N    ??PDB_IRQHandler_1
//  306   {
//  307     //�����û��Զ����жϷ���
//  308     PDB_SE_ISR[0]();  
        LDR.N    R0,??DataTable5_7
        LDR      R0,[R0, #+0]
        BLX      R0
//  309     PDB0->CH[0].S |= PDB_S_ERR(1);
        LDR.N    R0,??DataTable5_19  ;; 0x40036014
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable5_19  ;; 0x40036014
        STR      R0,[R1, #+0]
//  310   }
//  311   
//  312   //�Ƿ�ΪPDB���д����ж� CH1
//  313   if((PDB0->CH[1].S & PDB_S_ERR(2)) && (PDB0->SC & PDB_SC_PDBEIE_MASK))
??PDB_IRQHandler_1:
        LDR.N    R0,??DataTable5_20  ;; 0x4003603c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??PDB_IRQHandler_2
        LDR.N    R0,??DataTable5_5  ;; 0x40036000
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BPL.N    ??PDB_IRQHandler_2
//  314   {
//  315     //�����û��Զ����жϷ���
//  316     PDB_SE_ISR[0]();  
        LDR.N    R0,??DataTable5_7
        LDR      R0,[R0, #+0]
        BLX      R0
//  317     PDB0->CH[1].S |= PDB_S_ERR(2);
        LDR.N    R0,??DataTable5_20  ;; 0x4003603c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable5_20  ;; 0x4003603c
        STR      R0,[R1, #+0]
//  318   }
//  319   
//  320 #if (UCOS_II > 0u)
//  321   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  322 #endif
//  323 }
??PDB_IRQHandler_2:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0xf4240

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     g_bus_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     pdb_sc_mults

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     0x40036000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     PDB_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DC32     PDB_SE_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_8:
        DC32     0x4003600c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_9:
        DC32     0x40036010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_10:
        DC32     0x40036038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_11:
        DC32     0x40036150

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_12:
        DC32     0x40036158

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_13:
        DC32     0x4003b000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_14:
        DC32     0x400bb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_15:
        DC32     0x4003c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_16:
        DC32     0x400bc000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_17:
        DC32     0x400cc000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_18:
        DC32     0x400cd000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_19:
        DC32     0x40036014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_20:
        DC32     0x4003603c

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
//     8 bytes in section .bss
//     4 bytes in section .rodata
// 1 078 bytes in section .text
// 
// 1 078 bytes of CODE  memory
//     4 bytes of CONST memory
//     8 bytes of DATA  memory
//
//Errors: none
//Warnings: none

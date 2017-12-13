///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       25/Jul/2015  16:58:08
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\lib\LPLD\HW\HW_DAC.c
//    Command line =  
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\lib\LPLD\HW\HW_DAC.c
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
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_carͨ��7-23-20.36\iar\FLASH\List\HW_DAC.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC DAC0_IRQHandler
        PUBLIC DAC1_IRQHandler
        PUBLIC DAC_RDPTBOT_ISR
        PUBLIC DAC_RDPTTOP_ISR
        PUBLIC DAC_WATERMK_ISR
        PUBLIC LPLD_DAC_Deinit
        PUBLIC LPLD_DAC_DisableIrq
        PUBLIC LPLD_DAC_EnableIrq
        PUBLIC LPLD_DAC_Init
        PUBLIC LPLD_DAC_SetBufferData
        PUBLIC LPLD_DAC_SetBufferDataN
        PUBLIC LPLD_DAC_SoftwareTrigger

// C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\lib\LPLD\HW\HW_DAC.c
//    1 /**
//    2  * @file HW_DAC.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief DAC�ײ�ģ����غ���
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
// static __interwork __softfp void NVIC_EnableIRQ(IRQn_Type)
NVIC_EnableIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        LDR.W    R2,??DataTable7  ;; 0xe000e100
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
        LDR.W    R2,??DataTable7_1  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return
//   23 #include "HW_DAC.h"
//   24 
//   25 //�û��Զ����жϷ���������

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   26 DAC_ISR_CALLBACK DAC_RDPTBOT_ISR[2];
DAC_RDPTBOT_ISR:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   27 DAC_ISR_CALLBACK DAC_RDPTTOP_ISR[2];
DAC_RDPTTOP_ISR:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   28 DAC_ISR_CALLBACK DAC_WATERMK_ISR[2];
DAC_WATERMK_ISR:
        DS8 8
//   29 
//   30 
//   31 /*
//   32  * LPLD_DAC_Init
//   33  * DAC��ʼ��������ʹ��DAC�����
//   34  * 
//   35  * ����:
//   36  *    dac_init_struct--DAC��ʼ���ṹ�壬
//   37  *                        ���嶨���DAC_InitTypeDef
//   38  *
//   39  * ���:
//   40  *    0--���ô���
//   41  *    1--���óɹ�
//   42  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   43 uint8 LPLD_DAC_Init(DAC_InitTypeDef dac_init_struct)
//   44 {
LPLD_DAC_Init:
        PUSH     {R0-R3}
        PUSH     {R4-R7,LR}
//   45   uint8 x;
//   46   DAC_Type *dacx = dac_init_struct.DAC_Dacx;
        LDR      R0,[SP, #+20]
//   47   uint8 work_mode = dac_init_struct.DAC_BufferWorkMode;
        LDRB     R1,[SP, #+25]
//   48   uint8 watermark = dac_init_struct.DAC_BufferWatermarkSel;
        LDRB     R2,[SP, #+26]
//   49   uint8 upper = dac_init_struct.DAC_BufferUpperLimit;
        LDRB     R7,[SP, #+28]
//   50   DAC_ISR_CALLBACK rdptbot_isr = dac_init_struct.DAC_ReadPointerBottomIsr;
        LDR      R3,[SP, #+36]
//   51   DAC_ISR_CALLBACK rdpttop_isr = dac_init_struct.DAC_ReadPointerTopIsr;
        LDR      R4,[SP, #+40]
//   52   DAC_ISR_CALLBACK watermk_isr = dac_init_struct.DAC_BufferWatermarkIsr;
        LDR      R5,[SP, #+44]
//   53   
//   54   upper = (upper==NULL?1:upper);
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BNE.N    ??LPLD_DAC_Init_0
        MOVS     R7,#+1
        B.N      ??LPLD_DAC_Init_1
//   55     
//   56   //�������
//   57   ASSERT( work_mode <= BUFFER_MODE_ONETIMESCAN );  //�ж�ģʽѡ��
//   58   ASSERT( watermark <= WATERMARK_4WORDS );      //�жϻ�����ˮӡѡ��
//   59   ASSERT( upper <= 16);         //�жϻ�����������ֵ
//   60     
//   61   //����DACʱ��
//   62   if(dacx == DAC0)
??LPLD_DAC_Init_0:
??LPLD_DAC_Init_1:
        LDR.N    R6,??DataTable7_2  ;; 0x400cc000
        CMP      R0,R6
        BNE.W    ??LPLD_DAC_Init_2
//   63   {
//   64     x = 0;
        MOVS     R6,#+0
//   65     SIM->SCGC2 |= SIM_SCGC2_DAC0_MASK;   //����DAC0ʱ��
        LDR.W    R12,??DataTable7_3  ;; 0x4004802c
        LDR      R12,[R12, #+0]
        ORRS     R12,R12,#0x1000
        LDR.W    LR,??DataTable7_3  ;; 0x4004802c
        STR      R12,[LR, #+0]
//   66   }
//   67   else if(dacx == DAC1)
//   68   {
//   69     x = 1;
//   70     SIM->SCGC2 |= SIM_SCGC2_DAC1_MASK;   //����DAC1ʱ��
//   71   }
//   72   else 
//   73   {
//   74     return 0;
//   75   }
//   76   
//   77   //����C2�Ĵ���
//   78   dacx->C2 = DAC_C2_DACBFUP(upper - 1);     //���û�����������ֵ
??LPLD_DAC_Init_3:
        SUBS     R7,R7,#+1
        ANDS     R7,R7,#0xF
        STRB     R7,[R0, #+35]
//   79   
//   80   //����C1�Ĵ���
//   81   dacx->C1 = 0;
        MOVS     R7,#+0
        STRB     R7,[R0, #+34]
//   82   if(dac_init_struct.DAC_BufferEnable == TRUE)
        LDRB     R7,[SP, #+24]
        CMP      R7,#+1
        BNE.N    ??LPLD_DAC_Init_4
//   83   {
//   84     dacx->C1 |= DAC_C1_DACBFEN_MASK;    //ʹ�ܻ����� 
        LDRB     R7,[R0, #+34]
        ORRS     R7,R7,#0x1
        STRB     R7,[R0, #+34]
//   85   }
//   86   dacx->C1 |= DAC_C1_DACBFMD(work_mode);        //����������ģʽ����
??LPLD_DAC_Init_4:
        LDRB     R7,[R0, #+34]
        LSLS     R1,R1,#+1
        ANDS     R1,R1,#0x6
        ORRS     R1,R1,R7
        STRB     R1,[R0, #+34]
//   87   dacx->C1 |= DAC_C1_DACBFWM(watermark);        //������ˮӡѡ������
        LDRB     R1,[R0, #+34]
        LSLS     R2,R2,#+3
        ANDS     R2,R2,#0x18
        ORRS     R1,R2,R1
        STRB     R1,[R0, #+34]
//   88   if(dac_init_struct.DAC_DmaEnable == TRUE)
        LDRB     R1,[SP, #+27]
        CMP      R1,#+1
        BNE.N    ??LPLD_DAC_Init_5
//   89   {
//   90     dacx->C1 |= DAC_C1_DMAEN_MASK;      //ʹ��DMA
        LDRB     R1,[R0, #+34]
        ORRS     R1,R1,#0x80
        STRB     R1,[R0, #+34]
//   91   }
//   92   
//   93   //����C0�Ĵ���
//   94   dacx->C0 = 0;
??LPLD_DAC_Init_5:
        MOVS     R1,#+0
        STRB     R1,[R0, #+33]
//   95   if(dac_init_struct.DAC_ReadPointerBottomIntEnable == TRUE && rdptbot_isr != NULL)
        LDRB     R1,[SP, #+30]
        CMP      R1,#+1
        BNE.N    ??LPLD_DAC_Init_6
        MOVS     R1,R3
        CMP      R1,#+0
        BEQ.N    ??LPLD_DAC_Init_6
//   96   {
//   97     dacx->C0 |= DAC_C0_DACBBIEN_MASK;   //ʹ�ܻ������ײ��ж�
        LDRB     R1,[R0, #+33]
        ORRS     R1,R1,#0x1
        STRB     R1,[R0, #+33]
//   98     DAC_RDPTBOT_ISR[x] = rdptbot_isr;
        LDR.N    R1,??DataTable7_4
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STR      R3,[R1, R6, LSL #+2]
//   99   }
//  100   if(dac_init_struct.DAC_ReadPointerTopIntEnable == TRUE && rdpttop_isr != NULL)
??LPLD_DAC_Init_6:
        LDRB     R1,[SP, #+31]
        CMP      R1,#+1
        BNE.N    ??LPLD_DAC_Init_7
        MOVS     R1,R4
        CMP      R1,#+0
        BEQ.N    ??LPLD_DAC_Init_7
//  101   {
//  102     dacx->C0 |= DAC_C0_DACBTIEN_MASK;   //ʹ�ܻ����������ж�
        LDRB     R1,[R0, #+33]
        ORRS     R1,R1,#0x2
        STRB     R1,[R0, #+33]
//  103     DAC_RDPTTOP_ISR[x] = rdpttop_isr;
        LDR.N    R1,??DataTable7_5
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STR      R4,[R1, R6, LSL #+2]
//  104   }
//  105   if(dac_init_struct.DAC_BufferWatermarkIntEnable == TRUE && watermk_isr != NULL)
??LPLD_DAC_Init_7:
        LDRB     R1,[SP, #+32]
        CMP      R1,#+1
        BNE.N    ??LPLD_DAC_Init_8
        MOVS     R1,R5
        CMP      R1,#+0
        BEQ.N    ??LPLD_DAC_Init_8
//  106   {
//  107     dacx->C0 |= DAC_C0_DACBWIEN_MASK;   //ʹ�ܻ�����ˮӡ�ж�
        LDRB     R1,[R0, #+33]
        ORRS     R1,R1,#0x4
        STRB     R1,[R0, #+33]
//  108     DAC_WATERMK_ISR[x] = watermk_isr;
        LDR.N    R1,??DataTable7_6
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STR      R5,[R1, R6, LSL #+2]
//  109   }
//  110   if(dac_init_struct.DAC_SoftTrgEnable == TRUE)
??LPLD_DAC_Init_8:
        LDRB     R1,[SP, #+29]
        CMP      R1,#+1
        BNE.N    ??LPLD_DAC_Init_9
//  111   {
//  112     dacx->C0 |= DAC_C0_DACTRGSEL_MASK;  //ʹ���������������
        LDRB     R1,[R0, #+33]
        ORRS     R1,R1,#0x20
        STRB     R1,[R0, #+33]
//  113   }
//  114   dacx->C0 |= DAC_C0_DACRFS_MASK;       //ʹ��DACREF_2(VDDA)Ϊ�ο���ѹ
??LPLD_DAC_Init_9:
        LDRB     R1,[R0, #+33]
        ORRS     R1,R1,#0x40
        STRB     R1,[R0, #+33]
//  115   
//  116   //ʹ��DACģ�飬�ɱ�̲ο���������ʼ����
//  117   dacx->C0 |= DAC_C0_DACEN_MASK;
        LDRB     R1,[R0, #+33]
        ORRS     R1,R1,#0x80
        STRB     R1,[R0, #+33]
//  118   
//  119   return 1;
        MOVS     R0,#+1
??LPLD_DAC_Init_10:
        POP      {R4-R7}
        LDR      PC,[SP], #+20    ;; return
??LPLD_DAC_Init_2:
        LDR.N    R6,??DataTable7_7  ;; 0x400cd000
        CMP      R0,R6
        BNE.N    ??LPLD_DAC_Init_11
        MOVS     R6,#+1
        LDR.W    R12,??DataTable7_3  ;; 0x4004802c
        LDR      R12,[R12, #+0]
        ORRS     R12,R12,#0x2000
        LDR.W    LR,??DataTable7_3  ;; 0x4004802c
        STR      R12,[LR, #+0]
        B.N      ??LPLD_DAC_Init_3
??LPLD_DAC_Init_11:
        MOVS     R0,#+0
        B.N      ??LPLD_DAC_Init_10
//  120 }
//  121 
//  122 /*
//  123  * LPLD_DAC_Deinit
//  124  * DAC����ʼ������������DACģ��
//  125  * 
//  126  * ����:
//  127  *    dac_init_struct--DAC��ʼ���ṹ�壬
//  128  *                        ���嶨���DAC_InitTypeDef
//  129  *
//  130  * ���:
//  131  *    0--���ô���
//  132  *    1--���óɹ�
//  133  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  134 uint8 LPLD_DAC_Deinit(DAC_InitTypeDef dac_init_struct)
//  135 {
LPLD_DAC_Deinit:
        PUSH     {R0-R3}
        PUSH     {R7,LR}
//  136   uint8 x;
//  137   DAC_Type *dacx = dac_init_struct.DAC_Dacx;
        LDR      R0,[SP, #+8]
//  138 
//  139   //�ر�DACģ��
//  140   dacx->C0 &= ~(DAC_C0_DACEN_MASK);
        LDRB     R1,[R0, #+33]
        ANDS     R1,R1,#0x7F
        STRB     R1,[R0, #+33]
//  141   
//  142   //�ر�DACʱ��
//  143   if(dacx == DAC0)
        LDR.N    R1,??DataTable7_2  ;; 0x400cc000
        CMP      R0,R1
        BNE.N    ??LPLD_DAC_Deinit_0
//  144   {
//  145     x = 0;
        MOVS     R0,#+0
//  146     SIM->SCGC2 &= ~(SIM_SCGC2_DAC0_MASK);   
        LDR.N    R1,??DataTable7_3  ;; 0x4004802c
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x1000
        LDR.N    R2,??DataTable7_3  ;; 0x4004802c
        STR      R1,[R2, #+0]
//  147   }
//  148   else if(dacx == DAC1)
//  149   {
//  150     x = 1;
//  151     SIM->SCGC2 &= ~(SIM_SCGC2_DAC1_MASK);   
//  152   }
//  153   else 
//  154   {
//  155     return 0;
//  156   }
//  157 
//  158   disable_irq((IRQn_Type)(DAC0_IRQn + x));
??LPLD_DAC_Deinit_1:
        ADDS     R0,R0,#+81
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       NVIC_DisableIRQ
//  159   
//  160   return 1;
        MOVS     R0,#+1
??LPLD_DAC_Deinit_2:
        POP      {R1}
        LDR      PC,[SP], #+20    ;; return
??LPLD_DAC_Deinit_0:
        LDR.N    R1,??DataTable7_7  ;; 0x400cd000
        CMP      R0,R1
        BNE.N    ??LPLD_DAC_Deinit_3
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_3  ;; 0x4004802c
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x2000
        LDR.N    R2,??DataTable7_3  ;; 0x4004802c
        STR      R1,[R2, #+0]
        B.N      ??LPLD_DAC_Deinit_1
??LPLD_DAC_Deinit_3:
        MOVS     R0,#+0
        B.N      ??LPLD_DAC_Deinit_2
//  161 }
//  162 
//  163 /*
//  164  * LPLD_DAC_EnableIrq
//  165  * ʹ��DACx�ж�
//  166  * 
//  167  * ����:
//  168  *    dac_init_struct--DAC��ʼ���ṹ�壬
//  169  *                        ���嶨���DAC_InitTypeDef
//  170  *
//  171  * ���:
//  172  *    0--���ô���
//  173  *    1--���óɹ�
//  174  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  175 uint8 LPLD_DAC_EnableIrq(DAC_InitTypeDef dac_init_struct)
//  176 {
LPLD_DAC_EnableIrq:
        PUSH     {R0-R3}
        PUSH     {R7,LR}
//  177   uint8 x;
//  178   DAC_Type *dacx = dac_init_struct.DAC_Dacx;
        LDR      R0,[SP, #+8]
//  179   
//  180   if(dacx == DAC0)
        LDR.N    R1,??DataTable7_2  ;; 0x400cc000
        CMP      R0,R1
        BNE.N    ??LPLD_DAC_EnableIrq_0
//  181     x = 0;
        MOVS     R0,#+0
//  182   else if(dacx == DAC1)
//  183     x = 1;
//  184   else
//  185     return 0;
//  186 
//  187   enable_irq((IRQn_Type)(DAC0_IRQn + x));
??LPLD_DAC_EnableIrq_1:
        ADDS     R0,R0,#+81
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       NVIC_EnableIRQ
//  188   
//  189   return 1;
        MOVS     R0,#+1
??LPLD_DAC_EnableIrq_2:
        POP      {R1}
        LDR      PC,[SP], #+20    ;; return
??LPLD_DAC_EnableIrq_0:
        LDR.N    R1,??DataTable7_7  ;; 0x400cd000
        CMP      R0,R1
        BNE.N    ??LPLD_DAC_EnableIrq_3
        MOVS     R0,#+1
        B.N      ??LPLD_DAC_EnableIrq_1
??LPLD_DAC_EnableIrq_3:
        MOVS     R0,#+0
        B.N      ??LPLD_DAC_EnableIrq_2
//  190 }
//  191 
//  192 /*
//  193  * LPLD_DAC_DisableIrq
//  194  * ����DACx�ж�
//  195  * 
//  196  * ����:
//  197  *    dac_init_struct--DAC��ʼ���ṹ�壬
//  198  *                        ���嶨���DAC_InitTypeDef
//  199  *
//  200  * ���:
//  201  *    0--���ô���
//  202  *    1--���óɹ�
//  203  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  204 uint8 LPLD_DAC_DisableIrq(DAC_InitTypeDef dac_init_struct)
//  205 {
LPLD_DAC_DisableIrq:
        PUSH     {R0-R3}
        PUSH     {R7,LR}
//  206   uint8 x;
//  207   DAC_Type *dacx = dac_init_struct.DAC_Dacx;
        LDR      R0,[SP, #+8]
//  208   
//  209   if(dacx == DAC0)
        LDR.N    R1,??DataTable7_2  ;; 0x400cc000
        CMP      R0,R1
        BNE.N    ??LPLD_DAC_DisableIrq_0
//  210     x = 0;
        MOVS     R0,#+0
//  211   else if(dacx == DAC1)
//  212     x = 1;
//  213   else
//  214     return 0;
//  215 
//  216   disable_irq((IRQn_Type)(DAC0_IRQn + x));
??LPLD_DAC_DisableIrq_1:
        ADDS     R0,R0,#+81
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       NVIC_DisableIRQ
//  217   
//  218   return 1;
        MOVS     R0,#+1
??LPLD_DAC_DisableIrq_2:
        POP      {R1}
        LDR      PC,[SP], #+20    ;; return
??LPLD_DAC_DisableIrq_0:
        LDR.N    R1,??DataTable7_7  ;; 0x400cd000
        CMP      R0,R1
        BNE.N    ??LPLD_DAC_DisableIrq_3
        MOVS     R0,#+1
        B.N      ??LPLD_DAC_DisableIrq_1
??LPLD_DAC_DisableIrq_3:
        MOVS     R0,#+0
        B.N      ??LPLD_DAC_DisableIrq_2
//  219 }
//  220 
//  221 /*
//  222  * LPLD_DAC_SetBufferDataN
//  223  * ����DAC��������������n
//  224  * 
//  225  * ����:
//  226  *    dacx--DACxģ���
//  227  *      |__DAC0          --DAC0
//  228  *      |__DAC1          --DAC1
//  229  *    data--�������������
//  230  *      |__0~4095        --12λ����
//  231  *    num--ָ��������λ��
//  232  *      |__1~16          --��������1��16����
//  233  *
//  234  * ���:
//  235  *    ��
//  236  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  237 void LPLD_DAC_SetBufferDataN(DAC_Type *dacx, uint16 data, uint8 num)
//  238 {
//  239   //�������
//  240   ASSERT( (num <= 16)&&(num > 0) );  //�ж��������
//  241 
//  242   dacx->DAT[num-1].DATL = data & 0x0FF;
LPLD_DAC_SetBufferDataN:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADDS     R3,R0,R2, LSL #+1
        STRB     R1,[R3, #-2]
//  243   dacx->DAT[num-1].DATH = (data & 0xF00)>>8;
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ASRS     R1,R1,#+8
        ANDS     R1,R1,#0xF
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADDS     R0,R0,R2, LSL #+1
        STRB     R1,[R0, #-1]
//  244 }
        BX       LR               ;; return
//  245 
//  246 /*
//  247  * LPLD_DAC_SetBufferData
//  248  * ����DAC��������������
//  249  * 
//  250  * ����:
//  251  *    dacx--DACxģ���
//  252  *      |__DAC0          --DAC0
//  253  *      |__DAC1          --DAC1
//  254  *    *data--�����������������ָ��
//  255  *      |__*0~4095       --12λ��������
//  256  *    len--�������鳤��
//  257  *      |__1~16          --����Ϊ1~16
//  258  *
//  259  * ���:
//  260  *    ��
//  261  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  262 void LPLD_DAC_SetBufferData(DAC_Type *dacx, uint16 *data, uint8 len)
//  263 {
LPLD_DAC_SetBufferData:
        PUSH     {R4,R5}
//  264   //�������
//  265   ASSERT( (len <= 16)&&(len > 0) );  //�ж����ݳ���
//  266   
//  267   for(uint8 i=0; i < len; i++)
        MOVS     R3,#+0
        B.N      ??LPLD_DAC_SetBufferData_0
//  268   {
//  269     dacx->DAT[i].DATL = data[i] & 0x0FF;
??LPLD_DAC_SetBufferData_1:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDRH     R4,[R1, R3, LSL #+1]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        STRB     R4,[R0, R3, LSL #+1]
//  270     dacx->DAT[i].DATH = (data[i] & 0xF00)>>8;
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDRH     R4,[R1, R3, LSL #+1]
        ASRS     R4,R4,#+8
        ANDS     R4,R4,#0xF
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ADDS     R5,R0,R3, LSL #+1
        STRB     R4,[R5, #+1]
//  271   }
        ADDS     R3,R3,#+1
??LPLD_DAC_SetBufferData_0:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R3,R2
        BCC.N    ??LPLD_DAC_SetBufferData_1
//  272 }
        POP      {R4,R5}
        BX       LR               ;; return
//  273 
//  274 /*
//  275  * LPLD_DAC_SoftwareTrigger
//  276  * �������DAC����������
//  277  * 
//  278  * ����:
//  279  *    dacx--DACxģ���
//  280  *      |__DAC0          --DAC0
//  281  *      |__DAC1          --DAC1
//  282  *
//  283  * ���:
//  284  *    ��
//  285  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  286 void LPLD_DAC_SoftwareTrigger(DAC_Type *dacx)
//  287 {
//  288   dacx->C0 |= DAC_C0_DACSWTRG_MASK;
LPLD_DAC_SoftwareTrigger:
        LDRB     R1,[R0, #+33]
        ORRS     R1,R1,#0x10
        STRB     R1,[R0, #+33]
//  289 }
        BX       LR               ;; return
//  290 
//  291 /*
//  292  * DAC0--DAC1�жϴ�����
//  293  * �������ļ�startup_K60.s�е��ж����������
//  294  * �û������޸ģ������Զ������Ӧͨ���жϺ���
//  295  */
//  296 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  297 void DAC0_IRQHandler(void)
//  298 {
DAC0_IRQHandler:
        PUSH     {R7,LR}
//  299 #if (UCOS_II > 0u)
//  300   OS_CPU_SR  cpu_sr = 0u;
//  301   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  302   OSIntEnter();
//  303   OS_EXIT_CRITICAL();
//  304 #endif
//  305   
//  306   //�Ƿ�Ϊָ��ײ��ж�
//  307   if((DAC0->SR & DAC_SR_DACBFRPBF_MASK) && (DAC0->C0 & DAC_C0_DACBBIEN_MASK))
        LDR.N    R0,??DataTable7_8  ;; 0x400cc020
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??DAC0_IRQHandler_0
        LDR.N    R0,??DataTable7_9  ;; 0x400cc021
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??DAC0_IRQHandler_0
//  308   {
//  309     //�����û��Զ����жϷ���
//  310     DAC_RDPTBOT_ISR[0]();  
        LDR.N    R0,??DataTable7_4
        LDR      R0,[R0, #+0]
        BLX      R0
//  311     DAC0->SR &= ~(DAC_SR_DACBFRPBF_MASK);
        LDR.N    R0,??DataTable7_8  ;; 0x400cc020
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0xFE
        LDR.N    R1,??DataTable7_8  ;; 0x400cc020
        STRB     R0,[R1, #+0]
//  312   }
//  313   //�Ƿ�Ϊָ�붥���ж�
//  314   if((DAC0->SR & DAC_SR_DACBFRPTF_MASK) && (DAC0->C0 & DAC_C0_DACBTIEN_MASK))
??DAC0_IRQHandler_0:
        LDR.N    R0,??DataTable7_8  ;; 0x400cc020
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??DAC0_IRQHandler_1
        LDR.N    R0,??DataTable7_9  ;; 0x400cc021
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??DAC0_IRQHandler_1
//  315   {
//  316     //�����û��Զ����жϷ���
//  317     DAC_RDPTTOP_ISR[0]();  
        LDR.N    R0,??DataTable7_5
        LDR      R0,[R0, #+0]
        BLX      R0
//  318     DAC0->SR &= ~(DAC_SR_DACBFRPTF_MASK);
        LDR.N    R0,??DataTable7_8  ;; 0x400cc020
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0xFD
        LDR.N    R1,??DataTable7_8  ;; 0x400cc020
        STRB     R0,[R1, #+0]
//  319   }
//  320   //�Ƿ�Ϊˮӡ�ж�
//  321   if((DAC0->SR & DAC_SR_DACBFWMF_MASK) && (DAC0->C0 & DAC_C0_DACBWIEN_MASK))
??DAC0_IRQHandler_1:
        LDR.N    R0,??DataTable7_8  ;; 0x400cc020
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL.N    ??DAC0_IRQHandler_2
        LDR.N    R0,??DataTable7_9  ;; 0x400cc021
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL.N    ??DAC0_IRQHandler_2
//  322   {
//  323     //�����û��Զ����жϷ���
//  324     DAC_WATERMK_ISR[0]();  
        LDR.N    R0,??DataTable7_6
        LDR      R0,[R0, #+0]
        BLX      R0
//  325     DAC0->SR &= ~(DAC_SR_DACBFWMF_MASK);
        LDR.N    R0,??DataTable7_8  ;; 0x400cc020
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0xFB
        LDR.N    R1,??DataTable7_8  ;; 0x400cc020
        STRB     R0,[R1, #+0]
//  326   }
//  327   
//  328 #if (UCOS_II > 0u)
//  329   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  330 #endif
//  331 }
??DAC0_IRQHandler_2:
        POP      {R0,PC}          ;; return
//  332 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  333 void DAC1_IRQHandler(void)
//  334 {
DAC1_IRQHandler:
        PUSH     {R7,LR}
//  335 #if (UCOS_II > 0u)
//  336   OS_CPU_SR  cpu_sr = 0u;
//  337   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  338   OSIntEnter();
//  339   OS_EXIT_CRITICAL();
//  340 #endif
//  341   
//  342   //�Ƿ�Ϊָ��ײ��ж�
//  343   if((DAC1->SR & DAC_SR_DACBFRPBF_MASK) && (DAC1->C0 & DAC_C0_DACBBIEN_MASK))
        LDR.N    R0,??DataTable7_10  ;; 0x400cd020
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??DAC1_IRQHandler_0
        LDR.N    R0,??DataTable7_11  ;; 0x400cd021
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??DAC1_IRQHandler_0
//  344   {
//  345     //�����û��Զ����жϷ���
//  346     DAC_RDPTBOT_ISR[1]();  
        LDR.N    R0,??DataTable7_4
        LDR      R0,[R0, #+4]
        BLX      R0
//  347     DAC1->SR &= ~(DAC_SR_DACBFRPBF_MASK);
        LDR.N    R0,??DataTable7_10  ;; 0x400cd020
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0xFE
        LDR.N    R1,??DataTable7_10  ;; 0x400cd020
        STRB     R0,[R1, #+0]
//  348   }
//  349   //�Ƿ�Ϊָ�붥���ж�
//  350   if((DAC1->SR & DAC_SR_DACBFRPTF_MASK) && (DAC1->C0 & DAC_C0_DACBTIEN_MASK))
??DAC1_IRQHandler_0:
        LDR.N    R0,??DataTable7_10  ;; 0x400cd020
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??DAC1_IRQHandler_1
        LDR.N    R0,??DataTable7_11  ;; 0x400cd021
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??DAC1_IRQHandler_1
//  351   {
//  352     //�����û��Զ����жϷ���
//  353     DAC_RDPTTOP_ISR[1]();  
        LDR.N    R0,??DataTable7_5
        LDR      R0,[R0, #+4]
        BLX      R0
//  354     DAC1->SR &= ~(DAC_SR_DACBFRPTF_MASK);
        LDR.N    R0,??DataTable7_10  ;; 0x400cd020
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0xFD
        LDR.N    R1,??DataTable7_10  ;; 0x400cd020
        STRB     R0,[R1, #+0]
//  355   }
//  356   //�Ƿ�Ϊˮӡ�ж�
//  357   if((DAC1->SR & DAC_SR_DACBFWMF_MASK) && (DAC1->C0 & DAC_C0_DACBWIEN_MASK))
??DAC1_IRQHandler_1:
        LDR.N    R0,??DataTable7_10  ;; 0x400cd020
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL.N    ??DAC1_IRQHandler_2
        LDR.N    R0,??DataTable7_11  ;; 0x400cd021
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL.N    ??DAC1_IRQHandler_2
//  358   {
//  359     //�����û��Զ����жϷ���
//  360     DAC_WATERMK_ISR[1]();  
        LDR.N    R0,??DataTable7_6
        LDR      R0,[R0, #+4]
        BLX      R0
//  361     DAC1->SR &= ~(DAC_SR_DACBFWMF_MASK);
        LDR.N    R0,??DataTable7_10  ;; 0x400cd020
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0xFB
        LDR.N    R1,??DataTable7_10  ;; 0x400cd020
        STRB     R0,[R1, #+0]
//  362   }
//  363   
//  364 #if (UCOS_II > 0u)
//  365   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  366 #endif
//  367 }
??DAC1_IRQHandler_2:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     0x400cc000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     0x4004802c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     DAC_RDPTBOT_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     DAC_RDPTTOP_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DC32     DAC_WATERMK_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_7:
        DC32     0x400cd000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_8:
        DC32     0x400cc020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_9:
        DC32     0x400cc021

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_10:
        DC32     0x400cd020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_11:
        DC32     0x400cd021

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
//  24 bytes in section .bss
// 914 bytes in section .text
// 
// 914 bytes of CODE memory
//  24 bytes of DATA memory
//
//Errors: none
//Warnings: none

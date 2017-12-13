///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       25/Jul/2015  16:58:08
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\lib\LPLD\HW\HW_CAN.c
//    Command line =  
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\lib\LPLD\HW\HW_CAN.c
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
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_carͨ��7-23-20.36\iar\FLASH\List\HW_CAN.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN g_bus_clock
        EXTERN memcpy

        PUBLIC CAN0_BUS_OFF_IRQHandler
        PUBLIC CAN0_ERR_IRQHandler
        PUBLIC CAN0_IMEU_IRQHandler
        PUBLIC CAN0_ISR
        PUBLIC CAN0_LR_IRQHandler
        PUBLIC CAN0_MESS_IRQHandler
        PUBLIC CAN0_RW_IRQHandler
        PUBLIC CAN0_TW_IRQHandler
        PUBLIC CAN0_WAKE_UP_IRQHandler
        PUBLIC CAN1_BUS_OFF_IRQHandler
        PUBLIC CAN1_ERR_IRQHandler
        PUBLIC CAN1_IMEU_IRQHandler
        PUBLIC CAN1_ISR
        PUBLIC CAN1_LR_IRQHandler
        PUBLIC CAN1_MESS_IRQHandler
        PUBLIC CAN1_RW_IRQHandler
        PUBLIC CAN1_TW_IRQHandler
        PUBLIC CAN1_WAKE_UP_IRQHandler
        PUBLIC LPLD_CAN_Deinit
        PUBLIC LPLD_CAN_DisableIrq
        PUBLIC LPLD_CAN_EnableIrq
        PUBLIC LPLD_CAN_Init
        PUBLIC LPLD_CAN_InitMessageObject
        PUBLIC LPLD_CAN_ReceivedMessage
        PUBLIC LPLD_CAN_TransmitMessage
        PUBLIC LPLD_CAN_Transmit_Interrupt
        PUBLIC flexcan_msgobj_param_t

// C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\lib\LPLD\HW\HW_CAN.c
//    1 /**
//    2  * @file HW_CAN.c
//    3  * @version 3.03[By LPLD]
//    4  * @date 2014-3-9
//    5  * @brief CAN�ײ�ģ����غ���
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
//   22 
//   23 #include "common.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_EnableIRQ(IRQn_Type)
NVIC_EnableIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        LDR.W    R2,??DataTable19  ;; 0xe000e100
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
        LDR.W    R2,??DataTable19_1  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return
//   24 #include "HW_CAN.h"
//   25 //FlexCANģ�����ò����ʺ���
//   26 static void LPLD_CAN_SetBaudRate(CAN_Type *,uint32 );
//   27 //FlexCAN ����жϱ�־λ����
//   28 static void LPLD_CAN_Interrupt_ClearPending(CAN_Type *, uint8 );
//   29 //FlexCAN ����жϱ�־λ����
//   30 static uint8 LPLD_CAN_Interrupt_GetFlag(CAN_Type *, uint8 );
//   31 //FlexCAN ����Msg����������
//   32 static uint16 LPLD_CAN_UnlockMsg(CAN_Type *);
//   33 //FlexCAN ʹ��Msg�������жϺ���
//   34 static void LPLD_CAN_EnableMsgInterrupt(CAN_Type *, uint8 );
//   35 //FlexCAN ����Msg��������CODE
//   36 static void LPLD_CAN_SetMsgCode(CAN_Type *, uint8 , uint8 );
//   37 //FlexCAN ���Msg��������CODE
//   38 static uint32 LPLD_CAN_GetMsgCode(CAN_Type *, uint8 );
//   39 //FlexCAN ���Msg��������TIMESTAMP
//   40 static uint16 LPLD_CAN_GetMsgTimeStamp(CAN_Type *, uint8 );
//   41 //FlexCAN ����Msg��������ID
//   42 void LPLD_CAN_SetMsgID(CAN_Type *, uint8 ,uint8, uint32 );
//   43 //FlexCAN ���Msg��������ID
//   44 static uint32 LPLD_CAN_GetMsgID(CAN_Type *, uint8 );
//   45 //FlexCAN ���Msg�������ĳ���
//   46 uint8 LPLD_CAN_GetMsgLength(CAN_Type *canx, uint8 MSG_NUM);
//   47 //FlexCAN ���Msg������������
//   48 static void LPLD_CAN_GetData(CAN_Type *canx, uint8 , uint8 ,  uint8 *);
//   49 //FlexCAN дMsg������������
//   50 static void LPLD_CAN_WriteData(CAN_Type *, uint8 , uint8, uint8 * );
//   51 //FlexCAN �����жϺ���
//   52 void LPLD_CAN_Transmit_Interrupt(CAN_Type *, uint8 );
//   53 //FlexCAN �����жϺ���
//   54 static void LPLD_CAN_Receive_Interrupt(CAN_Type *, uint8 );
//   55 //FlexCAN CANx���жϴ�����
//   56 static void LPLD_CAN_MB_ISR(void);
//   57 //����16��Msg�Ľṹ��

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   58 CAN_MSGOBJ_InitTypeDef  flexcan_msgobj_param_t[MSG_MAX_NO] = {0};
flexcan_msgobj_param_t:
        DS8 256
//   59 //����CANx Msg���жϻص�����

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   60 CAN_ISR_CALLBACK CAN0_ISR[MSG_MAX_NO];
CAN0_ISR:
        DS8 64

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   61 CAN_ISR_CALLBACK CAN1_ISR[MSG_MAX_NO];
CAN1_ISR:
        DS8 64
//   62 
//   63 /*
//   64  * LPLD_CAN_Init
//   65  * �ڸú�����ʹ��CANx������CANx�Ĳ����ʣ�ѡ����Ӧ�Ĺ���ģʽ
//   66  * ͨ��CAN_InitTypeDef�ṹ���CAN���г�ʼ����
//   67  * 
//   68  * ����:
//   69  *    CAN_InitTypeDef--can_init_structure
//   70  *                     ���嶨���HW_CAN.h can_init_structure
//   71  *
//   72  * ���:
//   73  *    ��
//   74  *
//   75  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   76 void LPLD_CAN_Init(CAN_InitTypeDef can_init_structure)
//   77 {
LPLD_CAN_Init:
        PUSH     {R0-R2,R4-R6,LR}
        SUB      SP,SP,#+4
//   78   uint8 i;
//   79   CAN_Type *canx = can_init_structure.CAN_Canx;
        LDR      R4,[SP, #+4]
//   80   uint32 baud = can_init_structure.CAN_BaudRate;
        LDR      R1,[SP, #+8]
//   81   uint8  mask_mode = can_init_structure.CAN_RxMaskMode;
        LDRB     R0,[SP, #+12]
//   82   PortPinsEnum_Type tx_pin = can_init_structure.CAN_TxPin;
        LDRB     R2,[SP, #+13]
//   83   PortPinsEnum_Type rx_pin = can_init_structure.CAN_RxPin;
        LDRB     R3,[SP, #+14]
//   84 
//   85   ASSERT(mask_mode <= CAN_MSGOBJ_GLOBAL_MASKING);
//   86   ASSERT(baud <= CAN_BAUD_RATE_1MBPS);
//   87     
//   88 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10)  
//   89   OSC->CR |= OSC_CR_ERCLKEN_MASK | OSC_CR_EREFSTEN_MASK;
//   90 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//   91   OSC0->CR |= OSC_CR_ERCLKEN_MASK | OSC_CR_EREFSTEN_MASK;
        LDR.W    R5,??DataTable19_2  ;; 0x40065000
        LDRB     R5,[R5, #+0]
        ORRS     R5,R5,#0xA0
        LDR.W    R6,??DataTable19_2  ;; 0x40065000
        STRB     R5,[R6, #+0]
//   92 #endif    
//   93   if(canx == CAN0)
        LDR.W    R5,??DataTable19_3  ;; 0x40024000
        CMP      R4,R5
        BNE.N    ??LPLD_CAN_Init_0
//   94     SIM->SCGC6 |= SIM_SCGC6_FLEXCAN0_MASK;
        LDR.W    R5,??DataTable19_4  ;; 0x4004803c
        LDR      R5,[R5, #+0]
        ORRS     R5,R5,#0x10
        LDR.W    R6,??DataTable19_4  ;; 0x4004803c
        STR      R5,[R6, #+0]
        B.N      ??LPLD_CAN_Init_1
//   95   else
//   96     SIM->SCGC3 |= SIM_SCGC3_FLEXCAN1_MASK;
??LPLD_CAN_Init_0:
        LDR.W    R5,??DataTable19_5  ;; 0x40048030
        LDR      R5,[R5, #+0]
        ORRS     R5,R5,#0x10
        LDR.W    R6,??DataTable19_5  ;; 0x40048030
        STR      R5,[R6, #+0]
//   97   
//   98   if(canx == CAN0)
??LPLD_CAN_Init_1:
        LDR.W    R5,??DataTable19_3  ;; 0x40024000
        CMP      R4,R5
        BNE.N    ??LPLD_CAN_Init_2
//   99   {
//  100     if(tx_pin == PTB18)//CAN0_TX
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+50
        BNE.N    ??LPLD_CAN_Init_3
//  101     {
//  102       PORTB->PCR[18] = PORT_PCR_MUX(2)| PORT_PCR_PE_MASK | PORT_PCR_PS_MASK; 
        MOVW     R2,#+515
        LDR.W    R5,??DataTable19_6  ;; 0x4004a048
        STR      R2,[R5, #+0]
        B.N      ??LPLD_CAN_Init_4
//  103     }
//  104     else
//  105     {
//  106       PORTA->PCR[12] = PORT_PCR_MUX(2); 
??LPLD_CAN_Init_3:
        MOV      R2,#+512
        LDR.W    R5,??DataTable19_7  ;; 0x40049030
        STR      R2,[R5, #+0]
//  107     }
//  108 
//  109     if(rx_pin == PTB19)//CAN0_RX
??LPLD_CAN_Init_4:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+51
        BNE.N    ??LPLD_CAN_Init_5
//  110     {
//  111       PORTB->PCR[19] = PORT_PCR_MUX(2)| PORT_PCR_PE_MASK | PORT_PCR_PS_MASK; 
        MOVW     R2,#+515
        LDR.W    R3,??DataTable19_8  ;; 0x4004a04c
        STR      R2,[R3, #+0]
        B.N      ??LPLD_CAN_Init_6
//  112     }
//  113     else
//  114     {
//  115       PORTA->PCR[13] = PORT_PCR_MUX(2); 
??LPLD_CAN_Init_5:
        MOV      R2,#+512
        LDR.W    R3,??DataTable19_9  ;; 0x40049034
        STR      R2,[R3, #+0]
        B.N      ??LPLD_CAN_Init_6
//  116     }
//  117   }
//  118   else
//  119   {
//  120     if(tx_pin == PTC17)//CAN1_TX
??LPLD_CAN_Init_2:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+77
        BNE.N    ??LPLD_CAN_Init_7
//  121     {
//  122       PORTC->PCR[17] = PORT_PCR_MUX(2)| PORT_PCR_PE_MASK | PORT_PCR_PS_MASK; 
        MOVW     R2,#+515
        LDR.W    R5,??DataTable19_10  ;; 0x4004b044
        STR      R2,[R5, #+0]
        B.N      ??LPLD_CAN_Init_8
//  123     }
//  124     else
//  125     {
//  126       PORTE->PCR[24] = PORT_PCR_MUX(2)| PORT_PCR_PE_MASK | PORT_PCR_PS_MASK;
??LPLD_CAN_Init_7:
        MOVW     R2,#+515
        LDR.W    R5,??DataTable19_11  ;; 0x4004d060
        STR      R2,[R5, #+0]
//  127     }
//  128 
//  129     if(rx_pin == PTC16)//CAN1_RX
??LPLD_CAN_Init_8:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+76
        BNE.N    ??LPLD_CAN_Init_9
//  130     {
//  131       PORTC->PCR[16] = PORT_PCR_MUX(2)| PORT_PCR_PE_MASK | PORT_PCR_PS_MASK; 
        MOVW     R2,#+515
        LDR.W    R3,??DataTable19_12  ;; 0x4004b040
        STR      R2,[R3, #+0]
        B.N      ??LPLD_CAN_Init_6
//  132     }
//  133     else
//  134     {
//  135       PORTE->PCR[25] = PORT_PCR_MUX(2)| PORT_PCR_PE_MASK | PORT_PCR_PS_MASK;
??LPLD_CAN_Init_9:
        MOVW     R2,#+515
        LDR.W    R3,??DataTable19_13  ;; 0x4004d064
        STR      R2,[R3, #+0]
//  136     }
//  137   } 
//  138   //��ֹCAN����
//  139   canx->MCR   |= CAN_MCR_MDIS_MASK;
??LPLD_CAN_Init_6:
        LDR      R2,[R4, #+0]
        ORRS     R2,R2,#0x80000000
        STR      R2,[R4, #+0]
//  140   //ֻ����LPM_ACK = 1����²ſ���ѡ����Դ
//  141   canx->CTRL1 |= CAN_CTRL1_CLKSRC_MASK;  //ѡ��peripheral clock��ΪCAN�����ʱ��Դ
        LDR      R2,[R4, #+4]
        ORRS     R2,R2,#0x2000
        STR      R2,[R4, #+4]
//  142                                          //���ô�λ������CANֹͣģʽ��
//  143   //��ʱ�ӳ�ʼ����Ϻ�CAN����ʹ����Ϻ�
//  144   //��Ƭ���Զ����붳��ģʽ
//  145   //ֻ���ڶ���ģʽ�²������ô����CAN���߼Ĵ���
//  146   //ʹ�ܶ���ģʽ 
//  147   canx->MCR |= CAN_MCR_FRZ_MASK;
        LDR      R2,[R4, #+0]
        ORRS     R2,R2,#0x40000000
        STR      R2,[R4, #+0]
//  148   canx->MCR &= ~CAN_MCR_MDIS_MASK; 
        LDR      R2,[R4, #+0]
        LSLS     R2,R2,#+1        ;; ZeroExtS R2,R2,#+1,#+1
        LSRS     R2,R2,#+1
        STR      R2,[R4, #+0]
//  149   
//  150   while(!(canx->MCR & CAN_MCR_LPMACK_MASK));	
??LPLD_CAN_Init_10:
        LDR      R2,[R4, #+0]
        LSLS     R2,R2,#+11
        BPL.N    ??LPLD_CAN_Init_10
//  151 
//  152   //���������λ
//  153   canx->MCR ^= CAN_MCR_SOFTRST_MASK;
        LDR      R2,[R4, #+0]
        EORS     R2,R2,#0x2000000
        STR      R2,[R4, #+0]
//  154   while(canx->MCR & CAN_MCR_SOFTRST_MASK);
??LPLD_CAN_Init_11:
        LDR      R2,[R4, #+0]
        LSLS     R2,R2,#+6
        BMI.N    ??LPLD_CAN_Init_11
//  155             
//  156   //�ȴ����붳��ģʽ 
//  157   while(!(canx->MCR & CAN_MCR_FRZACK_MASK));
??LPLD_CAN_Init_12:
        LDR      R2,[R4, #+0]
        LSLS     R2,R2,#+7
        BPL.N    ??LPLD_CAN_Init_12
//  158   
//  159   if(mask_mode == CAN_MSGOBJ_GLOBAL_MASKING)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??LPLD_CAN_Init_13
//  160   {
//  161     canx->MCR &= ~CAN_MCR_IRMQ_MASK;   //ʹ��ȫ��ƥ��Ĵ�����ֹ����ƥ�� 
        LDR      R0,[R4, #+0]
        BICS     R0,R0,#0x10000
        STR      R0,[R4, #+0]
        B.N      ??LPLD_CAN_Init_14
//  162   }
//  163   else
//  164   {
//  165     canx->MCR |= CAN_MCR_IRMQ_MASK;   //ʹ��Msg����ƥ�� 
??LPLD_CAN_Init_13:
        LDR      R0,[R4, #+0]
        ORRS     R0,R0,#0x10000
        STR      R0,[R4, #+0]
//  166   }
//  167   //��MB_MAX�����仺����������0
//  168   for(i = 0;i < MSG_MAX_NO; i++)
??LPLD_CAN_Init_14:
        MOVS     R0,#+0
        B.N      ??LPLD_CAN_Init_15
//  169   {
//  170     canx->MB[i].CS    = 0x00000000;
??LPLD_CAN_Init_16:
        MOVS     R2,#+0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R3,R4,R0, LSL #+4
        STR      R2,[R3, #+128]
//  171     canx->MB[i].ID    = 0x00000000;
        MOVS     R2,#+0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R3,R4,R0, LSL #+4
        STR      R2,[R3, #+132]
//  172     canx->MB[i].WORD0 = 0x00000000;
        MOVS     R2,#+0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R3,R4,R0, LSL #+4
        STR      R2,[R3, #+136]
//  173     canx->MB[i].WORD1 = 0x00000000;        
        MOVS     R2,#+0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R3,R4,R0, LSL #+4
        STR      R2,[R3, #+140]
//  174   }
        ADDS     R0,R0,#+1
??LPLD_CAN_Init_15:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+16
        BLT.N    ??LPLD_CAN_Init_16
//  175   
//  176   canx->MCR |= CAN_MCR_SRXDIS_MASK ; //��ֹ���ҽ���
        LDR      R0,[R4, #+0]
        ORRS     R0,R0,#0x20000
        STR      R0,[R4, #+0]
//  177   //canx->MCR |= CAN_MCR_RFEN_MASK ;   //ʹ�ܽ���FIFO
//  178   //canx->CTRL2 |= CAN_CTRL2_RFFN(0);
//  179   //canx->MCR |= CAN_MCR_IDAM(0);
//  180   
//  181   //������صļĴ���
//  182   canx->CTRL2 &= ~CAN_CTRL2_EACEN_MASK; //�����������IDEƥ�䣬RTR��ƥ��
        LDR      R0,[R4, #+52]
        BICS     R0,R0,#0x10000
        STR      R0,[R4, #+52]
//  183   canx->CTRL2 &= ~CAN_CTRL2_RRS_MASK;  //���Զ�����Զ������֡����
        LDR      R0,[R4, #+52]
        BICS     R0,R0,#0x20000
        STR      R0,[R4, #+52]
//  184   canx->CTRL2 &= ~CAN_CTRL2_MRP_MASK;   //ID���ȴ�������ƥ��
        LDR      R0,[R4, #+52]
        BICS     R0,R0,#0x40000
        STR      R0,[R4, #+52]
//  185 
//  186   //canx->CTRL1 |= CAN_CTRL1_LBUF_MASK;  //���͵�ʱ��ӵ�Msg��ʼ
//  187   canx->CTRL1 &= ~CAN_CTRL1_LBUF_MASK;   //���͵�ʱ��ӵ����ȼ�����
        LDR      R0,[R4, #+4]
        BICS     R0,R0,#0x10
        STR      R0,[R4, #+4]
//  188                              
//  189   //canx->CTRL1 |= CAN_CTRL1_LPB_MASK;  //loop ģʽ,���ڲ���
//  190   canx->CTRL1 &= ~CAN_CTRL1_LPB_MASK;   //ʹ������ģʽ
        LDR      R0,[R4, #+4]
        BICS     R0,R0,#0x1000
        STR      R0,[R4, #+4]
//  191   //����CAN����ͨ�ŵĲ�����
//  192   LPLD_CAN_SetBaudRate(canx,baud);
        MOVS     R0,R4
        BL       LPLD_CAN_SetBaudRate
//  193 
//  194   //���CAN���ɼ����� 
//  195   canx->TIMER = 0x0000; 
        MOVS     R0,#+0
        STR      R0,[R4, #+8]
//  196    /*
//  197   ���MCR��IRMQΪ1����ʾÿ�����䶼���Ե�������IDƥ��
//  198   ע�⣺�����low cost MCUs�������õ�MCU����û�е���ƥ������ܡ�
//  199           1\IDƥ���ѡ��free to receive״̬��������Ϊʤ�ߣ�
//  200           ��ʤ��������Դӽ��ջ������ڽ����յ�֡ Move in ��MB�У�
//  201           2\�������ID����ͬ�����䣬�����ȴ���ŵ͵��������ƥ�䣬���
//  202           �����������non free to receive״̬����ôƥ����̽������
//  203           ��һ������ֱ���ҵ�free to receive״̬��ID��ͬ�����䣻
//  204           3\���ID����ͬ�����䶼����non free to receive״̬����ôƥ�����
//  205           ��ֹͣ�����һ������ͬID������λ�ã���֡Move in ��MB�в��ҽ�����
//  206           ���״̬���ó�OVERRUN��
//  207           RXIMR[i]�洢�ڵ�Ƭ����RAM�У�ֻ����CAN����ģʽ�¿�д��
//  208           ��ʱCANx_RXMGMASK��CANx_RX14MASK��CANx_RX15MASK��������
//  209   */
//  210   if(canx->MCR & CAN_MCR_IRMQ_MASK)
        LDR      R0,[R4, #+0]
        LSLS     R0,R0,#+15
        BPL.N    ??LPLD_CAN_Init_17
//  211   {
//  212     for(i = 0;i < MSG_MAX_NO; i++)
        MOVS     R0,#+0
        B.N      ??LPLD_CAN_Init_18
//  213     {
//  214       canx->RXIMR[i] = 0x1FFFFFFFL;//��������29λȫ������
??LPLD_CAN_Init_19:
        MVNS     R1,#-536870912
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R4,R0, LSL #+2
        STR      R1,[R2, #+2176]
//  215     }
        ADDS     R0,R0,#+1
??LPLD_CAN_Init_18:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+16
        BLT.N    ??LPLD_CAN_Init_19
//  216   } 
//  217  /*
//  218   ���MCR��IRMQΪ0����ʾʹ��ȫ��ƥ��Ĵ�������ƥ�䣬
//  219           ��ʱCANx_RXMGMASK��CANx_RX14MASK��CANx_RX15MASK�����ã�
//  220           CANx_RXMGMASK�����CANx_RX14MASK��CANx_RX15MASK���������Msg��
//  221           IDƥ����̻�ֹͣ���ҵ��ĵ�һ��ID��ͬ������λ�ã����ܸ������Ƿ���
//  222           free to receive״̬��
//  223   */
//  224 
//  225   canx->RXMGMASK = 0x1FFFFFFF; //29λIDȫ��ƥ��            
??LPLD_CAN_Init_17:
        MVNS     R0,#-536870912
        STR      R0,[R4, #+16]
//  226   canx->RX14MASK = 0x1FFFFFFF;
        MVNS     R0,#-536870912
        STR      R0,[R4, #+20]
//  227   canx->RX15MASK = 0x1FFFFFFF; 
        MVNS     R0,#-536870912
        STR      R0,[R4, #+24]
//  228  
//  229   canx->MCR &= ~(CAN_MCR_HALT_MASK); 
        LDR      R0,[R4, #+0]
        BICS     R0,R0,#0x10000000
        STR      R0,[R4, #+0]
//  230   //�ȵ����ڶ���ģʽ������ģʽ����ֹͣģʽ
//  231   while( canx->MCR & CAN_MCR_FRZACK_MASK); 
??LPLD_CAN_Init_20:
        LDR      R0,[R4, #+0]
        LSLS     R0,R0,#+7
        BMI.N    ??LPLD_CAN_Init_20
//  232   
//  233   while( canx->MCR & CAN_MCR_NOTRDY_MASK);
??LPLD_CAN_Init_21:
        LDR      R0,[R4, #+0]
        LSLS     R0,R0,#+4
        BMI.N    ??LPLD_CAN_Init_21
//  234 }
        POP      {R0-R6,PC}       ;; return
//  235 /*
//  236  * LPLD_CAN_SetBaudRate
//  237  * ����CAN������,PLL������100Mhz
//  238  * ����:
//  239  *    CAN_Type *canx
//  240  *      |___CAN0 --CAN0��ģ��
//  241  *      |___CAN1 --CAN0��ģ��
//  242  *    baud ������
//  243  *      |__CAN_BAUD_RATE_50KBPS  --������50KBPS
//  244  *      |__CAN_BAUD_RATE_100KBPS --������100KBPS
//  245  *      |__CAN_BAUD_RATE_250KBPS --������250KBPS
//  246  *      |__CAN_BAUD_RATE_500KBPS --������500KBPS
//  247  *      |__CAN_BAUD_RATE_1MBPS   --������1MBPS
//  248  *  �����
//  249  *    ��
//  250 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  251 static void LPLD_CAN_SetBaudRate(CAN_Type *canx,uint32 baud)
//  252 {
//  253   uint8 prescale;
//  254   //1��CAN����λ��ʱ�����ӣ�Time Quanta = SYNC_SEG + (PROP_SEG + PSEG1 + 2) + (PSEG2 + 1)��
//  255   //SYNC_SEG =  1 ���̶�ֵ��
//  256   ASSERT(baud <= CAN_BAUD_RATE_1MBPS);
//  257   switch(baud)
LPLD_CAN_SetBaudRate:
        MOVS     R2,R1
        MOVW     R3,#+33333
        CMP      R2,R3
        BEQ.N    ??LPLD_CAN_SetBaudRate_0
        MOVW     R3,#+50000
        CMP      R2,R3
        BEQ.N    ??LPLD_CAN_SetBaudRate_1
        LDR.W    R3,??DataTable19_14  ;; 0x14585
        CMP      R2,R3
        BEQ.N    ??LPLD_CAN_SetBaudRate_0
        LDR.W    R3,??DataTable19_15  ;; 0x186a0
        CMP      R2,R3
        BEQ.N    ??LPLD_CAN_SetBaudRate_0
        LDR.W    R3,??DataTable19_16  ;; 0x1e848
        CMP      R2,R3
        BEQ.N    ??LPLD_CAN_SetBaudRate_0
        LDR.W    R3,??DataTable19_17  ;; 0x3d090
        CMP      R2,R3
        BEQ.N    ??LPLD_CAN_SetBaudRate_1
        LDR.W    R3,??DataTable19_18  ;; 0x7a120
        CMP      R2,R3
        BEQ.N    ??LPLD_CAN_SetBaudRate_1
        LDR.W    R3,??DataTable19_19  ;; 0xf4240
        CMP      R2,R3
        BNE.N    ??LPLD_CAN_SetBaudRate_2
//  258   {
//  259     case CAN_BAUD_RATE_1MBPS:
//  260       {
//  261         prescale = CAN_GET_PRESCALE(g_bus_clock,baud,8); 
??LPLD_CAN_SetBaudRate_3:
        LDR.W    R2,??DataTable19_20
        LDR      R2,[R2, #+0]
        LSLS     R1,R1,#+3
        UDIV     R1,R2,R1
        SUBS     R1,R1,#+1
//  262         //����CAN����ͨ�ŵĲ�����
//  263         canx->CTRL1 = (0 | CAN_CTRL1_PROPSEG(3)
//  264                          | CAN_CTRL1_RJW(0)   
//  265                          | CAN_CTRL1_PSEG1(0) 
//  266                          | CAN_CTRL1_PSEG2(1)
//  267                          | CAN_CTRL1_PRESDIV(prescale)); 
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+24
        ORR      R1,R1,#0x10000
        ORRS     R1,R1,#0x3
        STR      R1,[R0, #+4]
//  268         break;
        B.N      ??LPLD_CAN_SetBaudRate_4
//  269       }
//  270     case CAN_BAUD_RATE_33KBPS:
//  271     case CAN_BAUD_RATE_83KBPS:
//  272     case CAN_BAUD_RATE_100KBPS:
//  273     case CAN_BAUD_RATE_125KBPS:
//  274       {
//  275         //����time_quanta = 12 
//  276         prescale = CAN_GET_PRESCALE(g_bus_clock,baud,12); 
??LPLD_CAN_SetBaudRate_0:
        LDR.W    R2,??DataTable19_20
        LDR      R2,[R2, #+0]
        MOVS     R3,#+12
        MULS     R1,R3,R1
        UDIV     R1,R2,R1
        SUBS     R1,R1,#+1
//  277         //����CAN����ͨ�ŵĲ�����
//  278         canx->CTRL1 = (0 | CAN_CTRL1_PROPSEG(2) 
//  279                          | CAN_CTRL1_RJW(2)  
//  280                          | CAN_CTRL1_PSEG1(3) 
//  281                          | CAN_CTRL1_PSEG2(3)
//  282                          | CAN_CTRL1_PRESDIV(prescale)); 
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+24
        ORR      R1,R1,#0x9B0000
        ORRS     R1,R1,#0x2
        STR      R1,[R0, #+4]
//  283         break;
        B.N      ??LPLD_CAN_SetBaudRate_4
//  284       }
//  285     case CAN_BAUD_RATE_50KBPS:
//  286     case CAN_BAUD_RATE_500KBPS:
//  287     case CAN_BAUD_RATE_250KBPS:
//  288       {
//  289         //����time_quanta = 12 
//  290         prescale = CAN_GET_PRESCALE(g_bus_clock,baud,12); 
??LPLD_CAN_SetBaudRate_1:
        LDR.W    R2,??DataTable19_20
        LDR      R2,[R2, #+0]
        MOVS     R3,#+12
        MULS     R1,R3,R1
        UDIV     R1,R2,R1
        SUBS     R1,R1,#+1
//  291         //����CAN����ͨ�ŵĲ�����
//  292         canx->CTRL1 = (0 | CAN_CTRL1_PROPSEG(2)
//  293                          | CAN_CTRL1_RJW(1)  
//  294                          | CAN_CTRL1_PSEG1(3) 
//  295                          | CAN_CTRL1_PSEG2(3)
//  296                          | CAN_CTRL1_PRESDIV(prescale)); 
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R1,R1,#+24
        ORR      R1,R1,#0x5B0000
        ORRS     R1,R1,#0x2
        STR      R1,[R0, #+4]
//  297         break;
        B.N      ??LPLD_CAN_SetBaudRate_4
//  298       }
//  299     default:break;
//  300   }
//  301 }
??LPLD_CAN_SetBaudRate_2:
??LPLD_CAN_SetBaudRate_4:
        BX       LR               ;; return
//  302 
//  303 /*
//  304  * LPLD_CAN_Deinit
//  305  * CAN����ʼ���������ڸú����н�ֹCANx������ʱ�ӣ���ֹģ���жϣ��ر�CANģ��
//  306  * 
//  307  * ����:
//  308  *    CAN_InitTypeDef--can_init_structure
//  309  *                     ���嶨���HW_CAN.h can_init_structure
//  310  * ���:
//  311  *    ��
//  312  *
//  313 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  314 void LPLD_CAN_Deinit(CAN_InitTypeDef can_init_structure)
//  315 {
LPLD_CAN_Deinit:
        PUSH     {R4,LR}
//  316   CAN_Type *canx = can_init_structure.CAN_Canx;
        MOVS     R4,R0
//  317   
//  318   if(canx == CAN0)
        LDR.W    R0,??DataTable19_3  ;; 0x40024000
        CMP      R4,R0
        BNE.N    ??LPLD_CAN_Deinit_0
//  319   {
//  320     SIM->SCGC6 &= ~SIM_SCGC6_FLEXCAN0_MASK;
        LDR.W    R0,??DataTable19_4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10
        LDR.W    R1,??DataTable19_4  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  321     disable_irq(CAN0_ORed_Message_buffer_IRQn);
        MOVS     R0,#+29
        BL       NVIC_DisableIRQ
        B.N      ??LPLD_CAN_Deinit_1
//  322   }
//  323   else
//  324   {
//  325     SIM->SCGC3 &= ~SIM_SCGC3_FLEXCAN1_MASK;
??LPLD_CAN_Deinit_0:
        LDR.W    R0,??DataTable19_5  ;; 0x40048030
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10
        LDR.W    R1,??DataTable19_5  ;; 0x40048030
        STR      R0,[R1, #+0]
//  326     enable_irq(CAN1_ORed_Message_buffer_IRQn);
        MOVS     R0,#+37
        BL       NVIC_EnableIRQ
//  327   }
//  328   //��ֹCAN����
//  329   canx->MCR |= CAN_MCR_MDIS_MASK;
??LPLD_CAN_Deinit_1:
        LDR      R0,[R4, #+0]
        ORRS     R0,R0,#0x80000000
        STR      R0,[R4, #+0]
//  330   canx->MCR |= CAN_MCR_HALT_MASK; 
        LDR      R0,[R4, #+0]
        ORRS     R0,R0,#0x10000000
        STR      R0,[R4, #+0]
//  331   canx->MCR |= CAN_MCR_FRZ_MASK;
        LDR      R0,[R4, #+0]
        ORRS     R0,R0,#0x40000000
        STR      R0,[R4, #+0]
//  332 }
        POP      {R4,PC}          ;; return
//  333 /*
//  334  * LPLD_CAN_EnableIrq
//  335  * ʹ��CANģ���ж�
//  336  * 
//  337  * ����:
//  338  *    CAN_InitTypeDef--can_init_structure
//  339  *                     ���嶨���HW_CAN.h can_init_structure
//  340  * ���:
//  341  *    ��
//  342  *
//  343 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  344 void LPLD_CAN_EnableIrq(CAN_InitTypeDef can_init_structure)
//  345 {
LPLD_CAN_EnableIrq:
        PUSH     {R7,LR}
//  346   CAN_Type *canx = can_init_structure.CAN_Canx;
//  347     
//  348   if(canx == CAN0)
        LDR.W    R1,??DataTable19_3  ;; 0x40024000
        CMP      R0,R1
        BNE.N    ??LPLD_CAN_EnableIrq_0
//  349   {
//  350     enable_irq(CAN0_ORed_Message_buffer_IRQn);
        MOVS     R0,#+29
        BL       NVIC_EnableIRQ
        B.N      ??LPLD_CAN_EnableIrq_1
//  351   }
//  352   else if(canx == CAN1)
??LPLD_CAN_EnableIrq_0:
        LDR.W    R1,??DataTable19_21  ;; 0x400a4000
        CMP      R0,R1
        BNE.N    ??LPLD_CAN_EnableIrq_1
//  353   {
//  354     enable_irq(CAN1_ORed_Message_buffer_IRQn);
        MOVS     R0,#+37
        BL       NVIC_EnableIRQ
//  355   }
//  356 }
??LPLD_CAN_EnableIrq_1:
        POP      {R0,PC}          ;; return
//  357 
//  358 /*
//  359  * LPLD_CAN_DisableIrq
//  360  * ��ֹCANģ���ж�
//  361  * 
//  362  * ����:
//  363  *    CAN_InitTypeDef--can_init_structure
//  364  *                     ���嶨���HW_CAN.h can_init_structure
//  365  * ���:
//  366  *    ��
//  367  *
//  368 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  369 void LPLD_CAN_DisableIrq(CAN_InitTypeDef can_init_structure)
//  370 {
LPLD_CAN_DisableIrq:
        PUSH     {R7,LR}
//  371   CAN_Type *canx = can_init_structure.CAN_Canx;
//  372     
//  373   if(canx == CAN0)
        LDR.W    R1,??DataTable19_3  ;; 0x40024000
        CMP      R0,R1
        BNE.N    ??LPLD_CAN_DisableIrq_0
//  374   {
//  375     disable_irq(CAN0_ORed_Message_buffer_IRQn);
        MOVS     R0,#+29
        BL       NVIC_DisableIRQ
        B.N      ??LPLD_CAN_DisableIrq_1
//  376   }
//  377   else if(canx == CAN1)
??LPLD_CAN_DisableIrq_0:
        LDR.W    R1,??DataTable19_21  ;; 0x400a4000
        CMP      R0,R1
        BNE.N    ??LPLD_CAN_DisableIrq_1
//  378   {
//  379     disable_irq(CAN1_ORed_Message_buffer_IRQn);
        MOVS     R0,#+37
        BL       NVIC_DisableIRQ
//  380   }
//  381 }
??LPLD_CAN_DisableIrq_1:
        POP      {R0,PC}          ;; return
//  382 
//  383 /*
//  384  * LPLD_CAN_InitMessageObject
//  385  *
//  386  * ����CAN Message buffer��Msg����ʽ��ͨ��CAN_MSGOBJ_InitTypeDef
//  387  * �ṹ���CAN Message buffer���г�ʼ����
//  388  * 
//  389  * ����:
//  390  *    CAN_MSGOBJ_InitTypeDef--can_msg_init_structure
//  391  *                            ���嶨���HW_CAN.h CAN_MSGOBJ_InitTypeDef
//  392  *    message_id
//  393  *      ����message_id��id���ȸ���CAN_MSGOBJ_InitTypeDef�Ĳ�������
//  394  *      id�ĳ��ȷ�Ϊ11λ��׼֡��29λ��չ֡����
//  395  *      CAN_MSGOBJ_ID_STD ��ʾ��׼֡����CAN_MSGOBJ_InitTypeDef������id����ΪCAN_MSGOBJ_ID_STD
//  396  *      ��ʱmessage_id�Ϊ11λ�����ܳ���0x0FFF��
//  397  *      CAN_MSGOBJ_ID_EXT ��ʾ��չ֡����CAN_MSGOBJ_InitTypeDef������id����ΪCAN_MSGOBJ_ID_EXT
//  398  *      ��ʱmessage_id�Ϊ29λ�����ܳ���0x1FFFFFFF��
//  399  * ���:
//  400  *    ��
//  401  *
//  402  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  403 void LPLD_CAN_InitMessageObject(CAN_MSGOBJ_InitTypeDef can_msg_init_structure,uint32 rx_id)
//  404 { 
LPLD_CAN_InitMessageObject:
        PUSH     {R0-R6,LR}
//  405   uint8     msg_num_temp  = can_msg_init_structure.CAN_MsgNum;
        LDRB     R4,[SP, #+4]
//  406   uint8     dir           = can_msg_init_structure.CAN_MsgDirection;
        LDRB     R0,[SP, #+8]
//  407   CAN_Type *canx_ptr      = can_msg_init_structure.CAN_Canx;
        LDR      R5,[SP, #+0]
//  408   uint32    id_type       = can_msg_init_structure.CAN_MsgIdLength;
        LDRB     R1,[SP, #+5]
//  409   uint32    cs_temp = CAN_MB_CS_CODE(CAN_MSGOBJ_RX_EMPTY);
        MOVS     R2,#+67108864
//  410   CAN_ISR_CALLBACK isr_func = can_msg_init_structure.CAN_Isr;
        LDR      R6,[SP, #+12]
//  411   uint32    id_temp;	
//  412   
//  413   if(dir == CAN_MSGOBJ_DIR_RX)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??LPLD_CAN_InitMessageObject_0
//  414   {
//  415     canx_ptr->MB[msg_num_temp].CS = CAN_MB_CS_CODE(CAN_MSGOBJ_RX_INACTIVE); 
        MOVS     R0,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R3,R5,R4, LSL #+4
        STR      R0,[R3, #+128]
        LDR      R0,[SP, #+32]
//  416     //����Msg��ID
//  417     if(id_type == CAN_MSGOBJ_ID_STD)
        CMP      R1,#+0
        BNE.N    ??LPLD_CAN_InitMessageObject_1
//  418     {
//  419       id_temp =  CAN_MB_ID_STD(rx_id);
        LDR.W    R3,??DataTable19_22  ;; 0x1ffc0000
        ANDS     R0,R3,R0, LSL #+18
        B.N      ??LPLD_CAN_InitMessageObject_2
//  420     }
//  421     else
//  422     {
//  423       id_temp =  CAN_MB_ID_EXT(rx_id);
??LPLD_CAN_InitMessageObject_1:
        LSLS     R0,R0,#+3        ;; ZeroExtS R0,R0,#+3,#+3
        LSRS     R0,R0,#+3
//  424     }
//  425     canx_ptr->MB[msg_num_temp].ID = id_temp;  
??LPLD_CAN_InitMessageObject_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R3,R5,R4, LSL #+4
        STR      R0,[R3, #+132]
//  426     canx_ptr->MB[msg_num_temp].CS = cs_temp | CAN_MB_CS_IDE(id_type);
        LSLS     R0,R1,#+21
        ANDS     R0,R0,#0x200000
        ORRS     R0,R0,R2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R5,R4, LSL #+4
        STR      R0,[R1, #+128]
//  427   }
//  428   if(can_msg_init_structure.CAN_MsgInterrupt == TRUE)
??LPLD_CAN_InitMessageObject_0:
        LDRB     R0,[SP, #+9]
        CMP      R0,#+1
        BNE.N    ??LPLD_CAN_InitMessageObject_3
//  429   {
//  430     LPLD_CAN_EnableMsgInterrupt(canx_ptr,msg_num_temp);//ʹ��Msg�ж� 
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        BL       LPLD_CAN_EnableMsgInterrupt
//  431     //����Msg�жϻص�����
//  432     if(canx_ptr == CAN0)
        LDR.W    R0,??DataTable19_3  ;; 0x40024000
        CMP      R5,R0
        BNE.N    ??LPLD_CAN_InitMessageObject_4
//  433     {
//  434       if(isr_func != NULL)
        MOVS     R0,R6
        CMP      R0,#+0
        BEQ.N    ??LPLD_CAN_InitMessageObject_5
//  435       {
//  436         CAN0_ISR[msg_num_temp] = isr_func;
        LDR.W    R0,??DataTable19_23
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R6,[R0, R4, LSL #+2]
        B.N      ??LPLD_CAN_InitMessageObject_5
//  437       }
//  438     }
//  439     else
//  440     {
//  441       if(isr_func != NULL)
??LPLD_CAN_InitMessageObject_4:
        MOVS     R0,R6
        CMP      R0,#+0
        BEQ.N    ??LPLD_CAN_InitMessageObject_5
//  442       {
//  443         CAN1_ISR[msg_num_temp] = isr_func;
        LDR.W    R0,??DataTable19_24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R6,[R0, R4, LSL #+2]
        B.N      ??LPLD_CAN_InitMessageObject_5
//  444       }
//  445     }
//  446   }
//  447   else
//  448   {
//  449     if(canx_ptr == CAN0)
??LPLD_CAN_InitMessageObject_3:
        LDR.W    R0,??DataTable19_3  ;; 0x40024000
        CMP      R5,R0
        BNE.N    ??LPLD_CAN_InitMessageObject_6
//  450     {
//  451         CAN0_ISR[msg_num_temp] = NULL; 
        MOVS     R0,#+0
        LDR.W    R1,??DataTable19_23
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R0,[R1, R4, LSL #+2]
        B.N      ??LPLD_CAN_InitMessageObject_5
//  452     }
//  453     else
//  454     {
//  455         CAN1_ISR[msg_num_temp] = NULL;
??LPLD_CAN_InitMessageObject_6:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable19_24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R0,[R1, R4, LSL #+2]
//  456     }
//  457   }
//  458 }
??LPLD_CAN_InitMessageObject_5:
        POP      {R0-R6,PC}       ;; return
//  459 /*
//  460  * LPLD_CAN_TransmitMessage
//  461  * CAN ������Ϣ����
//  462  * ����:
//  463  *    CAN_MSGOBJ_InitTypeDef--can_msg_init_structure
//  464  *                            ���嶨���HW_CAN.h CAN_MSGOBJ_InitTypeDef
//  465  *    CAN_MessageFormat_TypeDef--*can_rx_msg
//  466  *                            ���嶨���HW_CAN.h CAN_MessageFormat_TypeDef
//  467  *    �ýṹ�����ڶ���CAN����Ϣ��ʽ����CAN������Ϣʱ�����CAN_MessageFormat_TypeDef����Ľṹ�������
//  468  *    ��ȡ��Ϣ���洢��MSG�У�MSG�Ὣ��Ϣ���͵�CAN�����ϡ�
//  469  *    �ýṹ���е���Ҫ����Ϊ ��ϢID��ʱ��������ݳ��ȡ��洢���ݵĻ�����
//  470  * ���:
//  471  *    1 �������
//  472  *    0 ����ʧ��
//  473  *
//  474  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  475 uint8 LPLD_CAN_TransmitMessage(CAN_MSGOBJ_InitTypeDef can_msg_init_structure,
//  476                                CAN_MessageFormat_TypeDef *can_tx_msg )
//  477 {
LPLD_CAN_TransmitMessage:
        PUSH     {R0-R11,LR}
        SUB      SP,SP,#+4
//  478   uint8  request;
//  479   uint8  msg_num_temp  = can_msg_init_structure.CAN_MsgNum;
        LDRB     R4,[SP, #+8]
//  480   CAN_Type *canx_ptr   = can_msg_init_structure.CAN_Canx;
        LDR      R5,[SP, #+4]
//  481   uint32  id_type      = can_msg_init_structure.CAN_MsgIdLength;
        LDRB     R6,[SP, #+9]
        LDR      R0,[SP, #+56]
//  482   
//  483   uint32  message_id = can_tx_msg->CAN_MsgID; ;
        LDR      R7,[R0, #+0]
//  484   uint8   priority = can_tx_msg->CAN_MsgPriority; 
        LDRB     R8,[R0, #+15]
//  485   uint8  *in_data_buffer = can_tx_msg->CAN_MsgDataBuffer;
        ADDS     R9,R0,#+6
//  486   uint8   in_data_length = can_tx_msg->CAN_MsgDataLength;
        LDRB     R10,[R0, #+14]
//  487   uint32  id_temp;
//  488   uint32  cs_temp = CAN_MB_CS_RTR(can_msg_init_structure.CAN_MsgRTR) | 
//  489                     CAN_MB_CS_SRR(can_msg_init_structure.CAN_MsgSRR) |
//  490                     CAN_MB_CS_IDE(can_msg_init_structure.CAN_MsgIdLength);
        LDRB     R0,[SP, #+11]
        LSLS     R0,R0,#+20
        ANDS     R0,R0,#0x100000
        LDRB     R1,[SP, #+10]
        LSLS     R1,R1,#+22
        ANDS     R1,R1,#0x400000
        ORRS     R0,R1,R0
        LDRB     R1,[SP, #+9]
        LSLS     R1,R1,#+21
        ANDS     R1,R1,#0x200000
        ORRS     R11,R1,R0
//  491   
//  492   if(msg_num_temp >= MSG_MAX_NO || in_data_length > 8)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+16
        BGE.N    ??LPLD_CAN_TransmitMessage_0
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+9
        BLT.N    ??LPLD_CAN_TransmitMessage_1
//  493   {
//  494     return 0; // ������ֵ
??LPLD_CAN_TransmitMessage_0:
        MOVS     R0,#+0
        B.N      ??LPLD_CAN_TransmitMessage_2
//  495   }
//  496   //�������Msg�������е�CODE������CAN_MSGOBJ_TX_ONCE
//  497   if( LPLD_CAN_GetMsgCode(canx_ptr,msg_num_temp) != CAN_MSGOBJ_TX_ONCE)
??LPLD_CAN_TransmitMessage_1:
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        BL       LPLD_CAN_GetMsgCode
        CMP      R0,#+12
        BEQ.N    ??LPLD_CAN_TransmitMessage_3
//  498   {
//  499     //����Msg��ID
//  500     if(id_type == CAN_MSGOBJ_ID_STD)
        CMP      R6,#+0
        BNE.N    ??LPLD_CAN_TransmitMessage_4
//  501     {
//  502       id_temp =  CAN_MB_ID_STD(message_id);
        LDR.W    R0,??DataTable19_22  ;; 0x1ffc0000
        ANDS     R0,R0,R7, LSL #+18
        B.N      ??LPLD_CAN_TransmitMessage_5
//  503     }
//  504     else
//  505     {
//  506       id_temp =  CAN_MB_ID_EXT(message_id);
??LPLD_CAN_TransmitMessage_4:
        LSLS     R0,R7,#+3        ;; ZeroExtS R0,R7,#+3,#+3
        LSRS     R0,R0,#+3
//  507     }
//  508     //����Msg�������е�CODE��дINACTIVE����
//  509     canx_ptr->MB[msg_num_temp].CS = CAN_MB_CS_CODE(CAN_MSGOBJ_TX_INACTIVE) | cs_temp;
??LPLD_CAN_TransmitMessage_5:
        ORRS     R1,R11,#0x8000000
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R2,R5,R4, LSL #+4
        STR      R1,[R2, #+128]
//  510     canx_ptr->MB[msg_num_temp].ID = CAN_MB_ID_PRIO(priority) | id_temp;
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        ORRS     R0,R0,R8, LSL #+29
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R5,R4, LSL #+4
        STR      R0,[R1, #+132]
//  511     //��Msg��д��Ҫ���͵�����
//  512     LPLD_CAN_WriteData(canx_ptr,msg_num_temp,in_data_length,in_data_buffer);
        MOV      R3,R9
        MOV      R2,R10
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        BL       LPLD_CAN_WriteData
//  513     //����Msg�������е�CODE��дTX_ONCE����ȴ��������
//  514     canx_ptr->MB[msg_num_temp].CS = (canx_ptr->MB[msg_num_temp].CS & (~CAN_MB_CS_CODE_MASK)) | 
//  515                                      CAN_MB_CS_CODE(CAN_MSGOBJ_TX_ONCE)|
//  516                                      CAN_MB_CS_DLC(in_data_length);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R0,R5,R4, LSL #+4
        LDR      R0,[R0, #+128]
        BICS     R0,R0,#0xF000000
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        LSLS     R1,R10,#+16
        ANDS     R1,R1,#0xF0000
        ORRS     R0,R1,R0
        ORRS     R0,R0,#0xC000000
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R5,R4, LSL #+4
        STR      R0,[R1, #+128]
//  517     //������������жϣ�������Ϻ�ᴥ���ж�
//  518     request = 1;
        MOVS     R0,#+1
        B.N      ??LPLD_CAN_TransmitMessage_6
//  519   }
//  520   else
//  521   {
//  522     request = 0;
??LPLD_CAN_TransmitMessage_3:
        MOVS     R0,#+0
//  523   }
//  524   return (request);
??LPLD_CAN_TransmitMessage_6:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??LPLD_CAN_TransmitMessage_2:
        ADD      SP,SP,#+20
        POP      {R4-R11,PC}      ;; return
//  525 }
//  526 
//  527 /*
//  528  * LPLD_CAN_ReceivedMessage
//  529  * CAN ������պ������˺���һ����CAN�жϺ����е���
//  530  * ����:
//  531  *    CAN_MSGOBJ_InitTypeDef--can_msg_init_structure
//  532  *                            ���嶨���HW_CAN.h CAN_MSGOBJ_InitTypeDef
//  533  *    CAN_MessageFormat_TypeDef--*can_rx_msg
//  534  *                            ���嶨���HW_CAN.h CAN_MessageFormat_TypeDef
//  535  *    �ýṹ�����ڶ���CAN����Ϣ��ʽ����CAN�ɹ�������Ϣ�Ժ󣬻��MSG�н���Ϣ�洢��
//  536  *    CAN_MessageFormat_TypeDef����Ľṹ������С�
//  537  *    �ýṹ���е���Ҫ����Ϊ ��ϢID��ʱ��������ݳ��ȡ��洢���ݵĻ�����
//  538  *    
//  539  *  �����
//  540  *    ��
//  541  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  542 void LPLD_CAN_ReceivedMessage(CAN_MSGOBJ_InitTypeDef can_msg_init_structure,\ 
//  543                               CAN_MessageFormat_TypeDef *can_rx_msg)
//  544 {
LPLD_CAN_ReceivedMessage:
        PUSH     {R0-R7,LR}
        SUB      SP,SP,#+12
//  545   uint32 message_code,i;
//  546   volatile uint16 timer;
//  547   uint8 rx_data[CAN_DATA_MAX_BYTES];
//  548   uint8 data_length;
//  549   uint16 time_stamp;
//  550   uint32 msg_id;
//  551   CAN_Type *canx = can_msg_init_structure.CAN_Canx;
        LDR      R4,[SP, #+12]
//  552   uint8 msg_num = can_msg_init_structure.CAN_MsgNum;
        LDRB     R5,[SP, #+16]
//  553   //���Msg�������е�codeֵ
//  554   message_code = LPLD_CAN_GetMsgCode(canx,msg_num);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_CAN_GetMsgCode
//  555   
//  556   if ((message_code != CAN_MSGOBJ_RX_BUSY) && 
//  557      (message_code != CAN_MSGOBJ_RX_OVERRUN))
        CMP      R0,#+1
        BEQ.N    ??LPLD_CAN_ReceivedMessage_0
        CMP      R0,#+6
        BEQ.N    ??LPLD_CAN_ReceivedMessage_0
//  558   {
//  559     //��ȡID(��ѡ)
//  560     msg_id = LPLD_CAN_GetMsgID(canx, msg_num);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_CAN_GetMsgID
        MOVS     R6,R0
//  561    
//  562     //��ȡMsg�������������ݵĳ���
//  563     data_length    = (uint8_t)LPLD_CAN_GetMsgLength(canx, msg_num);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_CAN_GetMsgLength
        MOVS     R7,R0
//  564     //��ȡMsg��������������
//  565     LPLD_CAN_GetData(canx, msg_num,data_length,rx_data);
        ADD      R3,SP,#+4
        MOVS     R2,R7
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_CAN_GetData
//  566     //���Msg������ʱ���
//  567     time_stamp = LPLD_CAN_GetMsgTimeStamp(canx, msg_num);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_CAN_GetMsgTimeStamp
//  568     
//  569     for(i = data_length; i < 8; i++)
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R1,R7
        B.N      ??LPLD_CAN_ReceivedMessage_1
//  570     {
//  571        rx_data[i] = 0;
??LPLD_CAN_ReceivedMessage_2:
        MOVS     R2,#+0
        ADD      R3,SP,#+4
        STRB     R2,[R1, R3]
//  572     }
        ADDS     R1,R1,#+1
??LPLD_CAN_ReceivedMessage_1:
        CMP      R1,#+8
        BCC.N    ??LPLD_CAN_ReceivedMessage_2
        LDR      R3,[SP, #+48]
//  573     //��MSG�е���Ϣ�洢��can_rx_msg��
//  574     can_rx_msg->CAN_MsgID = msg_id;
        STR      R6,[R3, #+0]
//  575     can_rx_msg->CAN_MsgDataLength = data_length;
        STRB     R7,[R3, #+14]
//  576     can_rx_msg->CAN_MsgTimeStamp  = time_stamp;
        STRH     R0,[R3, #+4]
//  577     memcpy(can_rx_msg->CAN_MsgDataBuffer,rx_data,data_length);
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R2,R7
        ADD      R1,SP,#+4
        ADDS     R0,R3,#+6
        BL       memcpy
//  578      
//  579     //��ȡ���ɼ�������������ǰMsg������
//  580     timer = LPLD_CAN_UnlockMsg(canx);
        MOVS     R0,R4
        BL       LPLD_CAN_UnlockMsg
        STRH     R0,[SP, #+0]
//  581     //���Msg���������жϱ�־λ
//  582     LPLD_CAN_Interrupt_ClearPending(canx,msg_num);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_CAN_Interrupt_ClearPending
//  583     //�ٴ�д�����codeΪempty״̬
//  584     LPLD_CAN_SetMsgCode(canx,msg_num,CAN_MSGOBJ_RX_EMPTY);
        MOVS     R2,#+4
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_CAN_SetMsgCode
        B.N      ??LPLD_CAN_ReceivedMessage_3
//  585   }
//  586   else
//  587   {
//  588     //�����������
//  589     LPLD_CAN_Interrupt_ClearPending(canx,msg_num);
??LPLD_CAN_ReceivedMessage_0:
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_CAN_Interrupt_ClearPending
//  590     //��ȡ���ɼ�������������ǰMsg������
//  591     timer = LPLD_CAN_UnlockMsg(canx);
        MOVS     R0,R4
        BL       LPLD_CAN_UnlockMsg
        STRH     R0,[SP, #+0]
//  592   }
//  593 }
??LPLD_CAN_ReceivedMessage_3:
        ADD      SP,SP,#+28
        POP      {R4-R7,PC}       ;; return
//  594 
//  595 /*
//  596  * LPLD_CAN_Interrupt_ClearPending
//  597  * ���Msg���жϱ�־λ
//  598  * ����:
//  599  *    CAN_Type *canx
//  600  *      |___ CAN0 --CAN0��ģ��
//  601  *      |___ CAN1 --CAN1��ģ��
//  602  *    msg_num ѡ��Ҫ����жϱ�־��Msg������
//  603  *      |___ MSG_NUM_0 --Msg������0
//  604  *      |___ MSG_NUM_1 --Msg������1
//  605  *      |___ MSG_NUM_2 --Msg������2
//  606  *      |___ MSG_NUM_3 --Msg������3
//  607  *      |___ MSG_NUM_4 --Msg������4
//  608  *      ...... 
//  609  *      |___ MSG_NUM_15 --Msg������15
//  610  * ���:
//  611  *   ��
//  612  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  613 static void LPLD_CAN_Interrupt_ClearPending(CAN_Type *canx, uint8 msg_num)
//  614 {   
//  615   if(msg_num < 32)
LPLD_CAN_Interrupt_ClearPending:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+32
        BGE.N    ??LPLD_CAN_Interrupt_ClearPending_0
//  616   {
//  617     canx->IFLAG1 |= (1<<msg_num); 
        LDR      R2,[R0, #+48]
        MOVS     R3,#+1
        LSLS     R1,R3,R1
        ORRS     R1,R1,R2
        STR      R1,[R0, #+48]
        B.N      ??LPLD_CAN_Interrupt_ClearPending_1
//  618   }
//  619   else
//  620   {
//  621     canx->IFLAG2 |= (1<<(msg_num-32));
??LPLD_CAN_Interrupt_ClearPending_0:
        LDR      R2,[R0, #+44]
        MOVS     R3,#+1
        SUBS     R1,R1,#+32
        LSLS     R1,R3,R1
        ORRS     R1,R1,R2
        STR      R1,[R0, #+44]
//  622   }
//  623 }
??LPLD_CAN_Interrupt_ClearPending_1:
        BX       LR               ;; return
//  624 
//  625 /*
//  626  * LPLD_CAN_Interrupt_GetFlag
//  627  * ���CAN ���жϱ�־λ
//  628  * ����:
//  629  *    CAN_Type *canx
//  630  *      |___ CAN0 --CAN0��ģ��
//  631  *      |___ CAN1 --CAN1��ģ��
//  632  *    msg_num ѡ��Ҫ����жϱ�־��Msg������
//  633  *      |___ MSG_NUM_0 --Msg������0
//  634  *      |___ MSG_NUM_1 --Msg������1
//  635  *      |___ MSG_NUM_2 --Msg������2
//  636  *      |___ MSG_NUM_3 --Msg������3
//  637  *      |___ MSG_NUM_4 --Msg������4
//  638  *      ...... 
//  639  *      |___ MSG_NUM_15 --Msg������15
//  640  * ���:
//  641  *    ������Ҫ Msg���������жϱ�־λ
//  642  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  643 static uint8 LPLD_CAN_Interrupt_GetFlag(CAN_Type *canx, uint8 msg_num)
//  644 {   
//  645   uint8 status;
//  646   if(msg_num < 32)
LPLD_CAN_Interrupt_GetFlag:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+32
        BGE.N    ??LPLD_CAN_Interrupt_GetFlag_0
//  647   {
//  648     status = (canx->IFLAG1 >> msg_num) & 0x01; 
        LDR      R0,[R0, #+48]
        LSRS     R0,R0,R1
        ANDS     R0,R0,#0x1
        B.N      ??LPLD_CAN_Interrupt_GetFlag_1
//  649   }
//  650   else
//  651   {
//  652     status = (canx->IFLAG2 >> (msg_num - 32) )& 0x01; 
??LPLD_CAN_Interrupt_GetFlag_0:
        LDR      R0,[R0, #+44]
        SUBS     R1,R1,#+32
        LSRS     R0,R0,R1
        ANDS     R0,R0,#0x1
//  653   }
//  654   return status;
??LPLD_CAN_Interrupt_GetFlag_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  655 }
//  656 
//  657 /*
//  658  * LPLD_CAN_UnlockMsg
//  659  * �ú���ͨ����ȡ���ɼ�����������Msg
//  660  * ����:
//  661  *    canx--����CAN����ͨ��
//  662  *      |__CAN0 --CAN0��ģ��
//  663  *      |__CAN1 --CAN1��ģ��
//  664  * ���:
//  665  *    16λCAN���ɼ�������¼��ʱ���
//  666  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  667 static uint16 LPLD_CAN_UnlockMsg(CAN_Type *canx)
//  668 {
//  669   return (canx->TIMER);
LPLD_CAN_UnlockMsg:
        LDR      R0,[R0, #+8]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return
//  670 }
//  671 
//  672 /*
//  673  * LPLD_CAN_EnableMsgInterrupt
//  674  * �ú�������ʹ��Msg�ж�
//  675  * 
//  676  * ����:
//  677  *    canx--����CAN����ͨ��
//  678  *      |__CAN0 --CAN0��ģ��
//  679  *      |__CAN1 --CAN1��ģ��
//  680  *    msg_num ѡ����Ҫʹ���жϵ�Msg������
//  681  *      |___ MSG_NUM_0 --Msg������0
//  682  *      |___ MSG_NUM_1 --Msg������1
//  683  *      |___ MSG_NUM_2 --Msg������2
//  684  *      |___ MSG_NUM_3 --Msg������3
//  685  *      |___ MSG_NUM_4 --Msg������4
//  686  *      ...... 
//  687  *      |___ MSG_NUM_15 --Msg������15
//  688  * ���:
//  689  *    ��
//  690  *
//  691  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  692 static void LPLD_CAN_EnableMsgInterrupt(CAN_Type *canx, uint8 msg_num)
//  693 {
//  694   if(msg_num < 32)
LPLD_CAN_EnableMsgInterrupt:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+32
        BGE.N    ??LPLD_CAN_EnableMsgInterrupt_0
//  695   {
//  696     canx->IMASK1 |= (1<<msg_num); 
        LDR      R2,[R0, #+40]
        MOVS     R3,#+1
        LSLS     R1,R3,R1
        ORRS     R1,R1,R2
        STR      R1,[R0, #+40]
        B.N      ??LPLD_CAN_EnableMsgInterrupt_1
//  697   }
//  698   else
//  699   {
//  700     canx->IMASK2 |= (1<<(msg_num-32));
??LPLD_CAN_EnableMsgInterrupt_0:
        LDR      R2,[R0, #+36]
        MOVS     R3,#+1
        SUBS     R1,R1,#+32
        LSLS     R1,R3,R1
        ORRS     R1,R1,R2
        STR      R1,[R0, #+36]
//  701   }
//  702 }
??LPLD_CAN_EnableMsgInterrupt_1:
        BX       LR               ;; return
//  703 
//  704 /*
//  705  * LPLD_CAN_SetMsgCode
//  706  * �ú�����������Msg��codeֵ
//  707  * 
//  708  * ����:
//  709  *    canx--����CAN����ͨ��
//  710  *      |__CAN0 --CAN0��ģ��
//  711  *      |__CAN1 --CAN1��ģ��
//  712  *    msg_num ѡ����Ҫ����CODE��Msg������
//  713  *      |___ MSG_NUM_0 --Msg������0
//  714  *      |___ MSG_NUM_1 --Msg������1
//  715  *      |___ MSG_NUM_2 --Msg������2
//  716  *      |___ MSG_NUM_3 --Msg������3
//  717  *      |___ MSG_NUM_4 --Msg������4
//  718  *      ...... 
//  719  *      |___ MSG_NUM_15 --Msg������15
//  720  *    code--��Ҫ���õ�codeֵ
//  721  * ���:
//  722  *    ��
//  723  *
//  724  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  725 static void LPLD_CAN_SetMsgCode(CAN_Type *canx, uint8 msg_num, uint8 code)
//  726 {
//  727   //canx->MB[msg_num].CS &= (~CAN_MB_CS_CODE_MASK);
//  728   canx->MB[msg_num].CS |= CAN_MB_CS_CODE(code);
LPLD_CAN_SetMsgCode:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R3,R0,R1, LSL #+4
        LDR      R3,[R3, #+128]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R2,R2,#+24
        ANDS     R2,R2,#0xF000000
        ORRS     R2,R2,R3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R0,R1, LSL #+4
        STR      R2,[R0, #+128]
//  729 }
        BX       LR               ;; return
//  730 
//  731 /*
//  732  * LPLD_CAN_GetMsgCode
//  733  * �ú������ڻ��Msg��������codeֵ
//  734  * 
//  735  * ����:
//  736  *    canx--����CAN����ͨ��
//  737  *      |__CAN0 --CAN0��ģ��
//  738  *      |__CAN1 --CAN1��ģ��
//  739  *    msg_num ѡ����Ҫ���CODE��Msg������
//  740  *      |___ MSG_NUM_0 --Msg������0
//  741  *      |___ MSG_NUM_1 --Msg������1
//  742  *      |___ MSG_NUM_2 --Msg������2
//  743  *      |___ MSG_NUM_3 --Msg������3
//  744  *      |___ MSG_NUM_4 --Msg������4
//  745  *      ...... 
//  746  *      |___ MSG_NUM_15 --Msg������15
//  747  * ���:
//  748  *     ������ӦMsg��������code
//  749  *
//  750  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  751 static uint32 LPLD_CAN_GetMsgCode(CAN_Type *canx, uint8 msg_num)
//  752 {
//  753    return CAN_GET_MB_CS_CODE(canx->MB[msg_num].CS);
LPLD_CAN_GetMsgCode:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R0,R1, LSL #+4
        LDR      R0,[R0, #+128]
        UBFX     R0,R0,#+24,#+4
        BX       LR               ;; return
//  754 }
//  755 /*
//  756  * LPLD_CAN_GetMsgTimeStamp
//  757  * �ú������ڻ��Msg��������ʱ���
//  758  * 
//  759  * ����:
//  760  *    canx--����CAN����ͨ��
//  761  *      |__CAN0 --CAN0��ģ��
//  762  *      |__CAN1 --CAN1��ģ��
//  763  *    msg_num ѡ����Ҫ���ʱ�����Msg������
//  764  *      |___ MSG_NUM_0 --Msg������0
//  765  *      |___ MSG_NUM_1 --Msg������1
//  766  *      |___ MSG_NUM_2 --Msg������2
//  767  *      |___ MSG_NUM_3 --Msg������3
//  768  *      |___ MSG_NUM_4 --Msg������4
//  769  *      ...... 
//  770  *      |___ MSG_NUM_15 --Msg������15
//  771  * ���:
//  772  *     ������ӦMsg��������ʱ���
//  773  *
//  774  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  775 static uint16 LPLD_CAN_GetMsgTimeStamp(CAN_Type *canx, uint8 msg_num)
//  776 {
//  777   return CAN_GET_MB_CS_TIMESTAMP(canx->MB[msg_num].CS);
LPLD_CAN_GetMsgTimeStamp:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R0,R1, LSL #+4
        LDR      R0,[R0, #+128]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return
//  778 }
//  779 /*
//  780  * LPLD_CAN_GetMsgID
//  781  * �ú������ڻ��Msg��������IDֵ
//  782  * 
//  783  * ����:
//  784  *    canx--����CAN����ͨ��
//  785  *      |__CAN0 --CAN0��ģ��
//  786  *      |__CAN1 --CAN1��ģ��
//  787  *    msg_num ѡ����Ҫ���ID��Msg������
//  788  *      |___ MSG_NUM_0 --Msg������0
//  789  *      |___ MSG_NUM_1 --Msg������1
//  790  *      |___ MSG_NUM_2 --Msg������2
//  791  *      |___ MSG_NUM_3 --Msg������3
//  792  *      |___ MSG_NUM_4 --Msg������4
//  793  *      ...... 
//  794  *      |___ MSG_NUM_15 --Msg������15
//  795  * ���:
//  796  *     ������ӦMsg��������ID
//  797  *
//  798  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  799 static uint32 LPLD_CAN_GetMsgID(CAN_Type *canx, uint8 msg_num)
//  800 {
//  801   uint32 id_temp;
//  802   if(CAN_GET_MB_CS_IDE(canx->MB[msg_num].CS) == CAN_MSGOBJ_ID_STD)
LPLD_CAN_GetMsgID:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R2,R0,R1, LSL #+4
        LDR      R2,[R2, #+128]
        UBFX     R2,R2,#+21,#+1
        CMP      R2,#+0
        BNE.N    ??LPLD_CAN_GetMsgID_0
//  803   {
//  804     id_temp =  CAN_GET_MB_ID_STD(canx->MB[msg_num].ID);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R0,R1, LSL #+4
        LDR      R0,[R0, #+132]
        UBFX     R0,R0,#+18,#+11
        B.N      ??LPLD_CAN_GetMsgID_1
//  805   }
//  806   else
//  807   {
//  808     id_temp =  CAN_GET_MB_ID_EXT(canx->MB[msg_num].ID);
??LPLD_CAN_GetMsgID_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R0,R1, LSL #+4
        LDR      R0,[R0, #+132]
        LSLS     R0,R0,#+3        ;; ZeroExtS R0,R0,#+3,#+3
        LSRS     R0,R0,#+3
//  809   }
//  810   return id_temp;
??LPLD_CAN_GetMsgID_1:
        BX       LR               ;; return
//  811 }
//  812 /*
//  813  * LPLD_CAN_GetMsgLength
//  814  * �ú������ڻ��Msg�����������ݳ���
//  815  * 
//  816  * ����:
//  817  *    canx--����CAN����ͨ��
//  818  *      |__CAN0 --CAN0��ģ��
//  819  *      |__CAN1 --CAN1��ģ��
//  820  *    msg_num ѡ����Ҫ������ݳ��ȵ�Msg������
//  821  *      |___ MSG_NUM_0 --Msg������0
//  822  *      |___ MSG_NUM_1 --Msg������1
//  823  *      |___ MSG_NUM_2 --Msg������2
//  824  *      |___ MSG_NUM_3 --Msg������3
//  825  *      |___ MSG_NUM_4 --Msg������4
//  826  *      ...... 
//  827  *      |___ MSG_NUM_15 --Msg������15
//  828  * ���:
//  829  *     ���ݵĳ���
//  830  *
//  831  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  832 static uint8 LPLD_CAN_GetMsgLength(CAN_Type *canx, uint8 msg_num)
//  833 {
//  834   return CAN_GET_MB_CS_LENGTH(canx->MB[msg_num].CS);
LPLD_CAN_GetMsgLength:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R0,R1, LSL #+4
        LDR      R0,[R0, #+128]
        LSRS     R0,R0,#+16
        ANDS     R0,R0,#0xF
        BX       LR               ;; return
//  835 }
//  836 
//  837 /*
//  838  * LPLD_CAN_GetData
//  839  * �ú������ڻ��Msg�������е�����
//  840  * 
//  841  * ����:
//  842  *    canx--����CAN����ͨ��
//  843  *      |__CAN0 --CAN0��ģ��
//  844  *      |__CAN1 --CAN1��ģ��
//  845  *    msg_num ѡ����Ҫ������ݵ�Msg������
//  846  *      |___ MSG_NUM_0 --Msg������0
//  847  *      |___ MSG_NUM_1 --Msg������1
//  848  *      |___ MSG_NUM_2 --Msg������2
//  849  *      |___ MSG_NUM_3 --Msg������3
//  850  *      |___ MSG_NUM_4 --Msg������4
//  851  *      ...... 
//  852  *      |___ MSG_NUM_15 --Msg������15
//  853  *    in_length
//  854  *      |__������ݳ���
//  855  *    *in_buffer
//  856  *      |__������ݵĻ�����
//  857  * ���:
//  858  *    �� 
//  859  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  860 static void LPLD_CAN_GetData(
//  861     CAN_Type *canx, 
//  862     uint8     msg_num, 
//  863     uint8     in_length, 
//  864     uint8    *in_buffer)
//  865 {
LPLD_CAN_GetData:
        PUSH     {R4-R7}
//  866   int i;
//  867   uint8  *pMBData;
//  868   uint8  *pRecieve  = in_buffer;
//  869   uint8  word_num   = (in_length - 1)/ 4; //Get the Message buffer word number
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        SUBS     R4,R2,#+1
        MOVS     R5,#+4
        SDIV     R4,R4,R5
//  870   uint8  rest_bytes = (in_length - 1)% 4; //Get the reset bytes of buffer
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        SUBS     R5,R2,#+1
        MOVS     R6,#+4
        SDIV     R2,R5,R6
        MLS      R2,R2,R6,R5
//  871   if(word_num > 0)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??LPLD_CAN_GetData_0
//  872   {  
//  873     pMBData = (uint8*)&canx->MB[msg_num].WORD0+3;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R5,R0,R1, LSL #+4
        ADDS     R6,R5,#+139
//  874     for(i = 0 ; i < 4 ; i++)   
        MOVS     R5,#+0
        B.N      ??LPLD_CAN_GetData_1
//  875     {
//  876       pRecieve[i] = *pMBData--;
??LPLD_CAN_GetData_2:
        LDRB     R7,[R6, #+0]
        STRB     R7,[R5, R3]
        SUBS     R6,R6,#+1
//  877     }
        ADDS     R5,R5,#+1
??LPLD_CAN_GetData_1:
        CMP      R5,#+4
        BLT.N    ??LPLD_CAN_GetData_2
//  878     pMBData = (uint8*)&canx->MB[msg_num].WORD1+3;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R0,R1, LSL #+4
        ADDS     R6,R0,#+143
        B.N      ??LPLD_CAN_GetData_3
//  879   }
//  880   else
//  881   {
//  882     pMBData = (uint8*)&canx->MB[msg_num].WORD0+3;
??LPLD_CAN_GetData_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R0,R1, LSL #+4
        ADDS     R6,R0,#+139
//  883   }
//  884 
//  885   for(i = 0; i <= rest_bytes; i++)
??LPLD_CAN_GetData_3:
        MOVS     R5,#+0
        B.N      ??LPLD_CAN_GetData_4
//  886   {
//  887     pRecieve[i+(word_num<<2)] = *pMBData--;    
??LPLD_CAN_GetData_5:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R0,R5,R4, LSL #+2
        LDRB     R1,[R6, #+0]
        STRB     R1,[R0, R3]
        SUBS     R6,R6,#+1
//  888   }
        ADDS     R5,R5,#+1
??LPLD_CAN_GetData_4:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,R5
        BGE.N    ??LPLD_CAN_GetData_5
//  889 }
        POP      {R4-R7}
        BX       LR               ;; return
//  890 
//  891 /*
//  892  * LPLD_CAN_WriteData
//  893  * �ú���������Msg�������е�д����
//  894  * 
//  895  * ����:
//  896  *    canx--����CAN����ͨ��
//  897  *      |__CAN0 --CAN0��ģ��
//  898  *      |__CAN1 --CAN1��ģ��
//  899  *    msg_num ѡ����Ҫд���ݵ�Msg������
//  900  *      |___ MSG_NUM_0 --Msg������0
//  901  *      |___ MSG_NUM_1 --Msg������1
//  902  *      |___ MSG_NUM_2 --Msg������2
//  903  *      |___ MSG_NUM_3 --Msg������3
//  904  *      |___ MSG_NUM_4 --Msg������4
//  905  *      ...... 
//  906  *      |___ MSG_NUM_15 --Msg������15
//  907  *    in_length
//  908  *      |__д�����ݳ���
//  909  *    *in_buffer
//  910  *      |__д�����ݵĻ�����
//  911  * ���:
//  912  *    �� 
//  913  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  914 static void LPLD_CAN_WriteData(
//  915     CAN_Type *canx, 
//  916     uint8     msg_num, 
//  917     uint8     in_length, 
//  918     uint8    *in_buffer )
//  919 {
LPLD_CAN_WriteData:
        PUSH     {R2-R7}
//  920   int i;
//  921   uint32 word[2] = {0};  
        ADD      R4,SP,#+0
        MOVS     R5,#+0
        MOVS     R6,#+0
        STM      R4!,{R5,R6}
        SUBS     R4,R4,#+8
//  922   uint8  word_num   = (in_length - 1)/ 4; //��� Msg ��Word ֵ
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        SUBS     R4,R2,#+1
        MOVS     R5,#+4
        SDIV     R4,R4,R5
//  923   uint8  rest_bytes = (in_length - 1)% 4; //���ʣ���ֽڵ�ֵ
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        SUBS     R6,R2,#+1
        MOVS     R7,#+4
        SDIV     R5,R6,R7
        MLS      R5,R5,R7,R6
//  924 
//  925   if( msg_num >= MSG_MAX_NO || in_length >8)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+16
        BGE.N    ??LPLD_CAN_WriteData_0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+9
        BLT.N    ??LPLD_CAN_WriteData_1
//  926   {
//  927       return; 
??LPLD_CAN_WriteData_0:
        B.N      ??LPLD_CAN_WriteData_2
//  928   }
//  929 
//  930   if(word_num < 1)
??LPLD_CAN_WriteData_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??LPLD_CAN_WriteData_3
//  931   {
//  932     for (i = 0; i <= rest_bytes ; i++)
        MOVS     R2,#+0
??LPLD_CAN_WriteData_4:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,R2
        BLT.N    ??LPLD_CAN_WriteData_5
//  933     {
//  934       word[word_num] |=  (uint32)in_buffer[i] << (24-(i<<3));
        ADD      R6,SP,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R6,[R6, R4, LSL #+2]
        LDRB     R7,[R2, R3]
        LSLS     R12,R2,#+3
        RSBS     R12,R12,#+24
        LSLS     R7,R7,R12
        ORRS     R6,R7,R6
        ADD      R7,SP,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R6,[R7, R4, LSL #+2]
//  935     }
        ADDS     R2,R2,#+1
        B.N      ??LPLD_CAN_WriteData_4
//  936   }
//  937   else
//  938   {
//  939     for (i = 0; i < 4; i++)
??LPLD_CAN_WriteData_3:
        MOVS     R2,#+0
        B.N      ??LPLD_CAN_WriteData_6
//  940     {
//  941       word[word_num-1] |= (uint32)in_buffer[i] << (24-(i<<3));
??LPLD_CAN_WriteData_7:
        ADD      R6,SP,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R6,R6,R4, LSL #+2
        LDR      R6,[R6, #-4]
        LDRB     R7,[R2, R3]
        LSLS     R12,R2,#+3
        RSBS     R12,R12,#+24
        LSLS     R7,R7,R12
        ORRS     R6,R7,R6
        ADD      R7,SP,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R7,R7,R4, LSL #+2
        STR      R6,[R7, #-4]
//  942     }
        ADDS     R2,R2,#+1
??LPLD_CAN_WriteData_6:
        CMP      R2,#+4
        BLT.N    ??LPLD_CAN_WriteData_7
//  943     for (i = 0; i <= rest_bytes ; i++)
        MOVS     R2,#+0
        B.N      ??LPLD_CAN_WriteData_8
//  944     {
//  945       word[word_num] |=  (uint32)in_buffer[i+4] << (24-(i<<3));
??LPLD_CAN_WriteData_9:
        ADD      R6,SP,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R6,[R6, R4, LSL #+2]
        ADDS     R7,R2,R3
        LDRB     R7,[R7, #+4]
        LSLS     R12,R2,#+3
        RSBS     R12,R12,#+24
        LSLS     R7,R7,R12
        ORRS     R6,R7,R6
        ADD      R7,SP,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R6,[R7, R4, LSL #+2]
//  946     }
        ADDS     R2,R2,#+1
??LPLD_CAN_WriteData_8:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,R2
        BGE.N    ??LPLD_CAN_WriteData_9
//  947   }
//  948   canx->MB[msg_num].WORD0 = word[0];
??LPLD_CAN_WriteData_5:
        LDR      R2,[SP, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R3,R0,R1, LSL #+4
        STR      R2,[R3, #+136]
//  949   canx->MB[msg_num].WORD1 = word[1];
        LDR      R2,[SP, #+4]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R0,R1, LSL #+4
        STR      R2,[R0, #+140]
//  950 }
??LPLD_CAN_WriteData_2:
        POP      {R0,R1,R4-R7}
        BX       LR               ;; return
//  951 
//  952 /*
//  953  * LPLD_CAN_Transmit_Interrupt
//  954  * �ú������ڴ���Msg�����������жϺ���
//  955  * 
//  956  * ����:
//  957  *    canx--����CAN����ͨ��
//  958  *      |__CAN0 --CAN0��ģ��
//  959  *      |__CAN1 --CAN1��ģ��
//  960  *    msg_num ѡ����Ҫ�������жϵ�Msg������
//  961  *      |___ MSG_NUM_0 --Msg������0
//  962  *      |___ MSG_NUM_1 --Msg������1
//  963  *      |___ MSG_NUM_2 --Msg������2
//  964  *      |___ MSG_NUM_3 --Msg������3
//  965  *      |___ MSG_NUM_4 --Msg������4
//  966  *      ...... 
//  967  *      |___ MSG_NUM_15 --Msg������15
//  968  * ���:
//  969  *    �� 
//  970  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  971 void LPLD_CAN_Transmit_Interrupt(CAN_Type *canx, uint8 msg_num)
//  972 {
LPLD_CAN_Transmit_Interrupt:
        PUSH     {R3-R5,LR}
        MOVS     R5,R0
        MOVS     R4,R1
//  973   if(LPLD_CAN_Interrupt_GetFlag(canx,msg_num))
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        BL       LPLD_CAN_Interrupt_GetFlag
        CMP      R0,#+0
        BEQ.N    ??LPLD_CAN_Transmit_Interrupt_0
//  974   {
//  975    LPLD_CAN_Interrupt_ClearPending(canx,msg_num);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        BL       LPLD_CAN_Interrupt_ClearPending
//  976    if(canx == CAN0)
        LDR.N    R0,??DataTable19_3  ;; 0x40024000
        CMP      R5,R0
        BNE.N    ??LPLD_CAN_Transmit_Interrupt_1
//  977    {
//  978     if( CAN0_ISR[msg_num] != NULL)
        LDR.N    R0,??DataTable19_23
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        CMP      R0,#+0
        BEQ.N    ??LPLD_CAN_Transmit_Interrupt_0
//  979     {
//  980       CAN0_ISR[msg_num]();
        LDR.N    R0,??DataTable19_23
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        BLX      R0
        B.N      ??LPLD_CAN_Transmit_Interrupt_0
//  981     }
//  982    }
//  983    else if (canx == CAN1)
??LPLD_CAN_Transmit_Interrupt_1:
        LDR.N    R0,??DataTable19_21  ;; 0x400a4000
        CMP      R5,R0
        BNE.N    ??LPLD_CAN_Transmit_Interrupt_0
//  984    {
//  985     if( CAN1_ISR[msg_num] != NULL)
        LDR.N    R0,??DataTable19_24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        CMP      R0,#+0
        BEQ.N    ??LPLD_CAN_Transmit_Interrupt_0
//  986     {
//  987       CAN1_ISR[msg_num]();
        LDR.N    R0,??DataTable19_24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        BLX      R0
//  988     }
//  989    }
//  990    else
//  991    {
//  992    }
//  993    
//  994   }
//  995 }
??LPLD_CAN_Transmit_Interrupt_0:
        POP      {R0,R4,R5,PC}    ;; return
//  996 
//  997 /*
//  998  * LPLD_CAN_Receive_Interrupt
//  999  * �ú������ڴ���Msg�����������жϺ���
// 1000  * 
// 1001  * ����:
// 1002  *    canx--����CAN����ͨ��
// 1003  *      |__CAN0 --CAN0��ģ��
// 1004  *      |__CAN1 --CAN1��ģ��
// 1005  *    msg_num ѡ����Ҫ��������жϵ�Msg������
// 1006  *      |___ MSG_NUM_0 --Msg������0
// 1007  *      |___ MSG_NUM_1 --Msg������1
// 1008  *      |___ MSG_NUM_2 --Msg������2
// 1009  *      |___ MSG_NUM_3 --Msg������3
// 1010  *      |___ MSG_NUM_4 --Msg������4
// 1011  *      ...... 
// 1012  *      |___ MSG_NUM_15 --Msg������15
// 1013  * ���:
// 1014  *    �� 
// 1015  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1016 static void LPLD_CAN_Receive_Interrupt(CAN_Type *canx, uint8 msg_num)
// 1017 {
LPLD_CAN_Receive_Interrupt:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
// 1018   if(LPLD_CAN_Interrupt_GetFlag(canx,msg_num) == 1)
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_CAN_Interrupt_GetFlag
        CMP      R0,#+1
        BNE.N    ??LPLD_CAN_Receive_Interrupt_0
// 1019   {
// 1020     //����������жϻص��������ڴ�ִ��
// 1021     if(canx == CAN0)
        LDR.N    R0,??DataTable19_3  ;; 0x40024000
        CMP      R4,R0
        BNE.N    ??LPLD_CAN_Receive_Interrupt_1
// 1022     {
// 1023       if( CAN0_ISR[msg_num] != NULL)
        LDR.N    R0,??DataTable19_23
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R0,[R0, R5, LSL #+2]
        CMP      R0,#+0
        BEQ.N    ??LPLD_CAN_Receive_Interrupt_2
// 1024       {
// 1025           CAN0_ISR[msg_num]();
        LDR.N    R0,??DataTable19_23
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R0,[R0, R5, LSL #+2]
        BLX      R0
// 1026       }
// 1027     }
// 1028     else if (canx == CAN1)
// 1029     {
// 1030       if( CAN1_ISR[msg_num] != NULL)
// 1031       {
// 1032           CAN1_ISR[msg_num]();
// 1033       }
// 1034     }
// 1035     else
// 1036     {
// 1037       return;
// 1038     }
// 1039     LPLD_CAN_Interrupt_ClearPending(canx,msg_num);
??LPLD_CAN_Receive_Interrupt_2:
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_CAN_Interrupt_ClearPending
// 1040   }
// 1041 }
??LPLD_CAN_Receive_Interrupt_0:
??LPLD_CAN_Receive_Interrupt_3:
        POP      {R0,R4,R5,PC}    ;; return
??LPLD_CAN_Receive_Interrupt_1:
        LDR.N    R0,??DataTable19_21  ;; 0x400a4000
        CMP      R4,R0
        BNE.N    ??LPLD_CAN_Receive_Interrupt_4
        LDR.N    R0,??DataTable19_24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R0,[R0, R5, LSL #+2]
        CMP      R0,#+0
        BEQ.N    ??LPLD_CAN_Receive_Interrupt_2
        LDR.N    R0,??DataTable19_24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R0,[R0, R5, LSL #+2]
        BLX      R0
        B.N      ??LPLD_CAN_Receive_Interrupt_2
??LPLD_CAN_Receive_Interrupt_4:
        B.N      ??LPLD_CAN_Receive_Interrupt_3
// 1042 /*
// 1043  * LPLD_CAN_MB_ISR
// 1044  * CANx�жϴ�����
// 1045  * 
// 1046  * ����:
// 1047  *    ��
// 1048  * ���:
// 1049  *    �� 
// 1050  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1051 static void LPLD_CAN_MB_ISR(void)
// 1052 {
LPLD_CAN_MB_ISR:
        PUSH     {R4,LR}
// 1053   uint8 msg_obj;
// 1054   
// 1055   for (msg_obj = 0; msg_obj < MSG_MAX_NO; msg_obj++)
        MOVS     R4,#+0
        B.N      ??LPLD_CAN_MB_ISR_0
// 1056   {
// 1057     if(flexcan_msgobj_param_t[msg_obj].CAN_Canx != NULL)
// 1058     {
// 1059       if(flexcan_msgobj_param_t[msg_obj].CAN_MsgDirection == CAN_MSGOBJ_DIR_TX)
// 1060       {
// 1061         LPLD_CAN_Transmit_Interrupt(flexcan_msgobj_param_t[msg_obj].CAN_Canx,msg_obj);
// 1062       }
// 1063       else if(flexcan_msgobj_param_t[msg_obj].CAN_MsgDirection == CAN_MSGOBJ_DIR_RX)
??LPLD_CAN_MB_ISR_1:
        LDR.N    R0,??DataTable19_25
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R0,R0,R4, LSL #+4
        LDRB     R0,[R0, #+8]
        CMP      R0,#+1
        BNE.N    ??LPLD_CAN_MB_ISR_2
// 1064       {
// 1065         LPLD_CAN_Receive_Interrupt(flexcan_msgobj_param_t[msg_obj].CAN_Canx,msg_obj);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable19_25
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R2,R4,#+4
        LDR      R0,[R2, R0]
        BL       LPLD_CAN_Receive_Interrupt
// 1066       }
??LPLD_CAN_MB_ISR_2:
        ADDS     R4,R4,#+1
??LPLD_CAN_MB_ISR_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+16
        BGE.N    ??LPLD_CAN_MB_ISR_3
        LDR.N    R0,??DataTable19_25
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R1,R4,#+4
        LDR      R0,[R1, R0]
        CMP      R0,#+0
        BEQ.N    ??LPLD_CAN_MB_ISR_2
        LDR.N    R0,??DataTable19_25
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R0,R0,R4, LSL #+4
        LDRB     R0,[R0, #+8]
        CMP      R0,#+2
        BNE.N    ??LPLD_CAN_MB_ISR_1
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable19_25
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R2,R4,#+4
        LDR      R0,[R2, R0]
        BL       LPLD_CAN_Transmit_Interrupt
        B.N      ??LPLD_CAN_MB_ISR_2
// 1067       else
// 1068       {}
// 1069     }
// 1070   }
// 1071 }
??LPLD_CAN_MB_ISR_3:
        POP      {R4,PC}          ;; return
// 1072 /*
// 1073  * CAN0�жϴ�����
// 1074  * �������ļ�startup_K60.s�е��ж����������
// 1075  * �û������޸ģ������Զ������Ӧͨ���жϺ���
// 1076  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1077 void CAN0_MESS_IRQHandler(void)
// 1078 {
CAN0_MESS_IRQHandler:
        PUSH     {R7,LR}
// 1079 #if (UCOS_II > 0u)
// 1080   OS_CPU_SR  cpu_sr = 0u;
// 1081   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
// 1082   OSIntEnter();
// 1083   OS_EXIT_CRITICAL();
// 1084 #endif
// 1085   LPLD_CAN_MB_ISR();
        BL       LPLD_CAN_MB_ISR
// 1086 #if (UCOS_II > 0u)
// 1087   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
// 1088 #endif
// 1089 }      
        POP      {R0,PC}          ;; return
// 1090 //29:  CAM 0 OR'ed Message buffer (0-15)
// 1091 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1092 void CAN0_BUS_OFF_IRQHandler(void)
// 1093 {
// 1094   CAN0->ESR1 = CAN_ESR1_BOFFINT_MASK;
CAN0_BUS_OFF_IRQHandler:
        MOVS     R0,#+4
        LDR.N    R1,??DataTable19_26  ;; 0x40024020
        STR      R0,[R1, #+0]
// 1095 }   //38:  CAM 0 Bus Off
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1096 void CAN0_ERR_IRQHandler(void)
// 1097 {
// 1098   uint32_t status;
// 1099 
// 1100   status = CAN0->ESR1;
CAN0_ERR_IRQHandler:
        LDR.N    R0,??DataTable19_26  ;; 0x40024020
        LDR      R0,[R0, #+0]
// 1101 
// 1102   if( status  & CAN_ESR1_ERRINT_MASK)
        LSLS     R1,R0,#+30
        BPL.N    ??CAN0_ERR_IRQHandler_0
// 1103   {
// 1104     CAN0->ESR1 = status;		
        LDR.N    R1,??DataTable19_26  ;; 0x40024020
        STR      R0,[R1, #+0]
// 1105   }	
// 1106 }       //39:  CAM 0 Error
??CAN0_ERR_IRQHandler_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1107 void CAN0_TW_IRQHandler(void)
// 1108 {
// 1109   CAN0->ESR1 = CAN_ESR1_TWRNINT_MASK;
CAN0_TW_IRQHandler:
        MOVS     R0,#+131072
        LDR.N    R1,??DataTable19_26  ;; 0x40024020
        STR      R0,[R1, #+0]
// 1110 }        //40:  CAM 0 Transmit Warning
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1111 void CAN0_RW_IRQHandler(void)
// 1112 {
// 1113   CAN0->ESR1 = CAN_ESR1_RWRNINT_MASK;
CAN0_RW_IRQHandler:
        MOVS     R0,#+65536
        LDR.N    R1,??DataTable19_26  ;; 0x40024020
        STR      R0,[R1, #+0]
// 1114 }        //41:  CAM 0 Receive Warning
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1115 void CAN0_WAKE_UP_IRQHandler(void){}   //42:  CAM 0 WakeUp
CAN0_WAKE_UP_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1116 void CAN0_IMEU_IRQHandler(void){}      //43:  CAM 0 Individual Matching Elements Update (IMEU)
CAN0_IMEU_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1117 void CAN0_LR_IRQHandler(void){}        //44:  CAM 0 Lost receive
CAN0_LR_IRQHandler:
        BX       LR               ;; return
// 1118 
// 1119 /*
// 1120  * CAN1�жϴ�����
// 1121  * �������ļ�startup_K60.s�е��ж����������
// 1122  * �û������޸ģ������Զ������Ӧͨ���жϺ���
// 1123  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1124 void CAN1_MESS_IRQHandler(void)
// 1125 {
CAN1_MESS_IRQHandler:
        PUSH     {R7,LR}
// 1126 #if (UCOS_II > 0u)
// 1127   OS_CPU_SR  cpu_sr = 0u;
// 1128   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
// 1129   OSIntEnter();
// 1130   OS_EXIT_CRITICAL();
// 1131 #endif
// 1132   LPLD_CAN_MB_ISR();
        BL       LPLD_CAN_MB_ISR
// 1133 #if (UCOS_II > 0u)
// 1134   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
// 1135 #endif
// 1136 }
        POP      {R0,PC}          ;; return
// 1137 //37:  CAM 1 OR'ed Message buffer (0-15)
// 1138 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1139 void CAN1_BUS_OFF_IRQHandler(void)
// 1140 {
// 1141   CAN1->ESR1 = CAN_ESR1_BOFFINT_MASK;
CAN1_BUS_OFF_IRQHandler:
        MOVS     R0,#+4
        LDR.N    R1,??DataTable19_27  ;; 0x400a4020
        STR      R0,[R1, #+0]
// 1142 }   //38:  CAM 1 Bus Off
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1143 void CAN1_ERR_IRQHandler(void)
// 1144 {
// 1145   uint32_t status;
// 1146 
// 1147   status = CAN1->ESR1;
CAN1_ERR_IRQHandler:
        LDR.N    R0,??DataTable19_27  ;; 0x400a4020
        LDR      R0,[R0, #+0]
// 1148 
// 1149   if( status  & CAN_ESR1_ERRINT_MASK)
        LSLS     R1,R0,#+30
        BPL.N    ??CAN1_ERR_IRQHandler_0
// 1150   {
// 1151     CAN1->ESR1 = status;		
        LDR.N    R1,??DataTable19_27  ;; 0x400a4020
        STR      R0,[R1, #+0]
// 1152   }	
// 1153 }       //39:  CAM 1 Error
??CAN1_ERR_IRQHandler_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1154 void CAN1_TW_IRQHandler(void)
// 1155 {
// 1156   CAN1->ESR1 = CAN_ESR1_TWRNINT_MASK;
CAN1_TW_IRQHandler:
        MOVS     R0,#+131072
        LDR.N    R1,??DataTable19_27  ;; 0x400a4020
        STR      R0,[R1, #+0]
// 1157 }        //40:  CAM 1 Transmit Warning
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1158 void CAN1_RW_IRQHandler(void)
// 1159 {
// 1160   CAN1->ESR1 = CAN_ESR1_RWRNINT_MASK;
CAN1_RW_IRQHandler:
        MOVS     R0,#+65536
        LDR.N    R1,??DataTable19_27  ;; 0x400a4020
        STR      R0,[R1, #+0]
// 1161 }        //41:  CAM 1 Receive Warning
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_1:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_2:
        DC32     0x40065000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_3:
        DC32     0x40024000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_4:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_5:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_6:
        DC32     0x4004a048

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_7:
        DC32     0x40049030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_8:
        DC32     0x4004a04c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_9:
        DC32     0x40049034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_10:
        DC32     0x4004b044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_11:
        DC32     0x4004d060

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_12:
        DC32     0x4004b040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_13:
        DC32     0x4004d064

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_14:
        DC32     0x14585

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_15:
        DC32     0x186a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_16:
        DC32     0x1e848

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_17:
        DC32     0x3d090

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_18:
        DC32     0x7a120

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_19:
        DC32     0xf4240

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_20:
        DC32     g_bus_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_21:
        DC32     0x400a4000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_22:
        DC32     0x1ffc0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_23:
        DC32     CAN0_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_24:
        DC32     CAN1_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_25:
        DC32     flexcan_msgobj_param_t

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_26:
        DC32     0x40024020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_27:
        DC32     0x400a4020

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1162 void CAN1_WAKE_UP_IRQHandler(void){}   //42:  CAM 1 WakeUp
CAN1_WAKE_UP_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1163 void CAN1_IMEU_IRQHandler(void){}      //43:  CAM 1 Individual Matching Elements Update (IMEU)
CAN1_IMEU_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1164 void CAN1_LR_IRQHandler(void){}        //44:  CAM 1 Lost receive
CAN1_LR_IRQHandler:
        BX       LR               ;; return

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
        DC8 0, 0, 0, 0

        END
// 1165 
// 1166 
// 
//   384 bytes in section .bss
//     8 bytes in section .rodata
// 2 480 bytes in section .text
// 
// 2 480 bytes of CODE  memory
//     8 bytes of CONST memory
//   384 bytes of DATA  memory
//
//Errors: none
//Warnings: none

///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       25/Jul/2015  16:58:09
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\lib\LPLD\HW\HW_FLEXBUS.c
//    Command line =  
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\lib\LPLD\HW\HW_FLEXBUS.c
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
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_carͨ��7-23-20.36\iar\FLASH\List\HW_FLEXBUS.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC FB_PORT
        PUBLIC LPLD_FlexBus_Init

// C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\lib\LPLD\HW\HW_FLEXBUS.c
//    1 /**
//    2  * @file HW_FLEXBUS.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief FLEXBUS�ײ�ģ����غ���
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
//   24 #include "HW_FLEXBUS.h"
//   25 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   26 const uint32* FB_PORT[32] = {(uint32*)&PORTD->PCR[6], (uint32*)&PORTD->PCR[5], (uint32*)&PORTD->PCR[4], (uint32*)&PORTD->PCR[3],
FB_PORT:
        DATA
        DC32 4004C018H, 4004C014H, 4004C010H, 4004C00CH, 4004C008H, 4004B028H
        DC32 4004B024H, 4004B020H, 4004B01CH, 4004B018H, 4004B014H, 4004B010H
        DC32 4004B008H, 4004B004H, 4004B000H, 4004A048H, 4004A044H, 4004A040H
        DC32 4004A02CH, 4004A028H, 4004A024H, 4004A020H, 4004A01CH, 4004A018H
        DC32 4004B03CH, 4004B038H, 4004B034H, 4004B030H, 4004A05CH, 4004A058H
        DC32 4004A054H, 4004A050H
//   27                              (uint32*)&PORTD->PCR[2], (uint32*)&PORTC->PCR[10], (uint32*)&PORTC->PCR[9], (uint32*)&PORTC->PCR[8],
//   28                              (uint32*)&PORTC->PCR[7], (uint32*)&PORTC->PCR[6], (uint32*)&PORTC->PCR[5], (uint32*)&PORTC->PCR[4],
//   29                              (uint32*)&PORTC->PCR[2], (uint32*)&PORTC->PCR[1], (uint32*)&PORTC->PCR[0], (uint32*)&PORTB->PCR[18],
//   30                              (uint32*)&PORTB->PCR[17], (uint32*)&PORTB->PCR[16], (uint32*)&PORTB->PCR[11], (uint32*)&PORTB->PCR[10],
//   31                              (uint32*)&PORTB->PCR[9], (uint32*)&PORTB->PCR[8], (uint32*)&PORTB->PCR[7], (uint32*)&PORTB->PCR[6],
//   32                              (uint32*)&PORTC->PCR[15], (uint32*)&PORTC->PCR[14], (uint32*)&PORTC->PCR[13], (uint32*)&PORTC->PCR[12],
//   33                              (uint32*)&PORTB->PCR[23], (uint32*)&PORTB->PCR[22], (uint32*)&PORTB->PCR[21], (uint32*)&PORTB->PCR[20]};
//   34 
//   35 /*
//   36  * LPLD_FlexBus_Init
//   37  * FlexBuxͨ�ó�ʼ������
//   38  * 
//   39  * ����:
//   40  *    fb_init_struct--FlexBus��ʼ���ṹ�壬
//   41  *                        ���嶨���FB_InitTypeDef
//   42  *
//   43  * ���:
//   44  *    0--���ô���
//   45  *    1--���óɹ�
//   46  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   47 uint8 LPLD_FlexBus_Init(FB_InitTypeDef fb_init_struct)
//   48 {
LPLD_FlexBus_Init:
        PUSH     {R0-R3}
        PUSH     {R4-R10,LR}
//   49   FBx Fbx = fb_init_struct.FB_Fbx;
        LDRB     R4,[SP, #+32]
//   50   uint32 base_addr = fb_init_struct.FB_ChipSelAddress;
        LDR      LR,[SP, #+36]
//   51   uint32 addr_space = fb_init_struct.FB_AddressSpace;
        LDR      R0,[SP, #+40]
//   52   uint8 size = fb_init_struct.FB_PortSize;
        LDRB     R1,[SP, #+44]
//   53   boolean justied = fb_init_struct.FB_IsRightJustied;
        LDRB     R2,[SP, #+45]
//   54   boolean aa = fb_init_struct.FB_AutoAckEnable;
        LDRB     R12,[SP, #+46]
//   55   uint8 ws = fb_init_struct.FB_WateStates;
        LDRB     R5,[SP, #+47]
//   56   uint8 rah = fb_init_struct.FB_ReadAddrHold; 
        LDRB     R6,[SP, #+48]
//   57   uint8 wah = fb_init_struct.FB_WriteAddrHold;
        LDRB     R7,[SP, #+49]
//   58   uint32* pcr;
//   59   uint8 n=0;
        MOVS     R3,#+0
//   60   
//   61   //�������
//   62   ASSERT( Fbx <= 5);    //�ж�FBͨ����
//   63   ASSERT( base_addr >= 0x60000000 && base_addr <= 0xDFFFFFFF);    //�жϻ���ַ�Ϸ���
//   64   ASSERT( addr_space != 0);    //Ѱַ�ռ��С
//   65   ASSERT( size <= 3);    //�ж�����λ��
//   66   ASSERT( rah <= 3);     //�ж϶���ַ����ʱ��
//   67   ASSERT( wah <= 3);     //�ж�д��ַ����ʱ��
//   68   
//   69   FB->CS[Fbx].CSMR = 0;
        MOVS     R8,#+0
        LDR.W    R9,??LPLD_FlexBus_Init_0  ;; 0x4000c000
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R10,#+12
        MLA      R9,R10,R4,R9
        STR      R8,[R9, #+4]
//   70       
//   71   //���û���ַ
//   72   FB->CS[Fbx].CSAR = base_addr;
        LDR.W    R8,??LPLD_FlexBus_Init_0  ;; 0x4000c000
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R9,#+12
        MLA      R8,R9,R4,R8
        STR      LR,[R8, #+0]
//   73   //�˿�λ��
//   74   FB->CS[Fbx].CSCR  = FB_CSCR_PS(size);      
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     LR,R1,#+6
        ANDS     LR,LR,#0xC0
        LDR.W    R8,??LPLD_FlexBus_Init_0  ;; 0x4000c000
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R9,#+12
        MLA      R8,R9,R4,R8
        STR      LR,[R8, #+8]
//   75   
//   76   if(justied)
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??LPLD_FlexBus_Init_1
//   77   {
//   78     FB->CS[Fbx].CSCR |= FB_CSCR_BLS_MASK;   // �����Ҷ���
        LDR.N    R3,??LPLD_FlexBus_Init_0  ;; 0x4000c000
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     LR,#+12
        MLA      R3,LR,R4,R3
        LDR      R3,[R3, #+8]
        ORRS     R3,R3,#0x200
        LDR.W    LR,??LPLD_FlexBus_Init_0  ;; 0x4000c000
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R8,#+12
        MLA      LR,R8,R4,LR
        STR      R3,[LR, #+8]
//   79   }
//   80       
//   81   if(aa)    
??LPLD_FlexBus_Init_1:
        UXTB     R12,R12          ;; ZeroExt  R12,R12,#+24,#+24
        CMP      R12,#+0
        BEQ.N    ??LPLD_FlexBus_Init_2
//   82   {
//   83     FB->CS[Fbx].CSCR |= FB_CSCR_AA_MASK;   //ʹ���ڲ�Ӧ��
        LDR.N    R3,??LPLD_FlexBus_Init_0  ;; 0x4000c000
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R12,#+12
        MLA      R3,R12,R4,R3
        LDR      R3,[R3, #+8]
        ORRS     R3,R3,#0x100
        LDR.W    R12,??LPLD_FlexBus_Init_0  ;; 0x4000c000
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     LR,#+12
        MLA      R12,LR,R4,R12
        STR      R3,[R12, #+8]
//   84   }
//   85   
//   86   FB->CS[Fbx].CSCR |= FB_CSCR_WS(ws)    // ���ڲ�Ӧ���ź�֮ǰ����ws��WS
//   87                      | FB_CSCR_RDAH(rah)
//   88                      | FB_CSCR_WRAH(wah);
??LPLD_FlexBus_Init_2:
        LDR.N    R3,??LPLD_FlexBus_Init_0  ;; 0x4000c000
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R12,#+12
        MLA      R3,R12,R4,R3
        LDR      R3,[R3, #+8]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R5,R5,#+10
        ANDS     R5,R5,#0xFC00
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R6,R6,#+18
        ANDS     R6,R6,#0xC0000
        ORRS     R5,R6,R5
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R6,R7,#+16
        ANDS     R6,R6,#0x30000
        ORRS     R5,R6,R5
        ORRS     R3,R5,R3
        LDR.N    R5,??LPLD_FlexBus_Init_0  ;; 0x4000c000
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R6,#+12
        MLA      R5,R6,R4,R5
        STR      R3,[R5, #+8]
//   89   
//   90   //����Ѱַ�ռ��С�������ַ����
//   91   addr_space = (addr_space-1)>>16;
        SUBS     R0,R0,#+1
        LSRS     R0,R0,#+16
//   92   FB->CS[Fbx].CSMR = FB_CSMR_BAM(addr_space)  //���û���ַ����Ϊ128K��ַ�ռ� =2^n(n=BAM+16)
//   93                 | FB_CSMR_V_MASK;    //ʹ��CS�ź�
        LSLS     R3,R0,#+16
        ORRS     R3,R3,#0x1
        LDR.N    R5,??LPLD_FlexBus_Init_0  ;; 0x4000c000
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R6,#+12
        MLA      R5,R6,R4,R5
        STR      R3,[R5, #+4]
//   94   
//   95   //ʹ�ܸ��ù��ܵ�FB_CSn�����Ÿ���
//   96   if(Fbx == FB0)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??LPLD_FlexBus_Init_3
//   97   {
//   98     PORTD->PCR[1]  = PORT_PCR_MUX(5);       // FB_CS0     
        MOV      R3,#+1280
        LDR.N    R4,??LPLD_FlexBus_Init_0+0x4  ;; 0x4004c004
        STR      R3,[R4, #+0]
        B.N      ??LPLD_FlexBus_Init_4
//   99   }
//  100   else if(Fbx == FB1)
??LPLD_FlexBus_Init_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??LPLD_FlexBus_Init_5
//  101   {
//  102     FB->CSPMCR &= ~(FB_CSPMCR_GROUP1_MASK);
        LDR.N    R3,??LPLD_FlexBus_Init_0+0x8  ;; 0x4000c060
        LDR      R3,[R3, #+0]
        LSLS     R3,R3,#+4        ;; ZeroExtS R3,R3,#+4,#+4
        LSRS     R3,R3,#+4
        LDR.N    R4,??LPLD_FlexBus_Init_0+0x8  ;; 0x4000c060
        STR      R3,[R4, #+0]
//  103     FB->CSPMCR |= FB_CSPMCR_GROUP1(1);      
        LDR.N    R3,??LPLD_FlexBus_Init_0+0x8  ;; 0x4000c060
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x10000000
        LDR.N    R4,??LPLD_FlexBus_Init_0+0x8  ;; 0x4000c060
        STR      R3,[R4, #+0]
//  104     PORTD->PCR[0]  = PORT_PCR_MUX(5);       // FB_CS1  
        MOV      R3,#+1280
        LDR.N    R4,??LPLD_FlexBus_Init_0+0xC  ;; 0x4004c000
        STR      R3,[R4, #+0]
        B.N      ??LPLD_FlexBus_Init_4
//  105   }
//  106   else if(Fbx == FB2)
??LPLD_FlexBus_Init_5:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.N    ??LPLD_FlexBus_Init_6
//  107   {
//  108     FB->CSPMCR &= ~(FB_CSPMCR_GROUP4_MASK);
        LDR.N    R3,??LPLD_FlexBus_Init_0+0x8  ;; 0x4000c060
        LDR      R3,[R3, #+0]
        BICS     R3,R3,#0xF0000
        LDR.N    R4,??LPLD_FlexBus_Init_0+0x8  ;; 0x4000c060
        STR      R3,[R4, #+0]
//  109     FB->CSPMCR |= FB_CSPMCR_GROUP4(1);     
        LDR.N    R3,??LPLD_FlexBus_Init_0+0x8  ;; 0x4000c060
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x10000
        LDR.N    R4,??LPLD_FlexBus_Init_0+0x8  ;; 0x4000c060
        STR      R3,[R4, #+0]
//  110     PORTC->PCR[18]  = PORT_PCR_MUX(5);       // FB_CS2
        MOV      R3,#+1280
        LDR.N    R4,??LPLD_FlexBus_Init_0+0x10  ;; 0x4004b048
        STR      R3,[R4, #+0]
        B.N      ??LPLD_FlexBus_Init_4
//  111   }
//  112   else if(Fbx == FB3)
??LPLD_FlexBus_Init_6:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+3
        BNE.N    ??LPLD_FlexBus_Init_7
//  113   {
//  114     FB->CSPMCR &= ~(FB_CSPMCR_GROUP5_MASK);
        LDR.N    R3,??LPLD_FlexBus_Init_0+0x8  ;; 0x4000c060
        LDR      R3,[R3, #+0]
        BICS     R3,R3,#0xF000
        LDR.N    R4,??LPLD_FlexBus_Init_0+0x8  ;; 0x4000c060
        STR      R3,[R4, #+0]
//  115     FB->CSPMCR |= FB_CSPMCR_GROUP5(1);     
        LDR.N    R3,??LPLD_FlexBus_Init_0+0x8  ;; 0x4000c060
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x1000
        LDR.N    R4,??LPLD_FlexBus_Init_0+0x8  ;; 0x4000c060
        STR      R3,[R4, #+0]
//  116     PORTC->PCR[19]  = PORT_PCR_MUX(5);       // FB_CS3
        MOV      R3,#+1280
        LDR.N    R4,??LPLD_FlexBus_Init_0+0x14  ;; 0x4004b04c
        STR      R3,[R4, #+0]
        B.N      ??LPLD_FlexBus_Init_4
//  117   }
//  118   else if(Fbx == FB4)
??LPLD_FlexBus_Init_7:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BNE.N    ??LPLD_FlexBus_Init_8
//  119   {
//  120     FB->CSPMCR &= ~(FB_CSPMCR_GROUP2_MASK);
        LDR.N    R3,??LPLD_FlexBus_Init_0+0x8  ;; 0x4000c060
        LDR      R3,[R3, #+0]
        BICS     R3,R3,#0xF000000
        LDR.N    R4,??LPLD_FlexBus_Init_0+0x8  ;; 0x4000c060
        STR      R3,[R4, #+0]
//  121     FB->CSPMCR |= FB_CSPMCR_GROUP2(0);      
        LDR.N    R3,??LPLD_FlexBus_Init_0+0x8  ;; 0x4000c060
        LDR      R3,[R3, #+0]
        LDR.N    R4,??LPLD_FlexBus_Init_0+0x8  ;; 0x4000c060
        STR      R3,[R4, #+0]
//  122     PORTC->PCR[17]  = PORT_PCR_MUX(5);       // FB_CS4
        MOV      R3,#+1280
        LDR.N    R4,??LPLD_FlexBus_Init_0+0x18  ;; 0x4004b044
        STR      R3,[R4, #+0]
        B.N      ??LPLD_FlexBus_Init_4
//  123   }
//  124   else if(Fbx == FB5)
??LPLD_FlexBus_Init_8:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+5
        BNE.N    ??LPLD_FlexBus_Init_4
//  125   {
//  126     FB->CSPMCR &= ~(FB_CSPMCR_GROUP3_MASK);
        LDR.N    R3,??LPLD_FlexBus_Init_0+0x8  ;; 0x4000c060
        LDR      R3,[R3, #+0]
        BICS     R3,R3,#0xF00000
        LDR.N    R4,??LPLD_FlexBus_Init_0+0x8  ;; 0x4000c060
        STR      R3,[R4, #+0]
//  127     FB->CSPMCR |= FB_CSPMCR_GROUP3(0);     
        LDR.N    R3,??LPLD_FlexBus_Init_0+0x8  ;; 0x4000c060
        LDR      R3,[R3, #+0]
        LDR.N    R4,??LPLD_FlexBus_Init_0+0x8  ;; 0x4000c060
        STR      R3,[R4, #+0]
//  128     PORTC->PCR[16]  = PORT_PCR_MUX(5);       // FB_CS5
        MOV      R3,#+1280
        LDR.N    R4,??LPLD_FlexBus_Init_0+0x1C  ;; 0x4004b040
        STR      R3,[R4, #+0]
//  129   }
//  130   
//  131   //ʹ�����ߵ�ַ���������Ÿ��ù���
//  132   //��ʹ�ܵ�16λ��ַ����
//  133   for(uint8 i=0; i<16; i++)
??LPLD_FlexBus_Init_4:
        MOVS     R3,#+0
        B.N      ??LPLD_FlexBus_Init_9
//  134   {
//  135     pcr = (uint32 *)FB_PORT[i];
??LPLD_FlexBus_Init_10:
        LDR.N    R4,??LPLD_FlexBus_Init_0+0x20
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR      R4,[R4, R3, LSL #+2]
//  136     *pcr = PORT_PCR_MUX(5);    
        MOV      R5,#+1280
        STR      R5,[R4, #+0]
//  137   }
        ADDS     R3,R3,#+1
??LPLD_FlexBus_Init_9:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+16
        BLT.N    ??LPLD_FlexBus_Init_10
//  138   //ʹ������ĵ�ַ����
//  139   n=16;
        MOVS     R3,#+16
//  140   for(uint8 i=0; i<16; i++)
        MOVS     R5,#+0
        B.N      ??LPLD_FlexBus_Init_11
//  141   {
//  142     if((addr_space>>i)&0x01)
??LPLD_FlexBus_Init_12:
        LSRS     R4,R0,R5
        LSLS     R4,R4,#+31
        BPL.N    ??LPLD_FlexBus_Init_13
//  143     {
//  144       pcr = (uint32 *)FB_PORT[n++];
        LDR.N    R4,??LPLD_FlexBus_Init_0+0x20
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR      R4,[R4, R3, LSL #+2]
        ADDS     R3,R3,#+1
//  145       *pcr = PORT_PCR_MUX(5); 
        MOV      R6,#+1280
        STR      R6,[R4, #+0]
//  146     }
//  147   }
??LPLD_FlexBus_Init_13:
        ADDS     R5,R5,#+1
??LPLD_FlexBus_Init_11:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+16
        BLT.N    ??LPLD_FlexBus_Init_12
//  148   //�����32λ����ʹ�ܸ�16λ
//  149   n=0;
        MOVS     R3,#+0
//  150   if(size == 0)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??LPLD_FlexBus_Init_14
//  151   {   
//  152     n=16;
        MOVS     R3,#+16
        B.N      ??LPLD_FlexBus_Init_15
//  153   }else if(justied==0 && size == 0x10)
??LPLD_FlexBus_Init_14:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BNE.N    ??LPLD_FlexBus_Init_16
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+16
        BNE.N    ??LPLD_FlexBus_Init_16
//  154   {
//  155     n=16;
        MOVS     R3,#+16
        B.N      ??LPLD_FlexBus_Init_15
//  156   }else if(justied==0 && size == 0x01)
??LPLD_FlexBus_Init_16:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BNE.N    ??LPLD_FlexBus_Init_15
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??LPLD_FlexBus_Init_15
//  157   {
//  158     n=8;
        MOVS     R3,#+8
//  159   }
//  160   if(n!=0)
??LPLD_FlexBus_Init_15:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+0
        BEQ.N    ??LPLD_FlexBus_Init_17
//  161   {
//  162     for(uint8 i=31; i>31-n; i--)
        MOVS     R0,#+31
        B.N      ??LPLD_FlexBus_Init_18
//  163     {
//  164       pcr = (uint32 *)FB_PORT[i];
??LPLD_FlexBus_Init_19:
        LDR.N    R1,??LPLD_FlexBus_Init_0+0x20
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R4,[R1, R0, LSL #+2]
//  165       *pcr = PORT_PCR_MUX(5);    
        MOV      R1,#+1280
        STR      R1,[R4, #+0]
//  166     }
        SUBS     R0,R0,#+1
??LPLD_FlexBus_Init_18:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        RSBS     R1,R3,#+31
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R1,R0
        BLT.N    ??LPLD_FlexBus_Init_19
//  167   }
//  168   
//  169   //�����ź���
//  170   PORTB->PCR[19] = PORT_PCR_MUX(5);          // fb_oe_b
??LPLD_FlexBus_Init_17:
        MOV      R0,#+1280
        LDR.N    R1,??LPLD_FlexBus_Init_0+0x24  ;; 0x4004a04c
        STR      R0,[R1, #+0]
//  171   PORTC->PCR[11] = PORT_PCR_MUX(5);          // fb_rw_b  
        MOV      R0,#+1280
        LDR.N    R1,??LPLD_FlexBus_Init_0+0x28  ;; 0x4004b02c
        STR      R0,[R1, #+0]
//  172               
//  173   return 1;
        MOVS     R0,#+1
        POP      {R4-R10}
        LDR      PC,[SP], #+20    ;; return
        DATA
??LPLD_FlexBus_Init_0:
        DC32     0x4000c000
        DC32     0x4004c004
        DC32     0x4000c060
        DC32     0x4004c000
        DC32     0x4004b048
        DC32     0x4004b04c
        DC32     0x4004b044
        DC32     0x4004b040
        DC32     FB_PORT
        DC32     0x4004a04c
        DC32     0x4004b02c
//  174 }

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
// 128 bytes in section .data
// 696 bytes in section .text
// 
// 696 bytes of CODE memory
// 128 bytes of DATA memory
//
//Errors: none
//Warnings: none

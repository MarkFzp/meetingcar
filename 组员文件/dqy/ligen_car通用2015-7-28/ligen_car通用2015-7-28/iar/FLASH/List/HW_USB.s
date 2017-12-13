///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       25/Jul/2015  16:58:14
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\lib\LPLD\HW\HW_USB.c
//    Command line =  
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\lib\LPLD\HW\HW_USB.c
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
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_carͨ��7-23-20.36\iar\FLASH\List\HW_USB.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN USB_CDC_Init
        EXTERN USB_Class_CDC_DeInit
        EXTERN USB_Class_CDC_Send_Data
        EXTERN USB_DEVICE_ISR
        EXTERN USB_Rev_SetIsr
        EXTERN _usb_device_recv_data
        EXTERN memcpy
        EXTERN tUSB_Rev_Data

        PUBLIC LPLD_USB_DeInit
        PUBLIC LPLD_USB_Init
        PUBLIC LPLD_USB_QueueData
        PUBLIC LPLD_USB_SetRevIsr
        PUBLIC LPLD_USB_VirtualCom_Rx
        PUBLIC LPLD_USB_VirtualCom_Tx
        PUBLIC USB_ISR
        PUBLIC USB_OTG_IRQHandler

// C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\lib\LPLD\HW\HW_USB.c
//    1 /**
//    2  * @file HW_USB.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief UART�ײ�ģ����غ���
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
//   22 #include "common.h"     /* Common definitions */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_EnableIRQ(IRQn_Type)
NVIC_EnableIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        LDR.N    R2,??DataTable3  ;; 0xe000e100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R1,[R2, R0, LSL #+2]
        BX       LR               ;; return
//   23 #include "HW_USB.h"
//   24 #include "usb_driver.h"
//   25 
//   26 //�û��Զ����жϷ���������

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   27 USB_ISR_CALLBACK USB_ISR[1];
USB_ISR:
        DS8 4
//   28 
//   29 /*
//   30 * LPLD_USB_Init
//   31 * K60 USB�����ʼ������
//   32 * �ڸú�����,��ʼ��USB����ʱ��,����USB������жϷ�����,
//   33 * ���ҵ���USB�豸��ʼ������
//   34 */
//   35 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   36 void LPLD_USB_Init(void)
//   37 { 
LPLD_USB_Init:
        PUSH     {R7,LR}
//   38   MPU->CESR=0; //MPU ����
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_1  ;; 0x4000d000
        STR      R0,[R1, #+0]
//   39 #if (defined(CPU_MK60DZ10))  
//   40   SIM->SOPT2 |= SIM_SOPT2_USBSRC_MASK |   //ѡ��PLL/FLL��Ϊʱ��Դ
//   41                SIM_SOPT2_PLLFLLSEL_MASK; //��PLL��ΪUSB��ʱ��Դ����ʱ��PLL��Ƶ��Ϊ96Mhz 
//   42 #if(CORE_CLK_MHZ == PLL_96)
//   43   SIM->CLKDIV2 = 0x02;                    //���÷�Ƶϵ��USBʱ�� = 96Mhz/2 =48Mhz
//   44 #endif 
//   45   SIM->SCGC4 |= SIM_SCGC4_USBOTG_MASK;  //ʹ��USB����ʱ��
//   46 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//   47   SIM->SOPT2 |= SIM_SOPT2_PLLFLLSEL(1)      // ѡ�� PLL0 ��Ϊ�ο�   
//   48             |  SIM_SOPT2_USBFSRC(0)         // ѡ�� MCGPLLCLK ��Ϊ CLKC �ο�Դ 
//   49             |  SIM_SOPT2_USBF_CLKSEL_MASK;  // ѡ�� USB fractional divider ��λ USB reference clock �ο�Դ 
        LDR.N    R0,??DataTable3_2  ;; 0x40048004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x50000
        LDR.N    R1,??DataTable3_2  ;; 0x40048004
        STR      R0,[R1, #+0]
//   50 #if(CORE_CLK_MHZ == PLL_120)
//   51 // MCGPLLCLK =  120MHz 
//   52 // USB Clock = PLL0 x (FRAC +1) / (DIV+1)    
//   53 // USB Clock = 120MHz x (1+1) / (4+1) = 48 MHz   
//   54   SIM->CLKDIV2 = SIM_CLKDIV2_USBFSFRAC_MASK | SIM_CLKDIV2_USBFSDIV(4);
        MOVS     R0,#+9
        LDR.N    R1,??DataTable3_3  ;; 0x40048048
        STR      R0,[R1, #+0]
//   55 #endif
//   56   SIM->SCGC4 |= SIM_SCGC4_USBFS_MASK;   //ʹ��USB����ʱ�� 
        LDR.N    R0,??DataTable3_4  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40000
        LDR.N    R1,??DataTable3_4  ;; 0x40048034
        STR      R0,[R1, #+0]
//   57 #endif 
//   58   USB0->USBTRC0 = 0x40;                   //�����ĵ���������λ��������Ϊ1
        MOVS     R0,#+64
        LDR.N    R1,??DataTable3_5  ;; 0x4007210c
        STRB     R0,[R1, #+0]
//   59   SIM->SOPT1 |= SIM_SOPT1_USBREGEN_MASK;  //����USB�豸��ѹԴ
        LDR.N    R0,??DataTable3_6  ;; 0x40047000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000000
        LDR.N    R1,??DataTable3_6  ;; 0x40047000
        STR      R0,[R1, #+0]
//   60   
//   61   /* NVICģ������ */
//   62   enable_irq(USB0_IRQn);                 //ʹ��NVIC�е�USB OTG�ж�
        MOVS     R0,#+73
        BL       NVIC_EnableIRQ
//   63   USB_ISR[0] = USB_DEVICE_ISR;           //��USBЭ�鴦������ӵ��жϴ�����������
        LDR.N    R0,??DataTable3_7
        LDR.N    R1,??DataTable3_8
        STR      R0,[R1, #+0]
//   64   
//   65 #if(USB_DEVICE_CLASS == USB_DEVICE_CLASS_CDC)
//   66   USB_CDC_Init();                        //��ʼ��CDC��
        BL       USB_CDC_Init
//   67 #elif(USB_DEVICE_CLASS == USB_DEVICE_CLASS_HID)
//   68   USB_HID_Mouse_Init();                  //��ʼ��HID��
//   69 #endif
//   70   
//   71   
//   72 }
        POP      {R0,PC}          ;; return
//   73 
//   74 /*
//   75 * LPLD_USB_DeInit
//   76 * K60 USBģ��ע������
//   77 * ע����ѡ���USB�豸
//   78 */
//   79 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   80 void LPLD_USB_DeInit(void)
//   81 { 
LPLD_USB_DeInit:
        PUSH     {R7,LR}
//   82 #if(USB_DEVICE_CLASS == USB_DEVICE_CLASS_CDC)
//   83   USB_Class_CDC_DeInit(CONTROLLER_ID);                        //ע��CDC��
        MOVS     R0,#+0
        BL       USB_Class_CDC_DeInit
//   84 #elif(USB_DEVICE_CLASS == USB_DEVICE_CLASS_HID)
//   85   USB_Class_HID_DeInit(CONTROLLER_ID);                        //ע��HID��
//   86 #endif
//   87 }
        POP      {R0,PC}          ;; return
//   88 
//   89 #if(USB_DEVICE_CLASS == USB_DEVICE_CLASS_CDC)
//   90 /*
//   91 *  LPLD_USB_VirtualCom_Rx
//   92 *  ��USB CDC��ģʽ����ɴ���ģʽ���ú����Ǵ��ڽ��պ���
//   93 *  ������
//   94 *      *rx_buf--ָ���û����ݴ洢�������ڴ�����յ�������
//   95 *  ������������ݵĳ��ȣ����ֽ�Ϊ��λ
//   96 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   97 uint8 LPLD_USB_VirtualCom_Rx(uint8 *rx_buf)
//   98 {
LPLD_USB_VirtualCom_Rx:
        PUSH     {R7,LR}
//   99   memcpy(rx_buf,tUSB_Rev_Data.buffer,tUSB_Rev_Data.len);
        LDR.N    R1,??DataTable3_9
        LDRB     R2,[R1, #+64]
        LDR.N    R1,??DataTable3_9
        BL       memcpy
//  100   return tUSB_Rev_Data.len;
        LDR.N    R0,??DataTable3_9
        LDRB     R0,[R0, #+64]
        POP      {R1,PC}          ;; return
//  101 }
//  102 
//  103 /*
//  104 *  LPLD_USB_VirtualCom_Tx
//  105 *  ��USB CDC��ģʽ����ɴ���ģʽ���ú����Ǵ��ڷ��ͺ���
//  106 *  ������
//  107 *      *tx_buf -- ָ���û����ݴ洢�������ڴ���Ҫ���͵�����
//  108 *      len -- Ҫ���͵����ݳ���
//  109 *  �����0x00   ���ͳɹ�
//  110 *        ��0x00 ����ʧ��
//  111 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  112 uint8 LPLD_USB_VirtualCom_Tx(uint8 *tx_buf,uint8 len)
//  113 {
LPLD_USB_VirtualCom_Tx:
        PUSH     {R4,LR}
//  114   uint8 status = 0;
        MOVS     R4,#+0
//  115   status = USB_Class_CDC_Interface_DIC_Send_Data(CONTROLLER_ID,tx_buf,len);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R3,R1
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVS     R2,R0
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       USB_Class_CDC_Send_Data
        MOVS     R4,R0
//  116   return status;
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
//  117 }
//  118 
//  119 /*
//  120 *  LPLD_USB_SetRevIsr
//  121 *  ���USB ���⴮�ڽ��������жϷ�����
//  122 *  ��
//  123 *  ��
//  124 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  125 void LPLD_USB_SetRevIsr(USB_REV_ISR_CALLBACK isr)
//  126 {
LPLD_USB_SetRevIsr:
        PUSH     {R7,LR}
//  127   USB_Rev_SetIsr(isr);
        BL       USB_Rev_SetIsr
//  128 }
        POP      {R0,PC}          ;; return
//  129 
//  130 /*
//  131 *  LPLD_USB_QueueData
//  132 *  ��USB���ڴ��лָ����յ������ݵ��û��ڴ���
//  133 *  ���ճɹ�����ô˺���
//  134 *  ��
//  135 *  ��
//  136 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  137 void LPLD_USB_QueueData(void)
//  138 {
LPLD_USB_QueueData:
        PUSH     {R7,LR}
//  139   (void)USB_Class_CDC_Interface_DIC_Recv_Data(CONTROLLER_ID, NULL, 0);
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       _usb_device_recv_data
//  140 }
        POP      {R0,PC}          ;; return
//  141 #endif
//  142 
//  143 #if(USB_DEVICE_CLASS == USB_DEVICE_CLASS_HID)
//  144 /*
//  145 *  LPLD_USB_HID_MouseControl
//  146 *  HID�����ƺ���
//  147 *  ����
//  148 *    uint8 *buf -- �������4���ֽڿ�������
//  149 *      ��һ���ֽڿ���������Ҽ�
//  150 *        ȡֵ��MOUSE_LEFT_CLICK  ���
//  151 *              MOUSE_RIGHT_CLICK �Ҽ�
//  152 *      �ڶ����ֽڿ���X���ƶ�
//  153 *        ȡֵ��MOUSE_LEFT_MOVE   ����
//  154 *              MOUSE_RIGHT_MOVE  ����
//  155 *      �������ֽڿ���Y���ƶ�
//  156 *        ȡֵ��MOUSE_UP_MOVE    ����
//  157 *              MOUSE_DOWN_MOVE  ����
//  158 *  �����
//  159 *    ��
//  160 */
//  161 void LPLD_USB_HID_MouseControl(uint8 *buf)
//  162 {
//  163   USB_HID_MouseControl(buf);
//  164 }
//  165 
//  166 /*
//  167 *  LPLD_USB_HID_LoopTask
//  168 *  ��main loop��ѭ�����������
//  169 *  ����
//  170 *    uint8 *buf -- �������4���ֽڿ�������
//  171 *      ��һ���ֽڿ���������Ҽ�
//  172 *        ȡֵ��MOUSE_LEFT_CLICK  ���
//  173 *              MOUSE_RIGHT_CLICK �Ҽ�
//  174 *      �ڶ����ֽڿ���X���ƶ�
//  175 *        ȡֵ��MOUSE_LEFT_MOVE   ����
//  176 *              MOUSE_RIGHT_MOVE  ����
//  177 *      �������ֽڿ���Y���ƶ�
//  178 *        ȡֵ��MOUSE_UP_MOVE    ����
//  179 *              MOUSE_DOWN_MOVE  ����
//  180 *  �����
//  181 *    ��
//  182 */
//  183 void LPLD_USB_HID_LoopTask(uint8 *buf)
//  184 {
//  185   if(USB_HID_Mouse_Task())
//  186   {
//  187     LPLD_USB_HID_MouseControl(buf);
//  188   }
//  189 }
//  190 #endif
//  191 /*
//  192 *  LPLD_USB_Isr
//  193 *  USB�жϴ�����
//  194 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  195 void USB_OTG_IRQHandler(void)
//  196 {
USB_OTG_IRQHandler:
        PUSH     {R7,LR}
//  197   //�����û��Զ����жϷ���
//  198   USB_ISR[0]();  
        LDR.N    R0,??DataTable3_8
        LDR      R0,[R0, #+0]
        BLX      R0
//  199 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x4000d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     0x40048004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0x40048048

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     0x40048034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     0x4007210c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     0x40047000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     USB_DEVICE_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     USB_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     tUSB_Rev_Data

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
//   4 bytes in section .bss
// 228 bytes in section .text
// 
// 228 bytes of CODE memory
//   4 bytes of DATA memory
//
//Errors: none
//Warnings: none

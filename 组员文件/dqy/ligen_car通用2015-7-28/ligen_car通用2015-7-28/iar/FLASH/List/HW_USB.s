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
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-23-20.36\iar\FLASH\List\
//        -lB
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-23-20.36\iar\FLASH\List\
//        -o
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-23-20.36\iar\FLASH\Obj\
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4F -e --fpu=None --dlib_config "C:\Program Files\IAR
//        Systems\Embedded Workbench 7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-23-20.36\iar\..\app\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-23-20.36\iar\..\..\..\lib\CPU\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-23-20.36\iar\..\..\..\lib\common\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-23-20.36\iar\..\..\..\lib\LPLD\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-23-20.36\iar\..\..\..\lib\LPLD\HW\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-23-20.36\iar\..\..\..\lib\LPLD\DEV\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-23-20.36\iar\..\..\..\lib\LPLD\FUNC\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-23-20.36\iar\..\..\..\lib\uCOS-II\Ports\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-23-20.36\iar\..\..\..\lib\uCOS-II\Source\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-23-20.36\iar\..\..\..\lib\FatFs\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-23-20.36\iar\..\..\..\lib\FatFs\option\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-23-20.36\iar\..\..\..\lib\USB\common\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-23-20.36\iar\..\..\..\lib\USB\driver\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-23-20.36\iar\..\..\..\lib\USB\descriptor\
//        -I
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-23-20.36\iar\..\..\..\lib\USB\class\
//        -Ol -I "C:\Program Files\IAR Systems\Embedded Workbench
//        7.0\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    List file    =  
//        C:\Users\Administrator\Desktop\lpld\LPLD_OSKinetis_V3.1\project\ligen_car通用7-23-20.36\iar\FLASH\List\HW_USB.s
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
//    5  * @brief UART底层模块相关函数
//    6  *
//    7  * 更改建议:不建议修改
//    8  *
//    9  * 版权所有:北京拉普兰德电子技术有限公司
//   10  * http://www.lpld.cn
//   11  * mail:support@lpld.cn
//   12  *
//   13  * @par
//   14  * 本代码由拉普兰德[LPLD]开发并维护，并向所有使用者开放源代码。
//   15  * 开发者可以随意修使用或改源代码。但本段及以上注释应予以保留。
//   16  * 不得更改或删除原版权所有者姓名，二次开发者可以加注二次版权所有者。
//   17  * 但应在遵守此协议的基础上，开放源代码、不得出售代码本身。
//   18  * 拉普兰德不负责由于使用本代码所带来的任何事故、法律责任或相关不良影响。
//   19  * 拉普兰德无义务解释、说明本代码的具体原理、功能、实现方法。
//   20  * 除非拉普兰德[LPLD]授权，开发者不得将本代码用于商业产品。
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
//   26 //用户自定义中断服务函数数组

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   27 USB_ISR_CALLBACK USB_ISR[1];
USB_ISR:
        DS8 4
//   28 
//   29 /*
//   30 * LPLD_USB_Init
//   31 * K60 USB外设初始化函数
//   32 * 在该函数中,初始化USB外设时钟,设置USB外设的中断服务函数,
//   33 * 并且调用USB设备初始化函数
//   34 */
//   35 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   36 void LPLD_USB_Init(void)
//   37 { 
LPLD_USB_Init:
        PUSH     {R7,LR}
//   38   MPU->CESR=0; //MPU 配置
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_1  ;; 0x4000d000
        STR      R0,[R1, #+0]
//   39 #if (defined(CPU_MK60DZ10))  
//   40   SIM->SOPT2 |= SIM_SOPT2_USBSRC_MASK |   //选择PLL/FLL作为时钟源
//   41                SIM_SOPT2_PLLFLLSEL_MASK; //用PLL作为USB的时钟源，此时的PLL的频率为96Mhz 
//   42 #if(CORE_CLK_MHZ == PLL_96)
//   43   SIM->CLKDIV2 = 0x02;                    //设置分频系数USB时钟 = 96Mhz/2 =48Mhz
//   44 #endif 
//   45   SIM->SCGC4 |= SIM_SCGC4_USBOTG_MASK;  //使能USB外设时钟
//   46 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//   47   SIM->SOPT2 |= SIM_SOPT2_PLLFLLSEL(1)      // 选择 PLL0 作为参考   
//   48             |  SIM_SOPT2_USBFSRC(0)         // 选择 MCGPLLCLK 作为 CLKC 参考源 
//   49             |  SIM_SOPT2_USBF_CLKSEL_MASK;  // 选择 USB fractional divider 座位 USB reference clock 参考源 
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
//   56   SIM->SCGC4 |= SIM_SCGC4_USBFS_MASK;   //使能USB外设时钟 
        LDR.N    R0,??DataTable3_4  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40000
        LDR.N    R1,??DataTable3_4  ;; 0x40048034
        STR      R0,[R1, #+0]
//   57 #endif 
//   58   USB0->USBTRC0 = 0x40;                   //按照文档所述，此位必须设置为1
        MOVS     R0,#+64
        LDR.N    R1,??DataTable3_5  ;; 0x4007210c
        STRB     R0,[R1, #+0]
//   59   SIM->SOPT1 |= SIM_SOPT1_USBREGEN_MASK;  //配置USB设备稳压源
        LDR.N    R0,??DataTable3_6  ;; 0x40047000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000000
        LDR.N    R1,??DataTable3_6  ;; 0x40047000
        STR      R0,[R1, #+0]
//   60   
//   61   /* NVIC模块配置 */
//   62   enable_irq(USB0_IRQn);                 //使能NVIC中的USB OTG中断
        MOVS     R0,#+73
        BL       NVIC_EnableIRQ
//   63   USB_ISR[0] = USB_DEVICE_ISR;           //将USB协议处理函数添加到中断处理函数数组中
        LDR.N    R0,??DataTable3_7
        LDR.N    R1,??DataTable3_8
        STR      R0,[R1, #+0]
//   64   
//   65 #if(USB_DEVICE_CLASS == USB_DEVICE_CLASS_CDC)
//   66   USB_CDC_Init();                        //初始化CDC类
        BL       USB_CDC_Init
//   67 #elif(USB_DEVICE_CLASS == USB_DEVICE_CLASS_HID)
//   68   USB_HID_Mouse_Init();                  //初始化HID类
//   69 #endif
//   70   
//   71   
//   72 }
        POP      {R0,PC}          ;; return
//   73 
//   74 /*
//   75 * LPLD_USB_DeInit
//   76 * K60 USB模块注销函数
//   77 * 注销所选择的USB设备
//   78 */
//   79 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   80 void LPLD_USB_DeInit(void)
//   81 { 
LPLD_USB_DeInit:
        PUSH     {R7,LR}
//   82 #if(USB_DEVICE_CLASS == USB_DEVICE_CLASS_CDC)
//   83   USB_Class_CDC_DeInit(CONTROLLER_ID);                        //注销CDC类
        MOVS     R0,#+0
        BL       USB_Class_CDC_DeInit
//   84 #elif(USB_DEVICE_CLASS == USB_DEVICE_CLASS_HID)
//   85   USB_Class_HID_DeInit(CONTROLLER_ID);                        //注销HID类
//   86 #endif
//   87 }
        POP      {R0,PC}          ;; return
//   88 
//   89 #if(USB_DEVICE_CLASS == USB_DEVICE_CLASS_CDC)
//   90 /*
//   91 *  LPLD_USB_VirtualCom_Rx
//   92 *  将USB CDC类模式虚拟成串口模式，该函数是串口接收函数
//   93 *  参数：
//   94 *      *rx_buf--指向用户数据存储区，用于储存接收到的数据
//   95 *  输出：接收数据的长度，以字节为单位
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
//  105 *  将USB CDC类模式虚拟成串口模式，该函数是串口发送函数
//  106 *  参数：
//  107 *      *tx_buf -- 指向用户数据存储区，用于储存要发送的数据
//  108 *      len -- 要发送的数据长度
//  109 *  输出：0x00   发送成功
//  110 *        非0x00 发送失败
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
//  121 *  添加USB 虚拟串口接收数据中断服务函数
//  122 *  无
//  123 *  无
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
//  132 *  从USB的内存中恢复接收到的数据到用户内存中
//  133 *  接收成功后调用此函数
//  134 *  无
//  135 *  无
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
//  146 *  HID鼠标控制函数
//  147 *  参数
//  148 *    uint8 *buf -- 数组包含4个字节控制命令
//  149 *      第一个字节控制鼠标左右键
//  150 *        取值：MOUSE_LEFT_CLICK  左键
//  151 *              MOUSE_RIGHT_CLICK 右键
//  152 *      第二个字节控制X轴移动
//  153 *        取值：MOUSE_LEFT_MOVE   左移
//  154 *              MOUSE_RIGHT_MOVE  右移
//  155 *      第三个字节控制Y轴移动
//  156 *        取值：MOUSE_UP_MOVE    上移
//  157 *              MOUSE_DOWN_MOVE  下移
//  158 *  输出：
//  159 *    无
//  160 */
//  161 void LPLD_USB_HID_MouseControl(uint8 *buf)
//  162 {
//  163   USB_HID_MouseControl(buf);
//  164 }
//  165 
//  166 /*
//  167 *  LPLD_USB_HID_LoopTask
//  168 *  在main loop中循环调度鼠标检测
//  169 *  参数
//  170 *    uint8 *buf -- 数组包含4个字节控制命令
//  171 *      第一个字节控制鼠标左右键
//  172 *        取值：MOUSE_LEFT_CLICK  左键
//  173 *              MOUSE_RIGHT_CLICK 右键
//  174 *      第二个字节控制X轴移动
//  175 *        取值：MOUSE_LEFT_MOVE   左移
//  176 *              MOUSE_RIGHT_MOVE  右移
//  177 *      第三个字节控制Y轴移动
//  178 *        取值：MOUSE_UP_MOVE    上移
//  179 *              MOUSE_DOWN_MOVE  下移
//  180 *  输出：
//  181 *    无
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
//  193 *  USB中断处理函数
//  194 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  195 void USB_OTG_IRQHandler(void)
//  196 {
USB_OTG_IRQHandler:
        PUSH     {R7,LR}
//  197   //调用用户自定义中断服务
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

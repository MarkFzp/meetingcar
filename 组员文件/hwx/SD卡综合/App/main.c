/*!
 *     COPYRIGHT NOTICE
 *     Copyright (c) 2013,山外科技
 *     All rights reserved.
 *     技术讨论：山外论坛 http://www.vcan123.com
 *
 *     除注明出处外，以下所有内容版权均属山外科技所有，未经允许，不得用于商业用途，
 *     修改内容时必须保留山外科技的版权声明。
 *
 * @file       main.c
 * @brief      山外K60 平台主程序
 * @author     山外科技
 * @version    v5.0
 * @date       2013-08-28
 */

#include "common.h"
#include "include.h"

#define BUFF_SIZE   100

/*!
 *  @brief      main函数
 *  @since      v5.0
 *  @note       山外SD卡 FatFS实验
 */
void  main(void)
{
    FIL     fdst;   //文件
    FATFS   fs;     //文件系统

    uint32 size, sizetmp;
    int res;
    char *str = "00000000011111111223242342342432000000000000000111111111111111111111";
    uint8 buff[BUFF_SIZE];

    memset(buff,0,BUFF_SIZE);

    f_mount(0, &fs);                                                               //挂载文件系统

    //初始化 SD卡 在 f_open 上执行,目前代码只支持打开一个文件(由 _FS_SHARE 配置)，频繁打开文件会消耗CPU资源
    res = f_open(&fdst, "0:/moonstar.txt", FA_OPEN_ALWAYS | FA_WRITE | FA_READ);  //打开文件，如果没有就创建，带读写打开

    if( res == FR_DISK_ERR)
    {
        printf( "\n没插入SD卡??\n" );
        return;
    }
    else if ( res == FR_OK )
    {
        printf( "\n文件打开成功 \n" );
    }
    else
    {
        printf("\n返回值异常");
        return;
    }

    printf("\n字符串长度为:%d",strlen(str));

    f_puts(str, &fdst);                     //往文件里写入字符串

    f_sync(&fdst);                          //刚才写入了数据，实际上数据并没真正完成写入，需要调用此函数同步或者关闭文件，才会真正写入

    size = f_size(&fdst);                   //获取文件的大小

    printf( "\n文件大小为：%d \n" , size);  //串口打印文件的大小

    if(size > BUFF_SIZE)size = BUFF_SIZE;   //防止溢出

    f_lseek(&fdst, 0);                      //把指针指向文件顶部
    f_read (&fdst, buff, size, &sizetmp);   //读取

    printf("文件内容为：\n%s", (char const *)buff);

    f_close(&fdst);                         //关闭文件
}
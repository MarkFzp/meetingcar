/*!
 *     COPYRIGHT NOTICE
 *     Copyright (c) 2013,ɽ��Ƽ�
 *     All rights reserved.
 *     �������ۣ�ɽ����̳ http://www.vcan123.com
 *
 *     ��ע�������⣬�����������ݰ�Ȩ����ɽ��Ƽ����У�δ����������������ҵ��;��
 *     �޸�����ʱ���뱣��ɽ��Ƽ��İ�Ȩ������
 *
 * @file       main.c
 * @brief      ɽ��K60 ƽ̨������
 * @author     ɽ��Ƽ�
 * @version    v5.0
 * @date       2013-08-28
 */

#include "common.h"
#include "include.h"

#define BUFF_SIZE   100

/*!
 *  @brief      main����
 *  @since      v5.0
 *  @note       ɽ��SD�� FatFSʵ��
 */
void  main(void)
{
    FIL     fdst;   //�ļ�
    FATFS   fs;     //�ļ�ϵͳ

    uint32 size, sizetmp;
    int res;
    char *str = "00000000011111111223242342342432000000000000000111111111111111111111";
    uint8 buff[BUFF_SIZE];

    memset(buff,0,BUFF_SIZE);

    f_mount(0, &fs);                                                               //�����ļ�ϵͳ

    //��ʼ�� SD�� �� f_open ��ִ��,Ŀǰ����ֻ֧�ִ�һ���ļ�(�� _FS_SHARE ����)��Ƶ�����ļ�������CPU��Դ
    res = f_open(&fdst, "0:/moonstar.txt", FA_OPEN_ALWAYS | FA_WRITE | FA_READ);  //���ļ������û�оʹ���������д��

    if( res == FR_DISK_ERR)
    {
        printf( "\nû����SD��??\n" );
        return;
    }
    else if ( res == FR_OK )
    {
        printf( "\n�ļ��򿪳ɹ� \n" );
    }
    else
    {
        printf("\n����ֵ�쳣");
        return;
    }

    printf("\n�ַ�������Ϊ:%d",strlen(str));

    f_puts(str, &fdst);                     //���ļ���д���ַ���

    f_sync(&fdst);                          //�ղ�д�������ݣ�ʵ�������ݲ�û�������д�룬��Ҫ���ô˺���ͬ�����߹ر��ļ����Ż�����д��

    size = f_size(&fdst);                   //��ȡ�ļ��Ĵ�С

    printf( "\n�ļ���СΪ��%d \n" , size);  //���ڴ�ӡ�ļ��Ĵ�С

    if(size > BUFF_SIZE)size = BUFF_SIZE;   //��ֹ���

    f_lseek(&fdst, 0);                      //��ָ��ָ���ļ�����
    f_read (&fdst, buff, size, &sizetmp);   //��ȡ

    printf("�ļ�����Ϊ��\n%s", (char const *)buff);

    f_close(&fdst);                         //�ر��ļ�
}
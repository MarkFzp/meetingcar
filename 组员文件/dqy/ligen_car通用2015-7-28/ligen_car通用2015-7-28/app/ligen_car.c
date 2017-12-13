/**
* --------------（ligen_car）-----------------
* @file ligen_car.c
* @version 0.0
* @date 2014-11-10
*
*/

#include "common.h"
#include "sys.h"
#define chuankou 0
void SendPicture(void) ;
void SendPicture2(void) ;
void SendPicture3(void) ;
uint32 angle_to_period(int8 deg);
void pwm_init(void);
void MotorUpdatePWM();
void SteerUpdatePWM(char ss,float speed);
void LG_Print_Num(int x,int y,double print_num);
void display();

void Get_StableNumbers_recent();
FTM_InitTypeDef ftm_init_struct;
float duojizkb;
float duojizkb0;
float duojizkb1;
int coc=0;
int cocs[2][3];
int StableNumbers_Big_count=0;
float duojipianyi=810;
int showmode=1,showmode_last=-1;;
void GetBoma();
int last=0;
float bm_z=0,bm_y=0,bm_pz=0;
float mode=-1;
float zkb=5000;
int sd=5000;
int sd_last=5000;
int Error_recent[20]={0};
int Error_recent_i=0;
int sd_a[8]={75,95,100,110,120,130,140,65};
int StableNumbers_recent[5]=0;
int csbs=0;
int StableNumbers_a,StableNumbers_b;
int minline_js=0;
float a_y=0,a_y_min=50000,a_y_max=0;
int js=-1;
float jssd=10000;
int light_mode=0;
int djjd=0;
int baohu=0;
float Setk=1;
void main (void)
{ 
  
  //关闭全局中断
  DisableInterrupts; 
  
  public_init();//初始化
  pwm_init();
  OLED_Init();
  
  //使能PORTA、PORTB中断
  enable_irq(PORTB_IRQn);
  enable_irq(PORTA_IRQn);
  Is_DispPhoto = 0; 
  //使能全局中断
  EnableInterrupts;
 // ADC_init();
  LPLD_GPIO_Output_b(PTD, 15,0); 
  LPLD_GPIO_Output_b(PTE, 26,0); 
  

  int pianyi[H_A]={2274 ,2169 ,2067 ,1968 ,1870 ,1776 ,1684 ,1594 ,1506 ,1422 ,1339 ,1259 ,1182 ,1107 ,1034 ,964 ,896 ,831 ,769 ,708 ,651 ,595 ,542 ,492 ,444 ,398 ,355 ,315 ,277 ,241 ,208 ,177 ,149 ,123 ,100 ,79 ,60 ,44 ,31 ,20 ,11 ,5 ,1 ,0 ,1 ,5 ,11 ,20 ,31 ,44 ,60 ,79 ,100 ,123 ,149 ,177 ,208 ,241 ,277 ,315 ,355 ,398 ,444 ,492 ,542 ,595 ,651 ,708 ,769 ,831 ,896 ,964 ,1034 ,1107 ,1182 ,1259 ,1339 ,1422 ,1506 ,1594 ,1684 ,1776 ,1870 ,1968 ,2067 ,2169 ,2274 ,2381 ,2490 ,2602}; 
  //
  int midrow=100;//72
  
 
  
  GetBoma();//读取拨码开关状态
//  a_y= LPLD_ADC_Get(ADC0, AD9);
//  a_y_min=a_y;
//  a_y_max=a_y;

  while(1)
  {//LED();
    
    int i = 0, j = 0;
    if(Is_DispPhoto==1)//采集到一幅图像
    { 
      if(light_mode)//灯塔模块使用模式判断
      { 
      if(GetFreq>10&&mode==-1)mode=0; 
      if(GetFreq<4&&mode==0)mode=1;
      if(GetFreq>10&&mode==1&&V_count>420)mode=2;
      if(GetFreq<4&&mode>=2&&mode<=3)mode+=0.5;
      
      }
      else
      {mode=1;}
      
      
      
      // LPLD_GPIO_Toggle_b(LED_B, LED_B_PIN);
      //图像压缩并矫正畸变
      int cj_h=0,cj_l=0;
      for(i=0,cj_l=0;i<V_A;i++)// 行  100/1=100，
      {  cj_l=i*V_FX;
      for(j=0,cj_h=H_PY;j<H_A;j++)// 列 288/3=96
      { 
        if(cj_l<midrow) ImageData[i][j] = Pix_Data[(int)(cj_l+(midrow-cj_l)*pianyi[j]/5000)/**V_FX*/][cj_h];
        else ImageData[i][j] = Pix_Data[cj_l/**V_FX*/][cj_h];
        cj_h=cj_h+H_FX;
        
      }
      
      } 
      
      // fs=-1;
      ImageProcess();
      if(fs==-1){ SendPicture2();}//上位机通信    
      if(fs!=-2)  Is_DispPhoto=0;
      GetImageParam();			//;提取图像特征参数
      MidLineProcess();			// 提取中心线并处理
      
      LED_C_T;
      if(fs==-2) { SendPicture3(); Is_DispPhoto=0;}else {NUM_Send();}//上位机通信     
      RTRecognition();  			//赛道识别
      
     DirectionCtrol();//舵机控制

  
      Get_StableNumbers_recent();
      display();
      
      //Is_DispPhoto=0;
      // LPLD_GPIO_ClearIntFlag(PORTA);
    } 
    
    
    
    
    
    
    
  } 
  
  
}

void SendPicture(void) //发送采集到的图像
{
  int i = 0, j = 0;
  
  LPLD_UART_PutChar(UART4,0xff);//发送帧头标志
  for(i=0;i<V;i++) 
  {
    for(j=0;j<H;j++)
    {
      if(Pix_Data[i][j]==0xff)
      {
        Pix_Data[i][j]=0xfe;
      }
      
      LPLD_UART_PutChar(UART4,Pix_Data[i][j]);
    }
    
  }
  
  
  
}

void SendPicture2(void) //发送待处理的图像
{
  int i = 0, j = 0;
  int ys_i=0;
  LPLD_UART_PutChar(UART4,0xff);//发送帧头标志
  for(i=0;i<V_A;i++) 
  {
    for(j=0;j<H_A;j++)//宽
    {
      if(ImageData[i][j]==0xff)
      {
        ImageData[i][j]=0xfe;
      }
      
      LPLD_UART_PutChar(UART4,ImageData[i][j]);
      
      
    }
    
  }
  
  
  
}

void SendPicture3(void) //发送二值化的图像
{
  int i = 0, j = 0;
  int ys_i=0;
  LPLD_UART_PutChar(UART4,0xff);//发送帧头标志
  for(i=0;i<V_A;i++) 
  {
    if(BlackLineData[i]<0)  ThresholdData[i][0]=0xEF;
    if(BlackLineData[i]>=H_A)  ThresholdData[i][H_A-1]=0xEF;
    for(j=0;j<H_A;j++)//宽
    {
      if(ThresholdData[i][j]==0xff)
      {
        ThresholdData[i][j]=0xfe;
      }
      BlackLineData[i]=MAX(BlackLineData[i],0);      
      BlackLineData[i]=MIN(BlackLineData[i],ColumnMax-1);
      if(j==BlackEndColumnMax+1) ThresholdData[i][j]=0x7F;
      if(BlackLineData[i]==j)  ThresholdData[i][j]=0xEF;
      if((RowMax-StableNumbers)==i)  ThresholdData[i][j]=0x7F;
      LPLD_UART_PutChar(UART4,ThresholdData[i][j]);
    }
    
  }
  
  
  
}




/*
* 初始化FTM的PWM输出功能
*
*/
void pwm_init(void)
{/* FTM_CH0  舵机
  FTM_CH1 左正
  FTM_CH2 右正
  FTM_CH3 左反
  FTM_CH4 右反
  */
  ftm_init_struct.FTM_Ftmx = FTM1;	//使能FTM0通道
  ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	//使能PWM模式
  ftm_init_struct.FTM_PwmFreq = 50;	//PWM频率50Hz
  
  LPLD_FTM_Init(ftm_init_struct);
  
  
  LPLD_FTM_PWM_Enable(FTM1, //使用FTM0
                      FTM_Ch1, //使能Ch0通道
                      DirectMiddle, //初始化角度0度
                      PTA13, //使用Ch0通道的PTC1引脚
                      ALIGN_LEFT        //脉宽左对齐
                        );    
  
  ftm_init_struct.FTM_Ftmx = FTM0;	//使能FTM0通道
  ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	//使能PWM模式
  ftm_init_struct.FTM_PwmFreq = 10000;	//PWM频率50Hz
  
  LPLD_FTM_Init(ftm_init_struct);
  
  
  LPLD_FTM_PWM_Enable(FTM0, //使用FTM0
                      FTM_Ch0, //使能Ch0通道
                      0, //初始化角度0度
                      PTC1, //使用Ch0通道的PTC1引脚
                      ALIGN_LEFT        //脉宽左对齐
                        );    
  
  ftm_init_struct.FTM_Ftmx = FTM0;	//使能FTM0通道
  ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	//使能PWM模式
  ftm_init_struct.FTM_PwmFreq =10000;	//PWM频率50Hz
  
  
  LPLD_FTM_Init(ftm_init_struct);
  LPLD_FTM_PWM_Enable(FTM0, //使用FTM0
                      FTM_Ch1, //使能Ch0通道
                      0, //初始化角度0度
                      PTC2, //使用Ch0通道的PTC1引脚
                      ALIGN_LEFT        //脉宽左对齐
                        );  
  
  
  
  ftm_init_struct.FTM_Ftmx = FTM0;	//使能FTM0通道
  ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	//使能PWM模式
  ftm_init_struct.FTM_PwmFreq = 10000;	//PWM频率50Hz
  
  LPLD_FTM_Init(ftm_init_struct);
  LPLD_FTM_PWM_Enable(FTM0, //使用FTM0
                      FTM_Ch2, //使能Ch0通道
                      0, //初始化角度0度
                      PTC3, //使用Ch0通道的PTC1引脚
                      ALIGN_LEFT        //脉宽左对齐
                        ); 
  
  
  
  ftm_init_struct.FTM_Ftmx = FTM0;	//使能FTM0通道
  ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	//使能PWM模式
  ftm_init_struct.FTM_PwmFreq = 10000;	//PWM频率50Hz
  
  LPLD_FTM_Init(ftm_init_struct);
  LPLD_FTM_PWM_Enable(FTM0, //使用FTM0
                      FTM_Ch3, //使能Ch0通道
                      0, //初始化角度0度
                      PTC4, //使用Ch0通道的PTC1引脚
                      ALIGN_LEFT        //脉宽左对齐
                        ); 
  
}

/*
* 将舵机的角度值转化为PWM的频率
* deg--角度值(-90°~+90°)
*   |__-90~+90
*
*/
uint32 angle_to_period(int8 deg)
{
  uint32 pulse_width = 500+2000*(90+deg)/180;
  return (uint32)(10000*pulse_width/20000);
}
int cs_z=0,cs_y=0;
int zk_z_last=10000,zk_y_last=10000;
void MotorUpdatePWM()
{int zk_z,zk_y;
//if(sd-sd_last>2000&&sd>5000) sd=sd_last+MIN((sd-sd_last)*0.8,1000); 
//sd_last=sd;
zk_z=sd+cs_z;
zk_y=sd+cs_y;
if(zk_z<0)zk_z=0;
if(zk_y<0)zk_y=0;
if(zk_z>10000)zk_z=10000;
if(zk_y>10000)zk_y=10000;

//zk_z=zkb_check(zk_z,zk_z_last);
//zk_y=zkb_check(zk_y,zk_y_last);
//zk_z_last=zk_z;
//zk_y_last=zk_y;

//if(djjd>75&&zk_z<zk_y&&zk_z>3500&&bm_pz>70)zk_z=3500;
//if(djjd>75&&zk_y<zk_z&&zk_y>3500&&bm_pz>70)zk_y=3500;
if(mode<1||mode>20) 
{
if(mode<1)V_count=0;
if(mode>20&&V_count>480)mode=-1;
LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0,0);       //右

LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch3,0);        //左 
LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1,0);       //右

LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2,0);        //左 

return;

}
if(mode>3&&mode<=20)
{ V_count=0;
  LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0,0);       //右
  
  LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2,0);        //左 
  LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1,8000);       //右
  
  LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch3,8000);        //左 
  mode+=0.7;
  return;
}

LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0,zk_y); // 右正    

LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1,0); // 左负

LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2,zk_z); // 左正 

LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch3,0);// 右负

}

void SteerUpdatePWM(char ss,float speed)
{duojizkb =speed;
//zkb

int sdjc=0;
float csb=50;//0- zkb/65
int zycs=0;
int ys_i=0;
float cs_nei=-0.5;

csb=csbs;
//if(mid_line_count>4) csb*=1.5;
LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch1,speed);
//if((fabss(bm_z-bm_y)>=50||hx||bm_pz<10||StableNumbers<=60)&&V_count>120)
//{
//  
//  PTE4_O=1;
//}
//
//else
//{
//  
//  PTE4_O=0;
//  
//}
if(hx)cs_nei=1;else cs_nei=0.7;
djjd=fabss(DirectMiddle-speed);
if (DirectMiddle-speed>0)//右转
{
  cs_y=(speed-DirectMiddle)*csb*cs_nei;
  cs_z=(DirectMiddle-speed)*csb;
  
}
else if (DirectMiddle-speed<0)//左转
{ 
  
  cs_y=(speed-DirectMiddle)*csb;
  cs_z=(DirectMiddle-speed)*csb*cs_nei;
  
}
else 
{
  cs_y=0;
  cs_z=0;
  
}

sd=zkb;
//if(djjd>40&&bm_pz>sd_a[0]) sd*=0.90;
int StableNumbers_max;
StableNumbers_max=MIN(StableNumbers_max,BlackEndMax);
//
//if(bm_pz>=sd_a[5]) {sd*=0.9;js=2;}
//if(bm_pz>=sd_a[6]) {sd*=0.7;js=2;}

if(StableNumbers_recent[4]>75&&StableNumbers_recent[3]>75&&StableNumbers_recent[2]>75&&StableNumbers_recent[1]<75
   &&StableNumbers_recent[0]<75&&StableNumbers<75&&StableNumbers_recent[4]>StableNumbers_recent[2]
     &&StableNumbers_recent[2]>StableNumbers_recent[0]&&StableNumbers_recent[1]>StableNumbers&&StableNumbers>40
       &&bm_pz>sd_a[2]&&StableNumbers_Big_count>20
         )
{
  
  sd=3000;js=8;
  
}
else if(StableNumbers_recent[4]>75&&StableNumbers_recent[3]>75&&StableNumbers_recent[2]>75&&StableNumbers_recent[1]<75
        &&StableNumbers_recent[0]<75&&StableNumbers<75&&StableNumbers_recent[4]>StableNumbers_recent[2]
          &&StableNumbers_recent[2]>StableNumbers_recent[0]&&StableNumbers_recent[1]>StableNumbers&&StableNumbers>40
            &&bm_pz>sd_a[1]&&StableNumbers_Big_count>20
              )
{
  sd=2500;js=8;
  
}
else if(bm_pz>sd_a[2]&&StableNumbers>45&&StableNumbers<80&&StableNumbers_Big_count>5)
{
  sd=500;js=4;
  if(PTB5_I)js*=2;
  if(PTB4_I&&PTB5_I)
  {
  sd=0;js=10;
  
  }
}
else if(bm_pz>sd_a[1]&&StableNumbers>45&&StableNumbers<80&&StableNumbers_Big_count>5)
{
  sd=500;js=2;
   if(PTB5_I)js*=2;
   
  if(PTB4_I&&PTB5_I)
  {
  sd=0;js=5;
  
  }
}

//else if(bm_pz>sd_a[1]&&StableNumbers<=40)
//{
// sd*=0.8;
//}

if(js>-1)
{js--;
sd=MIN(jssd,sd);
jssd=sd;
}
else
{
  jssd=zkb;
}
int sfjs=0;

sfjs=(midline_fcount_max>5)&&minline_js;
if(sfjs&&bm_pz>sd_a[1]&&bm_pz<=sd_a[2]&&bm_z>10&&bm_y>10)
{sd=zkb;
sd*=0.9;
}
else if(sfjs&&(bm_pz<=sd_a[3]&&bm_pz>sd_a[2])&&bm_z>10&&bm_y>10)
{sd=zkb;
sd*=0.8;
}
else if(sfjs&&bm_pz>sd_a[3]&&bm_z>10&&bm_y>10)
{sd=zkb;
sd*=0.7;
}

sfjs=(((hx_i>2&&hx_i<50)||(hx_i<3&&BlackEndMax<30))&&StableNumbers<80&&minline_js);
if(sfjs&&bm_pz>sd_a[1]&&bm_pz<=sd_a[2]&&bm_z>10&&bm_y>10)
{sd=zkb;
sd*=0.6;
}
else if(sfjs&&(bm_pz<=sd_a[3]&&bm_pz>sd_a[2])&&bm_z>10&&bm_y>10)
{sd=zkb;
sd*=0.3;
}
else if(sfjs&&bm_pz>sd_a[3]&&bm_z>10&&bm_y>10)
{sd=zkb;
sd*=0.1;
}
if((bm_z<5||bm_y<5)&&sd>3000&&V_count>120) 
{baohu++;
 if(baohu>60) sd=3000;
}
else
{
  baohu=0;

}
//if(sd<0) sd=0;
if(fabss(Error>40)&&sd<5000) sd=5000;

if(/*sd<zkb*0.9*/zaw_mode!=0)
{
  
  PTE4_O=1;
}

else
{
  
  PTE4_O=0;
  
}
MotorUpdatePWM();
}

void display()
{ 
  if(showmode!=showmode_last) 
  {
    OLED_Fill(0x00); 
    if(showmode==1)
    {
      OLED_Print_Str(0,0,"SNm");  //汉字字符串显示
      OLED_Print_Str(0,2,"Err");  //汉字字符串显示
      OLED_Print_Str(0,4,"Era");  //汉字字符串显示
      OLED_Print_Str(0,6,"BLM");  //汉字字符串显示
      
      OLED_Print_Str(64,0,"ZAW");  //汉字字符串显示
      OLED_Print_Str(64,2,"BMZ");  //汉字字符串显示
      OLED_Print_Str(64,4,"BMY");  //汉字字符串显示
      OLED_Print_Str(64,6,"GFQ");  //汉字字符串显示
      showmode_last=showmode;
    }
    
    
  }
  if(showmode==1)
  {
    OLED_Print_Str(24,0,"     ");  //汉字字符串显示
    OLED_Print_Str(24,2,"     ");  //汉字字符串显示
    OLED_Print_Str(24,4,"     ");  //汉字字符串显示
    OLED_Print_Str(24,6,"     ");  //汉字字符串显示       
    LG_Print_Num(24,0,StableNumbers);  //汉字字符串显示
    LG_Print_Num(24,2,Error);  //汉字字符串显示
    LG_Print_Num(24,4,Errora);  //汉字字符串显示
    LG_Print_Num(24,6,BlackEndMax);  //汉字字符串显示
    
    
    
    OLED_Print_Str(88,0,"     ");  //汉字字符串显示
    OLED_Print_Str(88,2,"     ");  //汉字字符串显示
    OLED_Print_Str(88,4,"     ");  //汉字字符串显示
    OLED_Print_Str(88,6,"     ");  //汉字字符串显示       
    LG_Print_Num(88,0,zaw_mode);  //汉字字符串显示
    LG_Print_Num(88,2,bm_z);  //汉字字符串显示
    LG_Print_Num(88,4,bm_y);  //汉字字符串显示
    LG_Print_Num(88,6,GetFreq+1);  //汉字字符串显示
  }
  
  
}
void LG_Print_Num(int x,int y,double print_num)
{
  if(print_num>=0) 
    OLED_Print_Num(x,y,print_num);
  else
  {
    OLED_Print_Str(x,y,"*");  //汉字字符串显示
    OLED_Print_Num(x+8,y,-print_num);
  }
  
  
  
}
void GetBoma()
{
  int bm_i=0;
  if(PTA28_I)minline_js=1;; 
  if(PTA29_I){zkb+=500;} 
  if(PTB4_I){zkb+=1000;Setk=1;} 
  if(PTB5_I){zkb+=2000;Setk=1.1;} 

 if(PTA29_I==0&&PTB4_I==0&&PTB5_I==0)Setk=0.9;else if(PTB4_I==0&&PTB5_I==0)Setk=0.95;
 
 
  if(PTB9_I)StaticThreshold+=10; 
  if(PTB11_I)StaticThreshold+=20; 
  if(PTB17_I) light_mode=1;
  if(PTB19_I)
  {
  Setk+=0.2;
  }
  
  
  
  
  if(PTB21_I)
  {
    MidPos-=1;
  }
  if(PTB20_I)
  {
    csbs+=10;
  }
  if(PTB23_I)csbs+=30;
  if(PTB22_I)csbs+=60;
  //if(PTB22_I)zkb-=100; 
  
  
  
}
int StableNumbers_recent_count=1;
void Get_StableNumbers_recent()
{
  StableNumbers_recent_count=1-StableNumbers_recent_count;
  if(StableNumbers_recent_count) return;
  StableNumbers_recent[4]=StableNumbers_recent[3];
  StableNumbers_recent[3]=StableNumbers_recent[2];
  StableNumbers_recent[2]=StableNumbers_recent[1];
  StableNumbers_recent[1]=StableNumbers_recent[0];
  StableNumbers_recent[0]=StableNumbers;
  if(StableNumbers>=75)StableNumbers_Big_count++;
  else StableNumbers_Big_count=0;
  
}
int zkb_check(zkb_now,zkb_last)
{
if((zkb_now-zkb_last)<500&&(zkb_now-zkb_last)>0) return zkb_now;
else if((zkb_now-zkb_last)>0) return (zkb_last+500);

if((zkb_now-zkb_last)>-500&&(zkb_now-zkb_last)<0/*&&zkb_now>zkb*/) return zkb_now;
else if((zkb_now-zkb_last)<0/*&&zkb_now>zkb*/) return (zkb_last-500);
return zkb_now;
}
//int GetRecentError()
//{ 
//  int GetRecentError_count,GetRecentError_all;
//  int GetRecentError_i;
//  GetRecentError_all=0;
//  for(GetRecentError_i=0;GetRecentError_i<10;GetRecentError_i++;)
//  {
//    
//    GetRecentError_all+=Error_recent[GetRecentError_i];
//    
//  }
//  GetRecentError_all= GetRecentError_all/10;
//  return GetRecentError_all;
//  
//}
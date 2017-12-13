#include "sys.h" 
#include "IMAGE.h"
#include "common.h"
void ProcessCrossing();
void SmoothLeftRight(void);
void  GetCrossingMidLine();
//int Find_Endline(row,column);
void CommonRectificate(int data[],unsigned char begin,unsigned char end);
void SCProcessing();
void GetBlackEndParam2();
int FindMidLine_lastisnotmidline(int row,int lastmidline,int lastleft,int lastright);
int FindMidLine_lastismidline(int row,int lastmidline,int lastleft,int lastright);
signed char RoadType = -1;								//赛道类型
signed char LastRoadType = 0;	
char endline;
int LCrossingTripPos = 0;
int RCrossingTripPos = 0;
//找到十字的跳变点
unsigned char bFoundTripPoint = 0;
int firstline_l=-1,firstline_r=-1,firstline_m=-1;
int tiaobian_Left[RowMax]={0},tiaobian_Right[RowMax]={0};
//可全速使能
int Endline=0;

unsigned char g_BasePos = ColumnMax/2;
unsigned char BanMa_Derict=0,BanMa_Left,BanMa_Right;
unsigned char ValidLineR[RowMax]={0}; 			//十字道右边行有效标志数组
unsigned char ValidLineL[RowMax]={0};			//十字道左边行有效标志数组
unsigned char NoValidLMax = 0;					//十字交叉道左边连续丢线计数
unsigned char NoValidRMax = 0;					//十字交叉道右边连续丢线计数
unsigned char CrossingStable = 0;

int startPos=0,endPos=0,temCount=0,countMax=0,temPos=0;
int ProcessFlag=0;
int sfzj=0;
int ThresholdValue = 130;		//二值化阈值
int UseStaticFlag = 1;		       // 是否使用静态阈值标志
int StaticThreshold = 130;          //二值化静态阀值  
int LeftBlack[RowMax];	//左边缘黑线数组					 
int RightBlack[RowMax];//右边缘黑线数组					 
int BlackLineData[RowMax];// 提取黑线值数据
unsigned char g_Derict = 0; //方向 正-0 左-1 右-2
int BlackEndL = 0;
int BlackEndM = 0;
int BlackEndR = 0;
int BlackEndMax = 0;
int BlackEndLMR = 0;
int hx_found_Column=0;
int hx_find_count_max=0;
int RoadMode[RowMax]=0;
int zaw_mode=0;
int BlackEndA = 0;
int BlackEndB = 0;
int BlackEndC = 0;
int BlackEndD = 0;
int BlackEndE = 0;
int BlackEndF = 0;
int BlackEndG = 0;
int BlackEndColumnMax=1;


int StableNumbers = 0;
int StableNumbers2 = 0;
int CompensateCount = 0;

int LeftStableNumbers = 0;
int RightStableNumbers = 0;
int ValidLineCount = 0;
int ValidLineCount1 = 0; //左边缘找到并且右边找到
int ValidLineCount2 = 0;//左边缘找到或者右边找到
int P0_X = 0;
int P0_Y = 0;
int P1_X = 0;
int P1_Y = 0;
int P2_X = 0;
int P2_Y = 0;
float Mid_K1 = 0.0;
float Mid_K2 = 0.0;

int TopE1=0;//中心线上半部分偏差
int TopE2=0;//中心线下半部分偏差
int TopLen1=0;//中心线上半部分偏差
int TopLen2=0;//中心线上半部分偏差 
int SubBasePoint = 0;//中心线下半部分距基准点的最大偏差
int SubBasePointLen = 0;
int yxhs=0;//图像有效行数
int tbs_z=0,tbs_y=0,tbs_all=0;//图像边线跳变数
int Excursion = 0;
int ValidExcursionCount=0;
char RightWhite=0;
char LeftWhite=0;
int midline_fcount=0,midline_fcount_max=0;
unsigned char BlackRow=0;
unsigned char BlackRow1=0;
unsigned char WhiteRow=0;
unsigned char WhiteRow1=0;
unsigned char LineType[RowMax] = {0};
int StoreFlag = 0;
signed char TemMidLineData[RowMax];//提取黑线值数据2	
double MidLineVariance = 0.0;
int MidLineExcursion = 0;
signed char TripPointPos[RowMax];
signed char SubValue[RowMax];
void ImageProcess()
{
  int i=0,j=0;
  unsigned char *p=0;
  unsigned char *q=0;
  
  //使用静态阈值
  if(UseStaticFlag)     //UseStaticFlag=0.
  {
    ThresholdValue = StaticThreshold;
  }
  else
  {
    //使用动态取阈值
    
  }
  
  
  //对噪点取均值滤波
  for (i = 1;i < V_A-1;i++)
  {
    for (j = 1;j < H_A-1;j++)
    {
      if (ImageData[i][j] < 30 || ImageData[i][j] > 220)
      {
        ImageData[i][j] = (ImageData[i-1][j-1]+ImageData[i-1][j]+ImageData[i-1][j+1]+ImageData[i][j-1]+ImageData[i][j+1]+ImageData[i+1][j-1]+ImageData[i+1][j]+ImageData[i+1][j+1])/8;
      }
    }
  }  
  
  //图像二值化
  for (p = &ImageData[0][0],q = &ThresholdData[0][0]; p <= &ImageData[V_A-1][H_A-1]; p++,q++)
  {
    if (*p > ThresholdValue){*q = White;}
    else{*q = Black;}
  }  
  
  
  
  //        //噪点滤波 白黑白 => 白白白   黑白黑=>黑黑黑
  for (i = 1;i < V_A-1;i++)
  {
    p = &ThresholdData[i][1];
    while (p < &ThresholdData[i][H_A-1])
    {
      if (*(p-1) == White && *p == Black && *(p+1) == White//白黑白
          &&*(p-H_A) == White&&*(p-H_A-1) == White&&*(p-H_A+1) == White
            &&*(p+H_A) == White&&*(p+H_A-1) == White&&*(p+H_A+1) == White                            
              )
        
      {
        *p = White;
      }
      else if (*(p-1) == Black && *p == White && *(p+1) == Black)
      {
        *p = Black;
      }
      p++;
    }
  }
  
}
//提取图像特征值
void GetImageParam()
{
  GetBlackEndParam2();  //获取黑线截止行
  
}

//获取黑线截止行
void GetBlackEndParam()
{
  unsigned char LEndFlag = 0;
  unsigned char MEndFlag = 0;
  unsigned char REndFlag = 0;
  int i=0;
  BlackEndL = 0;
  BlackEndM = 0;
  BlackEndR = 0;
  for (i = RowMax-1; i >= 0 ; i--)
  {
    // LeftBlack[i]=0;
    // RightBlack[i]=ColumnMax-1;//边界初始化
    if(ThresholdData[i][ColumnMax/2] == White && !MEndFlag ){
      BlackEndM++;
    }
    else if(i > 1 && ThresholdData[i-1][ColumnMax/2] == Black && ThresholdData[i-2][ColumnMax/2] == Black){
      MEndFlag = 1;
    }
    if(ThresholdData[i][ColumnMax/4] == White && !LEndFlag ){
      BlackEndL++;
    }
    else if(i > 1 && ThresholdData[i-1][ColumnMax/4] == Black && ThresholdData[i-2][ColumnMax/4] == Black){
      LEndFlag = 1;
    }
    if(ThresholdData[i][ColumnMax*3/4] == White && !REndFlag ){
      BlackEndR++;
    }
    else if(i > 1 && ThresholdData[i-1][ColumnMax*3/4] == Black && ThresholdData[i-2][ColumnMax*3/4] == Black){
      REndFlag = 1;
    }
  }
  BlackEndMax = MAX(BlackEndL,BlackEndM);
  BlackEndMax = MAX(BlackEndMax,BlackEndR);
  BlackEndLMR = BlackEndL + BlackEndM + BlackEndR;
  //		//判断十字左右倾
  if (BlackEndMax == BlackEndL)
  {
    g_Derict = 1;//左倾
  }
  else if (BlackEndMax == BlackEndR)
  {
    g_Derict =2;//右倾
  }
  else if (BlackEndMax == BlackEndM)
  {
    if (fabss(BlackEndL-BlackEndR) < 5)
    {
      g_Derict = 0;//正十字
    }
    else if (BlackEndL > BlackEndR)
    {
      g_Derict = 1;//左
    }
    else
    {
      g_Derict = 2;//右
    }
  }
  
}


//获取黑线截止行
void GetBlackEndParam2()
{
  int getlmr_i=0;
  int w_n;
  int w_m;
  int find_column;
  int end_max=1;
  int end_max_count;
  BlackEndA = 0;
  BlackEndB = 0;
  BlackEndC = 0;
  BlackEndD = 0;
  BlackEndE = 0;
  BlackEndF = 0;
  BlackEndG = 0;
  
  find_column= ColumnMax*4/8; //1
  w_n=RowMax-1;
  w_m=1;
  while(w_m)
  {
    w_m=Find_Endline(w_n,find_column);
    w_n-=w_m; 
    BlackEndA+=w_m;
    if(w_n<2) w_m=0;
  } 
  BlackEndMax=  BlackEndA;
  BlackEndColumnMax=find_column;
  
  
  
  find_column= ColumnMax*3/8; //2
  w_n=RowMax-1;
  w_m=1;
  while(w_m)
  {
    w_m=Find_Endline(w_n,find_column);
    w_n-=w_m; 
    BlackEndB+=w_m;
    if(w_n<2) w_m=0;
  } 
  if(BlackEndMax<BlackEndB)
  {BlackEndMax=  BlackEndB;
  BlackEndColumnMax=find_column;
  }
  
  
  
  
  find_column= ColumnMax*5/8; //3
  w_n=RowMax-1;
  w_m=1;
  while(w_m)
  {
    w_m=Find_Endline(w_n,find_column);
    w_n-=w_m; 
    BlackEndC+=w_m;
    if(w_n<2) w_m=0;
  } 
  if(BlackEndMax<BlackEndC)
  {
    BlackEndMax=  BlackEndC;
  BlackEndColumnMax=find_column;
  }
  
  
  
  find_column= ColumnMax*2/8; //4
  w_n=RowMax-1;
  w_m=1;
  while(w_m)
  {
    w_m=Find_Endline(w_n,find_column);
    w_n-=w_m; 
    BlackEndD+=w_m;
    if(w_n<2) w_m=0;
  } 
  if(BlackEndMax<BlackEndD)
  {
    BlackEndMax=  BlackEndD;
  BlackEndColumnMax=find_column;
  }
  
  
  find_column= ColumnMax*6/8; //5
  w_n=RowMax-1;
  w_m=1;
  while(w_m)
  {
    w_m=Find_Endline(w_n,find_column);
    w_n-=w_m; 
    BlackEndE+=w_m;
    if(w_n<2) w_m=0;
  } 
  if(BlackEndMax<BlackEndE)
  {
    BlackEndMax=  BlackEndE;
  BlackEndColumnMax=find_column;
  }
  
  
  find_column= ColumnMax*1/8; //6
  w_n=RowMax-1;
  w_m=1;
  while(w_m)
  {
    w_m=Find_Endline(w_n,find_column);
    w_n-=w_m; 
    BlackEndF+=w_m;
    if(w_n<2) w_m=0;
  } 
  if(BlackEndMax<BlackEndF)
  {
    BlackEndMax=  BlackEndF;
  BlackEndColumnMax=find_column;
  }
  
  
  find_column= ColumnMax*7/8; //7
  w_n=RowMax-1;
  w_m=1;
  while(w_m)
  {
    w_m=Find_Endline(w_n,find_column);
    w_n-=w_m; 
    BlackEndG+=w_m;
    if(w_n<2) w_m=0;
  } 
  if(BlackEndMax<BlackEndG)
  {
    BlackEndMax=  BlackEndG;
  BlackEndColumnMax=find_column;
  }
  
  BlackEndL=MAX(BlackEndB,BlackEndA);
  BlackEndM=BlackEndD;
  BlackEndR=MAX(BlackEndG,BlackEndF);
  BlackEndLMR = BlackEndL + BlackEndM + BlackEndR;
  //		//判断十字左右倾
  if (BlackEndMax == BlackEndL)
  {
    g_Derict = 1;//左倾
  }
  else if (BlackEndMax == BlackEndR)
  {
    g_Derict =2;//右倾
  }
  else if (BlackEndMax == BlackEndM)
  {
    if (fabss(BlackEndL-BlackEndR) < 5)
    {
      g_Derict = 0;//正十字
    }
    else if (BlackEndL > BlackEndR)
    {
      g_Derict = 1;//左
    }
    else
    {
      g_Derict = 2;//右
    }
  }
  
  
  
}
int Find_Endline(int row,int column)
{
  
  
  if(ThresholdData[row][column]==White)//起始点是白点
  {
    if(ThresholdData[row-1][column]==White)
      return 2;
    else
      return 1;
    
  }
  else//如果起始点是黑点
  {
    if(ThresholdData[row-1][column]==Black&&ThresholdData[row-2][column]==Black) //黑黑黑 
      return 0;
    else 
      return 1;
  }
  
  
}

//中心线处理
extern int flag_ren,IF_CAR_CONTROL1;
void MidLineProcess()
{       
  // gpio_turn(PTE1);
  //gpio_turn(PTE2);  
  StoreFlag = 0;
  GetLMR();//提取左边缘、右边缘和中心线
  
  GetEPerCount();  //求有效偏移量,和平均每列偏移量	
  //getmidline();
  
  
  
  
  //		LAverageFilter();//左边缘滤波
  //		RAverageFilter();//右边缘滤波*/
  // GetFinalMidLine();//通过左右边缘取得控制舵机的中心线
  
  //AverageFilter();//中心线滤波处理
  //MidLineCompensate();//中心线补偿处
  //		StoreFlag=1;
  //		StoreMidLine();
  
  //RectificationMidLine();
  
  GetSectionParam();//对中心线分段提取偏差
  GetMidLineVariance();//提取中心线方差
  
  
  
  //        ProcessCrossing();	//检测并处理十字
  
  //		if(StoreFlag)
  //		{
  //			UseTemMidLine();
  //		}
  
  
}

//
int HistoryRoadType[4] = {0};
int g_Head = 0,g_Rear=0;

unsigned char StandardRoadType = 1;
int StraightToBendCount = 0;
//赛道识别
void RTRecognition()
{
  signed char temRoadType = -1;
  int MinStable = 0;
  //        
  //        if(StableNumbers >= RowMax*0.9)
  //        {
  //        temRoadType = 0;
  //        }
  //         else if(StableNumbers >= RowMax*0.8)
  //        {
  //        temRoadType = 1;
  //        }
  //        
  //        else if(StableNumbers >= RowMax*0.6)
  //        {
  //        temRoadType = 2;
  //        }
  //        
  //        else
  //        {
  //        temRoadType = 3;
  //        }
  //        RoadType = temRoadType;//赛道类型判断成功
  //   return;
  MinStable = MIN(StableNumbers,LeftStableNumbers);
  MinStable = MIN(MinStable,RightStableNumbers);
  //标准的赛道类型 3、2
  /*if(fabss(Excursion) > 30)
  {
  if(EPerCount >= 1.2 && BlackEndMax < 15)
  {
  temRoadType = 3;	
}
		else if(EPerCount >= 1.0 && StableNumbers <= 28 && BlackEndMax < 22)
  {
  temRoadType = 2;			   	
}
  
}
  //标准的赛道类型 1、0
  if(BlackEndMax >= RowMax-1)
  {
  if(fabss(Excursion)< 5 && MidLineVariance < 2&& EPerCount < 0.1)
  {
  temRoadType = 0;	
}
		else if(fabss(Excursion)< 15 && MidLineVariance < 20)
  {
  temRoadType = 1;
}
}*/
  
  
  //标准的赛道类型 1、0
  if(StableNumbers >= RowMax*0.7)
  {
    if( fabss(MidLineExcursion) < 35&&fabss(TopE1-TopE2)<20&&MidLineVariance<100||StableNumbers >= RowMax*0.9)
    {
      temRoadType = 0;	
    }
    else// if(/*EPerCount < 0.9 &&*/ MidLineVariance > 25)
    {
      temRoadType = 1;
    }
  }
  if(StableNumbers < RowMax*0.7)
  {
    if( fabss(MidLineExcursion)<55&&MidLineVariance<150&&StableNumbers >= RowMax*0.5)
    {
      temRoadType = 2;	
    }
    else 
    {
      temRoadType = 3;	
    }
    
  }
  //  //非标准的赛道处理
  //  if(temRoadType==-1)
  //  {
  //    StandardRoadType = 0;
  //    if(StableNumbers > RowMax*0.7)
  //    {
  //      temRoadType = 0;
  //      if (fabss(TopE1-TopE2) > 45 || Mid_K1 > 1.2 || Mid_K2 > 1.2)
  //      {		   
  //        temRoadType = 2;
  //        StandardRoadType = 2;
  //      }
  //      
  //    }
  //    else if (StableNumbers > RowMax*0.6/*&&fabss(TopE1-TopE2) > 27*/)
  //    {
  //      temRoadType = 2;
  //    }
  //    else 
  //    {
  //      temRoadType = 3;
  //    }
  //  }
  //  else
  //  {
  //    StandardRoadType = 1;
  //  }
  //	if(LastRoadType == 103)
  //	{
  //		StraightToBendCount++;
  //		if(StraightToBendCount > 15)
  //		{
  //			StraightToBendCount=0;	
  //		}
  //		else
  //		{
  //			temRoadType = 103;
  //		}
  //	}
  RoadType = temRoadType;//赛道类型判断成功
  return;
  HistoryRTProccess();//对历史赛道类型信息进行处理
  if(IsStraightToBend() /*&& ElementCount2 > 20 && AllSmallSCount > 30*/)//判断是否是直入弯
  {
    RoadType = 103;
  }
  if(RoadType != 103)
  {
    StraightToBendCount = 0;
  }
  
  HistoryRoadType[g_Rear] = RoadType;
  g_Rear = (g_Rear+1)%4;
  if(RoadType != HistoryRoadType[g_Head] && HistoryRoadType[g_Head] == HistoryRoadType[(g_Head+1)%4])
  {
    RoadType = HistoryRoadType[g_Head];	
  }
  if((g_Rear+1)%4 == g_Head)
  {
    g_Head = (g_Head+1)%4;
  }
  //	if(IsCrossing)
  //	{
  //		RoadType=2;
  //	}	
}
int last_is_midline=0,this_is_midline=0;
int FindMidLine_lastismidline(int row,int lastmidline,int lastleft,int lastright)
{
  lastleft-=10;
  lastright+=10;
  this_is_midline=0;
  int FindMidLine_i,FindMidLine_j,FindMidLine_k;
  int FindMidLine_count=0,FindMidLine_count_Black=0;
  int FindMidLine_data[4]=0;
  int row_a,row_b,row_c,row_d,row_e;
  int tezheng=0;
  if(lastleft<7) lastleft=7;
  if(lastright>ColumnMax-8)lastright=ColumnMax-8;
  
  row_a=row-1;
  row_b=row;
  row_c=row+1;
  row_d=row-4;
  row_e=row+4;
  if(row_a<0)row_a=0;
  if(row_b<0)row_b=0;
  if(row_c<0)row_c=0;
  if(row_d<0)row_d=0;
  if(row_e<0)row_e=0;
  if(row_a>RowMax-1)row_a=RowMax-1;
  if(row_b>RowMax-1)row_b=RowMax-1;
  if(row_c>RowMax-1)row_c=RowMax-1;
  if(row_d>RowMax-1)row_d=RowMax-1;
  if(row_e>RowMax-1)row_e=RowMax-1;
  for(FindMidLine_i=lastleft;FindMidLine_i<=lastright;FindMidLine_i++)
  {  tezheng=0;
  if(ThresholdData[row_b][FindMidLine_i]==Black&&
     ThresholdData[row_b][FindMidLine_i-3]==White&&
       ThresholdData[row_b][FindMidLine_i+3]==White
         ) 
    
    tezheng=1000;
  if(tezheng<1000) continue;
  if(row_c!=row_b&&
     (ThresholdData[row_c][FindMidLine_i]==Black||
      ThresholdData[row_c][FindMidLine_i-1]==Black||
        ThresholdData[row_c][FindMidLine_i+1]==Black)
       )
    tezheng+=100;
  if(row_a!=row_b&&
     (ThresholdData[row_a][FindMidLine_i]==Black||
      ThresholdData[row_a][FindMidLine_i-1]==Black||
        ThresholdData[row_a][FindMidLine_i+1]==Black)
       &&tezheng<1100
         )
    tezheng+=100;
  if(tezheng<1100) continue;
  FindMidLine_count_Black=0;
  for(FindMidLine_j=row_a;FindMidLine_j<=row_c;FindMidLine_j++)
  {
    for(FindMidLine_k=FindMidLine_i-7;FindMidLine_k<=FindMidLine_i+7;FindMidLine_k++)
    {
      if(ThresholdData[FindMidLine_j][FindMidLine_k]==Black)FindMidLine_count_Black++;
    }   
  }
  
  if(FindMidLine_count_Black<=8*(row_c-row_a+1))tezheng+=10;
  
  if(tezheng>=1110) 
  {
    FindMidLine_data[FindMidLine_count++]=FindMidLine_i;
    FindMidLine_i+=7;
    if(row>RowMax-BlackEndMax&&(fabss(FindMidLine_data[0]-BlackEndColumnMax)>30))   return -1;
    this_is_midline=1;
    return FindMidLine_data[0]+2;
    
  }
  
  }
  
  if(FindMidLine_count==0)
  {
    return -1;
  }
  else 
  { if(row>RowMax-BlackEndMax&&(fabss(FindMidLine_data[0]-BlackEndColumnMax)>30))   return -1;
    this_is_midline=1;
    return FindMidLine_data[0];
  }
  
  
  
  
  
  
  
  
}


int FindMidLine_lastisnotmidline(int row,int lastmidline,int lastleft,int lastright)
{ return FindMidLine_lastismidline(row,lastmidline,lastleft,lastright);
int i_FindMidLine=0;
int i_Find_left,i_Find_right;
int Find_leftline=-45,Find_rightline=-15;
this_is_midline=0;
int f_left,f_right;
int found_left=-1,found_right=-1;
for(i_FindMidLine=0;i_FindMidLine<40;i_FindMidLine++)
{
  found_left=-1;found_right=-1;
  f_left=lastmidline-i_FindMidLine;
  f_right=lastmidline+i_FindMidLine;
  
  if(f_left<8)f_left=8;
  if(f_right>ColumnMax-9)f_right=ColumnMax-9;
  if(ThresholdData[row][f_left]==Black&&ThresholdData[row][f_left+2]==White&&ThresholdData[row][f_left+3]==White&&ThresholdData[row][f_left+1]==White&&ThresholdData[row][f_left-8]==White
     &&(ThresholdData[row][f_left+1]==Black||ThresholdData[row][f_left-1]==Black||ThresholdData[row+1][f_left]==Black||ThresholdData[row][f_left-1]==Black)) found_left=f_left;
  if(ThresholdData[row][f_right]==Black&&ThresholdData[row][f_right-2]==White&&ThresholdData[row][f_right-3]==White&&ThresholdData[row][f_right-1]==White&&ThresholdData[row][f_right+8]==White
     &&(ThresholdData[row][f_right+1]==Black==Black||ThresholdData[row][f_right-1]==Black||ThresholdData[row+1][f_right]==Black||ThresholdData[row][f_right-1]==Black)) found_right=f_right;  
  if(found_left>-1||found_right>-1) break;
}

if(found_left>-1)
{
  this_is_midline=1;
  
  return found_left;
}
else if(found_right>-1)
{
  this_is_midline=1;
  
  return found_right;
}


else
{
  this_is_midline=0;
  return -1;
}




}
int hx_end[ColumnMax]=0;
int hx_end_line=RowMax;
int FindHeixian()
{
  int hx_j,hx_k;
  int Cfind,Rfind;
  int hx_row=12;
  int hx_find_count;
  int find_white=0;
  hx_end_line=RowMax;
  hx_find_count_max=0;
  hx_found_Column=0;
  Cfind=1;
  hx_find_count=0;
  
  for(hx_j=0;hx_j<ColumnMax-1;hx_j++)
  {find_white=0;
    Rfind=1;
   
    for(hx_k=RowMax-1;hx_k>40;hx_k--)
    {  if(hx_k>90)hx_row=14;else hx_row=12;
      if(ThresholdData[hx_k][hx_j]==White) 
      {find_white++;}
      else if(ThresholdData[hx_k-1][hx_j]==Black&&ThresholdData[hx_k-2][hx_j]==Black&&ThresholdData[hx_k-3][hx_j]==Black&&
              ThresholdData[hx_k-hx_row][hx_j]==White&&ThresholdData[hx_k-hx_row-1][hx_j]==White&&(BlackEndMax<8||find_white>0)       
              &&hx_k<(RowMax-BlackEndMax+15)
                )
      {
        hx_find_count++; 
        hx_end[hx_j]=hx_k-hx_row;
        break;
      }
      else if(ThresholdData[hx_k-1][hx_j]==Black&&ThresholdData[hx_k-2][hx_j]==Black&&ThresholdData[hx_k-3][hx_j]==Black&&
              ThresholdData[hx_k-hx_row][hx_j]==Black&&ThresholdData[hx_k-hx_row-1][hx_j]==Black       
                )
      {
        Rfind=0;
        break;
      }
      
    }
    if(hx_find_count>hx_find_count_max)
    {
      hx_find_count_max=hx_find_count;
      hx_found_Column=hx_j-(int)(hx_find_count*0.5);    
    }
    
    if(Rfind==0){hx_find_count=0;}
    
    
    
  }
  
  hx_end_line=hx_end[hx_found_Column]-8;
  if(hx_end_line<10)hx_end_line=10;
  return hx_find_count_max; 
  
  
}





unsigned char ValidLine[RowMax] = {0};//1 - 左找到线 2--右找到线  两边都找到线-3 都找不到线-0
int NoValidMax = 0;//连续两边找不到线计数
int hx=0,hx_i=5000,sfminline=-1;
int EndType=0;
int mid_line_count=0;
int mode1=0,mode2=0,mode3=0,mode4=0;
int mode4_zhangai=0;
int mid_line_count_ls=0;
int mid_line_count_last=0;
//提取图像中心线
void GetLMR()
{	
  int i=0,j=0;
  int temLeft = 0;
  int temRight = 0;
  int pLeft = ColumnMax/2,pRight = ColumnMax/2;
  unsigned char bFoundLeft = 0;
  unsigned char bFoundRight = 0;
  unsigned char TripLen = 3;
  
  int LeftEnd = 0;
  int RightEnd = 0;
  int MidEnd = 0;
  unsigned char LeftMiss = 0;
  unsigned char RightMiss = 0;
  
  unsigned char MidToBlackCount = 0;
  int zhijiao=0;
  
  int NoValidCount = 0;
  NoValidMax = 0;
  
  StableNumbers = 0;
  LeftStableNumbers = 0;
  RightStableNumbers = 0;
  EndType=0;
  ValidLineCount1 = 0;
  ValidLineCount2 = 0;
  int CountBlack = 0;
  int CountWhite = 0;
  midline_fcount=0;
  midline_fcount_max=0;
  last_is_midline=0;
  this_is_midline=0;
  BlackRow=0;
  WhiteRow=0;
  WhiteRow1=0;
  sfminline=-1;
  mid_line_count=0;
  mid_line_count_ls=0;
  LeftWhite = RightWhite = 0;
  int czh; //要查找的列数
  int cz_z,cz_y;//左右查找截至列
  //定义左右查找黑白点数
  int CountWhite_Left=0,CountBlack_Left=0,CountWhite_Right=0,CountBlack_Right=0;
  int tb_z_r=0,tb_y_r=0;
  yxhs=0;
  tbs_z=0;
  tbs_y=0;
  
  int shizi=0;
  int last_all_find=RowMax;
  mode1=0;mode2=0;mode3=0;mode4=0;
  mode4_zhangai=0;
  zaw_mode=0;
  int heixian=RowMax;
  int heidian_count=0;
  int line_7=1;
  int line_8=1;
  
  
  int heixian_find_start=RowMax-1;
  
  int hx_j=0;
  int hx_count=0;
  int hx_ls_find;
  if(BlackEndMax<RowMax*0.6&&FindMidLine_lastismidline(RowMax-1,MidPos,0,ColumnMax)==-1)
  {
  hx_find_count_max=0;
  hx_ls_find=FindHeixian();
  if(hx_find_count_max>20)
  {hx_i=0;
  heixian=hx_end_line;
  }   
  }
  //  if(ThresholdData[(int)(RowMax*0.7)][MidPos]==White&&BlackEndMax<RowMax*0.5)
  //  { int baidian=0,heidian=0;
  //  for(i = RowMax-1;i >= RowMax*0.7;i--)
  //  {
  //    if(ThresholdData[i][MidPos]==White) baidian++;
  //    else heidian++;               
  //  }
  //  
  //  if(heidian>0&&heidian<14)
  //  {
  //    
  //    for(i = RowMax-1;i >=RowMax*0.7;i--)
  //    {
  //      if(ThresholdData[i][MidPos]==Black&&ThresholdData[i-1][MidPos]==White&&ThresholdData[i-2][MidPos]==White)
  //        //        for(hx_i=i;hx_i<RowMax-1;hx_i++)
  //        //        {hx_count=0;
  //        //        for(hx_j=(int)(ColumnMax*0.25);hx_j<ColumnMax*0.75;hx_j++)
  //        //        {
  //        //          if(ThresholdData[hx_i][hx_j]==White) hx_count++;
  //        //        }
  //        //        if(hx_count<8) break;
  //        //        }
  //        //      if(hx_count<8)  heixian=i-2;
  //        heixian=i-2;
  //      
  //    }
  //    
  //  }
  //  } 
  
  
  if(hx_i<92) hx_i++;
  if(hx_i<90) hx=1;else hx=0; 
  
  
  //    if (mid_line_count_last>4)
  //  {
  //  
  //  heixian=RowMax-15;
  //  }
label_hx:       
  if(heixian!=RowMax)
  {
    hx_i=0;
    for(i=RowMax-1;i>=heixian;i--)
    {
      BlackLineData[i] = hx_found_Column;
    }
    
  }
  
  
  
  
  StableNumbers=RowMax-heixian;
  for (i = heixian-1;i >= 0 && !MidEnd;i--)
  {tiaobian_Left[i]=0;tiaobian_Right[i]=0;
  int sdk;
  if(i>=RowMax*0.55)
  {
    sdk=i*0.4*100/RowMax;
    
  }
  else
    
  {
    sdk=5+i*0.3*100/RowMax;
  }
  // 初始化遍历指针
  //    BlackEndColumnMax=1;BlackEndMax = 0;
  if (i>RowMax*2/3) czh=30; else if (i>RowMax/3) czh=20; else czh=13;
  if(RowMax-i<BlackEndMax-5&&line_7)
  {
    czh=40;  
    pLeft = BlackEndColumnMax;
    pRight = BlackEndColumnMax;
    if (pLeft<0) pLeft=0;
    if (pLeft>ColumnMax-2) pLeft=ColumnMax-2;
    if (pRight<0) pRight=0;
    if (pRight>ColumnMax-2) pRight=ColumnMax-2;
    cz_z=3;
    cz_y=ColumnMax-3;
    
    
    
  }
  else if (i < RowMax - 3&&i != heixian-1)
  {       
    
    
    
    if(tb_z_r>0&&(tb_z_r-i)<RowMax*0.4&&MAX(RightBlack[i+1],RightBlack[i+2])>ColumnMax-12)  //左边有过跳变 
    {
      pLeft = ColumnMax;
      pRight = ColumnMax;
    }
    else if(tb_y_r>0&&(tb_y_r-i)<RowMax*0.4&&MIN(LeftBlack[i+1],LeftBlack[i+2])<10)//右边有过跳变
    {
      pLeft = 0;
      pRight = 0;
    }
    else
    {
      pLeft = LeftBlack[i+1]+czh;
      pRight = RightBlack[i+1]-czh;
    }
    
    
    if (pLeft<0) pLeft=0;
    if (pLeft>ColumnMax-2) pLeft=ColumnMax-2;
    if (pRight<0) pRight=0;
    if (pRight>ColumnMax-2) pRight=ColumnMax-2;
    cz_z=LeftBlack[i+1]-czh;
    cz_y=RightBlack[i+1]+czh;
    
    if (cz_z<0) cz_z=0;
    if (cz_z>ColumnMax-1) cz_z=ColumnMax-1;
    if (cz_y<0) cz_y=0;
    if (cz_y>ColumnMax-1) cz_y=ColumnMax-1;
    
  }
  else
  {     
    int ss;
    if(BlackEndL < 5 && BlackEndR > BlackEndM)
    {
      pLeft = (int)(ColumnMax*3/4);//3/4
      pRight = (int)(ColumnMax*3/4);	
      
    }
    else if(BlackEndR < 5 && BlackEndL > BlackEndM)
    {
      pLeft = (int)(ColumnMax*1/4);//1/4
      pRight = (int)(ColumnMax*1/4);
    }
    else
    {
      pLeft = (int)(ColumnMax/2);
      pRight = (int)(ColumnMax/2);
    }
    
    cz_z=3;
    cz_y=ColumnMax-3;
    if(heixian!=RowMax)
    {
      pLeft = (int)hx_found_Column;
      pRight = (int)hx_found_Column;
    }
    
    
  }
  
  
  // 初始化标记
  bFoundLeft = bFoundRight = 0;
  CountBlack = CountWhite = 0;
  // 两条黑线边缘提取
  LeftBlack[i]=-1;
  RightBlack[i]=ColumnMax+1;
  CountWhite_Left=0;CountBlack_Left=0;CountWhite_Right=0;CountBlack_Right=0;
  //============================================================================================                
  int middata=0,lastmiddata=0;
  if(i > RowMax - 3)lastmiddata=MidPos; else lastmiddata=BlackLineData[i+1];
  
  if(last_is_midline)
  {
    if(i == heixian-1) middata=FindMidLine_lastismidline(i,MidPos,0,ColumnMax);
     else middata=FindMidLine_lastismidline(i,BlackLineData[i+1],LeftBlack[i+1],RightBlack[i+1]);
    last_is_midline=this_is_midline;
    
    
     if(this_is_midline)
    {
      midline_fcount++;
      if(midline_fcount_max<midline_fcount)midline_fcount_max=midline_fcount;
    
    }
    else
    {
     midline_fcount=0;
    }
    if(middata==-1&&sfminline)
    {
      if(i<RowMax*0.85&&(BlackLineData[i+1]<ColumnMax*0.4||BlackLineData[i+1]>ColumnMax*0.6)&&midline_fcount_max>4)  
      {EndType=5;
      MidEnd = 1;                   
      goto lable;
      }
      else if((BlackLineData[i+1]<ColumnMax*0.2||BlackLineData[i+1]>ColumnMax*0.8)&&midline_fcount_max>4)
      {EndType=6;
      MidEnd = 1;
      goto lable;
      }
      if( mid_line_count_ls>4&&i>30)
      {
        int mid_line_i_ls=0;
        int mid_line_i_stop=i-12;
        for(mid_line_i_ls=i;mid_line_i_ls>mid_line_i_stop&&mid_line_i_ls>=0;mid_line_i_ls--)
        {
          BlackLineData[mid_line_i_ls]=BlackEndColumnMax;
          LeftBlack[mid_line_i_ls]=BlackEndColumnMax-sdk*1;
          RightBlack[mid_line_i_ls]= BlackEndColumnMax+sdk*1;
          i--;
          StableNumbers++;
        }
        mid_line_count_ls=0; 
        goto lable;
      }
      mid_line_count_ls=0;
    }
    
    
    
  } 
  else   
  {
    if(i == heixian-1) middata=FindMidLine_lastisnotmidline(i,MidPos,LeftBlack[i+1],RightBlack[i+1]);
    else middata=FindMidLine_lastisnotmidline(i,BlackLineData[i+1],0,ColumnMax);
    last_is_midline=this_is_midline;
  }                
  if(this_is_midline&&sfminline<0) 
  {
  BlackLineData[i]=BlackEndColumnMax;
  LeftBlack[i]=BlackEndColumnMax-sdk*1;
  RightBlack[i]= BlackEndColumnMax+sdk*1;
  sfminline+=1;
  
  goto lable;
  }
  
  if(this_is_midline)
  {  
 
    //    if(heixian!=RowMax) 
    //    {
    //      heixian=RowMax;
    //      i=RowMax-1;
    //      StableNumbers=0;
    //      
    //      
    //      goto label_end;
    //    }
    
    mid_line_count++;
    mid_line_count_last=mid_line_count;
    BlackLineData[i]=middata;
    if(last_is_midline) 
    { mid_line_count_ls++;
    
    LeftBlack[i]=middata-sdk*1;
    RightBlack[i]=middata+sdk*1;
    }
    
    goto lable;
  }
  
  
  //================================================================================                
  for (j = 0;j < ColumnMax;j++)
  { //定义左右查找黑白点数
    
    
    if (ThresholdData[i][j] == Black){CountBlack++;}
    else{CountWhite++;}
    
    // 往左搜索
    if (bFoundLeft == 0 && pLeft >= cz_z )
    {// 未找到左边缘则寻找
      if (ThresholdData[i][pLeft+2] == Black){CountBlack_Left++;}
      else{CountWhite_Left++;}
      
      if (ThresholdData[i][pLeft] == Black&&ThresholdData[i][pLeft+3]== White&& 
          ThresholdData[i][pLeft+1] == Black&& ThresholdData[i][pLeft+4]== White&&
            ThresholdData[i][pLeft+2] == Black&& ThresholdData[i][pLeft+5]== White)
      {	// 找到左边缘
        
        
        if (pLeft+2 > 0)
        {       LeftBlack[i] = pLeft+2;
        bFoundLeft = 1;
        }
        
        
        // 如果右边缘也找到则退出
        if (bFoundRight)
        {
          break;
        }
      }
      else
      {
        pLeft--;
        //        if(pLeft<10)
        //                 LeftEnd = 1;
        
      }
    }// if结束--从左到右搜索边缘
    
    //往右搜索
    if (bFoundRight == 0 && pRight <= cz_y)
    {//未找到右边缘则寻找
      //if (pRight > ColumnMax - 3){break;}
      if (ThresholdData[i][pRight-2] == Black)
      {CountBlack_Right++;}
      else{CountWhite_Right++;}
      if (ThresholdData[i][pRight] == Black &&ThresholdData[i][pRight-3]== White&& 
          ThresholdData[i][pRight-1] == Black &&ThresholdData[i][pRight-4]== White&& 
            ThresholdData[i][pRight-2] == Black &&ThresholdData[i][pRight-5]== White)
      {  
        
        
        // 找到右边缘
        
        if (pRight-2 < ColumnMax-1)
        {       RightBlack[i] = pRight-2;
        bFoundRight = 1;
        }
        
        // 如果左边缘也找到则退出
        if (bFoundLeft)
        {
          break;
        }
      }
      else
      {
        pRight++;
        
      }
    }// if结束
  }//for结束
  
  //===============================左边线没找到处理==============================================             
  if (!bFoundLeft&&pLeft>-2&&CountWhite_Left>CountBlack_Left) //左边线没找到，且查找范围内超过一半是白点
  {
    CountBlack_Left=0;
    CountWhite_Left=0;
    tiaobian_Left[i]=1;
    if(pLeft<5)pLeft=5;
    for (j = pLeft+czh;j>0;j--)   // 继续往左搜索
    {
      if (bFoundLeft == 0 && pLeft >= 0)
      {// 未找到左边缘则寻找
        if (ThresholdData[i][pLeft+2] == Black){CountBlack_Left++;}
        else{CountWhite_Left++;}
        
        if (ThresholdData[i][pLeft] == Black&&ThresholdData[i][pLeft+3]== White&& 
            ThresholdData[i][pLeft+1] == Black&& ThresholdData[i][pLeft+4]== White&&
              ThresholdData[i][pLeft+2] == Black&& ThresholdData[i][pLeft+5]== White)
        {	// 找到左边缘
          
          
          if (pLeft+2 > 0)
          {       LeftBlack[i] = pLeft+2;
          bFoundLeft = 1;
          }
          
          
          break;
          
        }
        else
        {
          pLeft--;
          
        }
      }// if结束--从左到右搜索边缘
      
      
    }   //左边继续超找for结束
    if(!bFoundLeft&&CountWhite_Left>CountBlack_Left) //仍然未找到，且大部分是白点    
    {
      tiaobian_Left[i]=2;
      LeftBlack[i]=-5;
      bFoundLeft = 1;
    }    
  }
  
  
  
  else if(!bFoundLeft&&pLeft<ColumnMax&&CountWhite_Left<CountBlack_Left)//左边线没找到，且查找范围内超过一半是黑点
  {
    CountBlack_Left=0;
    CountWhite_Left=0;
    tiaobian_Left[i]=-1;
    for (j = pLeft;j<ColumnMax;j++)   // 继续往右搜索
    {
      if (bFoundLeft == 0 && pLeft >= 0)
      {// 未找到左边缘则寻找
        if (ThresholdData[i][pLeft+2] == Black){CountBlack_Left++;}
        else{CountWhite_Left++;}
        
        if (ThresholdData[i][pLeft] == Black&&ThresholdData[i][pLeft+3]== White&& 
            ThresholdData[i][pLeft+1] == Black&& ThresholdData[i][pLeft+4]== White&&
              ThresholdData[i][pLeft+2] == Black&& ThresholdData[i][pLeft+5]== White)
        {	// 找到左边缘
          
          
          if (pLeft+2 > 0)
          {       LeftBlack[i] = pLeft+2;
          bFoundLeft = 1;
          }
          
          
        }
        else
        {
          pLeft++;
          
        }
      }// if结束--从左到右搜索边缘
      
      
    }   //左边继续超找for结束
    if(!bFoundLeft&&CountWhite_Left<CountBlack_Left) //向右查找仍然未找到，且大部分是黑点    
    {
      tiaobian_Left[i]=-2;
      LeftEnd=1;
      LeftBlack[i]=ColumnMax+5;
    }    
  }
  
  //===============================右边线没找到处理==============================================        
  if (!bFoundRight&&pRight<=ColumnMax&&CountWhite_Right>CountBlack_Right) //右边线没找到，且查找范围内超过一半是白点
  {
    CountBlack_Right=0;
    CountWhite_Right=0;
    tiaobian_Right[i]=1;
    if(pRight>ColumnMax-1) pRight=ColumnMax-6;
    for (j = pRight-czh;j<ColumnMax;j++)   // 继续往右搜索
    {
      //往右搜索
      if (bFoundRight == 0 && pRight <ColumnMax)
      {//未找到右边缘则寻找
        
        if (ThresholdData[i][pRight-2] == Black){CountBlack_Right++;}
        else{CountWhite_Right++;}
        if (ThresholdData[i][pRight] == Black &&ThresholdData[i][pRight-3]== White&& 
            ThresholdData[i][pRight-1] == Black &&ThresholdData[i][pRight-4]== White&& 
              ThresholdData[i][pRight-2] == Black &&ThresholdData[i][pRight-5]== White)
        {
          // 找到右边缘
          
          if (pRight-2 < ColumnMax-1)
          {       RightBlack[i] = pRight-2;
          bFoundRight = 1;
          }
          
          break;
          
        }
        else
        {
          pRight++;
          
        }
      }// if结束
      
      
    }   //右边继续超找for结束
    if(!bFoundRight&&CountWhite_Right>CountBlack_Right) //仍然未找到，且大部分是白点    
    {
      tiaobian_Right[i]=2;
      RightBlack[i]=ColumnMax+5;
      bFoundRight = 1;
    }      
  }
  
  
  
  else if(!bFoundRight&&pRight>0&&CountWhite_Right<CountBlack_Right)   //右边线没找到，且查找范围内超过一半是黑点
  {
    CountBlack_Right=0;
    CountWhite_Right=0;
    tiaobian_Right[i]=-1;
    for (j = pRight;j>0;j--)   // 继续往左搜索
    {
      //往右搜索
      if (bFoundRight == 0 && pRight <ColumnMax)
      {//未找到右边缘则寻找
        
        if (ThresholdData[i][pRight-2] == Black){CountBlack_Right++;}
        else{CountWhite_Right++;}
        if (ThresholdData[i][pRight] == Black &&ThresholdData[i][pRight-3]== White&& 
            ThresholdData[i][pRight-1] == Black &&ThresholdData[i][pRight-4]== White&& 
              ThresholdData[i][pRight-2] == Black &&ThresholdData[i][pRight-5]== White)
        {
          // 找到右边缘
          
          if (pRight-2 < ColumnMax-1)
          { RightBlack[i] = pRight-2;
          bFoundRight = 1;
          }
          
          break;
          
        }
        else
        {
          pRight++;
          
        }
      }// if结束
      
      
    }   //右边继续超找for结束
    if(!bFoundRight&&CountBlack_Right>CountWhite_Right) //向左查找仍然未找到，且大部分是黑点    
    {
      tiaobian_Right[i]=-2;
      RightBlack[i]=-5;
      RightEnd=1;
    }    
  }
  //======================找线结束============================================================================== 
  
  if (RightBlack[i]-LeftBlack[i]<8)
    
  {  
    if(i<60) {StableNumbers=RowMax-i-6;}
    LeftEnd=1;
    RightEnd=1;
    MidEnd=1;
    EndType=7;
    if(BlackEndMax-(RowMax-i)>10)
    {
      LeftEnd=0;
      RightEnd=0;
      MidEnd=0;
      RightBlack[i] =  BlackEndColumnMax+30;
      LeftBlack[i] =  BlackEndColumnMax-30;
    }
    
    
  }
//  if (RightBlack[i]-LeftBlack[i]<15&& i>50
//      &&LeftBlack[i]>0&&LeftBlack[i]<ColumnMax&&RightBlack[i]>0&&RightBlack[i]<ColumnMax)
//  {  if(i<70) {StableNumbers=RowMax-i-6;}
//  LeftEnd=1;
//  RightEnd=1;
//  MidEnd=1;
//  EndType=8;
//  }
//  if (RightBlack[i]-LeftBlack[i]<20&& i>60
//      &&LeftBlack[i]>0&&LeftBlack[i]<ColumnMax&&RightBlack[i]>0&&RightBlack[i]<ColumnMax)
//  {  if(i<70) {StableNumbers=RowMax-i-3;}
//  LeftEnd=1;
//  RightEnd=1;
//  MidEnd=1;
//  EndType=9;
//  }
//  if (RightBlack[i]-LeftBlack[i]<25&& i>80
//      &&LeftBlack[i]>0&&LeftBlack[i]<ColumnMax&&RightBlack[i]>0&&RightBlack[i]<ColumnMax)
//  { if(i<90) {StableNumbers=RowMax-i-3;}
//  LeftEnd=1;
//  RightEnd=1;
//  MidEnd=1;
//  EndType=10;
//  }
//  
  if (RightBlack[i]<14||LeftBlack[i]>ColumnMax-14)
  {  LeftEnd=1;
  RightEnd=1;
  MidEnd=1;
  EndType=11;
  }
  
//  if (LeftBlack[i] > RightBlack[i])
//  { if(tiaobian_Left[i]<0) LeftEnd=1;
//  if(tiaobian_Right[i]<0) RightEnd=1;
//  
//  }
//  
  
  
  
  if(CountBlack >=ColumnMax - 10)
  {
    
    CountBlack = 0;
    LineType[i] = 1;//全黑行标志
    BlackRow++;
    LeftEnd=1;
    RightEnd=1;
    MidEnd=1;
    EndType=12;
  }
  else if(CountWhite >= ColumnMax - 10 )
  {
    CountWhite = 0;
    
    WhiteRow++;
    LineType[i] = 2;//全白行标志
    
  }
  else
  {
    LineType[i] = 0;	
  }
  
  
  
  if (!LeftEnd){LeftStableNumbers++;}
  if (!RightEnd){RightStableNumbers++;}
  int useable_left,useable_right;
  useable_left=LeftEnd||!bFoundLeft; //1-左边线无效 0-左边线有效
  useable_right=RightEnd||!bFoundRight;
  if(useable_left+useable_right>0)
  {
    if (tiaobian_Left[i]!=0) tbs_z++;
    if (tiaobian_Right[i]!=0) tbs_y++;
    tbs_all=tbs_z+tbs_y;
  }
  
  if(!useable_left && !useable_right)//判断是否有一个边缘在屏幕外
  {
    if(RightBlack[i]>ColumnMax&&LeftBlack[i]>0 )
    {
      useable_right=!useable_right;
      
    }
    else if(RightBlack[i]<ColumnMax&&LeftBlack[i]<0 )
    {
      useable_left=!useable_left;
      
    }
    else if (RightBlack[i]>ColumnMax&&LeftBlack[i]<0 )
    {
      
    }
    
  }
//  if((RightBlack[i]-RightBlack[i+1]>3||RightBlack[i]==ColumnMax+5) && LeftBlack[i+1]-LeftBlack[i]>3)//赛道变宽
//    
//  {
//    if(shizi==0) shizi=i+3;
//    
//  }
//  if((LeftBlack[i+1]-LeftBlack[i]>3||LeftBlack[i]==-5) && RightBlack[i]-RightBlack[i+1]>3)//赛道变宽
//    
//  {
//    if(shizi==0) shizi=i+3;
//    
//  }
//  
  if (useable_left && !useable_right)//只找到右边
  {   yxhs++;
  mode1++;
  RoadMode[i]=1;
  if( RoadType == 0||i > RowMax - 4)
  {
    BlackLineData[i] =  RightBlack[i] - sdk;
    
    
  }                    
  else
  {                       
    BlackLineData[i] = BlackLineData[i+1] + (RightBlack[i] - RightBlack[i+1]);
  }
  if(LeftBlack[i]==-5 && BlackLineData[i]>RightBlack[i]*0.4 && RightBlack[i]>RowMax*0.4) //0.2
  {                 
    BlackLineData[i]=RightBlack[i]*0.4;
    
  }
  
  if(mode1>10&&(RowMax-i)<41&&hx&&BlackEndMax<RowMax*0.6&&sfzj)
  { int zji;
  for(zji=RowMax-1;zji>(RowMax-43);zji--)
  {
    BlackLineData[zji]=1;                   
  }
  zhijiao=i;
  
  }
  if(i==(RowMax-1)) {  
    firstline_l=-1;
    firstline_r=RightBlack[i];
    firstline_m=BlackLineData[i];
  }
//  //跳边边缘检测
//  if(LeftBlack[i]==-5&& RightBlack[i+2]<RightBlack[i]&&RightBlack[i+2]<RightBlack[i+1]
//     &&RightBlack[i+2]<RightBlack[i+3]&&RightBlack[i+2]<RightBlack[i+4]
//       &&RightBlack[i+3]<RightBlack[i+5]&& i<(RowMax-5))
//  {
//    BlackLineData[i]= BlackLineData[i+2]-5;
//    BlackLineData[i+1]= BlackLineData[i+2]-5;
//    MidEnd=1;
//    LeftEnd=1;
//    RightEnd=1;
//    
//  }
  }   
  else if (!useable_left && useable_right)//只找到左边
  {  yxhs++;
  mode2++;
  RoadMode[i]=2;
  if( RoadType == 0||i < RowMax - 4 )
  {
    
    BlackLineData[i] =  LeftBlack[i] +sdk;
    
  }
  
  else
  {
    BlackLineData[i] = BlackLineData[i] + (LeftBlack[i] - LeftBlack[i+1]);
  }
  if(RightBlack[i]==ColumnMax+5 && BlackLineData[i]<(0.6*(ColumnMax-LeftBlack[i])+LeftBlack[i]) && LeftBlack[i] <RowMax*0.6)//0.8 
  {                 
    BlackLineData[i]=(0.6*(ColumnMax-LeftBlack[i])+LeftBlack[i]);
    
  }
  if(mode2>10&&(RowMax-i)<44&&hx&&BlackEndMax<RowMax*0.6&&sfzj)
  { int zji;
  for(zji=RowMax-1;zji>(RowMax-44);zji--)
  {
    BlackLineData[zji]=ColumnMax-1;                   
  }
  MidEnd=1;
  LeftEnd=1;
  RightEnd=1;
  
  }
  //                 
  //                 if(mode2>20&&(RowMax-i)<40)
  //                 { int zji;
  //                   for(zji=RowMax-1;zji>(RowMax-40);zji--)
  //                   {
  //                   BlackLineData[zji]=ColumnMax-1;                   
  //                   }
  //                    MidEnd=1;
  //                  LeftEnd=1;
  //                  RightEnd=1;
  //                 
  //                 }
  
//  //跳边边缘检测
//  if(RightBlack[i]>ColumnMax&& LeftBlack[i+2]>LeftBlack[i]&&LeftBlack[i+2]>LeftBlack[i+1]
//     &&LeftBlack[i+2]>LeftBlack[i+3]&&LeftBlack[i+2]>LeftBlack[i+4]
//       &&LeftBlack[i+3]>LeftBlack[i+5]&& i<(RowMax-5))
//  {
//    BlackLineData[i]= BlackLineData[i+2]+5;
//    BlackLineData[i+1]= BlackLineData[i+2]+5;
//    MidEnd=1;
//    LeftEnd=1;
//    RightEnd=1;
//    
//  }
  if(i==(RowMax-1)) 
  {  
    firstline_l=LeftBlack[i];
    firstline_r=-1;
    firstline_m=BlackLineData[i];
  }
  }  
  else if (useable_left && useable_right)//左右都没找到
  {   mode3++;
  RoadMode[i]=3;
  if(LineType[i] == 2) 
  {
    BlackLineData[i]=BlackEndColumnMax;
  }
  else
  {
    BlackLineData[i] = 298;
    if(i==(RowMax-1)) {  
      firstline_l=-1;
      firstline_r=-1;
      firstline_m=BlackLineData[i];}
    if(LeftEnd&&RightEnd)MidEnd = 1;
  }
  
  
  }
  else                         //左右都找到
  {       yxhs++;
  RoadMode[i]=5;
  if(LeftBlack[i]>1&&RightBlack[i]<ColumnMax-2) {mode4++;RoadMode[i]=4;}
//===============障碍物处理=================================
 if(mode4>=heixian-3-i&&line_8)
 {
   if(fabss(LeftBlack[i]-LeftBlack[i+1])<=4&&(RightBlack[i+1]-RightBlack[i])>4&&RoadMode[i+1]==4)mode4_zhangai=i;    
   if(fabss(RightBlack[i]-RightBlack[i+1])<=4&&(LeftBlack[i]-LeftBlack[i+1])>4&&RoadMode[i+1]==4)mode4_zhangai=-i;
   if(mode4_zhangai<0&&(mode4_zhangai*-1-i)>5&&RoadMode[i+1]==4&&fabss(RightBlack[i]-RightBlack[i+1])<=4//确定左侧有障碍
      &&(LeftBlack[i+1]-LeftBlack[i])>4      
      )
   {mode4_zhangai=0;
    zaw_mode=-6;
    }
   
    if(mode4_zhangai>0&&(mode4_zhangai-i)>5&&RoadMode[i+1]==4&&fabss(LeftBlack[i]-LeftBlack[i+1])<=4//确定右侧有障碍
      &&(RightBlack[i]-RightBlack[i+1])>4      
      )
   {mode4_zhangai=0;
   zaw_mode=6;
    }
 
 
 
 
 
 }
//==========================================================
 if(mode4==3&&(heixian-1-i)>0)
 { int mode4_i;
   for(mode4_i=heixian-1;mode4_i>i;mode4_i--)
     BlackLineData[mode4_i] =  (BlackLineData[i]+BlackLineData[i+1])/2;
 
 
 }
  
  BlackLineData[i] = LeftBlack[i] + (RightBlack[i]-LeftBlack[i] )/2;
 if(LeftBlack[i]<1&&RightBlack[i]>ColumnMax-2) BlackLineData[i]=BlackEndColumnMax;
 if(RightBlack[i]-LeftBlack[i]>sdk*2.5&&i>50)BlackLineData[i]=BlackEndColumnMax;
//  int szcli;
//  if(shizi>0)//检测到十字
//  { 
//    for(szcli=shizi;szcli<i;szcli++)
//      
//    {
//      BlackLineData[szcli]= (BlackLineData[i]+ BlackLineData[shizi])/2;
//      
//    }
//    
//  }
  
  if((last_all_find-i)>3&&last_all_find<RowMax)
  {int last_find_i;
  for(last_find_i=last_all_find-1;last_find_i<i;last_find_i++)
  {
    if(BlackLineData[last_all_find]- BlackLineData[i]>=5)
    {
      BlackLineData[last_find_i]=( BlackLineData[last_all_find]+ BlackLineData[i])/2-1;
    }
    if(BlackLineData[last_all_find]- BlackLineData[i]<=-5)
    {
      BlackLineData[last_find_i]=( BlackLineData[last_all_find]+ BlackLineData[i])/2+1;
    }
    
  }
  
  
  }
  else if((last_all_find-i)>3&&0)
  {int last_find_i;
  for(last_find_i=last_all_find-1;last_find_i<i;last_find_i++)
  {
    
    BlackLineData[last_find_i]= BlackLineData[i];
  }
  
  
  }
  
  last_all_find=i;
  if(i==(RowMax-1)) {  
    firstline_l=LeftBlack[i];
    firstline_r=RightBlack[i];
    firstline_m=BlackLineData[i];}
  
  }
  
  
  lable:		if (!MidEnd)
  {
    StableNumbers++;
    
  }
  else
    
  {
    
   if(RowMax-i<BlackEndMax-5&&midline_fcount_max<4)
   {
   
      LeftEnd=0;
      RightEnd=0;
      MidEnd=0;
      RightBlack[i] =  BlackEndColumnMax+30;
      LeftBlack[i] =  BlackEndColumnMax-30;
      goto lable;
   }
    //    if(zhijiao>0&&zhijiao<90 &&StableNumbers-(RowMax-zhijiao)<10)
    //      
    //    {
    //      StableNumbers=(RowMax-zhijiao);
    //    }
    //    
    return;
  }
  
  label_end:
    
  }
  
  
}



float EPerCount=0.0;
//从偏差线提取偏差
void GetEPerCount()
{
  unsigned char i=0,j=0;
  //中心点跳变计数
  unsigned char TripPointCount = 0;
  // 连续中心线点数小于该数字则过滤掉
  unsigned char FilterNumber = 8;
  // 跳变长度设定
  unsigned char TripLen = 3;
  
  Excursion = 0;
  ValidLineCount=0;
  ValidExcursionCount=0;
  
  for (i = 0;i < RowMax;i++)
  {
    TripPointPos[i] = 0;	
  }
  //根据跳变分段
  for (i = 0;i < RowMax;i++)
  {
    // 单边缘情况直接取边缘
    /*if (fabss(RightBlack[i] - LeftBlack[i]) < 5 )
    {
    BlackLineData[i] = LeftBlack[i];
  }
		else
    {
    //正常两边黑线提取中心线
    BlackLineData[i] = LeftBlack[i] + (RightBlack[i] - LeftBlack[i])/2;
  }*/
    // 相邻中心点做差，找出中心线跳变处,进行分段处理
    if (i > 0)
    {
      SubValue[i] = BlackLineData[i] - BlackLineData[i-1];
      //跳变判断
      if (fabss(SubValue[i]) > TripLen)
      {
        //记录跳变位置（行标）
        TripPointPos[TripPointCount] = i;
        TripPointCount++;	
      }
    }	
  }//for结束 
  if (TripPointCount == 0)
  {
    for (i = 0;i < RowMax;i++)
    {
      ValidLineCount++;
      if(i > 30 && i < RowMax)
      {
        ValidExcursionCount++;
        Excursion += (BlackLineData[i-1]-BlackLineData[i]);
      }
    }
  }
  else 
  {	
    if (TripPointPos[0] > FilterNumber)
    {
      for (i = 0;i < TripPointPos[0];i++)
      {
        ValidLineCount++;
        if(i > 30)
        {
          ValidExcursionCount++;
          Excursion += (BlackLineData[i-1]-BlackLineData[i]);
        }
      }
    }
    
    TripPointPos[TripPointCount] = RowMax;
    for (j = 0;j < TripPointCount;j++)
    {
      if (TripPointPos[j+1] - TripPointPos[j] > FilterNumber)
      {
        for (i = TripPointPos[j];i < TripPointPos[j+1];i++)
        {
          ValidLineCount++;
          if(i > TripPointPos[j] && i > 30)
          {
            ValidExcursionCount++;
            Excursion += (BlackLineData[i-1]-BlackLineData[i]);
          }
        }
      }
    }
  }
  if(ValidExcursionCount > 1)
  {
    EPerCount = fabss(Excursion)/ValidExcursionCount;
  }
  else
  {
    EPerCount = 3;
    Excursion = 50;
  }
}
void getmidline()
{
  int i=0,j=0;
  unsigned char bFoundLeft = 0;
  unsigned char bFoundRight = 0;
  unsigned char TripLen = 5;
  
  unsigned int LeftStart=0;
  unsigned int LeftEnd = 0;
  unsigned int RightStart=0;
  unsigned int RightEnd = 0;
  
  unsigned char MidEnd = 0;
  
  unsigned char MidToBlackCount = 0;
  
  //int NoValidCount = 0;
  NoValidMax=0;
  
  StableNumbers=0;
  LeftStableNumbers = 0;
  RightStableNumbers = 0;
  
  ValidLineCount1=0;
  ValidLineCount2=0;
  
  for (i = RowMax-1;i >= 0 && !MidEnd;i--)
  {
    if (i>RowMax-5)
    {
      LeftStart=ColumnMax/2;
      LeftEnd=2;
      RightStart=ColumnMax/2;
      RightEnd=ColumnMax-2;	
    }
    bFoundLeft=bFoundRight=0;
    
    for (j=LeftStart;j>LeftEnd;j--)
    {
      if (ThresholdData[i][j]==White&&ThresholdData[i][j-1]==Black)
      {
        LeftBlack[i]=j-1;
        if (LeftBlack[i]>1)
        {
          
          bFoundLeft=1;
          LeftStart=LeftBlack[i]+10;
          if (LeftBlack[i]<12)
          {
            LeftEnd=2;
          }
          else
          {
            LeftEnd=LeftBlack[i]-10;
          }
          break;
        }
      }
    }
    
    for (j=RightStart;j<RightEnd;j++)
    {
      if (ThresholdData[i][j]==White&&ThresholdData[i][j+1]==Black)
      {
        RightBlack[i]=j+1;
        
        if (RightBlack[i]<ColumnMax-2)
        {     
          bFoundRight=1;
          RightStart=RightBlack[i]-10;
          if (RightBlack[i]+10>ColumnMax)
          {
            RightEnd=ColumnMax-2;
          }
          else
          {
            RightEnd=RightBlack[i]+10;
          }
          break;
        }
      }
    }
    
    if (!bFoundLeft)
    {
      if (i<RowMax-20)
      {
        LeftBlack[i]=LeftBlack[i+1]+LeftBlack[i+1]-LeftBlack[i+2];
      }
      else
      {
        LeftBlack[i]=0;
      }
    }
    else if (i<RowMax-20&&fabss(LeftBlack[i]-LeftBlack[i+1])>TripLen)
    {
      LeftBlack[i]=LeftBlack[i+1]+LeftBlack[i+1]-LeftBlack[i+2];
    }
    if (!bFoundRight)
    {
      if (i<RowMax-20)
      {
        RightBlack[i]=RightBlack[i+1]+RightBlack[i+1]-RightBlack[i+2];
      }
      else
      {
        RightBlack[i]=ColumnMax-1;
      }
    }
    else if (i<RowMax-20&&fabss(RightBlack[i]-RightBlack[i+1])>TripLen)
    {
      RightBlack[i]=RightBlack[i+1]+RightBlack[i+1]-RightBlack[i+2];
    }
    
    BlackLineData[i]=LeftBlack[i]+(RightBlack[i]-LeftBlack[i])/2;
    
    
    //		if (i<RowMax-5)
    //		{
    //			if (!bFoundLeft&&bFoundRight)
    //			{
    //				BlackLineData[i]=RightBlack[i]-(RightBlack[i+1]-BlackLineData[i+1]);
    //			}
    //			if (!bFoundRight&&bFoundLeft)
    //			{
    //				BlackLineData[i]=LeftBlack[i]+(BlackLineData[i+1]-LeftBlack[i+1]);
    //			}
    //		}
    
    //中心线搜索截止
    if (BlackLineData[i]<4||BlackLineData[i]>ColumnMax-4)
    {
      MidEnd = 1;//中心线截止
      break;
    }
    if (i < RowMax-20 && fabss(BlackLineData[i]-BlackLineData[i+1]) > TripLen)
    {
      BlackLineData[i] = BlackLineData[i+1] + BlackLineData[i+1] - BlackLineData[i+2];
    }
    if (ThresholdData[i][BlackLineData[i]] == Black)
    {
      MidToBlackCount++;
      if (MidToBlackCount >= 2)
      {
        MidEnd = 1;
      }
    }
    else
    {
      MidToBlackCount = 0;
    }
    if (!MidEnd)
    {
      StableNumbers++;
    }
  }
  
}

void GetFinalMidLine()
{
  int i = 0,MinStable = 0;
  MinStable = MIN(StableNumbers,LeftStableNumbers);
  MinStable = MIN(MinStable,RightStableNumbers);
  for (i = RowMax-1;i > RowMax-(MinStable-0) ;i--)
  {
    //ThresholdData[i][BlackLineData[i]]=White;
    BlackLineData[i] = LeftBlack[i] + (RightBlack[i]-LeftBlack[i] )/2;
    
    if (BlackLineData[i] > ColumnMax-1){BlackLineData[i] = ColumnMax-1;}
    else if (BlackLineData[i] < 0){BlackLineData[i]=0;}
    
    //ThresholdData[i][BlackLineData[i]]=128;
  }
  /*if (LeftStableNumbers > MinStable)
  {
  for (i = RowMax-(MinStable-0);i > RowMax - (LeftStableNumbers-0);i--)
  {
  BlackLineData[i] = BlackLineData[i+1] + LeftBlack[i+1] - LeftBlack[i+2];
  if (BlackLineData[i] > ColumnMax-1){BlackLineData[i] = ColumnMax-1;}
			else if (BlackLineData[i] < 0){BlackLineData[i]=0;}
}
}
  if (RightStableNumbers > MinStable)
  {
  for (i = RowMax-(MinStable-0);i > RowMax - (RightStableNumbers-0);i--)
  {
  BlackLineData[i] = BlackLineData[i+1] + RightBlack[i+1] - RightBlack[i+2];
  if (BlackLineData[i] > ColumnMax-1){BlackLineData[i] = ColumnMax-1;}
			else if (BlackLineData[i] < 0){BlackLineData[i]=0;}
}
}*/
  //  if(LeftStableNumbers> MinStable)
}




//左均值滤波
void LAverageFilter()
{
  unsigned char i = 0;
  unsigned char j = 0;
  int sum = 0;
  for (i = RowMax-1;i > RowMax-(LeftStableNumbers-5);i--)
  {
    sum = 0;
    for (j = 0;j < 5;j++)
    {
      sum += LeftBlack[i-j];
    }
    LeftBlack[i] = sum/5;
  }
  P1_X = LeftBlack[RowMax-(LeftStableNumbers-6)];
  P1_Y = RowMax-(LeftStableNumbers-6);
}

//右均值滤波
void RAverageFilter()
{
  unsigned char i = 0;
  unsigned char j = 0;
  int sum = 0;
  for (i = RowMax-1;i > RowMax-(RightStableNumbers-5);i--)
  {
    sum = 0;
    for (j = 0;j < 5;j++)
    {
      sum += RightBlack[i-j];
    }
    RightBlack[i] = sum/5;
  }
  P2_X = RightBlack[RowMax-(RightStableNumbers-6)];
  P2_Y = RowMax-(RightStableNumbers-6);
  
}

//中心线均值滤波
void AverageFilter()
{
  unsigned char i = 0;
  unsigned char j = 0;
  int sum = 0;
  for (i = RowMax-1;i > RowMax-(StableNumbers);i--)
  {
    sum = 0;
    for (j = 0;j < 5;j++)
    {
      sum += BlackLineData[i-j];
    }
    BlackLineData[i] = sum/5;
  }
  P0_X = BlackLineData[RowMax-1];
  P0_Y = RowMax-1;
  
  Mid_K1 = fabss(P0_X-P1_X)*1.0/fabss(P0_Y-P1_Y);
  Mid_K2 = fabss(P0_X-P2_X)*1.0/fabss(P0_Y-P2_Y);
  
}


void MidLineCompensate()
{
  int i=0,icount=0,j=0;
  int CompensateData = 0;
  
  int sum = 0;
  float avg =0.0;
  int tem = 1;
  
  CompensateCount=0;
  
  for (i = RowMax-2,icount=0;i > RowMax-(StableNumbers-10);i--,icount++)
  {
    sum += (BlackLineData[i]-BlackLineData[i+1]);
  }
  avg = sum*1.0 / icount;
  if (avg < 0)
  {
    tem = -1;
    avg = (-1)*avg;
  }
  if (avg > 1.0)
  {
    CompensateData = 4;
  }else if (avg > 0.55)
  {
    CompensateData = 3;
  }
  else if (avg > 0.25)
  {
    CompensateData = 2;
  }else
  {
    CompensateData = 0;
  }
  CompensateData = CompensateData*tem;
  
  
  for (i = RowMax - (StableNumbers);i > 0;i--)
  {
    BlackLineData[i] = BlackLineData[i+1] + CompensateData;//BlackLineData[i+1] + BlackLineData[i+1]-BlackLineData[i+2];
    
    CompensateCount++;
    if (ThresholdData[i][BlackLineData[i]] == Black || BlackLineData[i] < 2 || BlackLineData[i] > ColumnMax -2)
    {
      break;
    }
    sum = 0;
    for (j = RowMax-2,icount=0;j > i;j--,icount++)
    {
      sum += (BlackLineData[j]-BlackLineData[j+1]);
    }
    avg = sum*1.0 / icount;
    if (avg < 0)
    {
      tem = -1;
      avg = (-1)*avg;
    }
    if (avg > 1.0)
    {
      CompensateData = 4;
    }else if (avg > 0.55)
    {
      CompensateData = 3;
    }
    else if (avg > 0.25)
    {
      CompensateData = 2;
    }else
    {
      CompensateData = 0;
    }
    CompensateData = CompensateData*tem;
  }
}



//获取中心线方差
void GetMidLineVariance()
{
  unsigned char i=0;
  unsigned char iCount=0;
  unsigned int  Black_Sum=0;
  float aver=0.0;
  int end = RowMax - (StableNumbers - 0);
  
  MidLineExcursion = 0;
  //LPLD_UART_PutCharArr(UART4,"开始发送1",8);
  for(i=RowMax-5,iCount=0; i>end; i--,iCount++)    
  {
    // LPLD_UART_PutChar(UART4,BlackLineData[i]+48);
    //  LPLD_UART_PutCharArr(UART4,"  ",1);
    Black_Sum += BlackLineData[i];
    MidLineExcursion = MidLineExcursion + BlackLineData[i] - BlackLineData[i+1];
  }	
  aver = Black_Sum*1.0 / iCount;
  MidLineVariance = 0.0;
  for (i = RowMax-5;i > end;i--)
  {
    MidLineVariance+=(aver-BlackLineData[i])*(aver-BlackLineData[i]);
  }
  MidLineVariance = MidLineVariance/ iCount;
}

//获取特殊中心线偏差 ，StableNumbers要大于2
void GetSpecialError()
{
  unsigned char i=0;
  int end = RowMax - StableNumbers-1;
  
  MidLineExcursion = 0;
  for (i = RowMax-1;i > end ;i--)
  {
    BlackLineData[i] = LeftBlack[i] + (RightBlack[i]-LeftBlack[i] )/2;		
  }
  for(i=RowMax-2; i>end; i--)    
  {	
    MidLineExcursion = MidLineExcursion + BlackLineData[i] - BlackLineData[i+1];		
  }
  //特殊情况给中心线方差极大
  MidLineVariance = 300;
  //特殊情况给中心线偏差极大
  if(MidLineExcursion > 0)
  {
    MidLineExcursion = 40;
  }
  else if(MidLineExcursion < 0)
  {
    MidLineExcursion = -40;	
  }
}


void GetSectionParam()
{
  int TotalPoint = StableNumbers ;
  int icount = 0;
  int i = 0;
  int BasePoint = BlackLineData[RowMax-1];
  SubBasePoint = 0;
  TopE1=0;
  TopE2=0;
  TopLen1=0;
  TopLen2=0;
  
  for (i=RowMax-StableNumbers-1,icount=1;i < RowMax-2;i++,icount++)
  {
    if (icount < TotalPoint/2)
    {
      TopE1 += (BlackLineData[i]-BlackLineData[i+1]);
      TopLen1++;
    }
    else 
    {
      TopE2 += (BlackLineData[i]-BlackLineData[i+1]);
      TopLen2++;
      
    }
    if (fabss(BlackLineData[i]-BasePoint) > fabss(SubBasePoint))
    {
      SubBasePoint = BlackLineData[i]-BasePoint;
      SubBasePointLen = i;
      
    }
  }
}



signed char TemMidLineData[RowMax];//提取黑线值数据2

void StoreMidLine()
{
  int i = 0;
  for(i = 0;i < RowMax;i++)	
  {
    TemMidLineData[i] = BlackLineData[i];	
  }
}


void UseTemMidLine()
{
  int i = 0;
  for(i = 0;i < RowMax;i++)	
  {
    BlackLineData[i] = TemMidLineData[i];	
  }	
}

int fabss(int n)
{
  if(n < 0)return (-1)*n;
  else return n;	
}

void CheckStartLine()
{
  int start=30,end=50,i=0,j=0;
  int value = 80;
  int NewBlock = 0;
  int BlockCount = 0;
  int lencount = 0;
  int begin1=0,begin2=0,end1=0,end2=0;
  int startlinecount = 0;
  int maybeflag = 0;
  // 先暗化处理反光，并滤波
  for(i=start;i<end && BlackEndMax >= RowMax-5;i++)
  {
    for(j=0;j<ColumnMax;j++)
    {
      if(ImageData[i][j] > 220)
      {
        ImageData[i][j]=220;
      }
      if(ImageData[i][j] < ThresholdValue)
      {
        ImageData[i][j]=0;
      }
    }
  }
  for(i=start;i<end && BlackEndMax >= RowMax-5;i++)
  {
    for(j=0;j<ColumnMax;j++)
    {
      //白黑白
      if(ImageData[i][j]-ImageData[i][j+1] > value && ImageData[i][j+2]-ImageData[i][j+1] > value )	
      {
        ImageData[i][j+1]=220;
      }
      //黑白黑
      else if(ImageData[i][j+1]-ImageData[i][j] > value && ImageData[i][j+1]-ImageData[i][j+2] > value )
      {
        ImageData[i][j+1]=0;	
      }
    }
  }
  //求左右边缘
  for(i=start;i<end /*&& BlackEndMax >= RowMax-5*/;i++)
  {
    for(j=1;j < ColumnMax/2;j++)
    {
      if(ImageData[i][j] > ThresholdValue && ImageData[i][j+1] > ThresholdValue)
      {
        LeftBlack[i]=j-1;
        break;	
      }	
    }	
  }
  
  for(i=start;i<end/* && BlackEndMax >= RowMax-5*/;i++)
  {
    for(j=ColumnMax-2;j > ColumnMax/2;j--)
    {
      if(ImageData[i][j] > ThresholdValue && ImageData[i][j-1] > ThresholdValue)
      {
        RightBlack[i]=j+1;
        break;	
      }	
    }	
  }
  
  for(i=start;i<end /*&& BlackEndMax >= RowMax-5*/;i++)
  {
    NewBlock=0;//新的黑条未开始
    BlockCount=0;//每行黑条计数初始化为0
    lencount=0;//黑条长度初始化
    begin1=0;//第一条黑条初始化为0
    begin2=0;//第二条黑条初始化为0
    //从左边缘开始往右边缘开始搜索其中间的黑条
    for(j=LeftBlack[i];j<RightBlack[i];j++)
    {
      //从白到黑的跳变
      if(ImageData[i][j]-ImageData[i][j+4] > value && ImageData[i][j]-ImageData[i][j+5] > value)
      {
        //新的黑条开始标志
        NewBlock=1;
        //该黑条长度初始化为0
        lencount=0;
        //记录第一块黑条起始位置
        if(BlockCount == 0)
        {
          if(j < 60 && j > 20)
          {
            begin1=j;
          }
          else
          {
            NewBlock=0;
            lencount=0;	
          }
        }
        else if(BlockCount == 1)
        {
          if(j > 60 && j < 100)
          {
            begin2=j;
          }
          else
          {
            NewBlock=0;
            lencount=0;							
          }
        }
      }
      //从黑到白的跳变
      else if(ImageData[i][j+4]-ImageData[i][j] > value && ImageData[i][j+5]-ImageData[i][j] > value)
      {
        //如果前面有黑条已经开始，并且长度合适，则黑条计数增加
        if(NewBlock && lencount > 10 && lencount < 50)
        {
          BlockCount++;
          if(BlockCount == 1)
          {
            end1 = j;
          }
          else if(BlockCount == 2)
          {
            end2 = j;
          }
        }
        NewBlock=0;
        lencount=0;
      }
      //不是跳变
      else
      {
        //如果新的黑条开始了，计数其长度
        if(NewBlock)
        {
          lencount++;	
        }
      }
    }
    //从黑条数和黑条间距判断起跑线
    if(BlockCount >= 2 && begin2-begin1 > 20 && begin2-end1 > 5 &&  begin2-end1 < 50)
    {
      //IsStartLine=1;
      maybeflag=1;
      startlinecount++;	
    }
  }
  if(maybeflag /*&& startlinecount < 8*/)
  {
    IsStartLine=1;	
  }
  
  //从右往左搜索时初始化，防止车偏右跑时检测不出来
  startlinecount=0;
  maybeflag=0;
  for(i=start;i<end && BlackEndMax >= RowMax-5;i++)
  {
    NewBlock=0;//新的黑条未开始
    BlockCount=0;//每行黑条计数初始化为0
    lencount=0;//黑条长度初始化
    begin1=0;//第一条黑条初始化为0
    begin2=0;//第二条黑条初始化为0
    //从右边缘开始往左边缘搜索其中间的黑条
    for(j=RightBlack[i];j>LeftBlack[i];j--)
    {
      //从白到黑的跳变
      if(ImageData[i][j]-ImageData[i][j-4] > value && ImageData[i][j]-ImageData[i][j-5] > value)
      {
        //新的黑条开始标志
        NewBlock=1;
        //该黑条长度初始化为0
        lencount=0;
        //记录第一块黑条起始位置
        if(BlockCount == 0)
        {
          if(j > 60 && j < 100)
          {
            begin1 = j;
          }
          else
          {
            NewBlock = 0;
            lencount = 0;	
          }
        }
        else if(BlockCount == 1)
        {
          if(j < 60 && j > 20)
          {
            begin2=j;
          }
          else
          {
            NewBlock = 0;
            lencount = 0;							
          }
        }
      }
      //从黑到白的跳变
      else if(ImageData[i][j-4]-ImageData[i][j] > value && ImageData[i][j-5]-ImageData[i][j] > value)
      {
        //如果前面有黑条已经开始，并且长度合适，则黑条计数增加
        if(NewBlock && lencount > 10 && lencount < 50)
        {
          BlockCount++;
          if(BlockCount == 1)
          {
            end1 = j;
          }
          else if(BlockCount == 2)
          {
            end2 = j;
          }
        }
        NewBlock=0;
        lencount=0;
      }
      //不是跳变
      else
      {
        //如果新的黑条开始了，计数其长度
        if(NewBlock)
        {
          lencount++;	
        }
      }
    }
    //从黑条数和黑条间距判断起跑线
    if(BlockCount >= 2 && begin1-begin2 > 20 && end1-begin2 > 5 && end1 - begin2 < 50)
    {
      //IsStartLine=1;
      maybeflag = 1;
      startlinecount++;	
    }
  }
  if(maybeflag /*&& startlinecount < 8*/)
  {
    IsStartLine = 1;	
  }
}
uint8 ElementCount2 = 0;
//头尾指针
uint8 Head2 = 0,Rear2 = 0;
#define Size2 30
//队列数组
signed char RoadTypeData2[Size2] = {0};


int AllBigSCount = 0;
int AllBendCount = 0;
//=================================================================================

void HistoryRoadTypeCount()
{
  int i=0;
  int tem = 0;
  int StraightCount = 0;
  int SmallSCount = 0;
  int BigSCount = 0;
  int BendCount = 0;
  AllStraightCount = 0;
  AllSmallSCount = 0;
  AllBigSCount = 0;
  AllBendCount = 0;
  tem = Rear2;
  for(i = 0;i < ElementCount2;i++)
  {
    if(RoadTypeData2[tem] == 0)
    {
      StraightCount++;
      if(AllStraightCount < StraightCount)
      {
        AllStraightCount = StraightCount;
      }
    }
    else
    {
      StraightCount = 0;
    }
    
    if(RoadTypeData2[tem] == 0 || RoadTypeData2[tem] == 1)
    {
      SmallSCount++;
      if(AllSmallSCount < SmallSCount)
      {
        AllSmallSCount = SmallSCount;
      }
    }
    else
    {
      SmallSCount = 0;
    }
    
    if(RoadTypeData2[tem] == 2)
    {
      BigSCount++;
      if(AllBigSCount < BigSCount)
      {
        AllBigSCount = BigSCount;
      }
    }
    else
    {
      BigSCount=0;
    }
    
    if(RoadTypeData2[tem] == 2 || RoadTypeData2[tem] == 3 )
    {
      BendCount++;
      if(AllBendCount < BendCount)
      {
        AllBendCount = BendCount;
      }
    }
    else
    {
      BendCount=0;
    }
    
    tem = (tem-1+Size2)%Size2;
  }	
} 

void HistoryRTProccess()
{
  
  
  
  
  if(StandardRoadType && (RoadType == 0 || RoadType == 1))
  {
    //把赛道类型存入循环队列中//标准的直道和小S
    RoadTypeData2[Rear2] = RoadType;	
  }
  else
  {
    RoadTypeData2[Rear2] = 2;	
  }
  
  Rear2 = (Rear2+1)%Size2;
  ElementCount2++;
  if(ElementCount2 > Size2-1)
  {
    ElementCount2=Size2-1;	
  }
  
  //历史赛道类型统计
  HistoryRoadTypeCount();
  
  //	//通过赛道历史记录判断直入弯
  //	TemCount = 0;
  //	pTem = Rear2;
  //	if((RoadType == 2 || RoadType == 3) )
  //	{
  //		for(i = 0;i < 20;i++)
  //		{
  //			if(RoadTypeData2[pTem] == 0 || RoadTypeData2[pTem] == 1 )
  //			{
  //				TemCount++;
  //				if(TemCount > 15)
  //				{
  //					RoadType = 103;		
  //				}
  //			}
  //			pTem = (pTem-1+Size2)%Size2;	
  //		}		
  //	}	
}


unsigned char IsStraightToBend()
{
  if (fabss(TopE1) > 12 && fabss(TopE2) < 3 && fabss(SubBasePoint) < 3 )// && BlackEndMax < RowMax - 4
  {
    return 1;
    
  }else
  {
    return 0;
  }
}

void GetCrossingMidLine()
{
  unsigned char i = 0,j=0;
  //每行头尾遍历行指针
  unsigned char pLeft = ColumnMax/2,pRight = ColumnMax/2;
  unsigned char bFoundLeft = 0;
  unsigned char bFoundRight = 0;
  unsigned char temLeft = 0,temRight = 0,temi=0;
  unsigned char temBasePos = 0;
  
  unsigned char EndFlag = 0;
  unsigned char LCount=0;
  unsigned char RCount=0;
  unsigned char bFoundFlag=0;
  
  
  CrossingStable=0;
  for (i = 0;i < RowMax;i++)
  {
    ValidLineR[i] = 0;
    ValidLineL[i] = 0;
  }
  
  //判断十字左右倾
  if (BlackEndMax == BlackEndL)
  {
    g_Derict = 1;//左倾
  }
  else if (BlackEndMax == BlackEndR)
  {
    g_Derict = 2;//右倾
  }
  else if (BlackEndMax == BlackEndM)
  {
    if (fabss(BlackEndL-BlackEndR) < 5)
    {
      g_Derict = 0;//正十字
    }
    else if (BlackEndL > BlackEndR)
    {
      g_Derict = 1;//左
    }
    else
    {
      g_Derict = 2;//右
    }
  }
  
  //搜索十字两边线
  for (i = RowMax-1; i > 0;i--)
  {
    if (!EndFlag)
    {
      CrossingStable++;
    }
    //近端15行从中间往两边搜索
    if (i > RowMax - 15 )
    {
      // 初始化遍历指针
      pLeft = ColumnMax/2;
      pRight = ColumnMax/2;
    }
    else 
    {
      // 初始化遍历指针
      pLeft = g_BasePos;
      pRight = g_BasePos;
    }
    // 		str.Format("%d pLeft:%d  pRight:%d\r\n",i,pLeft,pRight);
    // 		fprintf(pfile,str);
    // 初始化搜着标记
    bFoundLeft = bFoundRight = 0;
    for (j = 0;j < ColumnMax;j++)
    {
      // 往左搜索
      if (bFoundLeft == 0 && pLeft > 0){// 未找到左边缘则寻找
        //if (pLeft < 1){break;}
        if ((ThresholdData[i][pLeft] == White && ThresholdData[i][pLeft-1] == Black) || pLeft == 1){
          //					ThresholdData[i][LeftBlack[i]]=White;
          // 找到左边缘
          LeftBlack[i] = pLeft-1;
          bFoundLeft = 1;
          //					ThresholdData[i][LeftBlack[i]]=100;
          if (LeftBlack[i] > 0)
          {
            ValidLineL[i]=1;
            LCount=0;
          }
          else
          {
            LCount++;
            if (LCount > NoValidLMax)
            {
              //左边连续丢线总数
              NoValidLMax=LCount;
            }
          }
          // 如果右边缘也找到则退出
          if (bFoundRight){
            break;
          }
        }
        else{
          pLeft--;
        }
      }// if结束--从左到右搜索边缘
      
      //往右搜索
      if (bFoundRight == 0 && pRight < ColumnMax-1 ){//未找到右边缘则寻找
        //if (pRight > ColumnMax - 3){break;}
        if ((ThresholdData[i][pRight] == White && ThresholdData[i][pRight+1] == Black) || pRight == ColumnMax-2){
          //					ThresholdData[i][RightBlack[i]]=White;
          // 找到右边缘
          RightBlack[i] = pRight + 1;
          //					ThresholdData[i][RightBlack[i]]=100;
          bFoundRight = 1;
          if (RightBlack[i] < ColumnMax-1)
          {
            ValidLineR[i] = 1;
            RCount=0;
          }else
          {
            RCount++;
            if (RCount > NoValidRMax)
            {
              NoValidRMax=RCount;
            }
          }
          
          // 如果左边缘也找到则退出
          if (bFoundLeft){
            break;
          }
        }
        else{
          pRight++;
        }
      }// if结束
    }//for结束
    
    //左边找不到边缘置0
    if (!bFoundLeft)
    {
      LeftBlack[i]=0;
      //ThresholdData[i][LeftBlack[i]]=100;
    }
    //右边找不到边缘置最大值
    if (!bFoundRight)
    {
      RightBlack[i]=ColumnMax-1;
      //ThresholdData[i][RightBlack[i]]=100;
    }
    
    //		if (i < RowMax-2 && fabss(LeftBlack[i] - LeftBlack[i+1]) > TripLen  )
    //		{
    //			ValidLine[i]=0;;
    //		}
    //		if (i < RowMax-2 && fabss(RightBlack[i] - RightBlack[i+1]) > TripLen )
    //		{
    //			ValidLine[i]=0;
    //		}
    
    if ( i < RowMax - 15)
    {
      //左倾的搜索情况，中心线逐渐往左
      if (g_Derict == 1)
      {
        //搜到的中心点位置偏左方向远离原基点位置，并且有效，作为新的搜索起点
        if (LeftBlack[i] + (RightBlack[i]-LeftBlack[i] )/2 < g_BasePos 
            && fabss((LeftBlack[i] - LeftBlack[i+1])) < 3 
              && fabss((RightBlack[i] - RightBlack[i+1])) < 3)
        {
          temBasePos = LeftBlack[i] + (RightBlack[i]-LeftBlack[i] )/2;
          if (fabss(temBasePos-g_BasePos)<20)
          {
            g_BasePos = temBasePos;
            if (g_BasePos < 2)
            {
              EndFlag = 1;
            }
          }
        }
        //搜到的中心点位置偏右方向远离原基点位置，或者右边缘趋势往右，则从新搜索起点
        else if (LeftBlack[i] + (RightBlack[i]-LeftBlack[i] )/2 > g_BasePos || RightBlack[i] > RightBlack[i+1]+2)
        {
          temLeft = 0;
          temRight = 0;
          bFoundFlag=0;
          //确定新的搜索起点
          // 					str.Format("搜索起点:g_BasePos %d  \r\n",g_BasePos);
          // 					fprintf(pfile,str);
          for (temi = 1;temi < ColumnMax-1;temi++)
          {
            if (ThresholdData[i][temi] == White && ThresholdData[i][temi+1] == White && temLeft == 0)
            {
              temLeft = temi;
            }
            if (temLeft != 0)
            {
              if (ThresholdData[i][temi]== Black && ThresholdData[i][temi+1] == Black && ThresholdData[i][temi+5] == Black)
              {
                temRight = temi;
                bFoundFlag=1;
                break;
              }
            }
          }
          if(bFoundFlag && temLeft + (temRight-temLeft)/2 < g_BasePos)
          {
            temBasePos = temLeft + (temRight-temLeft)/2;
            g_BasePos = temBasePos;
            if (g_BasePos < 3)
            {
              //新的搜索起点已经到最左边了，无需再搜索了
              EndFlag = 1;
            }
          }
          // 					str.Format("找到新的搜索起点:g_BasePos %d  \r\n",g_BasePos);
          // 					fprintf(pfile,str);
        }
      }
      
      //十字右倾的情况
      if (g_Derict == 2 )
      {
        //搜到的中心点位置偏右方向远离原基点位置，并且有效，作为新的搜索起点
        if (LeftBlack[i] + (RightBlack[i]-LeftBlack[i] )/2 > g_BasePos 
            && fabss((LeftBlack[i] - LeftBlack[i+1])) < 3 
              && fabss((RightBlack[i] - RightBlack[i+1])) < 3)
        {
          temBasePos = LeftBlack[i] + (RightBlack[i]-LeftBlack[i] )/2;
          if (fabss(temBasePos-g_BasePos)<20)
          {
            g_BasePos = temBasePos;
            if (g_BasePos > ColumnMax-4)
            {
              EndFlag = 1;
            }
          }
        }
        //搜到的中心点位置偏左方向远离原基点位置，或者左边缘趋势往左，则从新搜索起点
        else if (LeftBlack[i] + (RightBlack[i]-LeftBlack[i] )/2 < g_BasePos || LeftBlack[i] < LeftBlack[i+1]-2)
        {
          temLeft = 0;
          temRight = 0;
          bFoundFlag = 0;
          //确定新的搜索起点
          for (temi = ColumnMax-1;temi > 1;temi--)
          {
            if (ThresholdData[i][temi] == White && ThresholdData[i][temi-1] == White && temRight == 0)
            {
              temRight = temi;
            }
            if (temRight != 0)
            {
              if (ThresholdData[i][temi]== Black && ThresholdData[i][temi-1]== Black && ThresholdData[i][temi-5] == Black )
              {
                temLeft = temi;
                bFoundFlag=1;
                break;
              }
            }
          }
          if(bFoundFlag && temLeft + (temRight-temLeft)/2 > g_BasePos)
          {
            temBasePos = temLeft + (temRight-temLeft)/2;
            g_BasePos = temBasePos;
            if (g_BasePos > ColumnMax-3)
            {
              EndFlag = 1;
            }
          }
          // 					str.Format("找到新的搜索起点:g_BasePos %d  \r\n",g_BasePos);
          // 					fprintf(pfile,str);
        }
      }
    }
  }
  
  // 	str.Format("CrossingStable:%d\r\n",CrossingStable);
  // 	fprintf(pfile,str);
  // 	str.Format("NoValidLMax:%d NoValidRMax:%d\r\n",NoValidLMax,NoValidRMax);
  // 	fprintf(pfile,str);
}

//曲线两点间拟合
void CommonRectificate(int data[],unsigned char begin,unsigned char end)
{
  unsigned char MidPos = 0;
  if (end > RowMax-1)
  {
    end = RowMax-1;
  }
  if (begin == end)
  {
    //		ThresholdData[begin][data[begin]]=White;
    
    data[begin] = (data[begin-1]+data[begin+1])/2;
    // 		str.Format("补偿%d:%d  \r\n",n++,begin);
    // 		fprintf(pfile,str);
    //		ThresholdData[begin][data[begin]]=100;
    
    //		ThresholdData[begin][BlackLineData[begin]]=White;
    
    BlackLineData[begin] =  LeftBlack[begin] + (RightBlack[begin]-LeftBlack[begin])/2;
    
    //		ThresholdData[begin][BlackLineData[begin]]=128;
    
  }
  else if(begin < end)
  {
    MidPos = (begin+end)/2;	
    //		ThresholdData[MidPos][data[MidPos]]=White;
    data[MidPos] = (data[begin]+data[end])/2;
    // 		str.Format("补偿%d:%d  \r\n",n++,MidPos);
    // 		fprintf(pfile,str);
    //		ThresholdData[MidPos][data[MidPos]]=100;
    
    //		ThresholdData[MidPos][data[MidPos]]=100;
    //		ThresholdData[MidPos][BlackLineData[MidPos]]=White;
    BlackLineData[MidPos] =  LeftBlack[MidPos] + (RightBlack[MidPos]-LeftBlack[MidPos])/2;	
    //		ThresholdData[MidPos][BlackLineData[MidPos]]=128;
    
    if (begin+1 < MidPos)
    {
      CommonRectificate(data,begin,MidPos);
    }
    if (MidPos+1 < end)
    {
      CommonRectificate(data,MidPos,end);
    }
  }
}

//对新提取的十字交叉道中线进行滤波
void CrossingMidFilter()
{
  signed char i = 0,j=0,MidEnd = 0;
  unsigned char MidToBlackCount = 0;
  int sum = 0;
  StableNumbers2 = 0;
  
  for (i = RowMax-1;i >= 0 && !MidEnd;i--)
  {
    BlackLineData[i] = LeftBlack[i] + (RightBlack[i]-LeftBlack[i] )/2;
    //十字中心线稳定行	
    StableNumbers2++;
    //中心线搜索截止
    if (BlackLineData[i] < 4 || BlackLineData[i] > ColumnMax-4)
    {
      MidEnd = 1;
      break;
    }
    if (i < RowMax-5 && fabss(BlackLineData[i]-BlackLineData[i+1]) > 3)
    {
      BlackLineData[i] = BlackLineData[i+1] + BlackLineData[i+1] - BlackLineData[i+2];
    }
    if (ThresholdData[i][BlackLineData[i]] == Black)
    {
      MidToBlackCount++;
      if (MidToBlackCount >= 3)
      {
        //中心线碰到黑点了
        MidEnd = 1;
      }
    }
    //		else
    //		{
    //			MidToBlackCount = 0;
    //		}
  }
  
  for (i = RowMax-1;i > RowMax-(StableNumbers2-5);i--)
  {
    sum = 0;
    for (j = 0;j < 5;j++)
    {
      sum += BlackLineData[i-j];
    }
    BlackLineData[i] = sum/5;
    
    //ThresholdData[i][BlackLineData[i]]=128;
  }
}

//正十字的情况处理
void SCProcessing()
{
  char i = 0;
  int startPos=0,endPos=0,temCount=0,countMax=0,temPos=0;
  int ProcessFlag=0;
  
  //跳变计数
  unsigned char TripPointCount = 0;
  unsigned char TripLen = 3;
  //取十字的边缘线
  //GetCrossingMidLine();
  
  // 	str.Format("正十字处理\r\n");
  // 	fprintf(pfile,str);
  for (i = 0;i < RowMax;i++)
  {
    TripPointPos[i] = 0;	
  }
  TripPointCount=0;
  //根据跳变分段
  for (i = 0;i < RowMax;i++)
  {
    // 相邻中心点做差，找出中心线跳变处,进行分段处理
    if (i > 0){
      SubValue[i] = LeftBlack[i] - LeftBlack[i-1];
      //跳变判断
      if (fabss(SubValue[i]) > TripLen || LeftBlack[i] <2){
        //记录跳变位置（行标）
        TripPointPos[TripPointCount] = i;
        TripPointCount++;	
      }
    }	
  }//for结束 
  TripPointPos[TripPointCount] = RowMax;
  temCount = 0;
  countMax=0;
  temPos = TripPointPos[0]-1;
  startPos = temPos;
  endPos = 0;
  for (i = 1;i < TripPointCount;i++)
  {
    // 			str.Format("TripPointPos:%d \r\n",TripPointPos[i]);
    // 			fprintf(pfile,str);
    if (TripPointPos[i]-TripPointPos[i-1] < 3)
    {
      temCount++;
      if (temCount > countMax)
      {
        countMax = temCount;
        startPos = temPos;
        endPos = TripPointPos[i]+1;
      }
    }
    else /*if(LeftBlack[TripPointPos[i-1]]-LeftBlack[TripPointPos[i]]>15&&TripPointPos[i]>10)
    {
      temPos = TripPointPos[i]-1;
      startPos = temPos;
  }
                else */ 
    {
      temPos = TripPointPos[i]-1;
      temCount=0;
    }
  }//End for
  // 	str.Format("startPos:%d endPos:%d \r\n",startPos,endPos);
  // 	fprintf(pfile,str);
  if (startPos > 10/* &&startPos> endline*/)
  {
    CommonRectificate(&LeftBlack[0],startPos,endPos);
    ProcessFlag=1;
  }
  
  //	if(endPos != 0 && endPos < 35)
  //	{
  //		LCrossingTripPos = endPos+5;
  //	}
  
  //右边缘补线
  for (i = 0;i < RowMax;i++)
  {
    TripPointPos[i] = 0;	
  }
  TripPointCount=0;
  //根据跳变分段
  for (i = 1;i < RowMax;i++)
  {
    // 相邻中心点做差，找出中心线跳变处,进行分段处理
    if (i > 0){
      SubValue[i] = RightBlack[i] - RightBlack[i-1];
      //跳变判断
      if (fabss(SubValue[i]) > TripLen || RightBlack[i] > (ColumnMax-3)){
        //记录跳变位置（行标）
        TripPointPos[TripPointCount] = i;
        TripPointCount++;	
      }
    }	
  }//for结束 
  // 		str.Format("TripPointCount:%d \r\n",TripPointCount);
  // 		fprintf(pfile,str);
  TripPointPos[TripPointCount] = RowMax;
  temCount = 0;
  countMax=0;
  
  endPos = 0;
  temPos = TripPointPos[0]-1;	
  startPos = temPos;
  for (i = 0;i < TripPointCount;i++)
  {
    // 			str.Format("TripPointPos1:%d  \r\n",TripPointPos[i]);
    // 			fprintf(pfile,str);
    if (TripPointPos[i]-TripPointPos[i-1] < 3)
    {
      temCount++;
      if (temCount > countMax)
      {
        countMax = temCount;
        startPos = temPos;
        endPos = TripPointPos[i]+1;
      }
    }
    else  /*if(RightBlack[TripPointPos[i]]-RightBlack[TripPointPos[i-1]]>15&&TripPointPos[i]>10)
    {
      temPos = TripPointPos[i]-1;
      startPos = temPos;
  }
                else */ 
    {
      temPos = TripPointPos[i]-1;
      temCount=0;
    }
    
  }//End for
  // 	str.Format("startPos1:%d endPos1:%d \r\n",startPos,endPos);
  // 	fprintf(pfile,str);
  if (startPos > 10/*&&startPos> endline*/)
  {
    //拟合右边缘
    CommonRectificate(&RightBlack[0],startPos,endPos);
    ProcessFlag=1;
  }
  
  //	if(endPos < 35)
  //	{
  //		if( endPos > LCrossingTripPos)
  //		{
  //			LCrossingTripPos = endPos+5;
  //		} 
  //	}
  if(!ProcessFlag)
  {
    IsCrossing = 0;	
  }
}


void ProcessCrossing()
{
  char i = 0,iStart= RowMax - StableNumbers -1,iEnd = RowMax-1;
  unsigned char iCount=0;
  unsigned char TripPos = 0,pos = 0;
  unsigned char Count1 = 0,Count2=0;
  unsigned char tem0 = 0,tem1=0;
  int startPos=0,endPos=0;
  unsigned char ProcessFlag = 0;
  endline = RowMax-1;
  LCrossingTripPos = 0;
  RCrossingTripPos = 0;
  int cross_icount=0;
  bFoundTripPoint = 0;
  /*if (iStart < 5)
  {
  iStart = 5;
}
  for (i =  RowMax-6;i >= 0;i--)
  {
  
  if(LineType[i] == 1 )
  {
  endline = i;
  break;
}
          else if(LineType[i] == 2&&ValidLine[i]!=3)
  {
  iCount++;
}
}
  if (iCount > 5 )
  {
  
  IsCrossing = 1;
  
  
}
        else
  {
  IsCrossing = 0;
  return;
}*/
  
  
  
  
  if (iStart < 5)
  {
    iStart = 5;
  } 
  if (fs==5)   LPLD_UART_PutCharArr(UART4,"开发",4);
  for (i = iStart;i < iEnd;i++)
  {
    tem0 = RightBlack[i]>ColumnMax-1 ? ColumnMax-1:RightBlack[i];
    tem1 = LeftBlack[i] < 0 ? 0:LeftBlack[i];
    if (fs==5){ 
      FloatToChar(tem0 - tem1,sa);    
      LPLD_UART_PutChar(UART4,'#');	
      LPLD_UART_PutCharArr(UART4,sa,4);
    }	
    if (tem0 - tem1 > ColumnMax-5 )
    {
      cross_icount++;
    }
    if  (LineType[i] == 1)
    {
      cross_icount = 0;
      
    }
    // else
    //  {
    //break;
    //}
  }
  // 	str.Format("ICOUNT:%d g_Derict%d \r\n",iCount,g_Derict);
  // 	fprintf(pfile,str);
  
  // 	str.Format("iStart:%d iEnd:%d \r\n",iStart,iEnd);
  // 	fprintf(pfile,str);
  
  
  
  if (cross_icount > 10&&(StableNumbers>40||BlackEndL>40||BlackEndR>40))
  {
    // 		str.Format("十字处理\r\n");
    // 		fprintf(pfile,str);
    IsCrossing = 1;
  }
  else
  {
    if (NoValidMax > 10&&WhiteRow>10&&(StableNumbers>40||BlackEndL>40||BlackEndR>40))
    {
      IsCrossing = 1;
      // 			str.Format("十字处理2\r\n");
      // 			fprintf(pfile,str);
      if (ValidLine[RowMax-3] == 0)
      {
        //				SmoothLeftRight();
        //当做正十字处理
        SCProcessing();
        return;
      }
      else
      {
        //当做正十字处理
        SCProcessing();
        return;
      }
    }
    else
    {
      IsCrossing = 0;
      return;
    }
  }
  
  
  
  if(IsCrossing)
  {	
    SCProcessing();
    return;
  }
#if   1
  //右倾找左边缘跳变
  if (IsCrossing && g_Derict == 2)
  {
    // 		str.Format("右倾十字对左边缘处理\r\n");
    // 		fprintf(pfile,str);
    
    i = iStart;
    while (i < iEnd && LeftBlack[i] - LeftBlack[i+1] == 0){i++;}
    // 		str.Format("抵达:%d %d\r\n",i,LeftBlack[i]-LeftBlack[i+1]);
    // 		fprintf(pfile,str);
    Count1=0;
    Count2=0;
    if (LeftBlack[i]-LeftBlack[i+1] > 0)
    {
      Count1++;
      i++;
      for (;i < iEnd;i++)
      {
        if (LeftBlack[i]-LeftBlack[i+1] > 0)
        {
          Count1++;
          if (Count2 != 0)
          {
            Count1 = 1;
            Count2 = 0;
          }
        }
        else if (LeftBlack[i]-LeftBlack[i+1] < 0)
        {
          if (Count1 > 2 && TripPos == 0)
          {
            TripPos = i;
          }
          Count2++;
        }
      }
      if (Count1 >2 && Count2 > 2)
      {
        bFoundTripPoint = 1;
        LCrossingTripPos = TripPos;//左边缘跳变点找到
      }
    }
    else
    {
      Count1++;
      i++;
      for (;i < iEnd;i++)
      {
        if (LeftBlack[i]-LeftBlack[i+1] < 0)
        {
          Count1++;
          if (Count2 != 0)
          {
            Count1 = 1;
            Count2 = 0;
          }
        }
        else if (LeftBlack[i]-LeftBlack[i+1] > 0)
        {						
          if (Count1 >2 && TripPos == 0)
          {
            TripPos = i;
          }
          Count2++;
        }
      }
      if (Count1 >2 && Count2 > 2)
      {
        bFoundTripPoint = 1;
        LCrossingTripPos = TripPos;//左边缘跳变点找到
      }
    }
  }
  
  ////左倾找右边缘跳变点
  if (IsCrossing && g_Derict == 1)
  {
    // 		str.Format("左倾十字对右边缘处理\r\n");
    // 		fprintf(pfile,str);
    i = iStart;
    Count1=0;
    Count2=0;
    while (i < iEnd && RightBlack[i] - RightBlack[i+1] == 0){i++;}
    // 		str.Format("抵达1:%d  %d\r\n",i,RightBlack[i]-RightBlack[i+1]);
    // 		fprintf(pfile,str);
    if (RightBlack[i]-RightBlack[i+1] > 0)
    {
      Count1++;
      i++;
      for (;i < iEnd;i++)
      {
        if (RightBlack[i]-RightBlack[i+1] > 0)
        {
          Count1++;
          if (Count2 != 0)
          {
            Count1 = 1;
            Count2 = 0;
          }
        }
        else if (RightBlack[i]-RightBlack[i+1] < 0)
        {
          if (Count1 >2 && TripPos == 0)
          {
            TripPos = i;
            
          }
          Count2++;
        }
      }
      if (Count1 > 2 && Count2 > 2)
      {
        bFoundTripPoint = 1;
        RCrossingTripPos = TripPos;//右边缘跳变点找到
      }
    }
    else
    {
      Count1++;
      i++;
      for (;i < iEnd;i++)
      {
        if (RightBlack[i]-RightBlack[i+1] < 0)
        {
          Count1++;
          if (Count2 != 0)
          {
            Count1 = 1;
            Count2 = 0;
          }
        }
        else if (RightBlack[i]-RightBlack[i+1] > 0)
        {
          if (Count1 > 2 && TripPos == 0)
          {
            TripPos = i;
            
          }
          Count2++;
        }
      }
      if (Count1 > 2 && Count2 > 2)
      {
        bFoundTripPoint = 1;
        RCrossingTripPos = TripPos;//右边缘跳变点找到
      }
    }
  }
  if (bFoundTripPoint)
  {
    GetCrossingMidLine();//取十字的边缘线
    // 		str.Format("找到跳变点处理\r\n");
    // 		fprintf(pfile,str);
    // 		str.Format("跳变点:%d  %d  1:%d  2:%d\r\n",TripPos,RightBlack[TripPos],Count1,Count2);
    // 		fprintf(pfile,str);
    if (g_Derict == 1)//左倾
    {
      pos = TripPos-8;
      while(pos > 0 && (ValidLineR[pos] == 0 || RightBlack[pos] > RightBlack[TripPos])){pos--;}
      // 			str.Format("补偿起点:%d RightBlack[%d]=%d\r\n",pos-2,pos-2,RightBlack[pos-2]);
      // 			fprintf(pfile,str);
      // 			if (RowMax-CrossingStable > pos-2)
      // 			{
      // 				if (RightBlack[RowMax-CrossingStable] < RightBlack[TripPos])
      // 				{
      // 					//右边缘拟合
      // 					CommonRectificate(&RightBlack[0],RowMax-CrossingStable,TripPos);
      // 					ProcessFlag = 1;
      // 				}
      // 				else
      // 				{
      // 					for (i = 0;i < ColumnMax;i++)
      // 					{
      // 						if (ThresholdData[RowMax-CrossingStable][i] == White && ThresholdData[RowMax-CrossingStable][i+1] == Black)
      // 						{
      // 							pos = i;
      // 							RightBlack[RowMax-CrossingStable]=i;
      // 							break;
      // 						}
      // 					}
      // 					if (RightBlack[RowMax-CrossingStable] < RightBlack[TripPos])
      // 					{
      // 						//右边缘拟合
      // 						CommonRectificate(&RightBlack[0],RowMax-CrossingStable,TripPos);
      // 						ProcessFlag = 1;
      // 					}
      // 					else
      // 					{
      // 						RightBlack[RowMax-CrossingStable]=1;
      // 						//右边缘拟合
      // 						CommonRectificate(&RightBlack[0],RowMax-CrossingStable,TripPos);
      // 						ProcessFlag = 1;
      // 					}
      // 				}
      // 			}
      // 			else 
      if (RightBlack[pos-2] < RightBlack[TripPos]/*&&TripPos-(pos-2)<30*/)//拟合起点合理，可以进行拟合
      {
        //右边缘拟合
        CommonRectificate(&RightBlack[0],pos-2,TripPos);
        ProcessFlag = 1;
      }
      else
      {
        //进行另一种方式拟合
        for (i = 0;i < ColumnMax;i++)
        {
          if (ThresholdData[pos-2][i] == White && ThresholdData[pos-2][i+1] == Black)
          {
            RightBlack[pos-2]=i;
            break;
          }
        }
        if (RightBlack[pos-2] < RightBlack[TripPos]/*&&TripPos-(pos-2)<30*/)//拟合起点合理，可以进行拟合
        {
          //右边缘拟合
          CommonRectificate(&RightBlack[0],pos-2,TripPos);
          ProcessFlag = 1;
        }
        else if (NoValidLMax > 20/*&&TripPos-(pos-2)<30*/)
        {
          RightBlack[pos-2]=2;
          CommonRectificate(&RightBlack[0],pos-2,TripPos);
          ProcessFlag = 1;
          
        }
      }
      //			//处理左边缘
      //			if (NoValidLMax < 20)
      //			{
      //				startPos = 0;
      //				endPos = 0;
      //				for (i = RowMax-1;i > 0;i--)
      //				{
      //					if (ValidLineL[i] == 0 && endPos == 0)
      //					{
      //						endPos = i+4;
      //					}
      //					if (endPos != 0 && startPos == 0 && ValidLineL[i]==1)
      //					{
      //						startPos = i-4;
      //					}
      //					
      //					if (startPos != 0 && endPos != 0)
      //					{
      //// 						str.Format("L补偿起点:%d \r\n",startPos,endPos);
      //// 						fprintf(pfile,str);
      //						CommonRectificate(&LeftBlack[0],startPos,endPos);
      //						startPos = 0;
      //						endPos = 0;
      //						ProcessFlag = 1;
      //					}
      //				}
      //			}
    }
    else if (g_Derict == 2)//右倾
    {
      pos = TripPos-8;
      while(pos > 0 && ValidLineL[pos] == 0 || LeftBlack[pos] < LeftBlack[TripPos]){pos--;}
      // 			str.Format("补偿起点:%d LeftBlack[pos-2]%d\r\n",pos-2,LeftBlack[pos-2]);
      // 			fprintf(pfile,str);
      
      
      // 			if (RowMax-CrossingStable > pos-2)
      // 			{
      // 				if (LeftBlack[RowMax-CrossingStable] > LeftBlack[TripPos])
      // 				{
      // 					//右边缘拟合
      // 					CommonRectificate(&LeftBlack[0],RowMax-CrossingStable,TripPos);
      // 					ProcessFlag = 1;
      // 				}
      // 				else
      // 				{
      // 					for (i = ColumnMax-1;i > 0;i--)
      // 					{
      // 						if (ThresholdData[RowMax-CrossingStable][i] == White && ThresholdData[RowMax-CrossingStable][i-1] == Black)
      // 						{
      // 							pos = i;
      // 							RightBlack[RowMax-CrossingStable]=i;
      // 							break;
      // 						}
      // 					}
      // 					if (LeftBlack[RowMax-CrossingStable] > LeftBlack[TripPos])
      // 					{
      // 						//右边缘拟合
      // 						CommonRectificate(&LeftBlack[0],RowMax-CrossingStable,TripPos);
      // 						ProcessFlag = 1;
      // 					}
      // 					else
      // 					{
      // 						RightBlack[RowMax-CrossingStable]=ColumnMax-2;
      // 						//右边缘拟合
      // 						CommonRectificate(&LeftBlack[0],RowMax-CrossingStable,TripPos);
      // 						ProcessFlag = 1;
      // 					}
      // 				}
      // 			}
      // 			else 
      if (LeftBlack[pos-2] > LeftBlack[TripPos]/*&&TripPos-(pos-2)<30*/)
      {
        CommonRectificate(&LeftBlack[0],pos-2,TripPos);
        ProcessFlag = 1;
      }
      else
      {
        //另外一种方式进行拟合
        for (i = ColumnMax-1;i > 0;i--)
        {
          if (ThresholdData[pos-2][i] == White && ThresholdData[pos-2][i-1] == Black)
          {
            LeftBlack[pos-2]=i;
            break;
          }
        }
        if (LeftBlack[pos-2] > LeftBlack[TripPos] /*&&TripPos-(pos-2)<30*/)
        {
          CommonRectificate(&LeftBlack[0],pos-2,TripPos);
          ProcessFlag = 1;
        }
        else if (NoValidRMax > 20 /*&&TripPos-(pos-2)<30*/)
        {
          LeftBlack[pos-2]=ColumnMax-2;
          CommonRectificate(&LeftBlack[0],pos-2,TripPos);
          ProcessFlag = 1;
        }
      }
      
      //			//处理右边缘
      //			if (NoValidRMax < 20)
      //			{
      //				startPos = 0;
      //				endPos = 0;
      //				for (i = RowMax-1;i > 0;i--)
      //				{
      //					if (ValidLineR[i] == 0 && endPos == 0)
      //					{
      //						endPos = i+4;
      //					}
      //					if (endPos != 0 && startPos == 0 && ValidLineR[i]==1)
      //					{
      //						startPos = i-4;
      //					}
      //					
      //					if (startPos != 0 && endPos != 0)
      //					{
      //// 						str.Format("R补偿起点:%d \r\n",startPos,endPos);
      //// 						fprintf(pfile,str);
      //						CommonRectificate(&RightBlack[0],startPos,endPos);
      //						startPos = 0;
      //						endPos = 0;
      //						ProcessFlag = 1;
      //					}
      //				}
      //			}
    }
  }
  else//找不到跳变点
  {
    // 		str.Format("未找到跳变点处理\r\n");
    // 		fprintf(pfile,str);
    GetCrossingMidLine();//取十字的边缘线
    if (g_Derict == 1)//左倾
    {
      pos=20;
      while (ValidLineR[pos]==0)
      {
        pos++;
      }
      while(ValidLineR[pos]==1)
      {
        pos++;
      }
      startPos = pos-2;
      pos += 8;
      while (pos < RowMax-1 && (ValidLineR[pos] == 0 || RightBlack[pos] > ColumnMax-3 ))
      {
        pos++;
      }
      endPos = pos+4;
      // 
      // 			str.Format("startPos:%d. endPos %d\r\n",startPos,endPos);
      // 			fprintf(pfile,str);
      //if (RightBlack[pos-1] < 40)
      //			if(endPos-startPos<30)
      {
        CommonRectificate(&RightBlack[0],startPos,endPos);
        ProcessFlag = 1;
      }
    }
    else if (g_Derict == 2)
    {
      pos=20;
      while (ValidLineL[pos]==0)
      {
        pos++;
      }
      while(ValidLineL[pos]==1)
      {
        pos++;
      }
      startPos = pos-2;
      pos += 8;
      while (pos < RowMax-1 && (ValidLineL[pos] == 0 || LeftBlack[pos] < 3 ))
      {
        pos++;
      }
      endPos = pos+4;
      // 			str.Format("startPos:%d. endPos %d\r\n",startPos,endPos);
      // 			fprintf(pfile,str);
      //if (RightBlack[pos-1] < 40)
      //			if(endPos-startPos<30)
      {
        CommonRectificate(&LeftBlack[0],startPos,endPos);
        ProcessFlag = 1;
      }
    }
  }
  
  if (ProcessFlag == 0)
  {	
    IsCrossing = 0;
    return;
  }
#endif
}

void Rectification(unsigned char begin,unsigned char end)
{
  unsigned char MidPos = (begin+end)/2;
  if (end > RowMax-1)
  {
    end = RowMax-1;
  }
  if (begin == end)
  {
    //		ThresholdData[begin][BlackLineData[begin]]=White;
    BlackLineData[begin] = (BlackLineData[begin-1]+BlackLineData[begin+1])/2;
    // 		str.Format("补偿%d:%d  \r\n",n++,begin);
    // 		fprintf(pfile,str);
    //		ThresholdData[begin][BlackLineData[begin]]=128;
  }
  else if(begin < end)
  {	
    //		ThresholdData[MidPos][BlackLineData[MidPos]]=White;
    BlackLineData[MidPos] = (BlackLineData[begin]+BlackLineData[end])/2;
    // 		str.Format("补偿%d:%d  \r\n",n++,MidPos);
    // 		fprintf(pfile,str);
    //		ThresholdData[MidPos][BlackLineData[MidPos]]=128;
    if (begin+1 < MidPos)
    {
      Rectification(begin,MidPos);
    }
    if (MidPos+1 < end)
    {
      Rectification(MidPos,end);
    }
  }
}
void RectificationMidLine()
{
  int iStart = RowMax - (StableNumbers+CompensateCount-12),iEnd=iStart+CompensateCount+5;
  Rectification(iStart,iEnd);
}


//
////平滑左右边缘线
//void SmoothLeftRight()
//{
//	unsigned char i = 20;
//	unsigned char end = 0,end1=0;
//	unsigned char iCount = 0;
//	int sum = 0;
//	
//	//右边缘补线
//	while (i < RowMax && (ValidLine[i] == 0 || ValidLine[i] == 1)){i++;}
//	sum=0;
//	while ((ValidLine[i] == 3 || ValidLine[i] == 2) && fabss(RightBlack[i]-RightBlack[i+1]) < 3 && i < RowMax)
//	{
//		iCount++;
//		sum += (RightBlack[i]-RightBlack[i+1]);
//		i++;
//	}
//	if (iCount > 5)
//	{
//		end = i-1;
//		
//// 		str.Format("start:%d  end:%d  sum:%d iCount:%d\r\n",start,end,sum,iCount);
//// 		fprintf(pfile,str);
//		
//		end1 = RightBlack[end] - (RowMax-end)*sum/iCount;
//		
//// 		str.Format("补偿点0:%d\r\n",end1);
//// 		fprintf(pfile,str);
//		
//		RightBlack[RowMax-1] = end1;
//		CommonRectificate(&RightBlack[0],end,RowMax-1);
//	}
//
//	i=20;
//
//	//左边缘补线
//	while (i < RowMax && (ValidLine[i] == 0 || ValidLine[i] == 2))
//	{
//		i++;
//	}
//	iCount=0;
//	sum=0;
//	while ((ValidLine[i] == 3 || ValidLine[i] == 1) && fabss(LeftBlack[i]-LeftBlack[i+1]) < 3 && i < RowMax)
//	{
//		iCount++;
//		sum += (LeftBlack[i]-LeftBlack[i+1]);
//		i++;
//	}
//	if (iCount > 5)
//	{
//		end = i-1;
//		
//// 		str.Format("start1:%d  end1:%d  sum1:%d iCount1:%d\r\n",start,end,sum,iCount);
//// 		fprintf(pfile,str);
//		
//		end1 = LeftBlack[end] - (RowMax-end)*sum/iCount;
//		
//// 		str.Format("补偿点1:%d\r\n",end1);
//// 		fprintf(pfile,str);
//		
//		LeftBlack[RowMax-1] = end1;
//		CommonRectificate(&LeftBlack[0],end,RowMax-1);
//	}	
//}
//

#include "CONTROL.h"
#include "SYS.h"
//调试用变量
int caidan=-10;
int GetSteerError2(int start,int end,float midpos);
float GetSteerError(unsigned char start,unsigned char end,float midpos);
//

int Error = 0.0;
int Errora=0.0;
int LastError = 0.0;
int TemError = 0.0;
int MidPos_h=RowMax-1;
int duoji=0;
int interror=0;

int Foresight =RowMax-1;
int SpeedPid = 0;
float k = 1.0;
int HighSpeedFlag = 0;
int StopNowCount=0;
int HighSpeedCount = 0;

int yxh=0;

#define dz 1.5
#if (0)

float StraightK = 0.5*dz;	//0直道系数
float SmallSK = 0.7*dz;	//1小S系数
float BigSK = 0.8*dz;	//2大S系数
float BendK = 1*dz;	//3急弯
float CommonK = 1*dz;	//普通系数
float StraightToBendK = 1*dz;	
#else
float StraightK = 1*dz;	//0直道系数
float SmallSK = 1*dz;	//1小S系数
float BigSK = 1*dz;	//2大S系数
float BendK = 1*dz;	//3急弯
float CommonK =1*dz;	//普通系数
float StraightToBendK =1*dz;



#endif


#define afs RowMax-1
int StraightFS = afs;	//35						//直道前瞻
int SmallSFS = afs;//35							//小s前瞻
int BigFS = afs;//22								//大S前瞻
int BendFS =afs;//20								//急弯前瞻
int CommonFS = afs;//25							//普通前瞻
int StraightToBendFS = afs;//25

#define startsee 1



unsigned char StraightEnd = RowMax-startsee;					//直道截止行
unsigned char SmallSEnd = RowMax-startsee;						//小S弯截止行
unsigned char BigSEnd = RowMax-startsee;						//大S弯截止行
unsigned char BendEnd = RowMax-startsee;						//急弯截止行
unsigned char CommonEnd = RowMax-startsee;						//普通截止行
unsigned char StraightToBenEnd = RowMax-startsee;				//直入弯截止行
unsigned char FarWeight = 5;							//权重




unsigned char IsStartLine=0;
unsigned char IsOutRoad=0;
unsigned char IsOutRoad;							//跑出跑道

unsigned char IsCrossing=0;
unsigned char StraightSpeed=80;
unsigned char SmallSSpeed=15;
unsigned char BigSSpeed=15;
unsigned char BendSpeed=15;
unsigned char StraightToBendSpeed=15;
unsigned char CommonSpeed=15;

unsigned char AllStraightCount=0;
unsigned char AllSmallSCount=0;
unsigned char CanSpeedUp=0;
unsigned char IncreaseSpeed1=0;
unsigned char IncreaseSpeed2=0;
unsigned char IncreaseSpeed3=0;
unsigned char MotorSpeed=0;

int MidPos=42;
int sfminline_last;
//速度控制
void SpeedCtrol()
{
  if(IsStartLine || IsOutRoad)
  {
    SpeedPid = 0;
    return;
  }
  
  if(StableNumbers < 10 && StableNumbers > 5)
  {
    return;
  }
  
  //	if(RoadType != 0 && RoadType != 1 && CanSpeedUp)
  //	{
  //		if(HighSpeedFlag)
  //		{
  //			SpeedPid = 160;
  //			MotorRun(-500);
  //			StopNowCount++;
  //			if(StopNowCount > 8)
  //			{
  //				StopNowCount = 0;
  //				HighSpeedFlag = 0;
  //			}
  //			return;	
  //		}
  //		else
  //		{
  //			HighSpeedFlag = 0;	
  //		}
  //	}
  //	else
  //	{
  //		StopNowCount=0;	
  //	}
  
  if(IsCrossing)
  {
    //SpeedPid = BigSSpeed;
    return;
  }
  
  switch(RoadType)
  {					   
  case 0://直
    SpeedPid = StraightSpeed;
    MotorUpdatePWM(0,MotorPidCal(StraightSpeed));
    if(AllStraightCount > 10 && AllSmallSCount > 20)
    {
      HighSpeedFlag = 1;	
    }
    break;
  case 1://s
    SpeedPid = SmallSSpeed;
    MotorUpdatePWM(0,SmallSSpeed);
    //			if(AllSmallSCount > 35)
    //			{	
    //				HighSpeedFlag = 1;
    //			}	
    break;
  case 2://S
    SpeedPid = BigSSpeed;
    MotorUpdatePWM(0,BigSSpeed);
    HighSpeedFlag = 0;
    break;
  case 3://急弯
    SpeedPid = BendSpeed;
    MotorUpdatePWM(0,BendSpeed);
    HighSpeedFlag = 0;
    break;
  case 103:
    SpeedPid = StraightToBendSpeed;
    MotorUpdatePWM(0,StraightToBendSpeed);
    HighSpeedFlag = 0;
    break;
  default:
    SpeedPid = CommonSpeed;
    MotorUpdatePWM(0,CommonSpeed);
    HighSpeedFlag = 0;
    break;
  }
  if(HighSpeedFlag == 1 && CanSpeedUp)
  {
    if(AllStraightCount > 15 && AllSmallSCount > 27)
    {
      SpeedPid = StraightSpeed + IncreaseSpeed1;	
    }
    else if(AllStraightCount > 10 && AllSmallSCount > 25)
    {
      SpeedPid = StraightSpeed + IncreaseSpeed2;	
    }
    else if(AllStraightCount > 5 && AllSmallSCount > 23)
    {
      SpeedPid = StraightSpeed + IncreaseSpeed3;	
    }
  }	
}


int LineWeight[RowMax] = {0};
int zaw_mode_last=0;;
int GetSteerError2(int start,int end,float midpos)
{
  char i = 0;
  int  Black_Sum = 0;
  int weightSum = 0;
  int TemError = 0.0;
  
  
  
  for(i = 0; i < RowMax-2; i++)    
  {	
    if(BlackLineData[i]>-ColumnMax&&BlackLineData[i]<2*ColumnMax &&BlackLineData[i] != 298)
    {  Black_Sum += BlackLineData[i]*LineWeight[i];
    weightSum += LineWeight[i];}
  }
  
  if(zaw_mode_last!=0&&zaw_mode==0){zaw_mode=zaw_mode_last;zaw_mode_last=0;}
  else zaw_mode_last=zaw_mode;
  
  TemError =(int)( Black_Sum/weightSum - (midpos+zaw_mode));
  
  //	if(TemError > 40.0)
  //	{
  //		TemError = 40.0;
  //	}
  //	if(TemError < -40.0)
  //	{
  //		TemError = -40.0;	
  //	}
  
  return TemError;
}
//获取中心线偏差
float GetSteerError(unsigned char start,unsigned char end,float midpos)
{
  unsigned char i=0;
  unsigned char iCount=0;
  unsigned int  Black_Sum=0;
  float TemError = 0.0;
  for(i = start,iCount = 0; i < end; i++,iCount++)    
  {	
    Black_Sum += BlackLineData[i];
  }
  TemError = 	Black_Sum*1.0/iCount - midpos;
  return TemError;
  
}

int CrossingBegin = 0;
int CrossingCount = 0;
int hx_direct=0,hx_over=0;
//舵机方向控制
void DirectionCtrol()//方向控制
{
  int StartPos = RowMax - 15;
  int EndPos = RowMax-1;
  //int MidPos_ha;
  // MidPos_ha=(int)MidPos_h; 
  //MidPos = (BlackLineData[MidPos_ha] +(ColumnMax-RightBlack[MidPos_ha]- LeftBlack[MidPos_ha])/2)+4;
 // MidPos =44;
  //  if (IsCrossing &&g_Derict==1) MidPos +=15;else if (IsCrossing &&g_Derict==2) MidPos -=15;
  int i = 0;
  // int CtrlWeight = FarWeight;//控制量
  float temK =1.0;
  //   if(IsCrossing){int MidPos = BlackLineData[RowMax-1] - LeftBlack[RowMax-1]*1.0/2 + (ColumnMax-RightBlack[RowMax-1])*1.0/2;}
  
  
  
  //if(StableNumbers > 5)
  //	{caidan=1;
  //      //  g_Derict
  //		if(MidLineExcursion > 0)
  //		{ 
  //			SteerUpdatePWM(0,SteerPidCal(MidLineExcursion*1));
  //                        //SteerUpdatePWM(0,50);
  //		}
  //		else if(MidLineExcursion < 0)
  //		{if(MidLineExcursion<0){SteerUpdatePWM(0,SteerPidCal(MidLineExcursion*1));}
  //                 
  //			;
  //                       // SteerUpdatePWM(0,50);
  //		}
  //		
  //	}
  
  
  Error=0.0;
  
  switch(RoadType)
  {					   
  case 0://直
    Foresight = StraightFS;//Foresight--摄像头采集的远方特征
    if(Foresight > StableNumbers-2)Foresight=StableNumbers-1;
    k = StraightK;
    StartPos = RowMax - Foresight;//+1
    EndPos = StraightEnd; //-0
    
    
    LastRoadType = RoadType;//
    break;
  case 1://小s
    Foresight = SmallSFS;
    k = SmallSK;
    if(Foresight > StableNumbers-2)Foresight=StableNumbers-1;
    StartPos = RowMax - Foresight;
    EndPos = SmallSEnd;
    
    
    
    LastRoadType=RoadType;//	
    break;
  case 2://大S
    Foresight = BigFS;
    if(Foresight > StableNumbers-2)Foresight=StableNumbers-1;
    k = BigSK;
    
    //			if(StableNumbers < 30 && CanSpeedUp)
    //			{
    //				k += 0.3;	
    //			}
    StartPos = RowMax - Foresight;
    EndPos = BigSEnd;
    
    //			switch(LastRoadType)
    //			{
    //				case 0:
    //					k = k + 0.5;
    //					break;
    //				case 1:
    ////					Foresight = SmallSFS;
    ////					if(Foresight > StableNumbers+CompensateCount-11)Foresight=StableNumbers+CompensateCount-11;
    ////					
    //					k = SmallSFS + 0.3;
    //					break;
    //				default:
    //					break;
    //			}
    LastRoadType=RoadType;//
    break;
  case 3://急弯
    Foresight = BendFS;//17
    if(Foresight > StableNumbers-2)Foresight=StableNumbers-1;
    k = BendK;
    //MidPos-=15;
    //			if(StableNumbers < 30 && CanSpeedUp )
    //			{
    //				k += 0.4;	
    //			}
    StartPos = RowMax - Foresight;
    EndPos = BendEnd;
    
    LastRoadType=RoadType;//			 
    break;
  case 103:
    Foresight = StraightToBendFS;
    if(Foresight > StableNumbers-1)Foresight=StableNumbers-1;
    StartPos = RowMax - Foresight+1;
    EndPos = StraightToBenEnd;
    LastRoadType = 103;
    
    k = StraightToBendK;
    break;
  default:
    k = CommonK;
    Foresight = StableNumbers-2;;
    StartPos = RowMax - Foresight;
    EndPos = CommonEnd;
    
    break;
  }
  //if(IsCrossing)  {k = 1.5;}
  //if(IsCrossing && MidPos>35)  {   MidPos -= 20; }
  
  
  
  if (StableNumbers>60&&0)
    {
      
      
      int qz_a,qz_b,qz_c;
      qz_a=(RowMax - (StableNumbers)*3/4);
      qz_b=(RowMax - (StableNumbers)/2);
      qz_c=(RowMax - (StableNumbers)/4);
      
      for (i = RowMax-1;i > 0;i--)
      {
        if (i > RowMax - (StableNumbers-1))
        {
          if (i >= StartPos && i <=qz_c)
          {
            
            LineWeight[i]=0;
            
          }
          else if (i > qz_a && i <= qz_b)
          {
            
            
            LineWeight[i]=25;
            
          }
          else if (i > qz_b && i <= qz_a)
          {
            
            LineWeight[i]=20;	
            
          }
          else   if (i > qz_a&& i <= EndPos)
          {
            
            
            LineWeight[i]=15        ;
            
          }
          
          else
          {
            LineWeight[i]=0;
          }
        }
        else
        {
          LineWeight[i]=0;
        }
      }
      
    }
  else if (1)
  {
    //此处分段有错误，但不影响效果，暂时搁置
    
    int qz_a,qz_b,qz_c;
    qz_a=(RowMax - (StableNumbers-1)*3/4);
    qz_b=(RowMax - (StableNumbers-1)/2);
    qz_c=(RowMax - (StableNumbers-1)/4);
    
    for (i = RowMax-1;i > 0;i--)
    {
      if (i > RowMax - (StableNumbers-1))
      {
        if (i >= StartPos && i <=qz_c)
        {
          
          LineWeight[i]=50;
          
        }
        else if (i > qz_a && i <= qz_b)
        {
          
          
          LineWeight[i]=25;
          
        }
        else if (i > qz_b && i <= qz_a)
        {
          
          LineWeight[i]=20;	
          
        }
        else   if (i > qz_a&& i <= EndPos)
        {
          
          
          LineWeight[i]=60;
          
        }
        
        else
        {
          LineWeight[i]=0;
        }
      }
      else
      {
        LineWeight[i]=0;
      }
    }
    
  }
  //  
  //  if(hx_i<2)
  //  {hx_direct=0;
  //    hx_over=0;
  //    if(mode1>mode2)//左转
  //    {
  //    hx_direct=-1;
  //    
  //    }
  //    else if (mode1<mode2) //右转
  //    {
  //    hx_direct=1;
  //    
  //    }
  //  
  //  
  //  
  //  }
  
  //    if(hx_i<2&&mode4<10) {hx=0;hx_i=10000;}
  
  //  if(hx&&mode4>20) {StableNumbers=mode4-8;k=0.6;}
  Error = GetSteerError2(StartPos,EndPos,MidPos);
  Errora=Error;
  int StableNumbers_max;
 if(hx) StableNumbers_max=StableNumbers;
 else StableNumbers_max=BlackEndMax;
 // if(mid_line_count<4)StableNumbers_max=MAX(StableNumbers_max,BlackEndMax);
  //StableNumbers_max=MAX(StableNumbers_max,BlackEndR);
  
  
  //  if(StableNumbers_max >= 75)
  //	{
  //		temK = 1.0;
  //	}
  //	else if(StableNumbers_max >= 50)
  //	{
  //		temK = 1.4;
  //	}
  //	else if(StableNumbers_max >= 40)
  //	{
  //		temK = 1.6;	
  //	}
  //        else if(StableNumbers_max >= 30)
  //	{
  //		temK = 1.8;	
  //	}
  //        else if(StableNumbers_max >= 20)
  //	{
  //		temK = 2;	
  //	}
  //        else 
  //	{
  //		temK = 2.5;	
  //	}
  if(Error<0)
  {
    if(StableNumbers_max > RowMax*0.95)
    {
      temK = 1.1;
    }
    else if(StableNumbers_max >= RowMax*0.80)
    {
      temK = 1.1;
    }
    else if(StableNumbers_max >= RowMax*0.70)
    {
      temK = 1.4;
    }
    else if(StableNumbers_max >= RowMax*0.60)
    {
      temK = 1.8;
    }
    else if(StableNumbers_max >= RowMax*0.50)
    {
      temK = 2.2;
    }
    else if(StableNumbers_max >= RowMax*0.40)
    {
      temK =2.5;	
    }
    else if(StableNumbers_max >= RowMax*0.30)
    {
      temK = 2.9;	
    }
    else if(StableNumbers_max >= RowMax*0.20)
    {
      temK = 3.3;	
    }
    else 
    {
      temK = 3.3;	
    }
   
//if(StableNumbers_max<=RowMax*0.7) 
  temK*=1.1; 
  }
  else
  {
        if(StableNumbers_max > RowMax*0.95)
    {
      temK =1.1;
    }
    else if(StableNumbers_max >= RowMax*0.80)
    {
      temK = 1.1;
    }
    else if(StableNumbers_max >= RowMax*0.70)
    {
      temK = 1.4;
    }
    else if(StableNumbers_max >= RowMax*0.60)
    {
      temK = 1.8;
    }
    else if(StableNumbers_max >= RowMax*0.50)
    {
      temK = 2.2;
    }
    else if(StableNumbers_max >= RowMax*0.40)
    {
      temK =2.5;	
    }
    else if(StableNumbers_max >= RowMax*0.30)
    {
      temK =2.9;	
    }
    else if(StableNumbers_max >= RowMax*0.20)
    {
      temK = 3.3;	
    }
    else 
    {
      temK = 3.3;	
    }
 temK*=0.95;   
if(PTB21_I) temK*=0.9; 
  }
 // temK=1;
  if(duojizkb0)MidPos=(int)duojizkb;
  duojizkb1=MidPos;        
  Error = (int)(Error*temK*k*Setk);
  if(hx)Error *=1.3; 
// if(midline_fcount_max>4&&fabss(Error)>10)Error *=1.3;
  //if(mid_line_count>3&&Error<-20)Error *=1.5;
 //if(mid_line_count>3&&fabss(Error)>20&&StableNumbers<50)Error *=1.8;
//  if(mid_line_count>5&&Error>20)Error *=2;
  //if(mode3>5&&sfminline_last) Error=LastError*10;
  if(StableNumbers<4) Error=LastError;
  //        else if(Error<0&&mode4<8)Error *=2;
  //Print6x8int(106,2,Error);//阈值显示
  if(sfminline_last&&!sfminline&&fabss(Error-LastError)>20)Error=LastError;
  
  interror=Error;
  sfminline_last=sfminline;
  //舵机PD控制
  //       if(g_Derict==0&&fabss(Error)>30) Error=0;
  //      if(g_Derict==1&&Error>0) Error=0;     
  //       if(g_Derict==2&&Error<0) Error=0;
  SteerUpdatePWM(0,SteerPidCal(Error));
  LastError = Error;	
  //duoji=SteerPidCal(Error);
  
  }	 
  

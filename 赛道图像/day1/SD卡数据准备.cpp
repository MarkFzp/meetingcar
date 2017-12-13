#include<stdio.h>
#include<string.h>
int img_origin[60][80],img_changed[60][80];
char iname[20];
char oname[20]; 

void input(void)
{
	int i,j;
	FILE *fpread;
	FILE *fwrite;
	int x;
	
	fpread=fopen(iname,"r");//matlabœ‘
	for(i=0;i<60;i++)
	{
		for(j=0;j<80;j++)
		{
		   fscanf(fpread,"%d",&x);
		   img_origin[i][j]=x;
		   img_changed[i][j]=x;
		   //printf("%d ",x);	
		}
	}
	fclose(fpread);
}

void output(void)
{
	int i,j;
	FILE *fwrite;
	fwrite=fopen(oname,"w"); 	
	for(i=0;i<60;i++)
	{
		for(j=0;j<80;j++)
		{
		   if(j==79) fprintf(fwrite,"%d\n",img_origin[i][j]);
		   else 
		   fprintf(fwrite,"%d ",img_origin[i][j]);
		}
	}
	
    for(i=0;i<5;i++)
	{
		for(j=0;j<80;j++)
		{
		   if(j==79) fprintf(fwrite,"%d\n",255);
		   else 
		   fprintf(fwrite,"%d ",255);
		}
	}
	
	
	for(i=0;i<60;i++)
	{
		for(j=0;j<80;j++)
		{
		   if(j==79) fprintf(fwrite,"%d\n",img_changed[i][j]);
		   else 
		   fprintf(fwrite,"%d ",img_changed[i][j]);
		}
	}
	
	
	
	
	
	fclose(fwrite);
}
void creat_name(int i)
{
	sprintf(iname,"%d.TXT",i);
	sprintf(oname,"%d_mm.TXT",i);
}


int point[30][2];
void init(void)
{	
	point[0][0]=39 ; point[0][1]=40;	
	point[1][0]=27; point[1][1]=40;	
	point[2][0]=22; point[2][1]=40;	
	point[3][0]=19; point[3][1]=40;	
	point[4][0]=17; point[4][1]=40;		
} 

void image_processing(void)
{
	int i,j;
	for(i=0;i<4;i++)
	{
		img_changed[point[i][0]][point[i][1]]=0;
	}
}
 
int main()
{
    
	int i;
	init();
	for(i=2;i<=9;i++)
	{
		creat_name(i);
		input();
        image_processing();		
	    output();
	}

} 

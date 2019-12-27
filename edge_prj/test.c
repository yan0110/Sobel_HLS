#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "sobel.h"

void  main()
{
  int i;
  FILE *fp;
  int a[N];  //输入的图像向量数组
  int sob_x1out[N];
  int sob_y1out[N];   //输出向量数组

    fp=fopen("F:\\0yan\\fpga\\HLS\\edge_prj\\gray.txt","r");//将图像文件in.txt指向fp
      for(i=0;i<N;i++){
      int tmp;
      fscanf(fp,"%x,",&tmp);
      a[i]=tmp;
      }                   //将in.txt中的测试向量读入a【N】
    fclose(fp);

      edge_det(a,sob_x1out,sob_y1out);

      //将sob_x1out[N],sob_y1out[N]读入sobel_x1out.txt，sobel_y1out.txt
      fp=fopen("sobel_x1out.txt","w");
         for(i=0;i<N;i++)
         {
        	 fprintf(fp,"%d,",sob_x1out[i]);
         }
      fclose(fp);


      fp=fopen("sobel_y1out.txt","w");

              for(i=0;i<N;i++)
              {
             	 fprintf(fp,"%d,",sob_y1out[i]);
              }
       fclose(fp);
}

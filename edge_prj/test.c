#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "sobel.h"

void  main()
{
  int i;
  FILE *fp;
  int a[N];  //�����ͼ����������
  int sob_x1out[N];
  int sob_y1out[N];   //�����������

    fp=fopen("F:\\0yan\\fpga\\HLS\\edge_prj\\gray.txt","r");//��ͼ���ļ�in.txtָ��fp
      for(i=0;i<N;i++){
      int tmp;
      fscanf(fp,"%x,",&tmp);
      a[i]=tmp;
      }                   //��in.txt�еĲ�����������a��N��
    fclose(fp);

      edge_det(a,sob_x1out,sob_y1out);

      //��sob_x1out[N],sob_y1out[N]����sobel_x1out.txt��sobel_y1out.txt
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

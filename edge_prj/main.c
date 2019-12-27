#include "sobel.h"
#include<ap_cint.h>

void edge_det(int video[N],int sob_x1[N],int sob_y1[N],int sob_xy1[N])   //sob_x1��sob_y1�ֱ��������Ե���������Ե�����ͼ��
{
  //sobel�˲���ģ��
	int sob_x[9] = {-1,0,1,-2,0,2,-1,0,1};
    int  sob_y[9] = {-1,-2,-1,0,0,0,1,2,1};

  int i,j,m,n;
  int block[9];

   int value;
//��������ͼ�������ֵ

edge_det_label1:for(i=0;i<hei;i++)

edge_det_label2:for(j=0;j<wid;j++)
	   {
	     if(i>wid-3 || j>hei-3)
		 {
           sob_x1[i*wid+j]=0;
		   sob_y1[i*wid+j]=0;
		 }
		 else
		 {

edge_det_label3:for(m=0;m<3;m++)
edge_det_label4:for(n=0;n<3;n++)
					 block[m*3+n]=video[(i+m)*wid+j+n]; //�������ص����Χ���ظ�ֵ��block
				 value=convolution(sob_x,block);
				 sob_x1[i*wid+j]=value;

				 value=convolution(sob_y,block);
				 sob_y1[i*wid+j]=value;
				 sob_xy1[i*wid+j] = abs(sob_y1[i*wid+j]) + abs(sob_x1[i*wid+j]);
		 }
	   }

}

//ʵ��ͼ�����ص��ģ�����ˡ��ۼ�����
int convolution(int operatr[9],int block[9])
{
    int value=0;
	int i,j;
convolution_label5:for(i=0;i<3;i++)
convolution_label6:for(j=0;j<3;j++)
          value =value+operatr[i*3+j]*block[i*3+j];
    return value;
}

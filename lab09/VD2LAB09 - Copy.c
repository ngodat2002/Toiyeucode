#include<stdio.h>
main()
{
int intarr[5];
float floatarr[10];
int i;
for(i=0;i<5;i++)
{
	printf("Nhap vao 1 so [%d]\n",i);
	scanf("%d",&intarr[i]);
	floatarr[i]=intarr[i];
	printf("\n Sau khi gan la :%f",floatarr[i]);
	
}
for(i=5;i<9;i++)
{
	printf("nhap vao mot so [%d]",i);
	scanf("%d",&floatarr[i]);
	floatarr[i]=0;
	printf("so sau khi gan la %f\n", floatarr[i]);
}
}

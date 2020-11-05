#include <stdio.h>
/*Tinh toán*/
int tong(int a,int b);
int hieu(int a,int b);
int tich(int a,int b);
int thuong(int a,int b);
/* tong*/
int tong(int a,int b)
{
	return a+b;
}
/*hieu*/
int hieu(int a,int b)
{
	return a-b;
	return b-a;
}
/*tich*/
int tich(int a,int b)
{
	return a*b;
}
/*thuong*/
int thuong(int a,int b)
{
	return a/b;
	return b/a;
}
int main()
{
	int num,sum,hieu,tich,thuong;
	int menu;
	int a,b;
	printf("\nTinh toan\n==========\n1.Nhap so:\n2.Tinh tong:\n3.Tinh hieu:\n4.Tinh tich:\n5.Tinh thuong:\n6.Ket thuc\n==========\nChon:");
	scanf("%d",&menu);
	if(menu==1)
{
	printf("Nhap so:");
	scanf("%d",&num);
}	
	else if(menu==2)
{
	printf("\nNhap a va b:");
	scanf("%d",&a);
	scanf("%d",&b);
	sum=a+b;
	printf("\nTong cua a va b la :%d",sum);
}
	else if(menu==3)
{
	printf("\nNhap a va b:");
	scanf("%d",&a);
	scanf("%d",&b);
	hieu=a-b;
	printf("\nHieu cua a va b la:%d",hieu);
}		
	else if(menu==4)
{
	printf("\n Nhap a va b:");
	scanf("%d",&a);
	scanf("%d",&b);
	tich=a*b;
	printf("\nTich cua a va b la :%d",tich);
}
	else if(menu==5)
{
	printf("\nNhap a va b:");
	scanf("%d",&a);
	scanf("%d",&b);
	thuong=a/b;
	printf("\nThuong cua a va b la:%d",thuong);
}
	else if(menu==6)
	{
	
	return(0);
}
}

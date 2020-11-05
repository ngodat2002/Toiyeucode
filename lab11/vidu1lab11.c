#include <stdio.h>
void Getarea(float a,float b,float c);
main()

{
float a,b,c;
printf("Nhap a:");
scanf("%f",&a);
printf("Nhap b:");
scanf("%f",&b);
printf("Nhap c:");
scanf("%f",&c);
Getarea(a,b,c);
if(a+b>c)
{
printf("\n ba canh tam giac hop le");

}
else 
printf("Ba canh tam giac khong hop le");
}
void Getarea(float a,float b,float c)
{
	float p,s;
	p=a+b+c/2;
	s=sqrt(p*(p-a)*(p-b)*(p-c));
	printf("\nChu vi tam giac:%f",p);
	printf("\n Dien tich tam giac:%f",s);
}

#include <stdio.h>
float p(float chieudai,float chieurong);
float s(float chieudai,float chieurong);

main()
{
	int menu;
	float chieudai,chieurong;
	printf("Nhap Chieu dai:\n");
	scanf("%f",&chieudai);
	printf("\n Nhap chieu rong:");
	scanf("%f",&chieurong);
	printf("\n Tinh chu vi va dien tich\n========\n1.Tinh chu vi:\n2.Tinh dien tich:\n========\nChon:");
	scanf("%d",&menu);
	if(menu==1)
	{
	printf("Chu vi hinh chu nhat la:%f",p(chieudai,chieurong));
	}
	else if(menu==2)
	{
		printf("Dien tich hinh chu nhat la :%f",s(chieudai,chieurong));
	}
}
float p (float chieudai,float chieurong)
{
	float p;
	p=(chieudai+chieurong)*2;
	return p;
}
float s (float chieudai,float chieurong)
{
	float s
	;
	s=chieudai*chieurong;
	return s;
}

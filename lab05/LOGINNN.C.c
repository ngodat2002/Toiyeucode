#include <stdio.h>
int main(){
	int x,y;
	int sodu;
	sodu=2000;
	int sotien;
	char ans='Y';
	int tienphi=100;
	int a;
	int stk;
	int tienchuyen;
	int h;
	printf("\n WELCOME TO KHO HIEU BANK");
	printf("\n Nhap Ma The:");
	scanf("%d", &x);
	printf("\n Nhap Ma Pin:");
	scanf("%d", &y);
	if (x==1234 && y==1111)
	{
	printf("\n VUI LONG CHON DICH VU");
	printf("\n 1.Kiem tra so du:");
	printf("\n 2.Rut tien");
	printf("\n 3.Chuyen tien");
	printf("\n 4.Ket thuc");
	scanf("%d", &a);
	{
	if (a==1)	{
	printf("So du cua ban la: %d",sodu);	
	}
	
	else if (a==2)
	{
	printf("\n Nhap so tien ban muon rut:");
	scanf("%d", &sotien);
	if(sotien%50==0&&sotien<=sodu-tienphi&&sotien<1900	)
	{
		printf("\n Ban co muon rut tien khong Y or N:");
		fflush(stdin);
		scanf("%c", &ans);
		if (ans ='Y')
		
		printf("\n Da rut tien thanh cong");
		printf("\n So tien con lai la: %d",sodu-sotien-tienphi);
	}
	else
	printf("Ban can nhap so tien la boi cua 50 va nho hon 20trieu");
	}
	else if (a==3)
	{
		printf("Nhap so tai khoan nguoi nhan:");
		scanf("%d",&stk);
		if (stk==456)
	{
		printf("\n Nhap so tien muon chuyen:");
		scanf("%d",&tienchuyen);
		if(tienchuyen<=2000)
	{
	printf("So du con lai cua ban la:%d",sodu-tienchuyen);		
 }
	else
	printf("Ban can chuyen so tien nho hon 20 trieu");
 }
	else
	printf("So tai khoan khong hop le");
	
}
else if(a==4)
{
	printf("Cam on ban da su dung dich vu!");
}


else{

printf("Ma the hoac m a pin khong hop le");
return 0;
} 
}
}
}

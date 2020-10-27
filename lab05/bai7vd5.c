#include <stdio.h>
int main(){
	int a;
	printf("Nhap so diem:");
	scanf("%d",&a);
	if(a >= 75)
	printf("\n LoaiA");
	else if (60<=a&&a<75)
	printf("\n LoaiB");
	else if(45<=a&&a<60)
	printf("LoaiC");
	else if (35<=a&&a<45)
	printf("\n LoaiD");
	else if(a<35) 
	printf("LoaiE");
	
	
}

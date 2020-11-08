#include <stdio.h>
void main()
{
	char hotelname1[15]="NGUYETCAU";
	char hotelname2[15]="YENVI";
	printf("The old name is %s\n",hotelname1);
	strcpy(hotelname1,hotelname2);
	printf("The new name is %s\n",hotelname2);
	getch();
}

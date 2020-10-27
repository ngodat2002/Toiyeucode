#include <stdio.h>
int main()
{
	char chucai='A';
	printf("\n Nhap mot ki tu trong bang chu cai de hien thi:");
	scanf("%c",&chucai);
	
	switch(chucai)
	{
	case 'A':
		printf("\n Xuat Ada");
	    break;	
	case 'B':
		chucai='B';
		printf("\n Xuat Basic");
		break;	
	case 'C':
		chucai='C';
		printf("\n Xuat COBOL");
		break;	
	case 'D':
		chucai='D';
		printf("\n Xuat dBASE3");
		break;	
	case 'F':
		chucai='F';
		printf("\n Xuat Fortran");
		break;
	case 'P':
		chucai='P';
		printf("\n Xuat PASCAL");
		break;	
	case 'V':
		chucai='V';
		printf("\n Xuat Visual C++");
		break;		
	default:
		printf("\n Khong xuat gi ca");
		break;
	}	
}

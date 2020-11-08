#include <stdio.h>
void main()
{
	char name1[15]="NGODAT";
	char name2[15]="THIHAI";
	char name3[15]="YEUEM";
	char name4[15]="HIHI";
	int i;
	i=strcmp(name1,name2);
	printf("%s 	with %s returned %d\n",name1,name2,i);
		i=strcmp(name1,name3);
	printf("%s	with %s returned %d\n",name1,name3,i);
		i=strcmp(name1,name4);
	printf("%s	with %s returned %d\n",name1,name4,i);
	getch();
}

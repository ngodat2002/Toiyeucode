#include <stdio.h>
void main()
{
	char compname[20]="WORD";
	int len, ctr;
	
	len = strlen(compname);
	for(ctr=0;ctr<len;ctr++);
	printf("%c*",compname[ctr]);
	getch();
}

#include <stdio.h>
void main()
{
	char str1[15]="New york";
	char str2[15]="NGUYET CAU";
	char chr='a',*loc;
	loc=strchr(str1,chr);
	if(loc!=NULL)
	printf("%c occurs in %s\n",chr,str1);
	else
	printf("%c does mot occur in%s\n",chr,str1);
	loc=strchr(str2,chr);
	if(loc!=NULL)
	printf("%c occurs in %s\n",chr,str2);
	else
	printf("%c does mot occur in%s\n",chr,str2);
}

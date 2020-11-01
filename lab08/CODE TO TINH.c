#include <stdio.h>
main()
{
	char name[150];
	int a,b,size=15;
	int ngay;
	char hai;
	char ans;
	int len;
	int i,j,n;
	len = strlen(name);
	printf("\n Whats your name?:");
	gets(name);
	printf("\n Anh DAT gui tang Em:NGUYEN THI HAI<3:");
	gets(hai);
	printf("\n Chon kich cu heart<3:");
	scanf("%d",&n);
	for(ngay=0;ngay<=10;ngay++)
	{
		printf("\n \t 95 DAYS Fall in love<3\n Nguoi con gai tuyet voi va dang cap ");
	}
	do
	{	
	    
		printf("\nDo you love me?:");
		printf("Y or N:");
		scanf("%s",&ans);
		
	}while(ans!='Y');
	printf("Yeu Thi Minh Cuoi Nhau Nhe <33");
        for (a = size/2; a <= size; a = a+2)
    {
        for (b = 1; b < size-a; b = b+2)        
            printf(" ");
            
        for (b = 1; b <= a; b++)
            printf("*");
   
        for (b = 1; b <= size-a; b++)
            printf(" ");
         
        for (b = 1; b <= a-1; b++)
            printf("*");
 
        printf("\n");
    }
 
    for (a = size; a >= 0; a--)
    {
        for (b = a; b < size; b++)
            printf(" ");
 
        for (b = 1; b <= ((a * 2) - 1); b++)
            printf("*");
 
        printf("\n");  
    }

}




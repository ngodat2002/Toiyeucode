#include <stdio.h>
	int mathe,mapin,fun,sotien,stk,tienchuyen;
main()
{
	int mathe,mapin,fun,sotien,stk,tienchuyen;
	printf("WELCOME TO HAIBANK\n");
	printf("Nhap ma the:\n");
	scanf("%d",&mathe);
	printf("Nhap ma pin:\n");
	scanf("%d",&mapin);
	Login(mathe,mapin);
	char key;
	while(key != 27)
	{
		
		printf("\nNhap: ");
		scanf("%d",&fun);
		fflush(stdin);
		if(fun == 1 || fun == 2 || fun == 3 || fun == 4)
		{
		switch(fun)
	{
			case 1:
	{
		withdraw();
		printf("\nBam phim bat ki de tiep tuc. Bam Esc de thoat.");
		key = getch();
	}
		break;	
			case 2:
	{
		transfer();
		printf("\nBam phim bat ki de tiep tuc giao dich. Bam Esc de thoat.");
		key = getch();
		break;
	}
			case 3:
	{
		Check();
		printf("\nBam phim bat ki de tiep tuc giao dich. Bam Esc de thoat.");
		key = getch();
		break;
	}
			case 4:
		printf("\n CAM ON QUY KHACH DA SU DUNG DICH VU!");
		return 0;
	}
	}
		else
	{
		printf("\nLua Chon Sai.Vui Long Chon Lai Hoac An ESC de thoat.");
		key = getch();
	}
	}
}

menu()
{
		printf("\nChon Chuc nang: \n\t1.WITHDRAW. \n\t2.TRANSFER. \n\t3.CHECK. \n\t4.EXIT.");
}
int Login(int mathe,int mapin)
{	
	int ok,count;
	if(mapin!=1111)
	{
	do
	{
	printf("\n Vui long nhap lai ma pin:");
	scanf("%d",&mapin);
	if(mapin==1111)
	{
		printf("Ma pin dung");
		menu();
		ok==0;
		break;
	}
		else
		count++;
		}
		while(count<=2||ok==0);
		{
		if(mapin!=1111)
		printf("THE CUA BAN DA BI KHOA VUI LONG RA NGAN HANG RESET");
		}
		}
		else
		{
			printf("Ma pin dung");
				menu();
		}
}

Check()
{	int sodu;
	sodu=2000000;
	printf("So du cua ban la:%d",sodu);
}

withdraw()
{	
	char ans='y';
	int	sodu=2000000;
	int phi=100000;
	printf("\n Nhap so tien ban muon rut:");
	scanf("%d",&sotien);
	if(sotien%50==0&&sotien<=sodu-phi&&sotien<1900000)
	{
		printf("\n Giao dich nay mat phi ban co muon tiep tuc giao dich khong?:y/n:");
		fflush(stdin);
		scanf("%s",&ans);
	if(ans=='y')
	{
		printf("\nSo tien con lai trong tai khoan la :%d",sodu-sotien-phi);
		printf("\n Rut tien thanh cong!");
	}
		else
	{
		printf("\n Quy khach da huy giao dich.");
	}
	}
	
}

transfer()
{
	if(stk=456)
	{
	int stk,tienchuyen,sodu;
	sodu=2000000;
	printf("\n Nhap so tai khoan: ");
	scanf("%d",&stk);
	printf("\n Nhap so tien can chuyen: ");
	scanf("%d",&tienchuyen);
	printf("So tien con lai cua ban la:%d",sodu-tienchuyen);
	}
}


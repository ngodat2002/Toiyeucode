#include <stdio.h>
main()
{
	int mathe,mapin,sodu,ok,count,cou,chucnang,sotien,phi,stk,tienchuyen;
	char ans='Y';
	sodu=2000000;
	phi=100000;
	printf("\n WELCOME TO HAI BANK,Moi ban nhet cai the vao OK.");
	printf("\n Nhap ma the:");
	scanf("%d",&mathe);
	printf("\n Nhap ma pin:");
	scanf("%d",&mapin);
	if(mapin!=1111)
	{
		do
		{
			printf("\n Vui long nhap lai ma pin:");
			scanf("%d",&mapin);
			if(mapin==1111)
			{
				printf("Ma pin dung");
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
		}
		while(cou!=27)		
		{
			printf("\nMoi ban chon chuc nang:\n1.Kiem tra so du:\n2.Rut tien:\n3.Chuyen khoan:\n4.Ket thuc:");
			printf("\nBan Chon cai gi neo:");
			scanf("%d",&chucnang);
			if(chucnang==1)
			{
				printf("\n So du cua ban la: %d",sodu);
				printf("\n Ban co muon tiep tuc su dung dich vu khong? Y/y");
				scanf("%s",&ans);
			}
			else if(chucnang==2)
			{
				printf("\n Nhap vao tien muon rut:");
				scanf("%d",&sotien);
				if(sotien%50000==0&&sotien<=sodu-phi&&sotien<1900000)
				{
					printf("\n Giao dich nay mat phi ban co muon tiep tuc khong? Y/y");
					fflush(stdin);
					scanf("%s",&ans);
					if(ans='Y')
			printf("\n Da rut tien thanh cong");
			printf("\n So tien con lai la: %d",sodu-sotien-phi);
			printf("Nhap vao chuc nang ban muon su dung:\n1.Kiem tra so du\n2.Rut tien\n3.Chuyen khoan\n4.Ket thuc:\n");
			scanf("%d",&chucnang);
				}
			else
			printf("Ban can nhap so tien la boiso cua 50000 va nho hon 5trieu");
			}
		else if(chucnang==3)
			{
			if(stk=456)
			{
			
			printf("\n Nhap so tai khoan ban muon chuyen:");
			scanf("%d",&stk);
			printf("Moi ban nhap so tien muon chuyen:"); scanf("%d",&tienchuyen);
			printf("So tien con lai cua ban la:%d",sodu-tienchuyen);
		}
		}
		else if(chucnang==4)
		{
		printf("\n Ban khong muon thuc hien giao dich!\n Cam on quy khach da ghe tham!");	
		}
		exit(0);
		}
	}



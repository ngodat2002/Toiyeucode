#include <stdio.h>
void main(){
	char ch;
	printf("\n Enter a lower cased alphabet (a-z):");
	scanf("%c",&ch);
	
	if(ch< 'a'|| ch > 'z')
	printf("\n Character not a lower cased alphabet");
	else
	switch (ch)
	{
		case 'a':
			case 'e':
				case 'i':
					case 'o':
						case 'u':
	printf("\n Character is a vowel");
	break;
	case 'z':
	printf("\n Last Alphabet (z) was entered");
	break;
	
	default:
	printf("\n Character is a consonant");
	break;
	}
}

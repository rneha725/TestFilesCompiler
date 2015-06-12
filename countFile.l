%{
#include<stdio.h>
int line=1, charCount=0, digCount=0, specCount=0;
%}

%%
[a-z] charCount++;
[0-9] digCount++;
. specCount++;
\n line++;
%%

int main()
{ 
	yyin= fopen("test1.l","r");
	yylex();
	printf("Total Characters: %d\n", charCount+digCount+specCount+line);
	printf("Chacters: %d\n", charCount);
	printf("Digits: %d\n", digCount);
	printf("Other Characters: %d\n", specCount);
	printf("Line count: %d\n", line);
}

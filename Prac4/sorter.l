%{
#include <stdio.h>
#include <string.h>
#include "y.tab.h"
void yyerror(char *);
%}

%%
\[[0-9]*(","[0-9]+)*\]	{
				printf("WORKS %s\n", yytext);
				/*yylval = atoi(yytext);
				printf("%i", yylval);*/
				yylval.array = yytext;
				yylval.arrayLen = (sizeof(yytext) - 1)/2;
				return ARRAY;

			}
%%
int yywrap(void)
{
	return 1;
}



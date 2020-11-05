%{
#include <stdio.h>
#include <string.h>
#include "y.tab.h"
void yyerror(char *);
%}

%%
\[[0-9]+(","[0-9]+)*\]	{
				/*yylval = atoi(yytext);
				printf("%i", yylval);*/
				//printf("WORKS %s\n", yytext);
				yylval.array = yytext;
				//yylval.arrayLen = (sizeof(yytext)/sizeof(yytext[0]));
				return ARRAY;

			}
%%


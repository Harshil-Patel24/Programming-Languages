%{
#include <stdio.h>
#include <string.h>
void sort(int*);
%}


%union
{
	int *array;
	int arrayLen;
}

%token <array> ARRAY
%token <arrayLen> LENGTH

%%
rule:
	rule
%%

void yyerror(const char *str)
{
	fprintf(stderr,"error: %s\n",str);
}

int yywrap()
{
	return 1;
}

void sort(int* array)
{
	int size = sizeof(array);
	for( int ii = 0; ii < size - 1; ii++)
	{
		for(int jj = 0; jj < size - ii - 1; jj++)
		{
			if( array[jj] > array[jj + 1])
			{
				int temp = array[jj];
				array[jj] = array[jj + 1];
				array[jj + 1] = temp;
			}
		}
	}
}

main()
{
	yyparse();
	return 0;
	
}







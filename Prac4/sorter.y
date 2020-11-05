%{
#include <stdio.h>
#include <string.h>
void sort(int*, int);
int* split(char*, int*);
void print(int*, int);
%}

%union
{
	char* array;
}

%token <array> ARRAY

%%
expression: 
	ARRAY	{
			int len;
			int* sorted = split($<array>1, &len);
			sort(sorted, len);
			print(sorted, len);
		}

		
%%

void yyerror(const char *str)
{
	fprintf(stderr,"error: %s\n",str);
}

int yywrap()
{
	return 1;
}

int* split(char* arr, int* out)
{
	int ii;
	char* tok;
	int* nums = (int*)malloc((sizeof(arr)*sizeof(int))/sizeof(char));
	ii = 0;
	arr++;
	arr[strlen(arr)-1] = '\0';

	tok = strtok(arr, ",");	

	while(tok != NULL)
	{
		nums[ii] = atoi(tok);
		tok = strtok(NULL, ",");
		ii++;	
	}
	*out = ii;
	return nums;
}

void sort(int* array, int size)
{
	int ii,jj;
	for(ii = 0; ii < size - 1; ii++)
	{
		for(jj = 0; jj < size - ii - 1; jj++)
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

void print(int* array, int len)
{
	printf("\n[");
	for(int ii = 0; ii < len; ii++)
	{
		printf("%d ",array[ii]);
	}
	printf("]\n");
}

main()
{
	yyparse();
	return 0;
	
}






